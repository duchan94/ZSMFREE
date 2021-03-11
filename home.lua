require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "android.provider.*"
import "android.net.*"
import "android.graphics.*"
import "android.graphics.drawable.*"
import "com.tencent.qq.widget.*"
--import "java.io.File"
import "AndLua"
import "zip4j"
import "main"
os.execute("su")



homeLY={
  LinearLayout;
  orientation="vertical";
  background="res/images/bg.jpg";
  layout_height="fill";
  layout_width="fill";
  {
    CardView;
    layout_width="fill";
    CardElevation="3dp";
    layout_height="6.5%h";
    radius="0";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="6.5%h";
      gravity="center";
      layout_width="fill";
      {
        LinearLayout;
        layout_height="fill";
        layout_width="1%h";
      };
      {
        LinearLayout;
        layout_height="5%h";
        layout_width="5%h";
        gravity="center";
        id="btnProfile";
        {
          CircleImageView;
          layout_width="fill";
          layout_height="fill";
          src="res/images/ic_account.png";
        };
      };
      {
        LinearLayout;
        layout_height="fill";
        layout_width="1%h";
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_height="fill";
        gravity="center_vertical";
        layout_width="fill";
        {
          TextView;
          singleLine=true;
          textSize="19sp";
          id="txtTitle";
          --text="UpLUK";
          layout_height="wrap";
          layout_width="fill";
          textColor="0xFF000000";
        };
        {
          TextView;
          singleLine=true;
          textSize="10sp";
          id="txtTitleSecond";
          --text="facts are very different from what you think. WORK TO SLEEP.";
          layout_height="wrap";
          layout_width="fill";
          textColor="0xFF000000";
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
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="25%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="22.5%h";
        CardElevation="0dp";
        id="btnStart";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB00E6DFF";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="7%h";
            layout_width="7%h";
            colorFilter="0xffffffff";
            src="res/images/ic_start.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStart";
            text="START MENU";
            textSize="16sp";
            layout_height="wrap";
            textColor="0xffffffff";
          };
        };
      };
      {
        LinearLayout;
        layout_height="fill";
        layout_width="2%h";
      };
      {
        CardView;
        layout_width="22.5%h";
        CardElevation="0dp";
        id="btnStop";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB0F70019";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="7%h";
            layout_width="7%h";
            colorFilter="0xffffffff";
            src="res/images/ic_stop.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStop";
            text="STOP MENU";
            textSize="16sp";
            layout_height="wrap";
            textColor="0xffffffff";
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
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="10%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="47%h";
        CardElevation="0dp";
        id="btnStartG";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB032C8C7";
        {
          LinearLayout;
          orientation="vertical";
          layout_height="fill";
          gravity="center";
          layout_width="fill";
          {
            ImageView;
            layout_height="4%h";
            layout_width="4%h";
            colorFilter="0xffffffff";
            src="res/images/ic_start.png";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtStartG";
            text="Run The Game";
            textSize="14sp";
            layout_height="wrap";
            textColor="0xffffffff";
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
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="8%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="47%h";
        CardElevation="0dp";
        id="btnZL";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB07289D9";
        {
          LinearLayout;
          orientation="horizontal";
          layout_height="fill";
          gravity="center_vertical";
          layout_width="wrap";
          {
            LinearLayout;
            layout_height="fill";
            layout_width="1%h";
          };
          {
            ImageView;
            layout_height="4%h";
            layout_width="4%h";
            colorFilter="0x00000000";
            src="res/images/ic_zl.png";
          };
          {
            LinearLayout;
            layout_height="fill";
            layout_width="1%h";
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="fill";
            gravity="center_vertical";
            layout_width="fill";
            {
              TextView;
              layout_width="fill";
              id="txtTG";
              text="Join the Community Server";
              textSize="14sp";
              layout_height="wrap";
              textColor="0xFFFFFFFF";
            };
            {
              TextView;
              layout_width="fill";
              textColor="0xFFFFFFFF";
              text="To chat, get info, ask questions, leave feedback, get the latest updates and the more";
              textSize="10sp";
              layout_height="wrap";
            };
          };
        };
      };
    };
  };
  {
    LinearLayout;
    layout_height="0.5%h";
    layout_width="fill";
  };
  {
    LinearLayout;
    layout_width="fill";
    layout_height="wrap";
    gravity="center_horizontal";
    {
      LinearLayout;
      orientation="horizontal";
      layout_height="8%h";
      gravity="center";
      layout_width="47%h";
      {
        CardView;
        layout_width="47%h";
        CardElevation="0dp";
        id="btnTG";
        layout_height="fill";
        radius="5dp";
        backgroundColor="0xB07289D9";
        {
          LinearLayout;
          orientation="horizontal";
          layout_height="fill";
          gravity="center_vertical";
          layout_width="wrap";
          {
            LinearLayout;
            layout_height="fill";
            layout_width="1%h";
          };
          {
            ImageView;
            layout_height="4%h";
            layout_width="4%h";
            colorFilter="0x00000000";
            src="res/images/ic_tg.png";
          };
          {
            LinearLayout;
            layout_height="fill";
            layout_width="1%h";
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="fill";
            gravity="center_vertical";
            layout_width="fill";
            {
              TextView;
              layout_width="fill";
              id="txtTG";
              text="Join the Community Server";
              textSize="14sp";
              layout_height="wrap";
              textColor="0xFFFFFFFF";
            };
            {
              TextView;
              layout_width="fill";
              textColor="0xFFFFFFFF";
              text="To chat, get info, ask questions, leave feedback, get the latest updates and the more";
              textSize="10sp";
              layout_height="wrap";
            };
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
    layout_width="47%h";
    radius="5dp";
    layout_height="wrap";
    layout_gravity="center_horizontal";
    backgroundColor="0xFFFFFFFF";
    {
      LinearLayout;
      orientation="vertical";
      layout_height="wrap";
      layout_width="fill";
      {
        LinearLayout;
        orientation="horizontal";
        id="btnHow";
        layout_height="4%h";
        gravity="center_vertical";
        layout_width="fill";
        {
          LinearLayout;
          layout_height="4%h";
          layout_width="1%h";
        };
        {
          ImageView;
          layout_height="3%h";
          layout_width="3%h";
          colorFilter="0xFF000000";
          src="res/images/ic_help.png";
        };
        {
          LinearLayout;
          layout_height="4%h";
          layout_width="1%h";
        };
        {
          LinearLayout;
          orientation="horizontal";
          layout_height="fill";
          gravity="center_vertical";
          layout_width="fill";
          {
            TextView;
            layout_width="wrap";
            id="txtHow";
            text="How to use?";
            textSize="15sp";
            layout_height="wrap";
            textColor="0xFF000000";
          };
          {
            LinearLayout;
            layout_height="4%h";
            layout_width="0.5%h";
          };
          {
            TextView;
            layout_width="wrap";
            id="txtHowOpen";
            text="Click to Open";
            textSize="12sp";
            layout_height="wrap";
            textColor="0x93000000";
          };
        };
      };
      {
        LinearLayout;
        orientation="horizontal";
        visibility="gone";
        layout_height="wrap";
        layout_width="wrap";
        id="BoxHow";
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="1%h";
        };
        {
          LinearLayout;
          orientation="vertical";
          layout_height="wrap";
          layout_width="wrap";
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="No Root:";
            textSize="14sp";
            layout_height="wrap";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Run Cheat - Game inside virtual app";
            textSize="10sp";
            layout_height="wrap";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Root:";
            textSize="14sp";
            layout_height="wrap";
          };
          {
            TextView;
            layout_width="wrap";
            textColor="0x93000000";
            text="Give Cheat - Game root permission and magisk hide Game";
            textSize="10sp";
            layout_height="wrap";
          };
          {
            LinearLayout;
            layout_height="1%h";
            layout_width="fill";
          };
          {
            LinearLayout;
            layout_height="2.5%h";
            layout_width="fill";
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
              text="Logout";
              textSize="15sp";
              layout_width="wrap";
              textColor="0xFF000000";
            };
          };
        };
      };
    };
  };
};
------

floatLY={
  LinearLayout;
  orientation="horizontal";
  id="btnHideOpen";
  layout_height="fill";
  layout_width="fill";
  {
    ImageView;
    src="res/images/float_icon.png";
    id="btnHide";
    layout_height="6%h";
    layout_width="6%h";
  };
  {
    LinearLayout;
    orientation="vertical";
    layout_height="fill";
    visibility="gone";
    id="fullV";
    layout_width="fill";
    {
      CardView;
      layout_height="42%h";
      CardElevation="0dp";
      backgroundColor="0x4B894AF1";
      radius="15";
      layout_width="34%h";
      {
        LinearLayout;
        orientation="vertical";
        layout_height="fill";
        layout_width="fill";
        {
          LinearLayout;
          orientation="vertical";
          gravity="center";
          background="res/images/bg_window.png";
          layout_height="6%h";
          layout_width="fill";
          {
            TextView;
            text="NGUYỄN ĐỨC HÂN";
            layout_height="wrap";
            textColor="0xFF80FF00";
            textSize="16sp";
            layout_width="wrap";
          };
          {
            LinearLayout;
            orientation="horizontal";
            layout_height="wrap";
            layout_width="wrap";
            {
              TextView;
              text="Zalo: 0929688294";
              layout_height="wrap";
              textColor="0xFFFFFF00";
              textSize="10sp";
              layout_width="wrap";
            };
            {
              TextView;
              text=" | ";
              layout_height="wrap";
              textColor="0xFFFFFFFF";
              textSize="10sp";
              layout_width="wrap";
            };
            {
              TextView;
              text="Checker";
              id="t1";
              layout_height="wrap";
              textColor="0xFFFFB100";
              textSize="10sp";
              layout_width="wrap";
            };
          };
        };
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="fill";
          {
            ScrollView;
            layout_height="30%h";
            layout_width="fill";
            {
              LinearLayout;
              padding="0.5%h";
              orientation="vertical";
              layout_height="fill";
              layout_width="fill";
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="FAKE SPEED V1 OFF";
                  layout_height="fill";
                  textOn="FAKE SPEED V1 ON";
                  id="fakev1";
                  textColor="0xFFFFFFFF";
                  textOff="FAKE SPEED V1 OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="FAKE SPEED V2 OFF";
                  layout_height="fill";
                  textOn="FAKE SPEED V2 ON";
                  id="fakev2";
                  textColor="0xFFFFFFFF";
                  textOff="FAKE SPEED V2 OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="TỐC BIẾN DRIFT OFF";
                  layout_height="fill";
                  textOn="TỐC BIẾN DRIFT ON";
                  id="tbdr";
                  textColor="0xFFFFFFFF";
                  textOff="TỐC BIẾN DRIFT OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="AUTO TỐC BIẾN OFF";
                  layout_height="fill";
                  textOn="AUTO TỐC BIẾN ON";
                  id="attb";
                  textColor="0xFFFFFFFF";
                  textOff="AUTO TỐC BIẾN OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="CHỐNG ITEM FULL TỐC OFF";
                  layout_height="fill";
                  textOn="CHỐNG ITEM FULL TỐC ON";
                  id="item";
                  textColor="0xFFFFFFFF";
                  textOff="CHỐNG ITEM FULL TỐC OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="XE NẶNG OFF";
                  layout_height="fill";
                  textOn="XE NẶNG ON";
                  id="xn";
                  textColor="0xFFFFFFFF";
                  textOff="XE NẶNG OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="HÍT TƯỜNG OFF";
                  layout_height="fill";
                  textOn="HÍT TƯỜNG ON";
                  id="ht";
                  textColor="0xFFFFFFFF";
                  textOff="HÍT TƯỜNG OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="BẬT TƯỜNG OFF";
                  layout_height="fill";
                  textOn="BẬT TƯỜNG ON";
                  id="bt";
                  textColor="0xFFFFFFFF";
                  textOff="BẬT TƯỜNG OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="QUAY XE OFF";
                  layout_height="fill";
                  textOn="QUAY XE ON";
                  id="qx";
                  textColor="0xFFFFFFFF";
                  textOff="QUAY XE OFF";
                  layout_width="fill";
                };
              };
              {
                LinearLayout;
                layout_height="6%h";
                layout_width="fill";
                {
                  ToggleButton;
                  text="KHOÁ PHANH OFF";
                  layout_height="fill";
                  textOn="KHOÁ PHANH ON";
                  id="kp";
                  textColor="0xFFFFFFFF";
                  textOff="KHOÁ PHANH OFF";
                  layout_width="fill";
                };
              };
            };
          };
        };
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="fill";
          {
            LinearLayout;
            orientation="horizontal";
            gravity="center_vertical";
            backgroundColor="0xB1000000";
            layout_height="6%h";
            layout_width="fill";
            {
              TextView;
              text="❌";
              gravity="center";
              id="close";
              textColor="0xFFFFFFFF";
              layout_height="fill";
              layout_width="17%h";
            };
            {
              TextView;
              text="⛔";
              gravity="center";
              id="min";
              textColor="0xFFFFFFFF";
              layout_height="fill";
              layout_width="17%h";
            };
          };
        };
      };
    };
  };
};
activity.setTheme(android.R.style.Theme_DeviceDefault_Light)
--activity.setTheme(R.AndLua14)
activity.setContentView(loadlayout(homeLY))
activity.ActionBar.hide()
activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)

tickexit=0
function onKeyDown(code,event)
  if string.find(tostring(event),"KEYCODE_BACK") ~= nil then
    if tickexit+3 > tonumber(os.time()) then
      activity.finish()
     else
      print("Press back again to exit app")
      tickexit=tonumber(os.time())
    end
    return true
  end
end

if Settings.canDrawOverlays(activity) then
 else
  dialog=AlertDialog.Builder(this)
  .setTitle("Permission !")
  .setMessage("Floating windows are not allowed,\nplease give floating window permission!")
  .setCancelable(false)
  .setPositiveButton("Allow",
  {onClick=function(v)
      intent=Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
      intent.setData(Uri.parse("package:" .. this.getPackageName())); this.startActivity(intent);
    end})
  .show()
end


local login
local pref = activity.getSharedPreferences("EXPIREDLOGIN", Context.MODE_PRIVATE)
login = pref.getString("login", "")
exp = pref.getString("expired", "")
human = pref.getString("human", "")

if human == "1" then
  local pref = activity.getSharedPreferences("EXPIREDLOGIN", Context.MODE_PRIVATE)
  local save = pref.edit()
  save.putString("human", "0")
  save.commit()
 else
  local pref = activity.getSharedPreferences("EXPIREDLOGIN", Context.MODE_PRIVATE)
  local save = pref.edit()
  save.putString("human", "0")
  save.commit()
  os.exit()
end


txtTitle.setText(login)
txtTitleSecond.setText("Expired : "..exp)

RippleHelper(btnStart).RippleColor=0x09000000
RippleHelper(btnStop).RippleColor=0x09000000
RippleHelper(btnStartG).RippleColor=0x09000000
RippleHelper(btnTG).RippleColor=0x09000000
RippleHelper(btnZL).RippleColor=0x09000000

function btnStartG.onClick()
  MyMenuDialog=MenuDialog(this);
  MyMenuDialog.setTitle("SELECT YOUR ZING SPEED VERSION",MenuDialog.setTextColor.DEFAULT);

  MyMenuDialog.addItem("ZING SPEED MOBILE",MenuDialog.setTextColor.BLACK,
  {onClick = function()
      if pcall(function() activity.getPackageManager().getPackageInfo("com.vng.speedvn",0) end) then
        this.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.vng.speedvn"))
       else
        viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://play.google.com/store/apps/details?id=com.vng.speedvn"))
        activity.startActivity(viewIntent)
        print("Can't find the game, please install")
      end
    end});

  MyMenuDialog.show();
end

function btnZL.onClick()
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://zalo.me/g/eixmxb426"))
  activity.startActivity(viewIntent)
end

function btnTG.onClick()
  viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://t.me/grduchan"))
  activity.startActivity(viewIntent)
end

function btnHow.onClick()
  txtHowOpen.setVisibility(View.GONE)
  BoxHow.setVisibility(View.VISIBLE)
end

FloatParameter=activity.getSystemService(Context.WINDOW_SERVICE)
HasFocus=false
FLOATNJENG =WindowManager.LayoutParams()
if Build.VERSION.SDK_INT >= 26 then FLOATNJENG.type =WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
 else FLOATNJENG.type =WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
end
import "android.graphics.PixelFormat"
FLOATNJENG.format =PixelFormat.RGBA_8888
FLOATNJENG.x = 0
FLOATNJENG.y = 0
FLOATNJENG.flags=WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE
FLOATNJENG.gravity = Gravity.LEFT | Gravity.TOP
FLOATNJENG.width = WindowManager.LayoutParams.WRAP_CONTENT
FLOATNJENG.height = WindowManager.LayoutParams.WRAP_CONTENT
floatWindow = loadlayout(floatLY)
isMax=false

function btnHide.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=FLOATNJENG.x
    wmY=FLOATNJENG.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    FLOATNJENG.x=wmX+(event.getRawX()-firstX)
    FLOATNJENG.y=wmY+(event.getRawY()-firstY)
    FloatParameter.updateViewLayout(floatWindow,FLOATNJENG)
   elseif event.getAction()==MotionEvent.ACTION_UP then
   else
  end return false end

function btnHideOpen.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=FLOATNJENG.x
    wmY=FLOATNJENG.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    FLOATNJENG.x=wmX+(event.getRawX()-firstX)
    FLOATNJENG.y=wmY+(event.getRawY()-firstY)
    FloatParameter.updateViewLayout(floatWindow,FLOATNJENG)
   elseif event.getAction()==MotionEvent.ACTION_UP then
   else
  end return false end

function CircleButton(view,InsideColor,STR,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setStroke(5, STR)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end

function btnHide.onClick(v)
  btnHide.setVisibility(View.GONE)
  fullV.setVisibility(View.VISIBLE)
end

function min.onClick(v)
  fullV.setVisibility(View.GONE)
  btnHide.setVisibility(View.VISIBLE)
end

function close.onClick(v)
  if isMax==true then
    isMax=false
    FloatParameter.removeView(floatWindow)
    fullV.setVisibility(View.GONE)
    btnHide.setVisibility(View.VISIBLE)
    print("The menu is closed")
  end
end

function btnStart.onClick()
  if isMax==false then
    isMax=true
    FloatParameter.addView(floatWindow,FLOATNJENG)
    print("Injector by: @duchan94")
   else
    print("Please close the current menu to open a new menu!")
  end
end

function btnStop.onClick()
  if isMax==true then
    isMax=false
    FloatParameter.removeView(floatWindow)
    fullV.setVisibility(View.GONE)
    btnHide.setVisibility(View.VISIBLE)
    print("The menu is closed")
  end
end
--------------

-----------------


CircleButton(fakev1,0xA0FF0000,0xFF894AF1,10)
function fakev1.onClick()
  if fakev1.checked then
    CircleButton(fakev1,0x5600FF00,0xFF894AF1,10)
    root("res/fakev1_on","ON FAKE SPEED")
   else
    CircleButton(fakev1,0xA0FF0000,0xFF894AF1,10)
    root("res/fakev1_off","OFF FAKE SPEED")
  end
end

CircleButton(fakev2,0xA0FF0000,0xFF894AF1,10)
function fakev2.onClick()
  if fakev2.checked then
    CircleButton(fakev2,0x5600FF00,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/fakev2_on","ON FAKE SPEED")
   else
    CircleButton(fakev2,0xA0FF0000,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/fakev2_off","OFF FAKE SPEED")
  end
end

CircleButton(tbdr,0xA0FF0000,0xFF894AF1,10)
function tbdr.onClick()
  if tbdr.checked then
    CircleButton(tbdr,0x5600FF00,0xFF894AF1,10)
    root("res/tbdr_on","ON TỐC BIẾN DRIFT")
   else
    CircleButton(tbdr,0xA0FF0000,0xFF894AF1,10)
    root("res/tbdr_off","OFF TỐC BIẾN DRIFT")
  end
end

CircleButton(attb,0xA0FF0000,0xFF894AF1,10)
function attb.onClick()
  if attb.checked then
    CircleButton(attb,0x5600FF00,0xFF894AF1,10)
    root("res/auto_on","ON AUTOTỐC BIẾN DRIFT")
   else
    CircleButton(attb,0xA0FF0000,0xFF894AF1,10)
    root("res/auto_off","OFF AUTO TỐC BIẾN DRIFT")
  end
end

CircleButton(item,0xA0FF0000,0xFF894AF1,10)
function item.onClick()
  if item.checked then
    CircleButton(item,0x5600FF00,0xFF894AF1,10)
    root("res/item_on","ON ITEM FULL TỐC")
   else
    CircleButton(item,0xA0FF0000,0xFF894AF1,10)
    root("res/item_off","OFF ITEM FULL TỐC")
  end
end

CircleButton(xn,0xA0FF0000,0xFF894AF1,10)
function xn.onClick()
  if xn.checked then
    CircleButton(xn,0x5600FF00,0xFF894AF1,10)
    root("res/xenang_on","ON XE NẶNG")
   else
    CircleButton(xn,0xA0FF0000,0xFF894AF1,10)
    root("res/xenang_off","OFF XE NẶNG")
  end
end

CircleButton(ht,0xA0FF0000,0xFF894AF1,10)
function ht.onClick()
  if ht.checked then
    CircleButton(ht,0x5600FF00,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/hittuong_on","ON HÍT TƯỜNG")
   else
    CircleButton(ht,0xA0FF0000,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/hittuong_off","OFF HÍT TƯỜNG")
  end
end

CircleButton(bt,0xA0FF0000,0xFF894AF1,10)
function bt.onClick()
  if bt.checked then
    CircleButton(bt,0x5600FF00,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/battuong_on","ON BẬT TƯỜNG")
   else
    CircleButton(bt,0xA0FF0000,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/battuong_off","OFF BẬT TƯỜNG")
  end
end

CircleButton(qx,0xA0FF0000,0xFF894AF1,10)
function qx.onClick()
  if qx.checked then
    CircleButton(qx,0x5600FF00,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/quayxe_on","ON QUAY XE")
   else
    CircleButton(qx,0xA0FF0000,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/quayxe_off","OFF QUAY XE")
  end
end

CircleButton(kp,0xA0FF0000,0xFF894AF1,10)
function kp.onClick()
  if kp.checked then
    CircleButton(kp,0x5600FF00,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/khoaphanh_on","ON KHOÁ PHANH")
   else
    CircleButton(kp,0xA0FF0000,0xFF894AF1,10)
    root("res/kill","Nguyễn Đức Hân")
    root("res/khoaphanh_off","OFF KHOÁ PHANH")
  end
end


btnLogout.onClick=function()
  LoginLY()
end
