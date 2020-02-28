Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D0F173722
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FEE66E174;
	Fri, 28 Feb 2020 12:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262E36E172
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:23:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:23:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; 
 d="scan'208,217";a="238747531"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2020 04:23:41 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX152.ger.corp.intel.com (163.33.192.66) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 28 Feb 2020 12:23:40 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Feb 2020 12:23:40 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 28 Feb 2020 12:23:40 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v18 2/8] drm/i915: Introduce skl_plane_wm_level accessor.
Thread-Index: AQHV6ygZDq+k27wAR0+wklAiqx1iEagvNVcAgAFWhVY=
Date: Fri, 28 Feb 2020 12:23:40 +0000
Message-ID: <4661cc60f2a54e90bca94bb5441ee7c0@intel.com>
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
 <20200224153240.9047-3-stanislav.lisovskiy@intel.com>,
 <20200227155152.GP13686@intel.com>
In-Reply-To: <20200227155152.GP13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v18 2/8] drm/i915: Introduce
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
Content-Type: multipart/mixed; boundary="===============1067665903=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1067665903==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4661cc60f2a54e90bca94bb5441ee7c0intelcom_"

--_000_4661cc60f2a54e90bca94bb5441ee7c0intelcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

>> v2: - plane_id -> plane->id(Ville Syrj=E4l=E4)

>When did I say that? Can't find a previous review of this patch.
>Anywyas, that change seems to cause a lot of needless noise into the
>patch, and atm I can't see why we'd require it.


Your comment was in https://patchwork.freedesktop.org/patch/345025/?series=
=3D68028&rev=3D14,

however I seem to have wrongly interpreted it. I think my motivation to swi=
tch

to plane based iteration was because its way easier to call skl_plane_wm_le=
vel

function then, because it takes plane itself as a parameter, also as it had=
 already

an id, thought it is also better that way, rather than keeping one more var=
iable

instead. Whatever.. I'm fine with both, that is not critical anyways.


Stan
________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Thursday, February 27, 2020 5:51:52 PM
To: Lisovskiy, Stanislav
Cc: intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; Roper, =
Matthew D
Subject: Re: [PATCH v18 2/8] drm/i915: Introduce skl_plane_wm_level accesso=
r.

On Mon, Feb 24, 2020 at 05:32:34PM +0200, Stanislav Lisovskiy wrote:
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

When did I say that? Can't find a previous review of this patch.
Anywyas, that change seems to cause a lot of needless noise into the
patch, and atm I can't see why we'd require it.

>     - Moved wm_level var to have more local scope
>       (Ville Syrj=E4l=E4)
>     - Renamed yuv to color_plane(Ville Syrj=E4l=E4) in
>       skl_plane_wm_level
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 120 +++++++++++++++++++++-----------
>  1 file changed, 81 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index d6933e382657..e1d167429489 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4548,6 +4548,18 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>        return total_data_rate;
>  }
>
> +static const struct skl_wm_level *
> +skl_plane_wm_level(struct intel_plane *plane,
> +                const struct intel_crtc_state *crtc_state,

nit: I'd put the crtc_state as the first parameter as that's the thing
we're operating on. The other stuff just specifies which piece we want
to dig out.

> +                int level,
> +                int color_plane)
> +{
> +     const struct skl_plane_wm *wm =3D
> +             &crtc_state->wm.skl.optimal.planes[plane->id];
> +
> +     return color_plane ? &wm->uv_wm[level] : &wm->wm[level];
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -4560,7 +4572,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>        u16 total[I915_MAX_PLANES] =3D {};
>        u16 uv_total[I915_MAX_PLANES] =3D {};
>        u64 total_data_rate;
> -     enum plane_id plane_id;
> +     struct intel_plane *plane;
>        int num_active;
>        u64 plane_data_rate[I915_MAX_PLANES] =3D {};
>        u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
> @@ -4612,22 +4624,28 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>         */
>        for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) =
{
>                blocks =3D 0;
> -             for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -                     const struct skl_plane_wm *wm =3D
> -                             &crtc_state->wm.skl.optimal.planes[plane_id=
];
>
> -                     if (plane_id =3D=3D PLANE_CURSOR) {
> -                             if (wm->wm[level].min_ddb_alloc > total[PLA=
NE_CURSOR]) {
> +             for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, pl=
ane) {
> +                     const struct skl_wm_level *wm_level;
> +                     const struct skl_wm_level *wm_uv_level;
> +
> +                     wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +                                                   level, false);
> +                     wm_uv_level =3D skl_plane_wm_level(plane, crtc_stat=
e,
> +                                                      level, true);

false/true aren't particularly sensible color plane indices.

> +
> +                     if (plane->id =3D=3D PLANE_CURSOR) {
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
> @@ -4649,13 +4667,18 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>         * watermark level, plus an extra share of the leftover blocks
>         * proportional to its relative data rate.
>         */
> -     for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> -             const struct skl_plane_wm *wm =3D
> -                     &crtc_state->wm.skl.optimal.planes[plane_id];
> +     for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
> +             const struct skl_wm_level *wm_level;
> +             const struct skl_wm_level *wm_uv_level;
>                u64 rate;
>                u16 extra;
>
> -             if (plane_id =3D=3D PLANE_CURSOR)
> +             wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +                                           level, false);
> +             wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,
> +                                              level, true);
> +
> +             if (plane->id =3D=3D PLANE_CURSOR)
>                        continue;
>
>                /*
> @@ -4665,22 +4688,22 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>                if (total_data_rate =3D=3D 0)
>                        break;
>
> -             rate =3D plane_data_rate[plane_id];
> +             rate =3D plane_data_rate[plane->id];
>                extra =3D min_t(u16, alloc_size,
>                              DIV64_U64_ROUND_UP(alloc_size * rate,
>                                                 total_data_rate));
> -             total[plane_id] =3D wm->wm[level].min_ddb_alloc + extra;
> +             total[plane->id] =3D wm_level->min_ddb_alloc + extra;
>                alloc_size -=3D extra;
>                total_data_rate -=3D rate;
>
>                if (total_data_rate =3D=3D 0)
>                        break;
>
> -             rate =3D uv_plane_data_rate[plane_id];
> +             rate =3D uv_plane_data_rate[plane->id];
>                extra =3D min_t(u16, alloc_size,
>                              DIV64_U64_ROUND_UP(alloc_size * rate,
>                                                 total_data_rate));
> -             uv_total[plane_id] =3D wm->uv_wm[level].min_ddb_alloc + ext=
ra;
> +             uv_total[plane->id] =3D wm_uv_level->min_ddb_alloc + extra;
>                alloc_size -=3D extra;
>                total_data_rate -=3D rate;
>        }
> @@ -4688,29 +4711,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>
>        /* Set the actual DDB start/end points for each plane */
>        start =3D alloc->start;
> -     for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +     for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>                struct skl_ddb_entry *plane_alloc =3D
> -                     &crtc_state->wm.skl.plane_ddb_y[plane_id];
> +                     &crtc_state->wm.skl.plane_ddb_y[plane->id];
>                struct skl_ddb_entry *uv_plane_alloc =3D
> -                     &crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +                     &crtc_state->wm.skl.plane_ddb_uv[plane->id];
>
> -             if (plane_id =3D=3D PLANE_CURSOR)
> +             if (plane->id =3D=3D PLANE_CURSOR)
>                        continue;
>
>                /* Gen11+ uses a separate plane for UV watermarks */
>                drm_WARN_ON(&dev_priv->drm,
> -                         INTEL_GEN(dev_priv) >=3D 11 && uv_total[plane_i=
d]);
> +                         INTEL_GEN(dev_priv) >=3D 11 && uv_total[plane->=
id]);
>
>                /* Leave disabled planes at (0,0) */
> -             if (total[plane_id]) {
> +             if (total[plane->id]) {
>                        plane_alloc->start =3D start;
> -                     start +=3D total[plane_id];
> +                     start +=3D total[plane->id];
>                        plane_alloc->end =3D start;
>                }
>
> -             if (uv_total[plane_id]) {
> +             if (uv_total[plane->id]) {
>                        uv_plane_alloc->start =3D start;
> -                     start +=3D uv_total[plane_id];
> +                     start +=3D uv_total[plane->id];
>                        uv_plane_alloc->end =3D start;
>                }
>        }
> @@ -4722,9 +4745,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>         * that aren't actually possible.
>         */
>        for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
> -             for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +             for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, pl=
ane) {
> +                     const struct skl_wm_level *wm_level;
> +                     const struct skl_wm_level *wm_uv_level;
>                        struct skl_plane_wm *wm =3D
> -                             &crtc_state->wm.skl.optimal.planes[plane_id=
];
> +                             &crtc_state->wm.skl.optimal.planes[plane->i=
d];
> +
> +                     wm_level =3D skl_plane_wm_level(plane, crtc_state,
> +                                                   level, false);
> +                     wm_uv_level =3D skl_plane_wm_level(plane, crtc_stat=
e,
> +                                                      level, true);
>
>                        /*
>                         * We only disable the watermarks for each plane i=
f
> @@ -4738,9 +4768,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
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
> +                     if (wm_level->min_ddb_alloc > total[plane->id] ||
> +                         wm_uv_level->min_ddb_alloc > uv_total[plane->id=
])
> +                             memset(&wm->wm[level], 0,
> +                                    sizeof(struct skl_wm_level));
>
>                        /*
>                         * Wa_1408961008:icl, ehl
> @@ -4748,9 +4779,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
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
> +                             wm_level =3D skl_plane_wm_level(plane, crtc=
_state,
> +                                                           0, false);
> +                             wm->wm[level].plane_res_b =3D
> +                                     wm_level->plane_res_b;
> +                             wm->wm[level].plane_res_l =3D
> +                                     wm_level->plane_res_l;
> +                             wm->wm[level].ignore_lines =3D
> +                                     wm_level->ignore_lines;
>                        }
>                }
>        }
> @@ -4759,11 +4795,11 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>         * Go back and disable the transition watermark if it turns out we
>         * don't have enough DDB blocks for it.
>         */
> -     for_each_plane_id_on_crtc(intel_crtc, plane_id) {
> +     for_each_intel_plane_on_crtc(&dev_priv->drm, intel_crtc, plane) {
>                struct skl_plane_wm *wm =3D
> -                     &crtc_state->wm.skl.optimal.planes[plane_id];
> +                     &crtc_state->wm.skl.optimal.planes[plane->id];
>
> -             if (wm->trans_wm.plane_res_b >=3D total[plane_id])
> +             if (wm->trans_wm.plane_res_b >=3D total[plane->id])
>                        memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
>        }
>
> @@ -5354,10 +5390,13 @@ void skl_write_plane_wm(struct intel_plane *plane=
,
>                &crtc_state->wm.skl.plane_ddb_y[plane_id];
>        const struct skl_ddb_entry *ddb_uv =3D
>                &crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +     const struct skl_wm_level *wm_level;

These can be in tighter scope.
>
>        for (level =3D 0; level <=3D max_level; level++) {
> +             wm_level =3D skl_plane_wm_level(plane, crtc_state, level, f=
alse);
> +
>                skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, leve=
l),
> -                                &wm->wm[level]);
> +                                wm_level);
>        }
>        skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>                           &wm->trans_wm);
> @@ -5388,10 +5427,13 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>                &crtc_state->wm.skl.optimal.planes[plane_id];
>        const struct skl_ddb_entry *ddb =3D
>                &crtc_state->wm.skl.plane_ddb_y[plane_id];
> +     const struct skl_wm_level *wm_level;
>
>        for (level =3D 0; level <=3D max_level; level++) {
> +             wm_level =3D skl_plane_wm_level(plane, crtc_state, level, f=
alse);
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

--_000_4661cc60f2a54e90bca94bb5441ee7c0intelcom_
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
t; font-size:13.3333px">&gt;&gt; v2: - plane_id -&gt; plane-&gt;id(Ville Sy=
rj=E4l=E4)</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_=
normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,se=
rif,EmojiFont; font-size:13.3333px">
<br style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Sego=
e UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; fo=
nt-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;When did I say that? Can't find a previous review =
of this patch.</span><br style=3D"color:rgb(33,33,33); font-family:wf_segoe=
-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-seri=
f,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;Anywyas, that change seems to cause a lot of needl=
ess noise into the</span><br style=3D"color:rgb(33,33,33); font-family:wf_s=
egoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-=
serif,serif,EmojiFont; font-size:13.3333px">
<span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Se=
goe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; =
font-size:13.3333px">&gt;patch, and atm I can't see why we'd require it.</s=
pan><br>
</p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px"><br>
</span></p>
<p><span style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot=
;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFon=
t; font-size:13.3333px">Your comment was in&nbsp;<a href=3D"https://patchwo=
rk.freedesktop.org/patch/345025/?series=3D68028&amp;rev=3D14" class=3D"x_OW=
AAutoLink" id=3D"LPlnk516825">https://patchwork.freedesktop.org/patch/34502=
5/?series=3D68028&amp;rev=3D14</a>,</span></p>
<p>however I seem to have wrongly interpreted it. I think my motivation to =
switch</p>
<p>to plane based iteration was because its way easier to call skl_plane_wm=
_level</p>
<p>function then, because it takes plane itself as a parameter, also as it =
had already</p>
<p>an id, thought it is also better that way, rather than keeping one more =
variable</p>
<p>instead. Whatever.. I'm fine with both, that is not critical anyways.</p=
>
<p><br>
</p>
<div id=3D"x_Signature">
<div style=3D"font-family:Tahoma; font-size:13px"><font size=3D"2"><span st=
yle=3D"font-size:10pt">Stan</span></font></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Ville Syrj=E4l=E4 &=
lt;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Thursday, February 27, 2020 5:51:52 PM<br>
<b>To:</b> Lisovskiy, Stanislav<br>
<b>Cc:</b> intel-gfx@lists.freedesktop.org; Ausmus, James; Saarinen, Jani; =
Roper, Matthew D<br>
<b>Subject:</b> Re: [PATCH v18 2/8] drm/i915: Introduce skl_plane_wm_level =
accessor.</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Mon, Feb 24, 2020 at 05:32:34PM &#43;0200, Stan=
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
<br>
When did I say that? Can't find a previous review of this patch.<br>
Anywyas, that change seems to cause a lot of needless noise into the<br>
patch, and atm I can't see why we'd require it.<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Moved wm_level var to have more local scope<=
br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Ville Syrj=E4l=E4)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; - Renamed yuv to color_plane(Ville Syrj=E4l=E4=
) in<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; skl_plane_wm_level<br>
&gt; <br>
&gt; Signed-off-by: Stanislav Lisovskiy &lt;stanislav.lisovskiy@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/intel_pm.c | 120 &#43;&#43;&#43;&#43;&#43;&=
#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&=
#43;-----------<br>
&gt;&nbsp; 1 file changed, 81 insertions(&#43;), 39 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/in=
tel_pm.c<br>
&gt; index d6933e382657..e1d167429489 100644<br>
&gt; --- a/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; &#43;&#43;&#43; b/drivers/gpu/drm/i915/intel_pm.c<br>
&gt; @@ -4548,6 &#43;4548,18 @@ icl_get_total_relative_data_rate(struct int=
el_crtc_state *crtc_state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return total_data_rate;<br>
&gt;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; &#43;static const struct skl_wm_level *<br>
&gt; &#43;skl_plane_wm_level(struct intel_plane *plane,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; const struct intel_crtc_state *crtc_state,<br>
<br>
nit: I'd put the crtc_state as the first parameter as that's the thing<br>
we're operating on. The other stuff just specifies which piece we want<br>
to dig out.<br>
<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; int level,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; int color_plane)<br>
&gt; &#43;{<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_plane_wm *wm =3D<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane-&gt;id];<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; return color_plane ? &amp;wm-&gt;uv_wm[l=
evel] : &amp;wm-&gt;wm[level];<br>
&gt; &#43;}<br>
&gt; &#43;<br>
&gt;&nbsp; static int<br>
&gt;&nbsp; skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)<br>
&gt;&nbsp; {<br>
&gt; @@ -4560,7 &#43;4572,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_stat=
e *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 total[I915_MAX_PLANES] =
=3D {};<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u16 uv_total[I915_MAX_PLANES=
] =3D {};<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 total_data_rate;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; enum plane_id plane_id;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_plane *plane;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int num_active;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 plane_data_rate[I915_MAX=
_PLANES] =3D {};<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 uv_plane_data_rate[I915_=
MAX_PLANES] =3D {};<br>
&gt; @@ -4612,22 &#43;4624,28 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D ilk_wm_max_le=
vel(dev_priv); level &gt;=3D 0; level--) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; blocks =3D 0;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; for_each_plane_id_on_crtc(intel_crtc, plane_id) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_plane_=
wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id=
];<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (plane_id =3D=3D PLA=
NE_CURSOR) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; if (wm-&gt;wm[level].min_ddb_alloc &gt; total[PLAN=
E_CURSOR]) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_priv-&gt;drm, intel_crtc, pla=
ne) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_uv_level;<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_pl=
ane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; level, false);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_uv_level =3D skl=
_plane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; level, true);<br>
<br>
false/true aren't particularly sensible color plane indices.<br>
<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (plane-&gt;id =
=3D=3D PLANE_CURSOR) {<br>
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
&gt; @@ -4649,13 &#43;4667,18 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * watermark level, plu=
s an extra share of the leftover blocks<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * proportional to its =
relative data rate.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(intel_crtc, plane_=
id) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; const struct skl_plane_wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.=
skl.optimal.planes[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_pr=
iv-&gt;drm, intel_crtc, plane) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; const struct skl_wm_level *wm_uv_level;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; u64 rate;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; u16 extra;<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (plane_id =3D=3D PLANE_CURSOR)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; level, false);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_uv_level =3D skl_plane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; level, true);<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (plane-&gt;id =3D=3D PLANE_CURSOR)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continu=
e;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /*<br>
&gt; @@ -4665,22 &#43;4688,22 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (total_data_rate =3D=3D 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<=
br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; rate =3D plane_data_rate[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; rate =3D plane_data_rate[plane-&gt;id];<br>
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
;&nbsp; total[plane-&gt;id] =3D wm_level-&gt;min_ddb_alloc &#43; extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; alloc_size -=3D extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; total_data_rate -=3D rate;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (total_data_rate =3D=3D 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; break;<=
br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; rate =3D uv_plane_data_rate[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; rate =3D uv_plane_data_rate[plane-&gt;id];<br>
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
;&nbsp; uv_total[plane-&gt;id] =3D wm_uv_level-&gt;min_ddb_alloc &#43; extr=
a;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; alloc_size -=3D extra;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; total_data_rate -=3D rate;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -4688,29 &#43;4711,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Set the actual DDB start/=
end points for each plane */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; start =3D alloc-&gt;start;<b=
r>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(intel_crtc, plane_=
id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_pr=
iv-&gt;drm, intel_crtc, plane) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct skl_ddb_entry *plane_alloc =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.=
skl.plane_ddb_y[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt=
;wm.skl.plane_ddb_y[plane-&gt;id];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct skl_ddb_entry *uv_plane_alloc =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.=
skl.plane_ddb_uv[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt=
;wm.skl.plane_ddb_uv[plane-&gt;id];<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (plane_id =3D=3D PLANE_CURSOR)<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (plane-&gt;id =3D=3D PLANE_CURSOR)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continu=
e;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* Gen11&#43; uses a separate plane for UV watermarks *=
/<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; drm_WARN_ON(&amp;dev_priv-&gt;drm,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 INTEL_GEN(dev_priv) &gt;=3D 11 &amp;&amp; uv_total[plane_id]);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; INTEL_GEN(dev_priv) &gt;=3D 11 &amp;&amp; uv_total[plane-&gt;id]);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /* Leave disabled planes at (0,0) */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (total[plane_id]) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (total[plane-&gt;id]) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane_a=
lloc-&gt;start =3D start;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; start &#43;=3D total[pl=
ane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; start &#43;=3D tota=
l[plane-&gt;id];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane_a=
lloc-&gt;end =3D start;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (uv_total[plane_id]) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (uv_total[plane-&gt;id]) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uv_plan=
e_alloc-&gt;start =3D start;<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; start &#43;=3D uv_total=
[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; start &#43;=3D uv_t=
otal[plane-&gt;id];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uv_plan=
e_alloc-&gt;end =3D start;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -4722,9 &#43;4745,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
te *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * that aren't actually=
 possible.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level&#43;&#43;; level =
&lt;=3D ilk_wm_max_level(dev_priv); level&#43;&#43;) {<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; for_each_plane_id_on_crtc(intel_crtc, plane_id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_priv-&gt;drm, intel_crtc, pla=
ne) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_level;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm=
_level *wm_uv_level;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct =
skl_plane_wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id=
];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plan=
e-&gt;id];<br>
&gt; &#43;<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_pl=
ane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; level, false);<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_uv_level =3D skl=
_plane_wm_level(plane, crtc_state,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; level, true);<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 We only disable the watermarks for each plane if<br>
&gt; @@ -4738,9 &#43;4768,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
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
n_ddb_alloc &gt; total[plane-&gt;id] ||<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; wm_uv_level-&gt;min_ddb_alloc &gt; uv_total[plane-&gt;id])<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(&amp;wm-&gt;wm[level], 0,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size=
of(struct skl_wm_level));<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *=
 Wa_1408961008:icl, ehl<br>
&gt; @@ -4748,9 &#43;4779,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_sta=
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
bsp;&nbsp;&nbsp;&nbsp;&nbsp; wm_level =3D skl_plane_wm_level(plane, crtc_st=
ate,<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0, false);<br>
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
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; @@ -4759,11 &#43;4795,11 @@ skl_allocate_pipe_ddb(struct intel_crtc_st=
ate *crtc_state)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Go back and disable =
the transition watermark if it turns out we<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * don't have enough DD=
B blocks for it.<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; for_each_plane_id_on_crtc(intel_crtc, plane_=
id) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; for_each_intel_plane_on_crtc(&amp;dev_pr=
iv-&gt;drm, intel_crtc, plane) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; struct skl_plane_wm *wm =3D<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.=
skl.optimal.planes[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt=
;wm.skl.optimal.planes[plane-&gt;id];<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; if (wm-&gt;trans_wm.plane_res_b &gt;=3D total[plane_id])<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; if (wm-&gt;trans_wm.plane_res_b &gt;=3D total[plane-&gt;id])<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; memset(=
&amp;wm-&gt;trans_wm, 0, sizeof(wm-&gt;trans_wm));<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; @@ -5354,10 &#43;5390,13 @@ void skl_write_plane_wm(struct intel_plane=
 *plane,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_y[plane_id];<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_ddb_entry *=
ddb_uv =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_uv[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm_level *wm_level;<br>
<br>
These can be in tighter scope.<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=
=3D max_level; level&#43;&#43;) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);<b=
r>
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
&gt; @@ -5388,10 &#43;5427,13 @@ void skl_write_cursor_wm(struct intel_plan=
e *plane,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.optimal.planes[plane_id];<br=
>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_ddb_entry *=
ddb =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; &amp;crtc_state-&gt;wm.skl.plane_ddb_y[plane_id];<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp; const struct skl_wm_level *wm_level;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (level =3D 0; level &lt;=
=3D max_level; level&#43;&#43;) {<br>
&gt; &#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; wm_level =3D skl_plane_wm_level(plane, crtc_state, level, false);<b=
r>
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

--_000_4661cc60f2a54e90bca94bb5441ee7c0intelcom_--

--===============1067665903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1067665903==--
