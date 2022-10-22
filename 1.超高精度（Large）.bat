@echo off

@rem 実行ディレクトリを取得
@set your_directory=%~dp0

@rem 入力ファイルの取得
@set content=%*
@call :GET_FILE_INFO %content%
@:GET_FILE_INFO
@set name="%~n1"

echo -----------------------------------------
echo フォルダを作成します！

md %your_directory%\%name%
echo -----------------------------------------


@rem anaconda 実行
echo anaconda/miniconda実行！
call conda activate whisper
echo -----------------------------------------

@rem whisper実行

echo whisperを実行します！！
echo -----------------------------------------
echo Largeモデル(最高精度)

whisper %content% --output_dir %your_directory%\%name% --model large --device cuda

echo -----------------------------------------
echo 作成完了！フォルダに入ってます！
echo -----------------------------------------
pause
exit
