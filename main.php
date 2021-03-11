require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.net.*"
import "android.content.*"
import "android.graphics.*"
import "android.graphics.drawable.*"
import "android.provider.*"


function LoginLY()
  layout={
    LinearLayout;
    layout_height="fill";
    background="res/images/bg.jpg";
    layout_width="fill";
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        LinearLayout;
        orientation="vertical";
        layout_width="fill";
        background="res/drawable/header.png";
        layout_height="wrap";
        gravity="center";
        {
          LinearLayout;
          layout_height="2%h";
          layout_width="fill";
        };
        {
          TextView;
          layout_height="wrap";
          id="headerTitle";
          layout_width="wrap";
          textColor="0xFFFFFFFF";
          textSize="25sp";
          text="NĐH KILL GAME";
        };
        {
          LinearLayout;
          layout_height="1%h";
          layout_width="fill";
        };
        {
          TextView;
          layout_height="wrap";
          id="headerSubtitle";
          layout_width="wrap";
          textColor="0xFFF2A900";
          textSize="15sp";
          text="Login";
        };
        {
          LinearLayout;
          layout_height="2%h";
          layout_width="fill";
        };
      };
      {
        LinearLayout;
        layout_height="20%h";
        layout_width="fill";
      };
      {
        CardView;
        layout_height="wrap";
        layout_width="45%h";
        radius="25dp";
        layout_gravity="center";
        backgroundColor="0xFF202125";
        {
          LinearLayout;
          orientation="vertical";
          gravity="center";
          layout_width="fill";
          layout_height="fill";
          {
            LinearLayout;
            layout_height="2.5%h";
            layout_width="fill";
          };
          {
            LinearLayout;
            orientation="horizontal";
            gravity="center";
            layout_width="fill";
            layout_height="fill";
            {
              LinearLayout;
              layout_height="wrap";
              layout_width="wrap";
              {
                CardView;
                layout_height="6.3%h";
                backgroundColor="0xFF757479";
                layout_width="33.3%h";
                {
                  LinearLayout;
                  layout_height="fill";
                  gravity="center";
                  layout_width="fill";
                  {
                    LinearLayout;
                    orientation="horizontal";
                    layout_width="33%h";
                    gravity="center";
                    layout_height="6%h";
                    backgroundColor="0xFF202125";
                    {
                      EditText;
                      layout_height="wrap";
                      layout_width="31%h";
                      hint="Username";
                      inputType="textVisiblePassword";
                      backgroundColor="none";
                      hintTextColor="0xB3FFFFFF";
                      textColor="0xFFFFFFFF";
                      textSize="16sp";
                      id="txtUsername";
                    };
                  };
                };
              };
            };
            {
              LinearLayout;
              layout_height="fill";
              layout_width="1%h";
            };
            {
              CardView;
              id="btnPaste";
              layout_height="6%h";
              backgroundColor="0xFFF2A900";
              layout_width="6%h";
              {
                LinearLayout;
                layout_height="fill";
                layout_width="fill";
                gravity="center";
                {
                  ImageView;
                  layout_height="3%h";
                  layout_width="3%h";
                  src="res/drawable/content-paste.png";
                  colorFilter="0xFF000000";
                };
              };
            };
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            LinearLayout;
            layout_height="wrap";
            layout_width="wrap";
            {
              CardView;
              layout_height="6.3%h";
              backgroundColor="0xFF757479";
              layout_width="40.3%h";
              {
                LinearLayout;
                layout_height="fill";
                gravity="center";
                layout_width="fill";
                {
                  LinearLayout;
                  orientation="horizontal";
                  layout_width="40%h";
                  gravity="center";
                  layout_height="6%h";
                  backgroundColor="0xFF202125";
                  {
                    EditText;
                    layout_height="wrap";
                    layout_width="38%h";
                    hint="Password";
                    inputType="textPassword";
                    backgroundColor="none";
                    hintTextColor="0xB3FFFFFF";
                    textColor="0xFFFFFFFF";
                    textSize="16sp";
                    id="txtPassword";
                  };
                };
              };
            };
          };
          {
            LinearLayout;
            layout_height="2%h";
            layout_width="fill";
          };
          {
            CardView;
            radius="25dp";
            layout_width="wrap";
            layout_height="wrap";
            {
              TextView;
              layout_height="6%h";
              layout_width="20.5%h";
              id="btnLogin";
              backgroundColor="0xFFF2A900";
              gravity="center";
              LetterSpacing="0.5";
              textColor="0xFF000000";
              textSize="14sp";
              text="LOGIN";
            };
          };
          {
            LinearLayout;
            layout_height="2%h";
            layout_width="fill";
          };
          {
            LinearLayout;
            layout_height="wrap";
            layout_width="wrap";
            orientation="horizontal";
            {
              TextView;
              layout_height="wrap";
              layout_width="wrap";
              gravity="center";
              textColor="0xFF757479";
              textSize="13sp";
              text="Not have key?";
            };
            {
              TextView;
              layout_height="wrap";
              id="txtFreeKey";
              gravity="center";
              layout_width="wrap";
              textColor="0xFFF2A900";
              textSize="13sp";
              text=" Get free key";
            };
          };
          {
            LinearLayout;
            layout_height="2.5%h";
            layout_width="fill";
          };
        };
      };
    };
  };


  activity.setTheme(R.AndLua10)
  activity.ActionBar.hide()
  --[[activity.setTitle("ADMIN Panel")
activity.getActionBar().setSubtitle("LOGIN")
]]

  activity.ActionBar.setBackgroundDrawable(ColorDrawable(0xFF202125))
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF202125);
  activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
  activity.setContentView(loadlayout(layout))

  headerTitle.setTypeface(Typeface.DEFAULT_BOLD)
  headerSubtitle.setTypeface(Typeface.DEFAULT_BOLD)
  txtFreeKey.setTypeface(Typeface.DEFAULT_BOLD)
  btnLogin.setTypeface(Typeface.DEFAULT_BOLD)

  if Settings.canDrawOverlays(activity) then else intent=Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
    intent.setData(Uri.parse("package:" .. this.getPackageName())); this.startActivity(intent);
  end

  btnPaste.onClick=function()
    local copiedUserPass = activity.getSystemService(Context.CLIPBOARD_SERVICE).getText()
    if copiedUserPass== "" then
      Toast.makeText(activity, "Please copy text from website!",Toast.LENGTH_SHORT).show()
     else
      if string.find(copiedUserPass,":") then
        local copiedUser,copiedPass = copiedUserPass:match("([^,]+):([^,]+)")
        txtUsername.setText(copiedUser)
        txtPassword.setText(copiedPass)
       else
        Toast.makeText(activity, "Please copy text from website!",Toast.LENGTH_SHORT).show()
      end
    end
  end


  URLserver="https://interlunar-protecti.000webhostapp.com/Login/"
  btnLogin.onClick=function()
    local username = txtUsername.text
    local password = txtPassword.text
    import "android.provider.Settings$Secure"
    local uuid = Secure.getString(activity.getContentResolver(), Secure.ANDROID_ID)
    if !username || username == "" or !password || password == "" then
      Toast.makeText(activity, "Nothing can be empty!",Toast.LENGTH_SHORT).show()
     else
      local pref = activity.getSharedPreferences("EXPIREDLOGIN", Context.MODE_PRIVATE)
      local save = pref.edit()
      save.putString("login", username)
      save.commit()
      local dl=ProgressDialog.show(activity,nil,'Please wait!')
      dl.show()
      Http.post(URLserver.."login.php","username="..username.."&password="..password.."&uuid="..uuid,nil,"utf8",nil,function(code,body,cookie,header)
        local a=0
        local tt=Ticker()
        tt.start()
        tt.onTick=function()
          a=a+1
          if a==5 then
            dl.dismiss()
            tt.stop()
            if code == 200 then
              if body:match("Success") then
                Toast.makeText(activity, "Login success!",Toast.LENGTH_SHORT).show()
                if body:match(";(.-);")
                  EXPIREDLOGIN=string.match(tostring(body),";(.-);")
                  save.putString("human", "1")
                  save.commit()
                  activity.newActivity("home")
                 
                 else
                  EXPIREDLOGIN="FREE"
                  save.putString("human", "1")
                  save.commit()
                  activity.newActivity("home")
                  
                end
                local pref = activity.getSharedPreferences("EXPIREDLOGIN", Context.MODE_PRIVATE)
                local save = pref.edit()
                save.putString("expired", EXPIREDLOGIN)
                save.commit()
               elseif body:match("Expired") then
                Toast.makeText(activity, "Key has been expired!",Toast.LENGTH_SHORT).show()
               elseif body:match("Device changed") then
                Toast.makeText(activity, "Device has changed!",Toast.LENGTH_SHORT).show()
               else
                Toast.makeText(activity, "Login failed!",Toast.LENGTH_SHORT).show()
              end
             else
              Toast.makeText(activity, "Can't connect to server!",Toast.LENGTH_SHORT).show()
            end
          end
        end
      end);
    end
  end


  txtFreeKey.onClick=function()
    GetkeyLY()
  end

end

LoginLY()

function GetkeyLY()
  getkey={
    LinearLayout;
    layout_height="fill";
    background="res/images/bg.jpg";
    layout_width="fill";
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        LinearLayout;
        orientation="vertical";
        layout_width="fill";
        background="res/drawable/header.png";
        layout_height="wrap";
        gravity="center";
        {
          LinearLayout;
          layout_height="2%h";
          layout_width="fill";
        };
        {
          TextView;
          layout_height="wrap";
          id="headerTitle";
          layout_width="wrap";
          textColor="0xFFFFFFFF";
          textSize="25sp";
          text="NĐH KILL GAME";
        };
        {
          LinearLayout;
          layout_height="1%h";
          layout_width="fill";
        };
        {
          TextView;
          layout_height="wrap";
          id="headerSubtitle";
          layout_width="wrap";
          textColor="0xFFF2A900";
          textSize="15sp";
          text="Get Key";
        };
        {
          LinearLayout;
          layout_height="2%h";
          layout_width="fill";
        };
      };
      {
        LinearLayout;
        layout_height="2.5%h";
        layout_width="fill";
      };
      {
        CardView;
        layout_height="wrap";
        layout_width="45%h";
        radius="25dp";
        layout_gravity="center";
        backgroundColor="0xFF202125";
        {
          LinearLayout;
          layout_margin="2.5%h";
          orientation="vertical";
          layout_width="fill";
          layout_height="fill";
          {
            CardView;
            radius="25dp";
            layout_width="fill";
            layout_height="fill";
            {
              LuaWebView;
              id="getkeyView";
              layout_width="fill";
              layout_height="40%h";
            };
          };
        };
      };
      {
        LinearLayout;
        layout_width="fill";
        layout_height="fill";
        layout_margin="5%h";
        gravity="center_horizontal|bottom";
        {
          CardView;
          radius="25dp";
          backgroundColor="0xFFF2A900";
          id="btnLogout";
          layout_width="15%h";
          layout_height="5%h";
          {
            LinearLayout;
            orientation="horizontal";
            layout_height="fill";
            layout_width="fill";
            gravity="center";
            {
              ImageView;
              src="res/drawable/logout-variant.png";
              layout_height="4%h";
              colorFilter="0xFF000000";
              layout_width="4%h";
            };
            {
              LinearLayout;
              layout_width="1.5%h";
              layout_height="fill";
            };
            {
              TextView;
              id="txtLogout";
              layout_height="wrap";
              text="Back";
              textSize="15sp";
              layout_width="wrap";
              textColor="0xFF000000";
            };
          };
        };
      };
    };
  };


  activity.setTheme(R.AndLua10)
  activity.ActionBar.hide()
  --[[activity.setTitle("ADMIN Panel")
activity.getActionBar().setSubtitle("LOGIN")
]]
  activity.ActionBar.setBackgroundDrawable(ColorDrawable(0xFF202125))
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF202125);
  activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
  activity.setContentView(loadlayout(getkey))

  headerTitle.setTypeface(Typeface.DEFAULT_BOLD)
  headerSubtitle.setTypeface(Typeface.DEFAULT_BOLD)
  txtLogout.setTypeface(Typeface.DEFAULT_BOLD)

  getkeyView.getSettings().setSupportMultipleWindows(true)
  getkeyView.getSettings().setJavaScriptEnabled(true)
  getkeyView.getSettings().setJavaScriptCanOpenWindowsAutomatically(false)
  getkeyView.getSettings().setDomStorageEnabled(true)
  getkeyView.getSettings().setAppCacheMaxSize(8388608)
  getkeyView.getSettings().setAppCachePath(activity.getCacheDir().getAbsolutePath())
  getkeyView.getSettings().setAllowFileAccess(true)
  getkeyView.getSettings().setAppCacheEnabled(true)
  getkeyView.getSettings().setLoadsImagesAutomatically(true)
  getkeyView.getSettings().setBlockNetworkImage(false)
  getkeyView.setHapticFeedbackEnabled(true)
  getkeyView.loadUrl(URLserver.."index.php")
  getkeyView.getTitle()
  getkeyView.getUrl()
  getkeyView.requestFocusFromTouch()
  getkeyView.getSettings().setSupportZoom(true)

  btnLogout.onClick=function()
    LoginLY()
  end
end

activity.setTheme(R.AndLua10)
activity.ActionBar.hide()
--[[activity.setTitle("ADMIN Panel")
activity.getActionBar().setSubtitle("LOGIN")
]]

activity.ActionBar.setBackgroundDrawable(ColorDrawable(0xFF202125))
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF202125);
activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)


headerTitle.setTypeface(Typeface.DEFAULT_BOLD)
headerSubtitle.setTypeface(Typeface.DEFAULT_BOLD)



function root(Patch1,MRDmod)
  local check,hgm,number=os.execute("su") if check == true HGM=("su -c ") t1.Text=("ROOT") else HGM=("") t1.Text=("NOROOT") end path=activity.getLuaDir("res.utf") dpath=activity.getLuaDir() pass=("dcihngnod") if zip4j.unZipDir(path,dpath,pass)==true then Patch2=activity.getLuaDir(Patch1) os.execute(HGM.."chmod 777 "..Patch2) Runtime.getRuntime().exec(HGM..""..Patch2)MD提示(MRDmod,"#FF009DFF","#FFFFFFFF","9","50") end
end


