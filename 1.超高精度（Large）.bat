@echo off

@rem ���s�f�B���N�g�����擾
@set your_directory=%~dp0

@rem ���̓t�@�C���̎擾
@set content=%*
@call :GET_FILE_INFO %content%
@:GET_FILE_INFO
@set name="%~n1"

echo -----------------------------------------
echo �t�H���_���쐬���܂��I

md %your_directory%\%name%
echo -----------------------------------------


@rem anaconda ���s
echo anaconda/miniconda���s�I
call conda activate whisper
echo -----------------------------------------

@rem whisper���s

echo whisper�����s���܂��I�I
echo -----------------------------------------
echo Large���f��(�ō����x)

whisper %content% --output_dir %your_directory%\%name% --model large --device cuda

echo -----------------------------------------
echo �쐬�����I�t�H���_�ɓ����Ă܂��I
echo -----------------------------------------
pause
exit
