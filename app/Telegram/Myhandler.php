<?php

namespace App\Telegram;

use DefStudio\Telegraph\DTO\User;
use DefStudio\Telegraph\Facades\Telegraph;
use DefStudio\Telegraph\Handlers\WebhookHandler;
use DefStudio\Telegraph\Keyboard\Button;
use DefStudio\Telegraph\Keyboard\Keyboard;
use DefStudio\Telegraph\Models\TelegraphChat;
use Illuminate\Support\Stringable as SupportStringable;
use Stringable;

class Myhandler extends WebhookHandler
{
    //==============СОЦИАЛЬНЫЕ СЕТИ=====================
    public function social(): void {
        Telegraph::message('Посетите наши социальные сети')->keyboard(Keyboard::make()->buttons([
            Button::make('🌏 Наш сайт')->url('Http://Vtk.edu.kz'),
            Button::make('📹 Instagram')->url('https://www.instagram.com/zhtk.aqmoedu.kz/'),
            Button::make('🤳 Facebook')->url('https://www.facebook.com/vtk.aqmoedu.kz')
        ]))->send();
    }

    public function media(): void {
        Telegraph::message('hello world')
        ->keyboard(Keyboard::make()->buttons([
                Button::make('open')->url('https://test.it')
        ]))->send();
    }

    public function hello(): void {
        $this->reply('*Привет!*');
    }    

    public function about(): void {
        $this->reply('Информация о нашем колледже!');
    }
    
    protected function handleUnknownCommand(SupportStringable $text): void {
        if ($text->value() === '/start') {
            /** @var TelegraphChat $chat */
            $chat = TelegraphChat::find(1);
            $chat->photo('images/logo.jpg')->send();
            $this->reply('Добро пожаловать в наш телеграм бот!)');
        } else {
            $this->reply('Неизвестная команда');
        }
    }

    //==============ПОЛУЧЕНИЕ СООБЩЕНИЯ ТЕКСТОМ=====================
    protected function handleChatMessage(SupportStringable $text): void
        {
            $this->reply($text);
        }
}

