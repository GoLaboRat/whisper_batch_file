@echo off
@rem �N���O��anaconda git���C���X�g�[��

echo ---------------------------------------------------------------------------
echo whisper ���쐬
echo ---------------------------------------------------------------------------
@rem whisper���쐬
echo Y | call conda create -n whisper
echo ---------------------------------------------------------------------------

echo whisper ���N��
echo ---------------------------------------------------------------------------
@rem anaconda/miniconda wisper�N��
echo Y | call conda activate whisper
echo ---------------------------------------------------------------------------

echo �F�X�ƃC���X�g�[��
echo ---------------------------------------------------------------------------
@rem �F�X�C���X�g�[��
echo Y | call conda install pytorch torchvision torchaudio cudatoolkit=11.6 -c pytorch -c conda-forge
echo ---------------------------------------------------------------------------

echo ffmpeg�C���X�g�[��
echo ---------------------------------------------------------------------------
@rem ffmpeg���C���X�g�[��
echo Y | call conda install ffmpeg -c conda-forge
echo ---------------------------------------------------------------------------

echo github����whisper�_�E�����[�h
echo ---------------------------------------------------------------------------
@rem whisper���_�E�����[�h�E�C���X�g�[��
echo Y | call pip install git+https://github.com/openai/whisper.git
echo ---------------------------------------------------------------------------

echo �C���X�g�[�������I�o�b�`�t�@�C���ɕϊ��������t�@�C�����h���b�v���ĉ������I
echo ---------------------------------------------------------------------------

pause
exit

@rem 10/21 v1.00
@rem �Q�l�T�C�g
@rem https://tadaoyamaoka.hatenablog.com/entry/2022/09/23/140401