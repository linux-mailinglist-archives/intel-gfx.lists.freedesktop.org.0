Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDC717969C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 18:23:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A026EB45;
	Wed,  4 Mar 2020 17:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16D96EB45
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 17:23:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 09:23:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,514,1574150400"; 
 d="scan'208,217";a="274745585"
Received: from irsmsx106.ger.corp.intel.com ([163.33.3.31])
 by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2020 09:23:06 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX106.ger.corp.intel.com (163.33.3.31) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 17:23:05 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Mar 2020 17:23:05 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 4 Mar 2020 17:23:05 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 07/20] drm/i915: Unify the low level dbuf code
Thread-Index: AQHV6/6uiGNLB8c1mE6/dzTFurMHp6g4upAz
Date: Wed, 4 Mar 2020 17:23:05 +0000
Message-ID: <f0907e9776be49c8ab171a0a0caf900a@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>,
 <20200225171125.28885-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 07/20] drm/i915: Unify the low level dbuf
 code
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0646986691=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0646986691==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f0907e9776be49c8ab171a0a0caf900aintelcom_"

--_000_f0907e9776be49c8ab171a0a0caf900aintelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


>-       /* If 2nd DBuf slice required, enable it here */
>        if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_sl=
ices)
>-               icl_dbuf_slices_update(dev_priv, slices_union);
>+               gen9_dbuf_slices_update(dev_priv, slices_union);
>}

> static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
>@@ -15307,9 +15306,8 @@ static void icl_dbuf_slice_post_update(struct inte=
l_atomic_state *state)
>        u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
>        u8 required_slices =3D state->enabled_dbuf_slices_mask;

>-       /* If 2nd DBuf slice is no more required disable it */
>         if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enable=
d_slices)
>-               icl_dbuf_slices_update(dev_priv, required_slices);
>+               gen9_dbuf_slices_update(dev_priv, required_slices);


Doesn't make much sense. Just look - previously we were checking if INTEL_G=
EN is >=3D than 11(which _is_ ICL)

and now we still _do_ check if INTEL_GEN is >=3D 11, but... call now functi=
on renamed to gen9


I guess you either need to change INTEL_GEN check to be >=3D9 to at least l=
ook somewhat consistent

or leave it as is. Or at least rename icl_ prefix to gen11_ otherwise that =
looks inconsistent, i.e

you are now checking that gen is >=3D 11 and then OK - now let's call gen 9=
! :)


Stan

________________________________
From: Ville Syrjala <ville.syrjala@linux.intel.com>
Sent: Tuesday, February 25, 2020 7:11:12 PM
To: intel-gfx@lists.freedesktop.org
Cc: Lisovskiy, Stanislav
Subject: [PATCH v2 07/20] drm/i915: Unify the low level dbuf code

From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

The low level dbuf slice code is rather inconsitent with its
functiona naming and organization. Make it more consistent.

Also share the enable/disable functions between all platforms
since the same code works just fine for all of them.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
 .../drm/i915/display/intel_display_power.c    | 44 ++++++++-----------
 .../drm/i915/display/intel_display_power.h    |  6 +--
 3 files changed, 24 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 3031e64ee518..6952c398cc43 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15296,9 +15296,8 @@ static void icl_dbuf_slice_pre_update(struct intel_=
atomic_state *state)
         u8 required_slices =3D state->enabled_dbuf_slices_mask;
         u8 slices_union =3D hw_enabled_slices | required_slices;

-       /* If 2nd DBuf slice required, enable it here */
         if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_sl=
ices)
-               icl_dbuf_slices_update(dev_priv, slices_union);
+               gen9_dbuf_slices_update(dev_priv, slices_union);
 }

 static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
@@ -15307,9 +15306,8 @@ static void icl_dbuf_slice_post_update(struct intel=
_atomic_state *state)
         u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
         u8 required_slices =3D state->enabled_dbuf_slices_mask;

-       /* If 2nd DBuf slice is no more required disable it */
         if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enabled=
_slices)
-               icl_dbuf_slices_update(dev_priv, required_slices);
+               gen9_dbuf_slices_update(dev_priv, required_slices);
 }

 static void skl_commit_modeset_enables(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index e81e561e8ac0..ce3bbc4c7a27 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4433,15 +4433,18 @@ static void intel_power_domains_sync_hw(struct drm_=
i915_private *dev_priv)
         mutex_unlock(&power_domains->lock);
 }

-static void intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
-                                enum dbuf_slice slice, bool enable)
+static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,
+                               enum dbuf_slice slice, bool enable)
 {
         i915_reg_t reg =3D DBUF_CTL_S(slice);
         bool state;
         u32 val;

         val =3D intel_de_read(dev_priv, reg);
-       val =3D enable ? (val | DBUF_POWER_REQUEST) : (val & ~DBUF_POWER_RE=
QUEST);
+       if (enable)
+               val |=3D DBUF_POWER_REQUEST;
+       else
+               val &=3D ~DBUF_POWER_REQUEST;
         intel_de_write(dev_priv, reg, val);
         intel_de_posting_read(dev_priv, reg);
         udelay(10);
@@ -4452,18 +4455,8 @@ static void intel_dbuf_slice_set(struct drm_i915_pri=
vate *dev_priv,
                  slice, enable ? "enable" : "disable");
 }

-static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
-{
-       icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
-}
-
-static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
-{
-       icl_dbuf_slices_update(dev_priv, 0);
-}
-
-void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
-                           u8 req_slices)
+void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
+                            u8 req_slices)
 {
         int num_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_slices=
;
         struct i915_power_domains *power_domains =3D &dev_priv->power_doma=
ins;
@@ -4486,28 +4479,29 @@ void icl_dbuf_slices_update(struct drm_i915_private=
 *dev_priv,
         mutex_lock(&power_domains->lock);

         for (slice =3D DBUF_S1; slice < num_slices; slice++)
-               intel_dbuf_slice_set(dev_priv, slice,
-                                    req_slices & BIT(slice));
+               gen9_dbuf_slice_set(dev_priv, slice, req_slices & BIT(slice=
));

         dev_priv->enabled_dbuf_slices_mask =3D req_slices;

         mutex_unlock(&power_domains->lock);
 }

-static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
+static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 {
-       skl_ddb_get_hw_state(dev_priv);
+       dev_priv->enabled_dbuf_slices_mask =3D
+               intel_enabled_dbuf_slices_mask(dev_priv);
+
         /*
          * Just power up at least 1 slice, we will
          * figure out later which slices we have and what we need.
          */
-       icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask=
 |
-                              BIT(DBUF_S1));
+       gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
+                               dev_priv->enabled_dbuf_slices_mask);
 }

-static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
+static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
 {
-       icl_dbuf_slices_update(dev_priv, 0);
+       gen9_dbuf_slices_update(dev_priv, 0);
 }

 static void icl_mbus_init(struct drm_i915_private *dev_priv)
@@ -5067,7 +5061,7 @@ static void icl_display_core_init(struct drm_i915_pri=
vate *dev_priv,
         intel_cdclk_init_hw(dev_priv);

         /* 5. Enable DBUF. */
-       icl_dbuf_enable(dev_priv);
+       gen9_dbuf_enable(dev_priv);

         /* 6. Setup MBUS. */
         icl_mbus_init(dev_priv);
@@ -5090,7 +5084,7 @@ static void icl_display_core_uninit(struct drm_i915_p=
rivate *dev_priv)
         /* 1. Disable all display engine functions -> aready done */

         /* 2. Disable DBUF */
-       icl_dbuf_disable(dev_priv);
+       gen9_dbuf_disable(dev_priv);

         /* 3. Disable CD clock */
         intel_cdclk_uninit_hw(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/g=
pu/drm/i915/display/intel_display_power.h
index 601e000ffd0d..1a275611241e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -312,13 +312,13 @@ enum dbuf_slice {
         DBUF_S2,
 };

+void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
+                            u8 req_slices);
+
 #define with_intel_display_power(i915, domain, wf) \
         for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
              intel_display_power_put_async((i915), (domain), (wf)), (wf) =
=3D 0)

-void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
-                           u8 req_slices);
-
 void chv_phy_powergate_lanes(struct intel_encoder *encoder,
                              bool override, unsigned int mask);
 bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy=
 phy,
--
2.24.1


--_000_f0907e9776be49c8ab171a0a0caf900aintelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p><br>
</p>
<meta content=3D"text/html; charset=3DUTF-8">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* If 2nd DB=
uf slice required, enable it here */</span><br style=3D"color:rgb(33,33,33)=
; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,=
Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; if (INTEL_GEN(dev_priv=
) &gt;=3D 11 &amp;&amp; slices_union !=3D hw_enabled_slices)</span><br styl=
e=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quo=
t;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:=
13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, slices=
_union);</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_no=
rmal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,seri=
f,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv, s=
lices_union);</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-=
ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif=
,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;}</span><br style=3D"color:rgb(33,33,33); font-fam=
ily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ari=
al,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp;</span><br style=3D"color:rgb(33,33,33); font-fa=
mily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ar=
ial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt; static void icl_dbuf_slice_post_update(struct int=
el_atomic_state *state)</span><br style=3D"color:rgb(33,33,33); font-family=
:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,=
sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;@@ -15307,9 &#43;15306,8 @@ static void icl_dbuf_s=
lice_post_update(struct intel_atomic_state *state)</span><br style=3D"color=
:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;S=
egoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"=
>
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; u8 hw_enabled_slices =
=3D dev_priv-&gt;enabled_dbuf_slices_mask;</span><br style=3D"color:rgb(33,=
33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&=
quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; u8 required_slices =3D=
 state-&gt;enabled_dbuf_slices_mask;</span><br style=3D"color:rgb(33,33,33)=
; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,=
Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&nbsp;</span><br style=3D"color:rgb(33,33,33); font-fa=
mily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ar=
ial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* If 2nd DB=
uf slice is no more required disable it */</span><br style=3D"color:rgb(33,=
33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&=
quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (INTEL_GEN(de=
v_priv) &gt;=3D 11 &amp;&amp; required_slices !=3D hw_enabled_slices)</span=
><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; f=
ont-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, requir=
ed_slices);</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui=
_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,s=
erif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv, r=
equired_slices);</span><br>
</p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px"><br>
</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">Doesn't make much sense. Just look - previously we wer=
e checking if INTEL_GEN is &gt;=3D than 11(which _is_&nbsp;ICL)</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">and now we still _do_ check if INTEL_GEN is &gt;=3D 11=
, but... call now function renamed to gen9</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px"><br>
</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">I guess you either need to change INTEL_GEN check to b=
e &gt;=3D9 to at least look somewhat consistent</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">or leave it as is. Or at least rename icl_ prefix to g=
en11_ otherwise that looks inconsistent, i.e</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">you are now checking that gen is &gt;=3D 11 and then O=
K - now let's call gen&nbsp;9! :)</span></p>
<p style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; font-size:16px">
<br>
</p>
<div id=3D"x_Signature" style=3D"font-family:Calibri,Helvetica,sans-serif,E=
mojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColor=
Emoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; f=
ont-size:16px">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt">Stan</span></font></div>
</div>
<p></p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrjala &lt;v=
ille.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Tuesday, February 25, 2020 7:11:12 PM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org<br>
<b>Cc:</b> Lisovskiy, Stanislav<br>
<b>Subject:</b> [PATCH v2 07/20] drm/i915: Unify the low level dbuf code</f=
ont>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText">From: Ville Syrj=E4l=E4 &lt;ville.syrjala@linux.in=
tel.com&gt;<br>
<br>
The low level dbuf slice code is rather inconsitent with its<br>
functiona naming and organization. Make it more consistent.<br>
<br>
Also share the enable/disable functions between all platforms<br>
since the same code works just fine for all of them.<br>
<br>
Cc: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&gt;<br>
Signed-off-by: Ville Syrj=E4l=E4 &lt;ville.syrjala@linux.intel.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_display.c&nbsp; |&nbsp; 6 &#43;--<=
br>
&nbsp;.../drm/i915/display/intel_display_power.c&nbsp;&nbsp;&nbsp; | 44 &#4=
3;&#43;&#43;&#43;&#43;&#43;&#43;&#43;-----------<br>
&nbsp;.../drm/i915/display/intel_display_power.h&nbsp;&nbsp;&nbsp; |&nbsp; =
6 &#43;--<br>
&nbsp;3 files changed, 24 insertions(&#43;), 32 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c<br>
index 3031e64ee518..6952c398cc43 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display.c<br>
&#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display.c<br>
@@ -15296,9 &#43;15296,8 @@ static void icl_dbuf_slice_pre_update(struct in=
tel_atomic_state *state)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 required_slices =3D sta=
te-&gt;enabled_dbuf_slices_mask;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 slices_union =3D hw_ena=
bled_slices | required_slices;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* If 2nd DBuf slice required, enable=
 it here */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_GEN(dev_priv) &g=
t;=3D 11 &amp;&amp; slices_union !=3D hw_enabled_slices)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; icl_dbuf_slices_update(dev_priv, slices_union);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv, slices_union);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static void icl_dbuf_slice_post_update(struct intel_atomic_state *sta=
te)<br>
@@ -15307,9 &#43;15306,8 @@ static void icl_dbuf_slice_post_update(struct i=
ntel_atomic_state *state)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 hw_enabled_slices =3D d=
ev_priv-&gt;enabled_dbuf_slices_mask;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u8 required_slices =3D sta=
te-&gt;enabled_dbuf_slices_mask;<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* If 2nd DBuf slice is no more requi=
red disable it */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (INTEL_GEN(dev_priv) &g=
t;=3D 11 &amp;&amp; required_slices !=3D hw_enabled_slices)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; icl_dbuf_slices_update(dev_priv, required_slices);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv, required_slices);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static void skl_commit_modeset_enables(struct intel_atomic_state *sta=
te)<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c<br>
index e81e561e8ac0..ce3bbc4c7a27 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display_power.c<br>
&#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display_power.c<br>
@@ -4433,15 &#43;4433,18 @@ static void intel_power_domains_sync_hw(struct =
drm_i915_private *dev_priv)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_unlock(&amp;power_do=
mains-&gt;lock);<br>
&nbsp;}<br>
&nbsp;<br>
-static void intel_dbuf_slice_set(struct drm_i915_private *dev_priv,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum dbuf_slice slice, bool enable)<b=
r>
&#43;static void gen9_dbuf_slice_set(struct drm_i915_private *dev_priv,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; enum dbuf_slice slice, bool enable)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; i915_reg_t reg =3D DBUF_CT=
L_S(slice);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool state;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 val;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; val =3D intel_de_read(dev_=
priv, reg);<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; val =3D enable ? (val | DBUF_POWER_RE=
QUEST) : (val &amp; ~DBUF_POWER_REQUEST);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (enable)<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; val |=3D DBUF_POWER_REQUEST;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; val &amp;=3D ~DBUF_POWER_REQUEST;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_write(dev_priv, r=
eg, val);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_de_posting_read(dev_=
priv, reg);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; udelay(10);<br>
@@ -4452,18 &#43;4455,8 @@ static void intel_dbuf_slice_set(struct drm_i915=
_private *dev_priv,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; slice, enable ? &quot;enable&quot; : &quot;disa=
ble&quot;);<br>
&nbsp;}<br>
&nbsp;<br>
-static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)<br>
-{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, BIT(=
DBUF_S1));<br>
-}<br>
-<br>
-static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)<br>
-{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, 0);<=
br>
-}<br>
-<br>
-void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; u8 req_slices)<br>
&#43;void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; u8 req_slices)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int num_slices =3D INTEL_I=
NFO(dev_priv)-&gt;num_supported_dbuf_slices;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct i915_power_domains =
*power_domains =3D &amp;dev_priv-&gt;power_domains;<br>
@@ -4486,28 &#43;4479,29 @@ void icl_dbuf_slices_update(struct drm_i915_pri=
vate *dev_priv,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_lock(&amp;power_doma=
ins-&gt;lock);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (slice =3D DBUF_S1; sl=
ice &lt; num_slices; slice&#43;&#43;)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; intel_dbuf_slice_set(dev_priv, slice,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; req_slices &a=
mp; BIT(slice));<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; gen9_dbuf_slice_set(dev_priv, slice, req_slices &amp; BIT(sl=
ice));<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_priv-&gt;enabled_dbuf_=
slices_mask =3D req_slices;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mutex_unlock(&amp;power_do=
mains-&gt;lock);<br>
&nbsp;}<br>
&nbsp;<br>
-static void icl_dbuf_enable(struct drm_i915_private *dev_priv)<br>
&#43;static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_ddb_get_hw_state(dev_priv);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_priv-&gt;enabled_dbuf_slices_=
mask =3D<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; intel_enabled_dbuf_slices_mask(dev_priv);<br>
&#43;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Just power up at l=
east 1 slice, we will<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * figure out later w=
hich slices we have and what we need.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, dev_=
priv-&gt;enabled_dbuf_slices_mask |<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; BIT(DBUF_S1));<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv,=
 BIT(DBUF_S1) |<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dev_priv-&gt;enabled_dbuf_slices_mask);=
<br>
&nbsp;}<br>
&nbsp;<br>
-static void icl_dbuf_disable(struct drm_i915_private *dev_priv)<br>
&#43;static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)<br>
&nbsp;{<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_slices_update(dev_priv, 0);<=
br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_slices_update(dev_priv,=
 0);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static void icl_mbus_init(struct drm_i915_private *dev_priv)<br>
@@ -5067,7 &#43;5061,7 @@ static void icl_display_core_init(struct drm_i915=
_private *dev_priv,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_cdclk_init_hw(dev_pr=
iv);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* 5. Enable DBUF. */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_enable(dev_priv);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_enable(dev_priv);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* 6. Setup MBUS. */<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_mbus_init(dev_priv);<b=
r>
@@ -5090,7 &#43;5084,7 @@ static void icl_display_core_uninit(struct drm_i9=
15_private *dev_priv)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* 1. Disable all display =
engine functions -&gt; aready done */<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* 2. Disable DBUF */<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; icl_dbuf_disable(dev_priv);<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gen9_dbuf_disable(dev_priv);<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* 3. Disable CD clock */<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_cdclk_uninit_hw(dev_=
priv);<br>
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/g=
pu/drm/i915/display/intel_display_power.h<br>
index 601e000ffd0d..1a275611241e 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_display_power.h<br>
&#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_display_power.h<br>
@@ -312,13 &#43;312,13 @@ enum dbuf_slice {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DBUF_S2,<br>
&nbsp;};<br>
&nbsp;<br>
&#43;void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; u8 req_slices);<br>
&#43;<br>
&nbsp;#define with_intel_display_power(i915, domain, wf) \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for ((wf) =3D intel_displa=
y_power_get((i915), (domain)); (wf); \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)<br>
&nbsp;<br>
-void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; u8 req_slices);<br>
-<br>
&nbsp;void chv_phy_powergate_lanes(struct intel_encoder *encoder,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; bool override, unsigned int mask);<br>
&nbsp;bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpi=
o_phy phy,<br>
-- <br>
2.24.1<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_f0907e9776be49c8ab171a0a0caf900aintelcom_--

--===============0646986691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0646986691==--
