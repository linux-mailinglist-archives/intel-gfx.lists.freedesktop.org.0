Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A42B181D3D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FC06E491;
	Wed, 11 Mar 2020 16:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0496E491
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:10:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="261185878"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2020 09:07:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Mar 2020 18:07:27 +0200
Date: Wed, 11 Mar 2020 18:07:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200311160727.GA13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161204.17792-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 09, 2020 at 06:11:58PM +0200, Stanislav Lisovskiy wrote:
> For future Gen12 SAGV implementation we need to
> seemlessly alter wm levels calculated, depending
> on whether we are allowed to enable SAGV or not.
> =

> So this accessor will give additional flexibility
> to do that.
> =

> Currently this accessor is still simply working
> as "pass-through" function. This will be changed
> in next coming patches from this series.
> =

> v2: - plane_id -> plane->id(Ville Syrj=E4l=E4)
>     - Moved wm_level var to have more local scope
>       (Ville Syrj=E4l=E4)
>     - Renamed yuv to color_plane(Ville Syrj=E4l=E4) in
>       skl_plane_wm_level
> =

> v3: - plane->id -> plane_id(this time for real, Ville Syrj=E4l=E4)
>     - Changed colorplane id type from boolean to int as index
>       (Ville Syrj=E4l=E4)
>     - Moved crtc_state param so that it is first now
>       (Ville Syrj=E4l=E4)
>     - Moved wm_level declaration to tigher scope in
>       skl_write_plane_wm(Ville Syrj=E4l=E4)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 85 ++++++++++++++++++++++++++-------
>  1 file changed, 67 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index c7928c870b0a..c72fa59a8302 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4547,6 +4547,18 @@ icl_get_total_relative_data_rate(struct intel_crtc=
_state *crtc_state,
>  	return total_data_rate;
>  }
>  =

> +static const struct skl_wm_level *
> +skl_plane_wm_level(const struct intel_crtc_state *crtc_state,
> +		   enum plane_id plane_id,
> +		   int level,
> +		   int color_plane)
> +{
> +	const struct skl_plane_wm *wm =3D
> +		&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +	return color_plane =3D=3D 0 ? &wm->wm[level] : &wm->uv_wm[level];
> +}
> +
>  static int
>  skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
> @@ -4606,22 +4618,29 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  	 */
>  	for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) {
>  		blocks =3D 0;
> +
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			const struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> +			const struct skl_wm_level *wm_level;
> +			const struct skl_wm_level *wm_uv_level;
> +			int color_plane =3D 0;

These color_plane variables seems kinda pointless. I'd just pass 0/1 direct=
ly
(pretty sure that's what we do elsewhere too).

> +
> +			wm_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +						      level, color_plane);
> +			wm_uv_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +							 level, color_plane + 1);
>  =

>  			if (plane_id =3D=3D PLANE_CURSOR) {
> -				if (wm->wm[level].min_ddb_alloc > total[PLANE_CURSOR]) {
> +				if (wm_level->min_ddb_alloc > total[PLANE_CURSOR]) {
>  					drm_WARN_ON(&dev_priv->drm,
> -						    wm->wm[level].min_ddb_alloc !=3D U16_MAX);
> +						    wm_level->min_ddb_alloc !=3D U16_MAX);
>  					blocks =3D U32_MAX;
>  					break;
>  				}
>  				continue;
>  			}
>  =

> -			blocks +=3D wm->wm[level].min_ddb_alloc;
> -			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +			blocks +=3D wm_level->min_ddb_alloc;
> +			blocks +=3D wm_uv_level->min_ddb_alloc;
>  		}
>  =

>  		if (blocks <=3D alloc_size) {
> @@ -4644,10 +4663,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *cr=
tc_state)
>  	 * proportional to its relative data rate.
>  	 */
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> +		const struct skl_wm_level *wm_level;
> +		const struct skl_wm_level *wm_uv_level;
>  		u64 rate;
>  		u16 extra;
> +		int color_plane =3D 0;
> +
> +		wm_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +					      level, color_plane);
> +		wm_uv_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +						 level, color_plane + 1);
>  =

>  		if (plane_id =3D=3D PLANE_CURSOR)
>  			continue;
> @@ -4663,7 +4688,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		total[plane_id] =3D wm->wm[level].min_ddb_alloc + extra;
> +		total[plane_id] =3D wm_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  =

> @@ -4674,7 +4699,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  		extra =3D min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> -		uv_total[plane_id] =3D wm->uv_wm[level].min_ddb_alloc + extra;
> +		uv_total[plane_id] =3D wm_uv_level->min_ddb_alloc + extra;
>  		alloc_size -=3D extra;
>  		total_data_rate -=3D rate;
>  	}
> @@ -4717,8 +4742,16 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  	 */
>  	for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			const struct skl_wm_level *wm_level;
> +			const struct skl_wm_level *wm_uv_level;
>  			struct skl_plane_wm *wm =3D
>  				&crtc_state->wm.skl.optimal.planes[plane_id];
> +			int color_plane =3D 0;
> +
> +			wm_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +						      level, color_plane);
> +			wm_uv_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +							 level, color_plane + 1);
>  =

>  			/*
>  			 * We only disable the watermarks for each plane if
> @@ -4732,9 +4765,10 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  			 *  planes must be enabled before the level will be used."
>  			 * So this is actually safe to do.
>  			 */
> -			if (wm->wm[level].min_ddb_alloc > total[plane_id] ||
> -			    wm->uv_wm[level].min_ddb_alloc > uv_total[plane_id])
> -				memset(&wm->wm[level], 0, sizeof(wm->wm[level]));
> +			if (wm_level->min_ddb_alloc > total[plane_id] ||
> +			    wm_uv_level->min_ddb_alloc > uv_total[plane_id])
> +				memset(&wm->wm[level], 0,
> +				       sizeof(struct skl_wm_level));

memset(wm_level, 0, sizeof(*wm_level)) ?

Hmm. Also wondering why we're not clearing wm_uv here as well. I suppose
it might not mater since the hw doesn't use wm_uv (and I fixed the
"did the wms change?" check to ignore it too). Bit might be nice to clear
it for consistency. Should be a separate patch though.

>  =

>  			/*
>  			 * Wa_1408961008:icl, ehl
> @@ -4742,9 +4776,14 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  			 */
>  			if (IS_GEN(dev_priv, 11) &&
>  			    level =3D=3D 1 && wm->wm[0].plane_en) {
> -				wm->wm[level].plane_res_b =3D wm->wm[0].plane_res_b;
> -				wm->wm[level].plane_res_l =3D wm->wm[0].plane_res_l;
> -				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
> +				wm_level =3D skl_plane_wm_level(crtc_state, plane_id,
> +							      0, color_plane);
> +				wm->wm[level].plane_res_b =3D
> +					wm_level->plane_res_b;
> +				wm->wm[level].plane_res_l =3D
> +					wm_level->plane_res_l;
> +				wm->wm[level].ignore_lines =3D
> +					wm_level->ignore_lines;

I would suggest we want this to read something like:

const struct skl_wm_level *wm_level0 =3D skl_plane_wm_level(...)

wm_level->foo =3D wm_level0->foo;
...

And with those we can throw out the 'wm' variable from this loop as
well.

>  			}
>  		}
>  	}
> @@ -5358,8 +5397,13 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		const struct skl_wm_level *wm_level;
> +		int color_plane =3D 0;
> +
> +		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_pla=
ne);
> +
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
>  			   &wm->trans_wm);
> @@ -5392,8 +5436,13 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
>  =

>  	for (level =3D 0; level <=3D max_level; level++) {
> +		const struct skl_wm_level *wm_level;
> +		int color_plane =3D 0;
> +
> +		wm_level =3D skl_plane_wm_level(crtc_state, plane_id, level, color_pla=
ne);
> +
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   &wm->wm[level]);
> +				   wm_level);
>  	}
>  	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe), &wm->trans_wm);
>  =

> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
