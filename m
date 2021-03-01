Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8068327AA0
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FC96E526;
	Mon,  1 Mar 2021 09:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68496E526
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:23:12 +0000 (UTC)
IronPort-SDR: /3tJ0Y1BWx39CShzxD0MeXYccjYIKPZpLcMeGNfHNGArH/JHjVTo+l2YjwsbcP8J/2T69asUzW
 00m6OYbMEV4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="206011700"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="206011700"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:23:08 -0800
IronPort-SDR: 3IXf9J47IAM9NPN+vIZu+5v2MV7mEZVlqe9BH6jqA0l6APCra/DOsjPWew3bRaONvpHlq0tCWk
 LwDGwStUDItg==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="595358886"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:23:07 -0800
Date: Mon, 1 Mar 2021 11:24:54 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301092454.GC22174@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Check tgl+ SAGV watermarks
 properly
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

On Fri, Feb 26, 2021 at 05:32:03PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We know which WM0 (normal vs. SAGV) we supposedly programmed
> into the hardware, so just check against that instead of accepting
> either watermark as valid.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 88 +++++++++-----------
>  drivers/gpu/drm/i915/intel_pm.c              |  4 +-
>  drivers/gpu/drm/i915/intel_pm.h              |  5 ++
>  3 files changed, 47 insertions(+), 50 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e34e5a9da5c1..e2ef31a93407 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9377,41 +9377,40 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  =

>  	/* planes */
>  	for_each_universal_plane(dev_priv, pipe, plane) {
> -		struct skl_plane_wm *hw_plane_wm, *sw_plane_wm;
> -
> -		hw_plane_wm =3D &hw->wm.planes[plane];
> -		sw_plane_wm =3D &sw_wm->planes[plane];
> +		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
>  =

>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
> -			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]) ||
> -			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> -							       &sw_plane_wm->sagv.wm0)))
> +			hw_wm_level =3D &hw->wm.planes[plane].wm[level];
> +			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane, level);
> +
> +			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
>  				"mismatch in WM pipe %c plane %d level %d (expected e=3D%d b=3D%u l=
=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
>  				pipe_name(pipe), plane + 1, level,
> -				sw_plane_wm->wm[level].plane_en,
> -				sw_plane_wm->wm[level].plane_res_b,
> -				sw_plane_wm->wm[level].plane_res_l,
> -				hw_plane_wm->wm[level].plane_en,
> -				hw_plane_wm->wm[level].plane_res_b,
> -				hw_plane_wm->wm[level].plane_res_l);
> +				sw_wm_level->plane_en,
> +				sw_wm_level->plane_res_b,
> +				sw_wm_level->plane_res_l,
> +				hw_wm_level->plane_en,
> +				hw_wm_level->plane_res_b,
> +				hw_wm_level->plane_res_l);
>  		}
>  =

> -		if (!skl_wm_level_equals(&hw_plane_wm->trans_wm,
> -					 &sw_plane_wm->trans_wm)) {
> +		hw_wm_level =3D &hw->wm.planes[plane].trans_wm;
> +		sw_wm_level =3D skl_plane_trans_wm(sw_wm, plane);
> +
> +		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
>  			drm_err(&dev_priv->drm,
>  				"mismatch in trans WM pipe %c plane %d (expected e=3D%d b=3D%u l=3D%=
u, got e=3D%d b=3D%u l=3D%u)\n",
>  				pipe_name(pipe), plane + 1,
> -				sw_plane_wm->trans_wm.plane_en,
> -				sw_plane_wm->trans_wm.plane_res_b,
> -				sw_plane_wm->trans_wm.plane_res_l,
> -				hw_plane_wm->trans_wm.plane_en,
> -				hw_plane_wm->trans_wm.plane_res_b,
> -				hw_plane_wm->trans_wm.plane_res_l);
> +				sw_wm_level->plane_en,
> +				sw_wm_level->plane_res_b,
> +				sw_wm_level->plane_res_l,
> +				hw_wm_level->plane_en,
> +				hw_wm_level->plane_res_b,
> +				hw_wm_level->plane_res_l);
>  		}
>  =

>  		/* DDB */
> @@ -9434,43 +9433,36 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  	 * once the plane becomes visible, we can skip this check
>  	 */
>  	if (1) {
> -		struct skl_plane_wm *hw_plane_wm, *sw_plane_wm;
> -
> -		hw_plane_wm =3D &hw->wm.planes[PLANE_CURSOR];
> -		sw_plane_wm =3D &sw_wm->planes[PLANE_CURSOR];
> +		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
>  =

>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
> -			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
> -						&sw_plane_wm->wm[level]) ||
> -			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> -							       &sw_plane_wm->sagv.wm0)))
> -				continue;
> -
> +			hw_wm_level =3D &hw->wm.planes[PLANE_CURSOR].wm[level];
> +			sw_wm_level =3D skl_plane_wm_level(sw_wm, PLANE_CURSOR, level);
>  			drm_err(&dev_priv->drm,
>  				"mismatch in WM pipe %c cursor level %d (expected e=3D%d b=3D%u l=3D=
%u, got e=3D%d b=3D%u l=3D%u)\n",
>  				pipe_name(pipe), level,
> -				sw_plane_wm->wm[level].plane_en,
> -				sw_plane_wm->wm[level].plane_res_b,
> -				sw_plane_wm->wm[level].plane_res_l,
> -				hw_plane_wm->wm[level].plane_en,
> -				hw_plane_wm->wm[level].plane_res_b,
> -				hw_plane_wm->wm[level].plane_res_l);
> +				sw_wm_level->plane_en,
> +				sw_wm_level->plane_res_b,
> +				sw_wm_level->plane_res_l,
> +				hw_wm_level->plane_en,
> +				hw_wm_level->plane_res_b,
> +				hw_wm_level->plane_res_l);
>  		}
>  =

> -		if (!skl_wm_level_equals(&hw_plane_wm->trans_wm,
> -					 &sw_plane_wm->trans_wm) &&
> -		    !skl_wm_level_equals(&hw_plane_wm->trans_wm,
> -					 &sw_plane_wm->sagv.trans_wm)) {
> +		hw_wm_level =3D &hw->wm.planes[PLANE_CURSOR].trans_wm;
> +		sw_wm_level =3D skl_plane_trans_wm(sw_wm, PLANE_CURSOR);
> +
> +		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
>  			drm_err(&dev_priv->drm,
>  				"mismatch in trans WM pipe %c cursor (expected e=3D%d b=3D%u l=3D%u,=
 got e=3D%d b=3D%u l=3D%u)\n",
>  				pipe_name(pipe),
> -				sw_plane_wm->trans_wm.plane_en,
> -				sw_plane_wm->trans_wm.plane_res_b,
> -				sw_plane_wm->trans_wm.plane_res_l,
> -				hw_plane_wm->trans_wm.plane_en,
> -				hw_plane_wm->trans_wm.plane_res_b,
> -				hw_plane_wm->trans_wm.plane_res_l);
> +				sw_wm_level->plane_en,
> +				sw_wm_level->plane_res_b,
> +				sw_wm_level->plane_res_l,
> +				hw_wm_level->plane_en,
> +				hw_wm_level->plane_res_b,
> +				hw_wm_level->plane_res_l);
>  		}
>  =

>  		/* DDB */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 9d9ba63fc395..854ffecd98d9 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4745,7 +4745,7 @@ icl_get_total_relative_data_rate(struct intel_atomi=
c_state *state,
>  	return total_data_rate;
>  }
>  =

> -static const struct skl_wm_level *
> +const struct skl_wm_level *
>  skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
>  		   enum plane_id plane_id,
>  		   int level)
> @@ -4758,7 +4758,7 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_w=
m,
>  	return &wm->wm[level];
>  }
>  =

> -static const struct skl_wm_level *
> +const struct skl_wm_level *
>  skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
>  		   enum plane_id plane_id)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 97550cf0b6df..669c8d505677 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -52,6 +52,11 @@ bool intel_can_enable_sagv(struct drm_i915_private *de=
v_priv,
>  			   const struct intel_bw_state *bw_state);
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
>  void intel_sagv_post_plane_update(struct intel_atomic_state *state);
> +const struct skl_wm_level *skl_plane_wm_level(const struct skl_pipe_wm *=
pipe_wm,
> +					      enum plane_id plane_id,
> +					      int level);
> +const struct skl_wm_level *skl_plane_trans_wm(const struct skl_pipe_wm *=
pipe_wm,
> +					      enum plane_id plane_id);
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  			 const struct skl_wm_level *l2);
>  bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
