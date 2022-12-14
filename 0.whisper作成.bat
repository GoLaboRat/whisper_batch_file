@echo off
@rem 起動前にanaconda gitをインストール
@rem 念の為管理者権限で実行

echo ---------------------------------------------------------------------------
echo conda アプデ
echo ---------------------------------------------------------------------------
@rem 	anacondaアプデ
echo Y | conda update -n base conda
echo Y | conda update --all
echo ---------------------------------------------------------------------------

echo ---------------------------------------------------------------------------
echo whisper 環境作成
echo ---------------------------------------------------------------------------
@rem whisperを作成
echo Y | call conda create -n whisper
echo ---------------------------------------------------------------------------

echo whisper 環境起動
echo ---------------------------------------------------------------------------
@rem anaconda/miniconda whisper起動
echo Y | call conda activate whisper
echo ---------------------------------------------------------------------------

echo 色々とインストール
echo ---------------------------------------------------------------------------
@rem 色々インストール
echo Y | call conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.6 -c pytorch -c conda-forge
echo ---------------------------------------------------------------------------

echo ffmpegインストール
echo ---------------------------------------------------------------------------
@rem ffmpegをインストール
echo Y | call conda install ffmpeg -c conda-forge
echo ---------------------------------------------------------------------------

echo githubからwhisperダウンロード
echo ---------------------------------------------------------------------------
@rem whisperをダウンロード・インストール
echo Y | call pip install git+https://github.com/openai/whisper.git
echo ---------------------------------------------------------------------------

echo インストール完了！バッチファイルに変換したいファイルをドロップして下さい！
echo ---------------------------------------------------------------------------

pause
exit

@rem 22/12/05 v1.10
@rem 参考サイト
@rem https://tadaoyamaoka.hatenablog.com/entry/2022/09/23/140401
