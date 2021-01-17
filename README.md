# colab
使用這個Repo，您需了解如何使用docker-compose相關基本指令。

這個repo會建立兩個image，分別取名叫colabssh及colabnovnc。

在這裡透過容器建立ssh伺服器。

在容器的環境中，我們可透過docker-compose -p vm1 up，以ProjectName來建立多台不同環境的colab vm。

一、 可以透過下方指令建立所需的images。

進入colab目錄中，並執行
<pre>
./build.sh
</pre>
將會建立colabssh及colabnovnc兩個image。

二、使用以下指令啟動容器
<pre>
docker-compose up -d
</pre>

透過ps查看隨機連接埠
<pre>
docker-compose ps
</pre>
22: 容器的ssh服務

2222: Google Colab服務

6080: novnc服務

8080: code-server服務


三、 到colab網站，選擇開啟筆記，再選到Github，輸入此repo的名稱。
<pre>
deviny/colab
</pre>
