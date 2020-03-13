Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B562D18489B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 14:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0855C6EBCA;
	Fri, 13 Mar 2020 13:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DCA76E9CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 13:58:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 06:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; 
 d="scan'208,217";a="235335557"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga007.fm.intel.com with ESMTP; 13 Mar 2020 06:57:59 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Mar 2020 13:57:58 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 13:57:58 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 13 Mar 2020 13:57:58 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helpers
Thread-Index: AQHV9i4Tk0u3HzOHN0aWu4NbMnQsiahDklwAgAKozoaAAE5mgIAABDK0
Date: Fri, 13 Mar 2020 13:57:58 +0000
Message-ID: <93708764786145ff9c8ee2c84af6ff41@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-4-stanislav.lisovskiy@intel.com>
 <20200311160854.GB13686@intel.com>
 <9ffa74c26bc349aab1bd2fe8f427f451@intel.com>,
 <20200313132611.GK13686@intel.com>
In-Reply-To: <20200313132611.GK13686@intel.com>
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
Content-Type: multipart/mixed; boundary="===============0131154532=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0131154532==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_93708764786145ff9c8ee2c84af6ff41intelcom_"

--_000_93708764786145ff9c8ee2c84af6ff41intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> >> Add correspondent helpers to be able to get old/new bandwidth
>> >> global state object.
>> >>
>> >> v2: - Fixed typo in function call
>> >> v3: - Changed new functions naming to use convention proposed
>> >>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
>>
>> >Still nak on the rename.
>>
>> Cool. Discuss it with Jani Nikula then, to have at least some common str=
ategy on how to be picky on me.

>The strategy is either rename all of these functions or none so that we
>don't end up with random inconsistencies all over the place.


Initially Jani Nikula wrote that he is trying to encourage people to call f=
unctions

starting with the module name. OK. Done it.


You say that the opposite and nack. Now it just turns out that it is again =
_me_ - poor minded, who didn't understand that I need to rename

all functions now here as well, including those completely unrelated to tha=
t patch.

Sure - we have "plenty" of time!


Or may be I shouldn't rename - kind of confused now.


Best Regards,

Lisovskiy Stanislav
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Friday, March 13, 2020 3:26:11 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helpers

On Fri, Mar 13, 2020 at 08:49:30AM +0000, Lisovskiy, Stanislav wrote:
> >> Add correspondent helpers to be able to get old/new bandwidth
> >> global state object.
> >>
> >> v2: - Fixed typo in function call
> >> v3: - Changed new functions naming to use convention proposed
> >>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
>
> >Still nak on the rename.
>
> Cool. Discuss it with Jani Nikula then, to have at least some common stra=
tegy on how to be picky on me.

The strategy is either rename all of these functions or none so that we
don't end up with random inconsistencies all over the place.

>
> Best Regards,
>
> Lisovskiy Stanislav
> ________________________________
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, March 11, 2020 6:08:54 PM
> To: Lisovskiy, Stanislav
> Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper=
, Matthew D
> Subject: Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helpers
>
> On Mon, Mar 09, 2020 at 06:11:59PM +0200, Stanislav Lisovskiy wrote:
> > Add correspondent helpers to be able to get old/new bandwidth
> > global state object.
> >
> > v2: - Fixed typo in function call
> > v3: - Changed new functions naming to use convention proposed
> >       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
>
> Still nak on the rename.
>
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 33 ++++++++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++++
> >  2 files changed, 39 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/=
i915/display/intel_bw.c
> > index 58b264bc318d..bdad7476dc7b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -374,8 +374,35 @@ static unsigned int intel_bw_data_rate(struct drm_=
i915_private *dev_priv,
> >        return data_rate;
> >  }
> >
> > -static struct intel_bw_state *
> > -intel_atomic_get_bw_state(struct intel_atomic_state *state)
> > +struct intel_bw_state *
> > +intel_bw_get_old_state(struct intel_atomic_state *state)
> > +{
> > +     struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +     struct intel_global_state *bw_state;
> > +
> > +     bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_pr=
iv->bw_obj);
> > +     if (IS_ERR(bw_state))
> > +             return ERR_CAST(bw_state);
> > +
> > +     return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> > +intel_bw_get_new_state(struct intel_atomic_state *state)
> > +{
> > +     struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> > +     struct intel_global_state *bw_state;
> > +
> > +     bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_pr=
iv->bw_obj);
> > +
> > +     if (IS_ERR(bw_state))
> > +             return ERR_CAST(bw_state);
> > +
> > +     return to_intel_bw_state(bw_state);
> > +}
> > +
> > +struct intel_bw_state *
> > +intel_bw_get_state(struct intel_atomic_state *state)
> >  {
> >        struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> >        struct intel_global_state *bw_state;
> > @@ -420,7 +447,7 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
> >                    old_active_planes =3D=3D new_active_planes)
> >                        continue;
> >
> > -             bw_state  =3D intel_atomic_get_bw_state(state);
> > +             bw_state  =3D intel_bw_get_state(state);
> >                if (IS_ERR(bw_state))
> >                        return PTR_ERR(bw_state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/=
i915/display/intel_bw.h
> > index a8aa7624c5aa..b5f61463922f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > @@ -24,6 +24,15 @@ struct intel_bw_state {
> >
> >  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, =
base)
> >
> > +struct intel_bw_state *
> > +intel_bw_get_old_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_bw_get_new_state(struct intel_atomic_state *state);
> > +
> > +struct intel_bw_state *
> > +intel_bw_get_state(struct intel_atomic_state *state);
> > +
> >  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
> >  int intel_bw_init(struct drm_i915_private *dev_priv);
> >  int intel_bw_atomic_check(struct intel_atomic_state *state);
> > --
> > 2.24.1.485.gad05a3d8e5
>
> --
> Ville Syrj=E4l=E4
> Intel

--
Ville Syrj=E4l=E4
Intel

--_000_93708764786145ff9c8ee2c84af6ff41intelcom_
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
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">&gt;&gt; &gt;&gt; Add correspondent helpers to be a=
ble to get old/new bandwidth</span><br style=3D"color:rgb(33,33,33); font-f=
amily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,A=
rial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;&gt; global state object.</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;&gt;</span><br style=3D"color:rgb(33,33,3=
3); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot=
;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;&gt; v2: - Fixed typo in function call</s=
pan><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;=
Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont=
; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;&gt; v3: - Changed new functions naming t=
o use convention proposed</span><br style=3D"color:rgb(33,33,33); font-fami=
ly:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
by Jani Nikula, i.e intel_bw_* in intel_bw.c file.</span><br style=3D"color=
:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;S=
egoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"=
>
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;</span><br style=3D"color:rgb(33,33,33); font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &gt;Still nak on the rename.</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;</span><br style=3D"color:rgb(33,33,33); font-=
family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,=
Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; Cool. Discuss it with Jani Nikula then, to ha=
ve at least some common strategy on how to be picky on me.</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;The strategy is either rename all of these functio=
ns or none so that we</span><br style=3D"color:rgb(33,33,33); font-family:w=
f_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sa=
ns-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;don't end up with random inconsistencies all over =
the place.</span><br>
</p>
<p><br>
</p>
<p>Initially Jani Nikula wrote that he is trying to encourage people to cal=
l functions</p>
<p>starting with the module name. OK. Done it.</p>
<p><br>
</p>
<p>You say that the opposite and nack. Now it just turns&nbsp;<span style=
=3D"font-size:12pt">out that it is again _me_ - poor minded, who didn't und=
erstand that I need to rename</span></p>
<p>all functions now here as well, including those completely unrelated to =
that patch.</p>
<p><span style=3D"font-size:12pt">Sure - we have &quot;plenty&quot; of time=
!</span></p>
<p><br>
</p>
<p>Or may be I shouldn't rename - kind of confused now.&nbsp;</p>
<p><br>
</p>
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
<b>Sent:</b> Friday, March 13, 2020 3:26:11 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state help=
ers</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Fri, Mar 13, 2020 at 08:49:30AM &#43;0000, Liso=
vskiy, Stanislav wrote:<br>
&gt; &gt;&gt; Add correspondent helpers to be able to get old/new bandwidth=
<br>
&gt; &gt;&gt; global state object.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; v2: - Fixed typo in function call<br>
&gt; &gt;&gt; v3: - Changed new functions naming to use convention proposed=
<br>
&gt; &gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by Jani Nikula, i.e intel=
_bw_* in intel_bw.c file.<br>
&gt; <br>
&gt; &gt;Still nak on the rename.<br>
&gt; <br>
&gt; Cool. Discuss it with Jani Nikula then, to have at least some common s=
trategy on how to be picky on me.<br>
<br>
The strategy is either rename all of these functions or none so that we<br>
don't end up with random inconsistencies all over the place.<br>
<br>
&gt; <br>
&gt; Best Regards,<br>
&gt; <br>
&gt; Lisovskiy Stanislav<br>
&gt; ________________________________<br>
&gt; From: Ville Syrj=E4l=E4 &lt;ville.syrjala@linux.intel.com&gt;<br>
&gt; Sent: Wednesday, March 11, 2020 6:08:54 PM<br>
&gt; To: Lisovskiy, Stanislav<br>
&gt; Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Ro=
per, Matthew D<br>
&gt; Subject: Re: [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state helper=
s<br>
&gt; <br>
&gt; On Mon, Mar 09, 2020 at 06:11:59PM &#43;0200, Stanislav Lisovskiy wrot=
e:<br>
&gt; &gt; Add correspondent helpers to be able to get old/new bandwidth<br>
&gt; &gt; global state object.<br>
&gt; &gt;<br>
&gt; &gt; v2: - Fixed typo in function call<br>
&gt; &gt; v3: - Changed new functions naming to use convention proposed<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by Jani Nikula, i.e intel_bw_=
* in intel_bw.c file.<br>
&gt; <br>
&gt; Still nak on the rename.<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.=
com&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.c | 33 &#43;&#43;&#43=
;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43=
;&#43;&#43;&#43;&#43;---<br>
&gt; &gt;&nbsp; drivers/gpu/drm/i915/display/intel_bw.h |&nbsp; 9 &#43;&#43=
;&#43;&#43;&#43;&#43;&#43;<br>
&gt; &gt;&nbsp; 2 files changed, 39 insertions(&#43;), 3 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gp=
u/drm/i915/display/intel_bw.c<br>
&gt; &gt; index 58b264bc318d..bdad7476dc7b 100644<br>
&gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.c<br>
&gt; &gt; @@ -374,8 &#43;374,35 @@ static unsigned int intel_bw_data_rate(s=
truct drm_i915_private *dev_priv,<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return data_rate;<br>
&gt; &gt;&nbsp; }<br>
&gt; &gt;<br>
&gt; &gt; -static struct intel_bw_state *<br>
&gt; &gt; -intel_atomic_get_bw_state(struct intel_atomic_state *state)<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_old_state(struct intel_atomic_state *state)<br>
&gt; &gt; &#43;{<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =
=3D to_i915(state-&gt;base.dev);<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *bw_state=
;<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_atomic_get_old_g=
lobal_obj_state(state, &amp;dev_priv-&gt;bw_obj);<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; return ERR_CAST(bw_state);<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_bw_state(bw_state);=
<br>
&gt; &gt; &#43;}<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_new_state(struct intel_atomic_state *state)<br>
&gt; &gt; &#43;{<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private *dev_priv =
=3D to_i915(state-&gt;base.dev);<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_state *bw_state=
;<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; bw_state =3D intel_atomic_get_new_g=
lobal_obj_state(state, &amp;dev_priv-&gt;bw_obj);<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; return ERR_CAST(bw_state);<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return to_intel_bw_state(bw_state);=
<br>
&gt; &gt; &#43;}<br>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_state(struct intel_atomic_state *state)<br>
&gt; &gt;&nbsp; {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct drm_i915_private=
 *dev_priv =3D to_i915(state-&gt;base.dev);<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_global_sta=
te *bw_state;<br>
&gt; &gt; @@ -420,7 &#43;447,7 @@ int intel_bw_atomic_check(struct intel_at=
omic_state *state)<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_active_planes =3D=3D n=
ew_active_planes)<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; co=
ntinue;<br>
&gt; &gt;<br>
&gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; bw_state&nbsp; =3D intel_atomic_get_bw_state(state);<br>
&gt; &gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; bw_state&nbsp; =3D intel_bw_get_state(state);<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; if (IS_ERR(bw_state))<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; re=
turn PTR_ERR(bw_state);<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gp=
u/drm/i915/display/intel_bw.h<br>
&gt; &gt; index a8aa7624c5aa..b5f61463922f 100644<br>
&gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; &gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/display/intel_bw.h<br>
&gt; &gt; @@ -24,6 &#43;24,15 @@ struct intel_bw_state {<br>
&gt; &gt;<br>
&gt; &gt;&nbsp; #define to_intel_bw_state(x) container_of((x), struct intel=
_bw_state, base)<br>
&gt; &gt;<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_old_state(struct intel_atomic_state *state);<br=
>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_new_state(struct intel_atomic_state *state);<br=
>
&gt; &gt; &#43;<br>
&gt; &gt; &#43;struct intel_bw_state *<br>
&gt; &gt; &#43;intel_bw_get_state(struct intel_atomic_state *state);<br>
&gt; &gt; &#43;<br>
&gt; &gt;&nbsp; void intel_bw_init_hw(struct drm_i915_private *dev_priv);<b=
r>
&gt; &gt;&nbsp; int intel_bw_init(struct drm_i915_private *dev_priv);<br>
&gt; &gt;&nbsp; int intel_bw_atomic_check(struct intel_atomic_state *state)=
;<br>
&gt; &gt; --<br>
&gt; &gt; 2.24.1.485.gad05a3d8e5<br>
&gt; <br>
&gt; --<br>
&gt; Ville Syrj=E4l=E4<br>
&gt; Intel<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font>
</body>
</html>

--_000_93708764786145ff9c8ee2c84af6ff41intelcom_--

--===============0131154532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0131154532==--
