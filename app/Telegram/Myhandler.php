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
        Telegraph::chat($this->message->chat()->id())->message('Документы')->keyboard(Keyboard::make()
        ->row([
            Button::make('🕗 Расписание занятий')->action('getSchedule'),
            Button::make('🕗 Расписание звонков')->action('getBell')
        ])
        ->row([
            Button::make('🕗 Расписание занятий')->action('getSchedule'),
            Button::make('🕗 Расписание занятий')->action('getSchedule')
        ])
        )->send();
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
            if(($text->value() === 'Антон') || ($text->value() === 'антон')) {
                $this->reply('Здарова заебал!=)');
            }
        }
}

