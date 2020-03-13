Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB911842E8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 09:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196936EB95;
	Fri, 13 Mar 2020 08:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E316EB95
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 08:49:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 01:49:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; 
 d="scan'208,217";a="243314115"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga003.jf.intel.com with ESMTP; 13 Mar 2020 01:49:31 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Mar 2020 08:49:30 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 08:49:30 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 13 Mar 2020 08:49:30 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helpers
Thread-Index: AQHV9i4Tk0u3HzOHN0aWu4NbMnQsiahDklwAgAKozoY=
Date: Fri, 13 Mar 2020 08:49:30 +0000
Message-ID: <9ffa74c26bc349aab1bd2fe8f427f451@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-4-stanislav.lisovskiy@intel.com>,
 <20200311160854.GB13686@intel.com>
In-Reply-To: <20200311160854.GB13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state
 helpers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1074642418=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1074642418==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ffa74c26bc349aab1bd2fe8f427f451intelcom_"

--_000_9ffa74c26bc349aab1bd2fe8f427f451intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> Add correspondent helpers to be able to get old/new bandwidth
>> global state object.
>>
>> v2: - Fixed typo in function call
>> v3: - Changed new functions naming to use convention proposed
>>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.

>Still nak on the rename.

Cool. Discuss it with Jani Nikula then, to have at least some common strate=
gy on how to be picky on me.

Best Regards,

Lisovskiy Stanislav
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Wednesday, March 11, 2020 6:08:54 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helpers

On Mon, Mar 09, 2020 at 06:11:59PM +0200, Stanislav Lisovskiy wrote:
> Add correspondent helpers to be able to get old/new bandwidth
> global state object.
>
> v2: - Fixed typo in function call
> v3: - Changed new functions naming to use convention proposed
>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.

Still nak on the rename.

>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 33 ++++++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++++
>  2 files changed, 39 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 58b264bc318d..bdad7476dc7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -374,8 +374,35 @@ static unsigned int intel_bw_data_rate(struct drm_i9=
15_private *dev_priv,
>        return data_rate;
>  }
>
> -static struct intel_bw_state *
> -intel_atomic_get_bw_state(struct intel_atomic_state *state)
> +struct intel_bw_state *
> +intel_bw_get_old_state(struct intel_atomic_state *state)
> +{
> +     struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +     struct intel_global_state *bw_state;
> +
> +     bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_priv=
->bw_obj);
> +     if (IS_ERR(bw_state))
> +             return ERR_CAST(bw_state);
> +
> +     return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_bw_get_new_state(struct intel_atomic_state *state)
> +{
> +     struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +     struct intel_global_state *bw_state;
> +
> +     bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_priv=
->bw_obj);
> +
> +     if (IS_ERR(bw_state))
> +             return ERR_CAST(bw_state);
> +
> +     return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_bw_get_state(struct intel_atomic_state *state)
>  {
>        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>        struct intel_global_state *bw_state;
> @@ -420,7 +447,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *=
state)
>                    old_active_planes =3D=3D new_active_planes)
>                        continue;
>
> -             bw_state  =3D intel_atomic_get_bw_state(state);
> +             bw_state  =3D intel_bw_get_state(state);
>                if (IS_ERR(bw_state))
>                        return PTR_ERR(bw_state);
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index a8aa7624c5aa..b5f61463922f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,15 @@ struct intel_bw_state {
>
>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
>
> +struct intel_bw_state *
> +intel_bw_get_old_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_bw_get_new_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_bw_get_state(struct intel_atomic_state *state);
> +
>  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
>  int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
> --
> 2.24.1.485.gad05a3d8e5

--
Ville Syrj=E4l=E4
Intel

--_000_9ffa74c26bc349aab1bd2fe8f427f451intelcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p></p>
<pre class=3D"x_content" style=3D"overflow:auto; font-family:Menlo,Monaco,C=
onsolas,&quot;Courier New&quot;,monospace; font-size:13px; padding:9.5px; m=
argin-top:0px; margin-bottom:10px; line-height:14.3px; word-break:break-all=
; border:0px; border-radius:0px"><span class=3D"x_quote" style=3D""><font c=
olor=3D"#333333">&gt;</font></span><span class=3D"x_quote" style=3D"color:r=
gb(0,127,0)">&gt; Add correspondent helpers to be able to get old/new bandw=
idth</span><font color=3D"#333333">=0A=
</font><span class=3D"x_quote" style=3D"color:rgb(0,127,0)">&gt;&gt; global=
 state object.</span><font color=3D"#333333">=0A=
</font><span class=3D"x_quote" style=3D"color:rgb(0,127,0)">&gt;&gt; </span=
><font color=3D"#333333">=0A=
</font><span class=3D"x_quote" style=3D"color:rgb(0,127,0)">&gt;&gt; v2: - =
Fixed typo in function call</span><font color=3D"#333333">=0A=
</font><span class=3D"x_quote" style=3D"color:rgb(0,127,0)">&gt;&gt; v3: - =
Changed new functions naming to use convention proposed</span><font color=
=3D"#333333">=0A=
</font><span class=3D"x_quote" style=3D"color:rgb(0,127,0)">&gt;&gt;       =
by Jani Nikula, i.e intel_bw_* in intel_bw.c file.</span><font color=3D"#33=
3333">=0A=
=0A=
&gt;Still nak on the rename.</font></pre>
<pre class=3D"x_content" style=3D"overflow:auto; font-family:Menlo,Monaco,C=
onsolas,&quot;Courier New&quot;,monospace; font-size:13px; padding:9.5px; m=
argin-top:0px; margin-bottom:10px; line-height:14.3px; word-break:break-all=
; border:0px; border-radius:0px"><font color=3D"#333333">Cool. Discuss it w=
ith Jani Nikula then, to have at least some common strategy on how to be pi=
cky on me.</font></pre>
<pre class=3D"x_content" style=3D"overflow:auto; font-family:Menlo,Monaco,C=
onsolas,&quot;Courier New&quot;,monospace; font-size:13px; padding:9.5px; m=
argin-top:0px; margin-bottom:10px; line-height:14.3px; word-break:break-all=
; border:0px; border-radius:0px"></pre>
<p></p>
<div id=3D"x_Signature">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt">Best Regards,<br>
<br>
Lisovskiy Stanislav <br>
</span></font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrj=E4l=E4 &=
lt;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Wednesday, March 11, 2020 6:08:54 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state help=
ers</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Mon, Mar 09, 2020 at 06:11:59PM &#43;0200, Stan=
islav Lisovskiy wrote:<br>
&gt; Add correspondent helpers to be able to get old/new bandwidth<br>
&gt; global state object.<br>
&gt; <br>
&gt; v2: - Fixed typo in function call<br>
&gt; v3: - Changed new functions naming to use convention proposed<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by Jani Nikula, i.e intel_bw_* in =
intel_bw.c file.<br>
<br>
Still nak on the rename.<br>
<br>
&gt; <br>
&gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.c | 33 &#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.h |&nbsp; 9 &#43;&#43;&#43=
;&#43;&#43;&#43;&#43;<br>
&gt;&nbsp; 2 files changed, 39 insertions(&#43;), 3 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm=
/i915/display/intel_bw.c<br>
&gt; index 58b264bc318d..bdad7476dc7b 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; @@ -374,8 &#43;374,35 @@ static unsigned int intel_bw_data_rate(struct=
 drm_i915_private *dev_priv,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return data_rate;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -static struct intel_bw_state *<br>
&gt; -intel_atomic_get_bw_state(struct intel_atomic_state *state)<br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_old_state(struct intel_atomic_state *state)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(state-&gt;base.dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *bw_state;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_atomic_get_old_global=
_obj_state(state, &amp;dev_priv-&gt;bw_obj);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return ERR_CAST(bw_state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_bw_state(bw_state);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_new_state(struct intel_atomic_state *state)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =3D to=
_i915(state-&gt;base.dev);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *bw_state;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_atomic_get_new_global=
_obj_state(state, &amp;dev_priv-&gt;bw_obj);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; return ERR_CAST(bw_state);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_bw_state(bw_state);<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_state(struct intel_atomic_state *state)<br>
&gt;&nbsp; {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev=
_priv =3D to_i915(state-&gt;base.dev);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *b=
w_state;<br>
&gt; @@ -420,7 &#43;447,7 @@ int intel_bw_atomic_check(struct intel_atomic_=
state *state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_active_planes =3D=3D new_ac=
tive_planes)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continu=
e;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; bw_state&nbsp; =3D intel_atomic_get_bw_state(state);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; bw_state&nbsp; =3D intel_bw_get_state(state);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
PTR_ERR(bw_state);<br>
&gt;&nbsp; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm=
/i915/display/intel_bw.h<br>
&gt; index a8aa7624c5aa..b5f61463922f 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; @@ -24,6 &#43;24,15 @@ struct intel_bw_state {<br>
&gt;&nbsp; <br>
&gt;&nbsp; #define to_intel_bw_state(x) container_of((x), struct intel_bw_s=
tate, base)<br>
&gt;&nbsp; <br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_old_state(struct intel_atomic_state *state);<br>
&gt; &#43;<br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_new_state(struct intel_atomic_state *state);<br>
&gt; &#43;<br>
&gt; &#43;struct intel_bw_state *<br>
&gt; &#43;intel_bw_get_state(struct intel_atomic_state *state);<br>
&gt; &#43;<br>
&gt;&nbsp; void intel_bw_init_hw(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; int intel_bw_init(struct drm_i915_private *dev_priv);<br>
&gt;&nbsp; int intel_bw_atomic_check(struct intel_atomic_state *state);<br>
&gt; -- <br>
&gt; 2.24.1.485.gad05a3d8e5<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font>
</body>
</html>

--_000_9ffa74c26bc349aab1bd2fe8f427f451intelcom_--

--===============1074642418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1074642418==--
