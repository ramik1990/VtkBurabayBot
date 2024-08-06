<?php

namespace App\Telegram;

use DefStudio\Telegraph\DTO\ChatMember;
use DefStudio\Telegraph\DTO\Message;
use DefStudio\Telegraph\DTO\User;
use DefStudio\Telegraph\Facades\Telegraph;
use DefStudio\Telegraph\Handlers\WebhookHandler;
use DefStudio\Telegraph\Keyboard\Button;
use DefStudio\Telegraph\Keyboard\Keyboard;
use DefStudio\Telegraph\Models\TelegraphChat;
use Illuminate\Support\Stringable as SupportStringable;
use App\Models\Article;
use Faker\Core\Number;
use Stringable;

class Myhandler extends WebhookHandler
{
    //==============СОЦИАЛЬНЫЕ СЕТИ=====================
    public function social(): void {
        Telegraph::chat($this->message->chat()->id())->message('Посетите наши социальные сети')->keyboard(Keyboard::make()->row([
            Button::make('🌏 Наш сайт')->url('Http://Vtk.edu.kz'),
            Button::make('🤳 Instagram')->url('https://www.instagram.com/zhtk.aqmoedu.kz/')
        ])->row([
            Button::make('📹 YouTube')->url('https://www.youtube.com/channel/UCcGx42FdY6ALYyinmPf9ATw'),
            Button::make('👀 Facebook')->url('https://www.facebook.com/vtk.aqmoedu.kz')
        ]))->send();
    }   

    //==============ДОКУМЕНТЫ=====================
    public function documents(): void {        
        Telegraph::chat($this->message->chat()->id())->message('Документы')->keyboard(Keyboard::make()->buttons([
            Button::make('✍ Брошюра КАЗ')->action('getDocument')->param('id', '1')->param('chat', $this->message->chat()->id()),
            Button::make('✍ Брошюра РУС')->action('getDocument')->param('id', '2')->param('chat', $this->message->chat()->id()),
            Button::make('✍ Инструкция. Работа с журналом')->action('getDocument')->param('id', '3')->param('chat', $this->message->chat()->id()),
            Button::make('✍ Инструкция. Работа с КТП')->action('getDocument')->param('id', '4')->param('chat', $this->message->chat()->id()),
            Button::make('✍ Рекомендации. Написание научных статей')->action('getDocument')->param('id', '5')->param('chat', $this->message->chat()->id()),
            Button::make('✍ Инструкция. Работа с Discord')->action('getDocument')->param('id', '6')->param('chat', $this->message->chat()->id())
        ]))->send();
    }    
    public function getDocument(): void {
        $id = $this->data->get('id');
        $chat = $this->data->get('chat');
        switch ($id) {
            case '1':
                Telegraph::chat($chat)->message('Брошюра. Казахский вариант')->document('documents/pdf/broshura_kaz.pdf')->send();
                break;
            case '2':
                Telegraph::chat($chat)->message('Брошюра. Русский вариант')->document('documents/pdf/broshura_rus.pdf')->send();
                break;
            case '3':
                Telegraph::chat($chat)->message('Инструкция. Работа с журналом')->document('documents/pdf/inst_zhurnal.pdf')->send();
                break;
            case '4':
                Telegraph::chat($chat)->message('Инструкция. Работа с КТП')->document('documents/pdf/instr_ktp.pdf')->send();
                break;
            case '5':
                Telegraph::chat($chat)->message('Рекомендации. Написание научных статей')->document('documents/pdf/napisanie_stat.pdf')->send();
                break;
            case '6':
                Telegraph::chat($chat)->message('Инструкция. Работа с Discord')->document('documents/word/instr_discord.doc')->send();
                break;
        }
    }

    //==============ИНФОРМАЦИЯ О НАС=====================
    public function about(): void {
        $collegeHistory = Article::find(1);
        Telegraph::chat($this->message->chat()->id())->html('<b>'.$collegeHistory->title.'</b>')->send(); 
        Telegraph::chat($this->message->chat()->id())->photo('images/articles//collegeHistory.jpg')->send(); 
        Telegraph::chat($this->message->chat()->id())->html($collegeHistory->text)->send(); 
    }
    
    //==============НЕРАСПОЗНАНЫЕ КОМАНДЫ=====================
    protected function handleUnknownCommand(SupportStringable $text): void {
        if ($text->value() === '/start') {
            /** @var TelegraphChat $chat */
            /*$chat = TelegraphChat::find(1);
            $chat->photo('images/logo.jpg')->send();*/   
            Telegraph::chat($this->message->chat()->id())->photo('images/logo.jpg')->send(); 
            Telegraph::chat($this->message->chat()->id())->message('<b>ГККП "Высший технический колледж, город Щучинск, Бурабайский район" при управлении образования Акмолинской области</b>
            Добро пожаловать в наш Телеграм Бот!')->send(); 
        } else {
            $this->reply('Неизвестная команда');
        }
    }

    //==============ПОЛУЧЕНИЕ СООБЩЕНИЯ ТЕКСТОМ=====================
    protected function handleChatMessage(SupportStringable $text): void
        {
           $this->reply('Бот находится в стадии разработки. Пока можете воспользоваться командами, которые находятся в меню бота');
        }
}

