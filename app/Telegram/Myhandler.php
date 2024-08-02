<?php

namespace App\Telegram;

use DefStudio\Telegraph\DTO\User;
use DefStudio\Telegraph\Facades\Telegraph;
use DefStudio\Telegraph\Handlers\WebhookHandler;
use DefStudio\Telegraph\Keyboard\Button;
use DefStudio\Telegraph\Keyboard\Keyboard;
use Illuminate\Support\Stringable as SupportStringable;
use Stringable;

class Myhandler extends WebhookHandler
{
    public function shram(): void {
        $this->reply('Ура! Работает!');
    }

    public function actions(): void {
        Telegraph::message('Выберите действие')->keyboard(Keyboard::make()->buttons([
            Button::make('🌏 Наш сайт')->url('Http://Vtk.edu.kz'),
            Button::make('🤳 Facebook')->url('https://www.facebook.com/vtk.aqmoedu.kz')
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
            $this->reply('Добро пожаловат в наш телеграм бот!)');
        } else {
            $this->reply('Неизвестная команда');
        }
    }

    protected function handleChatMessage(SupportStringable $text): void
        {
            $this->reply($text);
        }
}