Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4879D1842D8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 09:42:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBF66E3AE;
	Fri, 13 Mar 2020 08:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E6D46E3AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 08:42:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 01:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; 
 d="scan'208,217";a="442348106"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by fmsmga005.fm.intel.com with ESMTP; 13 Mar 2020 01:42:25 -0700
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Mar 2020 08:42:24 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 08:42:24 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 13 Mar 2020 08:42:24 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v19 2/8] drm/i915: Introduce skl_plane_wm_level accessor.
Thread-Index: AQHV9i4Qof7mn5aWakO08NrMTq/LhahDkfWAgAKkIwE=
Date: Fri, 13 Mar 2020 08:42:23 +0000
Message-ID: <5172187f1f964161b9dbf483c6163d0b@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-3-stanislav.lisovskiy@intel.com>,
 <20200311160727.GA13686@intel.com>
In-Reply-To: <20200311160727.GA13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v19 2/8] drm/i915: Introduce
 skl_plane_wm_level accessor.
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
Content-Type: multipart/mixed; boundary="===============1066917595=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1066917595==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5172187f1f964161b9dbf483c6163d0bintelcom_"

--_000_5172187f1f964161b9dbf483c6163d0bintelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>>  static int
>>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>>  {
>> @@ -4606,22 +4618,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *c=
rtc_state)
>>         */
>>        for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--)=
 {
>>                blocks =3D 0;
>> +
>>                for_each_plane_id_on_crtc(crtc, plane_id) {
>> -                     const struct skl_plane_wm *wm =3D
>> -                             &crtc_state->wm.skl.optimal.planes[plane_i=
d];
>> +                     const struct skl_wm_level *wm_level;
>> +                     const struct skl_wm_level *wm_uv_level;
>> +                     int color_plane =3D 0;

>These color_plane variables seems kinda pointless. I'd just pass 0/1 direc=
tly
>(pretty sure that's what we do elsewhere too).


Nope. I have a different view - if this is allowed here. 0/1 passed into fu=
nction are just a magic

numbers with no meaning - that way you see at least what's the param name a=
nd it's meaning.


Again, _absolutely_ pointless arguing and potentially waste of time instead=
 of fixing some real thing. Whether those are variables or constants, doesn=
't make this code better or worse.


>>                        /*
>>                         * We only disable the watermarks for each plane =
if
>> @@ -4732,9 +4765,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>>                         *  planes must be enabled before the level will =
be used."
>>                         * So this is actually safe to do.
>>                         */
>> -                     if (wm->wm[level].min_ddb_alloc > total[plane_id] =
||
>> -                         wm->uv_wm[level].min_ddb_alloc > uv_total[plan=
e_id])
>> -                             memset(&wm->wm[level], 0, sizeof(wm->wm[le=
vel]));
>> +                     if (wm_level->min_ddb_alloc > total[plane_id] ||
>> +                         wm_uv_level->min_ddb_alloc > uv_total[plane_id=
])
>> +                             memset(&wm->wm[level], 0,
>> +                                    sizeof(struct skl_wm_level));

> memset(wm_level, 0, sizeof(*wm_level)) ?


Again - memset(wm_level, 0, sizeof(*wm_level)) and memset(wm_level, 0, size=
of(struct skl_wm_level)) are absolutely identical constructs according to C=
 standard.

And I know that you are going to say that sizeof(*wm_level) won't require t=
o change type -

well if you are changing the code anyway, this is trivial.

If I have any freedom to express my point of view at all, I'm not going to =
fix that.


Why are we even wasting time for this kind of stuff? Aren't there more seri=
ous problems no?

I myself have already decades of experience in coding in a rather big proje=
cts and big companies and can say that those kind of nitpicks are completel=
y useless waste of time.



Best Regards,

Lisovskiy Stanislav
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Wednesday, March 11, 2020 6:07:27 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v19 2/8] drm/i915: Introduce skl_plane_wm_level accesso=
r.

On Mon, Mar 09, 2020 at 06:11:58PM +0200, Stanislav Lisovskiy wrote:
> For future Gen12 SAGV implementation we need to
> seemlessly alter wm levels calculated, depending
> on whether we are allowed to enable SAGV or not.
>
> So this accessor will give additional flexibility
> to do that.
>
> Currently this accessor is still simply working
> as "pass-through" function. This will be changed
> in next coming patches from this series.
>
> v2: - plane_id -> plane->id(Ville Syrj=E4l=E4)
>     - Moved wm_level var to have more local scope
>       (Ville Syrj=E4l=E4)
>     - Renamed yuv to color_plane(Ville Syrj=E4l=E4) in
>       skl_plane_wm_level
>
> v3: - plane->id -> plane_id(this time for real, Ville Syrj=E4l=E4)
>     - Changed colorplane id type from boolean to int as index
>       (Ville Syrj=E4l=E4)
>     - Moved crtc_state param so that it is first now
>       (Ville Syrj=E4l=E4)
>     - Moved wm_level declaration to tigher scope in
>       skl_write_plane_wm(Ville Syrj=E4l=E4)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 85 ++++++++++++++++++++++++++-------
>  1 file changed, 67 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c7928c870b0a..c72fa59a8302 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4547,6 +4547,18 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>        return total_data_rate;
>  }
>
> +static const struct skl_wm_level *
> +skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
> +                enum plane_id plane_id,
> +                int level,
> +                int color_plane)
> +{
> +     const struct skl_plane_wm *wm =3D
> +             &crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +     return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -4606,22 +4618,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>         */
>        for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) =
{
>                blocks =3D 0;
> +
>                for_each_plane_id_on_crtc(crtc, plane_id) {
> -                     const struct skl_plane_wm *wm =3D
> -                             &crtc_state->wm.skl.optimal.planes[plane_id=
];
> +                     const struct skl_wm_level *wm_level;
> +                     const struct skl_wm_level *wm_uv_level;
> +                     int color_plane =3D 0;

These color_plane variables seems kinda pointless. I'd just pass 0/1 direct=
ly
(pretty sure that's what we do elsewhere too).

> +
> +                     wm_level =3D skl_plane_wm_level(crtc_state, plane_i=
d,
> +                                                   level, color_plane);
> +                     wm_uv_level =3D skl_plane_wm_level(crtc_state, plan=
e_id,
> +                                                      level, color_plane=
 + 1);
>
>                        if (plane_id =3D=3D PLANE_CURSOR) {
> -                             if (wm->wm[level].min_ddb_alloc > total[PLA=
NE_CURSOR]) {
> +                             if (wm_level->min_ddb_alloc > total[PLANE_C=
URSOR]) {
>                                        drm_WARN_ON(&dev_priv->drm,
> -                                                 wm->wm[level].min_ddb_a=
lloc !=3D U16_MAX);
> +                                                 wm_level->min_ddb_alloc=
 !=3D U16_MAX);
>                                        blocks =3D U32_MAX;
>                                        break;
>                                }
>                                continue;
>                        }
>
> -                     blocks +=3D wm->wm[level].min_ddb_alloc;
> -                     blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +                     blocks +=3D wm_level->min_ddb_alloc;
> +                     blocks +=3D wm_uv_level->min_ddb_alloc;
>                }
>
>                if (blocks <=3D alloc_size) {
> @@ -4644,10 +4663,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>         * proportional to its relative data rate.
>         */
>        for_each_plane_id_on_crtc(crtc, plane_id) {
> -             const struct skl_plane_wm *wm =3D
> -                     &crtc_state->wm.skl.optimal.planes[plane_id];
> +             const struct skl_wm_level *wm_level;
> +             const struct skl_wm_level *wm_uv_level;
>                u64 rate;
>                u16 extra;
> +             int color_plane =3D 0;
> +
> +             wm_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +                                           level, color_plane);
> +             wm_uv_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +                                              level, color_plane + 1);
>
>                if (plane_id =3D=3D PLANE_CURSOR)
>                        continue;
> @@ -4663,7 +4688,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>                extra =3D min_t(u16, alloc_size,
>                              DIV64_U64_ROUND_UP(alloc_size * rate,
>                                                 total_data_rate));
> -             total[plane_id] =3D wm->wm[level].min_ddb_alloc + extra;
> +             total[plane_id] =3D wm_level->min_ddb_alloc + extra;
>                alloc_size -=3D extra;
>                total_data_rate -=3D rate;
>
> @@ -4674,7 +4699,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>                extra =3D min_t(u16, alloc_size,
>                              DIV64_U64_ROUND_UP(alloc_size * rate,
>                                                 total_data_rate));
> -             uv_total[plane_id] =3D wm->uv_wm[level].min_ddb_alloc + ext=
ra;
> +             uv_total[plane_id] =3D wm_uv_level->min_ddb_alloc + extra;
>                alloc_size -=3D extra;
>                total_data_rate -=3D rate;
>        }
> @@ -4717,8 +4742,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>         */
>        for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
>                for_each_plane_id_on_crtc(crtc, plane_id) {
> +                     const struct skl_wm_level *wm_level;
> +                     const struct skl_wm_level *wm_uv_level;
>                        struct skl_plane_wm *wm =3D
>                                &crtc_state->wm.skl.optimal.planes[plane_i=
d];
> +                     int color_plane =3D 0;
> +
> +                     wm_level =3D skl_plane_wm_level(crtc_state, plane_i=
d,
> +                                                   level, color_plane);
> +                     wm_uv_level =3D skl_plane_wm_level(crtc_state, plan=
e_id,
> +                                                      level, color_plane=
 + 1);
>
>                        /*
>                         * We only disable the watermarks for each plane i=
f
> @@ -4732,9 +4765,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>                         *  planes must be enabled before the level will b=
e used."
>                         * So this is actually safe to do.
>                         */
> -                     if (wm->wm[level].min_ddb_alloc > total[plane_id] |=
|
> -                         wm->uv_wm[level].min_ddb_alloc > uv_total[plane=
_id])
> -                             memset(&wm->wm[level], 0, sizeof(wm->wm[lev=
el]));
> +                     if (wm_level->min_ddb_alloc > total[plane_id] ||
> +                         wm_uv_level->min_ddb_alloc > uv_total[plane_id]=
)
> +                             memset(&wm->wm[level], 0,
> +                                    sizeof(struct skl_wm_level));

memset(wm_level, 0, sizeof(*wm_level)) ?

Hmm. Also wondering why we're not clearing wm_uv here as well. I suppose
it might not mater since the hw doesn't use wm_uv (and I fixed the
"did the wms change?" check to ignore it too). Bit might be nice to clear
it for consistency. Should be a separate patch though.

>
>                        /*
>                         * Wa_1408961008:icl, ehl
> @@ -4742,9 +4776,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>                         */
>                        if (IS_GEN(dev_priv, 11) &&
>                            level =3D=3D 1 && wm->wm[0].plane_en) {
> -                             wm->wm[level].plane_res_b =3D wm->wm[0].pla=
ne_res_b;
> -                             wm->wm[level].plane_res_l =3D wm->wm[0].pla=
ne_res_l;
> -                             wm->wm[level].ignore_lines =3D wm->wm[0].ig=
nore_lines;
> +                             wm_level =3D skl_plane_wm_level(crtc_state,=
 plane_id,
> +                                                           0, color_plan=
e);
> +                             wm->wm[level].plane_res_b =3D
> +                                     wm_level->plane_res_b;
> +                             wm->wm[level].plane_res_l =3D
> +                                     wm_level->plane_res_l;
> +                             wm->wm[level].ignore_lines =3D
> +                                     wm_level->ignore_lines;

I would suggest we want this to read something like:

const struct skl_wm_level *wm_level0 =3D skl_plane_wm_level(...)

wm_level->foo =3D wm_level0->foo;
...

And with those we can throw out the 'wm' variable from this loop as
well.

>                        }
>                }
>        }
> @@ -5358,8 +5397,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
>                &crtc_state->wm.skl.plane_ddb_uv[plane_id];
>
>        for (level =3D 0; level <=3D max_level; level++) {
> +             const struct skl_wm_level *wm_level;
> +             int color_plane =3D 0;
> +
> +             wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level=
, color_plane);
> +
>                skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, leve=
l),
> -                                &wm->wm[level]);
> +                                wm_level);
>        }
>        skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>                           &wm->trans_wm);
> @@ -5392,8 +5436,13 @@ void skl_write_cursor_wm(struct intel_plane *plane=
,
>                &crtc_state->wm.skl.plane_ddb_y[plane_id];
>
>        for (level =3D 0; level <=3D max_level; level++) {
> +             const struct skl_wm_level *wm_level;
> +             int color_plane =3D 0;
> +
> +             wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level=
, color_plane);
> +
>                skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -                                &wm->wm[level]);
> +                                wm_level);
>        }
>        skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>
> --
> 2.24.1.485.gad05a3d8e5

--
Ville Syrj=E4l=E4
Intel

--_000_5172187f1f964161b9dbf483c6163d0bintelcom_
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
t; font-size:13.3333px">&gt;&gt;&nbsp; static int</span><br style=3D"color:=
rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Se=
goe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp; skl_allocate_pipe_ddb(struct intel_crtc=
_state *crtc_state)</span><br style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp; {</span><br style=3D"color:rgb(33,33,33=
); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;=
,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; @@ -4606,22 &#43;4618,29 @@ skl_allocate_pipe=
_ddb(struct intel_crtc_state *crtc_state)</span><br style=3D"color:rgb(33,3=
3,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&q=
uot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; */</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_norma=
l,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,E=
mojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for=
 (level =3D ilk_wm_max_level(dev_priv); level &gt;=3D 0; level--) {</span><=
br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fon=
t-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks =3D 0;</span><br style=
=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot=
;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:1=
3.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;</span><br style=3D"color:rgb(33,33,33);=
 font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(crtc=
, plane_id) {</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-=
ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif=
,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; const struct skl_plane_wm *wm =3D</span><br style=3D"color:rgb(33,33,33);=
 font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.sk=
l.optimal.planes[plane_id];</span><br style=3D"color:rgb(33,33,33); font-fa=
mily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ar=
ial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; const struct skl_wm_level *wm_level;</span><br style=3D"color:rgb(33,=
33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&=
quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; const struct skl_wm_level *wm_uv_level;</span><br style=3D"color:rgb(=
33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe =
WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; int color_plane =3D 0;</span><br style=3D"color:rgb(33,33,33); font-f=
amily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,A=
rial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;These color_plane variables seems kinda pointless.=
 I'd just pass 0/1 directly</span><br style=3D"color:rgb(33,33,33); font-fa=
mily:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Ar=
ial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;(pretty sure that's what we do elsewhere too).</sp=
an><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">Nope. I have a different view -&nbsp;if this is all=
owed here. 0/1 passed into function are just a magic</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">numbers with no meaning - that way you see at least=
 what's the param name and it's&nbsp;meaning.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">Again, _absolutely_ pointless arguing and potential=
ly waste of time instead of fixing some real thing. Whether
 those are variables or constants, doesn't make this code better or worse.<=
/span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 /*</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,=
&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Emo=
jiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; * We only disable the watermarks for each plane if<=
/span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFo=
nt; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; @@ -4732,9 &#43;4765,10 @@ skl_allocate_pipe_=
ddb(struct intel_crtc_state *crtc_state)</span><br style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*&nbsp; planes must be enabled =
before the level will be used.&quot;</span><br style=3D"color:rgb(33,33,33)=
; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,=
Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* So this is actually safe to d=
o.</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&=
quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Emoj=
iFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*/</span><br style=3D"color:rgb=
(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe=
 WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; if (wm-&gt;wm[level].min_ddb_alloc &gt; total[plane_id] ||</span><br styl=
e=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quo=
t;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:=
13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;uv_wm[level].min_ddb_alloc &gt; uv_total[p=
lane_id])</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_n=
ormal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,ser=
if,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;wm-&gt;wm[lev=
el], 0, sizeof(wm-&gt;wm[level]));</span><br style=3D"color:rgb(33,33,33); =
font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Ta=
homa,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; if (wm_level-&gt;min_ddb_alloc &gt; total[plane_id] ||</span><br styl=
e=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quo=
t;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:=
13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_uv_level-&gt;min_ddb_alloc &gt; uv_total[p=
lane_id])</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_n=
ormal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,ser=
if,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;wm-&gt;wm=
[level], 0,</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui=
_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,s=
erif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; sizeof(struct skl_wm_level));</span><br style=3D"color=
:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;S=
egoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"=
>
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;&nbsp;memset(wm_level, 0, sizeof(*wm_level)) ?</sp=
an><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><br>
</span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px">Again
 -&nbsp;<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,=
&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,Emo=
jiFont; font-size:13.3333px">memset(wm_level, 0, sizeof(*wm_level)) and&nbs=
p;<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;=
Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont=
; font-size:13.3333px">memset(wm_level,
 0, sizeof(struct skl_wm_level)) are absolutely identical constructs accord=
ing to C&nbsp;standard.</span></span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px">And
 I know that you are going to say that sizeof(*wm_level) won't require to c=
hange type -&nbsp;</span></span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px">well
 if you are changing the code anyway, this is trivial.&nbsp;&nbsp;</span></=
span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px">If
 I have any freedom to express my point of view at all, I'm not going to fi=
x that.</span></span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px"><br>
</span></span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px">Why
 are we even wasting time for this kind of stuff? Aren't there more serious=
 problems no?</span></span></span></span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px">I
 myself have already&nbsp;decades of experience in coding in a rather big p=
rojects and big companies and can say&nbsp;</span></span></span></span><spa=
n style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe =
UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font=
-size:13.3333px">that
 those kind of nitpicks are completely useless waste of time.</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><span style=3D"color:rgb(33,33,33); font-family:wf_=
segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans=
-serif,serif,EmojiFont; font-size:13.3333px"><span style=3D"color:rgb(33,33=
,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size:13.3333px"><span sty=
le=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; font-size=
:13.3333px"><br>
</span></span></span></span></p>
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
<b>Sent:</b> Wednesday, March 11, 2020 6:07:27 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v19 2/8] drm/i915: Introduce skl_plane_wm_level =
accessor.</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Mon, Mar 09, 2020 at 06:11:58PM &#43;0200, Stan=
islav Lisovskiy wrote:<br>
&gt; For future Gen12 SAGV implementation we need to<br>
&gt; seemlessly alter wm levels calculated, depending<br>
&gt; on whether we are allowed to enable SAGV or not.<br>
&gt; <br>
&gt; So this accessor will give additional flexibility<br>
&gt; to do that.<br>
&gt; <br>
&gt; Currently this accessor is still simply working<br>
&gt; as &quot;pass-through&quot; function. This will be changed<br>
&gt; in next coming patches from this series.<br>
&gt; <br>
&gt; v2: - plane_id -&gt; plane-&gt;id(Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Moved wm_level var to have more local scope<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Renamed yuv to color_plane(Ville Syrj=E4l=E4=
) in<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_plane_wm_level<br>
&gt; <br>
&gt; v3: - plane-&gt;id -&gt; plane_id(this time for real, Ville Syrj=E4l=
=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Changed colorplane id type from boolean to i=
nt as index<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Moved crtc_state param so that it is first n=
ow<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Moved wm_level declaration to tigher scope i=
n<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_write_plane_wm(Ville Syrj=E4l=
=E4)<br>
&gt; <br>
&gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.c | 85 &#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43;&#43;&#43;&#43;&#43;-------<br>
&gt;&nbsp; 1 file changed, 67 insertions(&#43;), 18 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/in=
tel_pm.c<br>
&gt; index c7928c870b0a..c72fa59a8302 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; @@ -4547,6 &#43;4547,18 @@ icl_get_total_relative_data_rate(struct int=
el_crtc_state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return total_data_rate;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;static const struct skl_wm_level *<br>
&gt; &#43;skl_plane_wm_level(const struct intel_crtc_state *crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; enum plane_id plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; int level,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; int color_plane)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_plane_wm *wm =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id];<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return color_plane =3D=3D 0 ? &amp;wm-&g=
t;wm[level] : &amp;wm-&gt;uv_wm[level];<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static int<br>
&gt;&nbsp; skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)<br>
&gt;&nbsp; {<br>
&gt; @@ -4606,22 &#43;4618,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D ilk_wm_max_le=
vel(dev_priv); level &gt;=3D 0; level--) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; blocks =3D 0;<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(crtc, plane_id) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_plane_=
wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id=
];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_uv_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int color_plane =3D=
 0;<br>
<br>
These color_plane variables seems kinda pointless. I'd just pass 0/1 direct=
ly<br>
(pretty sure that's what we do elsewhere too).<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_pl=
ane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; level, color_plane);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_uv_level =3D skl=
_plane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; level, color_plane &#43; 1);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (pla=
ne_id =3D=3D PLANE_CURSOR) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; if (wm-&gt;wm[level].min_ddb_alloc &gt; total[PLAN=
E_CURSOR]) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; if (wm_level-&gt;min_ddb_alloc &gt; total[PLAN=
E_CURSOR]) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; drm_WARN_ON(&amp;dev_priv-&gt;drm,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm-&g=
t;wm[level].min_ddb_alloc !=3D U16_MAX);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; w=
m_level-&gt;min_ddb_alloc !=3D U16_MAX);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; blocks =3D U32_MAX;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; break;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks &#43;=3D wm-&gt;=
wm[level].min_ddb_alloc;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks &#43;=3D wm-&gt;=
uv_wm[level].min_ddb_alloc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks &#43;=3D wm_=
level-&gt;min_ddb_alloc;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; blocks &#43;=3D wm_=
uv_level-&gt;min_ddb_alloc;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (blocks &lt;=3D alloc_size) {<br>
&gt; @@ -4644,10 &#43;4663,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * proportional to its =
relative data rate.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(cr=
tc, plane_id) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; const struct skl_plane_wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.=
skl.optimal.planes[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_uv_level;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; u64 rate;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; u16 extra;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; int color_plane =3D 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; level, color_plane);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_uv_level =3D skl_plane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; level, color_plane =
&#43; 1);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (plane_id =3D=3D PLANE_CURSOR)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continu=
e;<br>
&gt; @@ -4663,7 &#43;4688,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_stat=
e *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; extra =3D min_t(u16, alloc_size,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; DIV64_U64_ROUND_UP(alloc_size * rate,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_d=
ata_rate));<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; total[plane_id] =3D wm-&gt;wm[level].min_ddb_alloc &#43; extra;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; total[plane_id] =3D wm_level-&gt;min_ddb_alloc &#43; extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; alloc_size -=3D extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; total_data_rate -=3D rate;<br>
&gt;&nbsp; <br>
&gt; @@ -4674,7 &#43;4699,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_stat=
e *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; extra =3D min_t(u16, alloc_size,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; DIV64_U64_ROUND_UP(alloc_size * rate,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_d=
ata_rate));<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; uv_total[plane_id] =3D wm-&gt;uv_wm[level].min_ddb_alloc &#43; extra;<b=
r>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; uv_total[plane_id] =3D wm_uv_level-&gt;min_ddb_alloc &#43; extra;<b=
r>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; alloc_size -=3D extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; total_data_rate -=3D rate;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -4717,8 &#43;4742,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
te *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level&#43;&#43;; level =
&lt;=3D ilk_wm_max_level(dev_priv); level&#43;&#43;) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(crtc, plane_id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_uv_level;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct =
skl_plane_wm *wm =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal=
.planes[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int color_plane =3D=
 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_pl=
ane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; level, color_plane);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_uv_level =3D skl=
_plane_wm_level(crtc_state, plane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; level, color_plane &#43; 1);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 We only disable the watermarks for each plane if<br>
&gt; @@ -4732,9 &#43;4765,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
te *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
&nbsp; planes must be enabled before the level will be used.&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 So this is actually safe to do.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
/<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (wm-&gt;wm[level].mi=
n_ddb_alloc &gt; total[plane_id] ||<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 wm-&gt;uv_wm[level].min_ddb_alloc &gt; uv_total[plane_id])<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;wm-&gt;wm[level], 0, sizeof(wm-&gt;wm[=
level]));<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (wm_level-&gt;mi=
n_ddb_alloc &gt; total[plane_id] ||<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; wm_uv_level-&gt;min_ddb_alloc &gt; uv_total[plane_id])<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;wm-&gt;wm[level], 0,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size=
of(struct skl_wm_level));<br>
<br>
memset(wm_level, 0, sizeof(*wm_level)) ?<br>
<br>
Hmm. Also wondering why we're not clearing wm_uv here as well. I suppose<br=
>
it might not mater since the hw doesn't use wm_uv (and I fixed the<br>
&quot;did the wms change?&quot; check to ignore it too). Bit might be nice =
to clear<br>
it for consistency. Should be a separate patch though.<br>
<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 Wa_1408961008:icl, ehl<br>
&gt; @@ -4742,9 &#43;4776,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
te *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (IS_=
GEN(dev_priv, 11) &amp;&amp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; level =3D=3D 1 &amp;&amp; wm-&gt;wm[0].plane_en) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].plane_res_b =3D wm-&gt;wm[0].plan=
e_res_b;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].plane_res_l =3D wm-&gt;wm[0].plan=
e_res_l;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].ignore_lines =3D wm-&gt;wm[0].ign=
ore_lines;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_plane_wm_level(crtc_state, pl=
ane_id,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0, color_plane);=
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].plane_res_b =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; wm_level-&gt;plane_res_b;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].plane_res_l =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; wm_level-&gt;plane_res_l;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; wm-&gt;wm[level].ignore_lines =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; wm_level-&gt;ignore_lines;<br>
<br>
I would suggest we want this to read something like:<br>
<br>
const struct skl_wm_level *wm_level0 =3D skl_plane_wm_level(...)<br>
<br>
wm_level-&gt;foo =3D wm_level0-&gt;foo;<br>
...<br>
<br>
And with those we can throw out the 'wm' variable from this loop as<br>
well.<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -5358,8 &#43;5397,13 @@ void skl_write_plane_wm(struct intel_plane =
*plane,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_uv[plane_id];<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=
=3D max_level; level&#43;&#43;) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; int color_plane =3D 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_=
plane);<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, l=
evel),<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;wm-&gt;wm[level]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_write_wm_level(dev_priv,=
 PLANE_WM_TRANS(pipe, plane_id),<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &amp;wm-&gt;trans_wm);<br>
&gt; @@ -5392,8 &#43;5436,13 @@ void skl_write_cursor_wm(struct intel_plane=
 *plane,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_y[plane_id];<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=
=3D max_level; level&#43;&#43;) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; int color_plane =3D 0;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_=
plane);<br>
&gt; &#43;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; skl_write_wm_level(dev_priv, CUR_WM(pipe, level),<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;wm-&gt;wm[level]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_write_wm_level(dev_priv,=
 CUR_WM_TRANS(pipe), &amp;wm-&gt;trans_wm);<br>
&gt;&nbsp; <br>
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

--_000_5172187f1f964161b9dbf483c6163d0bintelcom_--

--===============1066917595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1066917595==--
