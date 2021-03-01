Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E1327A8B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468506E52E;
	Mon,  1 Mar 2021 09:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317486E508
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:16:17 +0000 (UTC)
IronPort-SDR: dB9CrtkTuTQmBuwYOPC3ZrP/d2b6zdfr4s7lvzz3nhE5KW3TgdEiqxojM6eOhsA69FTG9Vbuf4
 5W7jkLr6Kazg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="186460975"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="186460975"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:16:16 -0800
IronPort-SDR: RJ+shrFreAWLvxlYHHY4ANCn8YfaZl756jOtbWEeTDMZK2Z4wqIt2uUPD44vTlQ33RElNOebsr
 yIkZ/wG4tMEA==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="595356723"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:16:14 -0800
Date: Mon, 1 Mar 2021 11:17:47 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301091747.GA22174@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Stuff SAGV watermark into a
 sub-structure
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

On Fri, Feb 26, 2021 at 05:32:01PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We'll want a SAGV transition watermark as well. Prepare
> for that by collecting SAGV wm0 into a sub-strcture.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +--
>  .../drm/i915/display/intel_display_types.h    |  4 ++-
>  drivers/gpu/drm/i915/intel_pm.c               | 30 +++++++++----------
>  3 files changed, 20 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d0da88751c72..718e66f49332 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9387,7 +9387,7 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
>  						&sw_plane_wm->wm[level]) ||
>  			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> -							       &sw_plane_wm->sagv_wm0)))
> +							       &sw_plane_wm->sagv.wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> @@ -9444,7 +9444,7 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  			if (skl_wm_level_equals(&hw_plane_wm->wm[level],
>  						&sw_plane_wm->wm[level]) ||
>  			    (level =3D=3D 0 && skl_wm_level_equals(&hw_plane_wm->wm[level],
> -							       &sw_plane_wm->sagv_wm0)))
> +							       &sw_plane_wm->sagv.wm0)))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 1a76e1d9de7a..6321cd3df81e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -732,7 +732,9 @@ struct skl_plane_wm {
>  	struct skl_wm_level wm[8];
>  	struct skl_wm_level uv_wm[8];
>  	struct skl_wm_level trans_wm;
> -	struct skl_wm_level sagv_wm0;
> +	struct {
> +		struct skl_wm_level wm0;
> +	} sagv;
>  	bool is_planar;
>  };
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 06c54adc609a..a1591d9189a0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3924,7 +3924,7 @@ static bool tgl_crtc_can_enable_sagv(const struct i=
ntel_crtc_state *crtc_state)
>  		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -		if (wm->wm[0].plane_en && !wm->sagv_wm0.plane_en)
> +		if (wm->wm[0].plane_en && !wm->sagv.wm0.plane_en)
>  			return false;
>  	}
>  =

> @@ -4753,7 +4753,7 @@ skl_plane_wm_level(const struct skl_pipe_wm *pipe_w=
m,
>  	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
>  =

>  	if (level =3D=3D 0 && pipe_wm->use_sagv_wm)
> -		return &wm->sagv_wm0;
> +		return &wm->sagv.wm0;
>  =

>  	return &wm->wm[level];
>  }
> @@ -4965,8 +4965,8 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  		if (wm->trans_wm.plane_res_b >=3D total[plane_id])
>  			memset(&wm->trans_wm, 0, sizeof(wm->trans_wm));
>  =

> -		if (wm->sagv_wm0.plane_res_b >=3D total[plane_id])
> -			memset(&wm->sagv_wm0, 0, sizeof(wm->sagv_wm0));
> +		if (wm->sagv.wm0.plane_res_b >=3D total[plane_id])
> +			memset(&wm->sagv.wm0, 0, sizeof(wm->sagv.wm0));
>  	}
>  =

>  	return 0;
> @@ -5316,7 +5316,7 @@ static void tgl_compute_sagv_wm(const struct intel_=
crtc_state *crtc_state,
>  				struct skl_plane_wm *plane_wm)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	struct skl_wm_level *sagv_wm =3D &plane_wm->sagv_wm0;
> +	struct skl_wm_level *sagv_wm =3D &plane_wm->sagv.wm0;
>  	struct skl_wm_level *levels =3D plane_wm->wm;
>  	unsigned int latency =3D dev_priv->wm.skl_latency[0] + dev_priv->sagv_b=
lock_time_us;
>  =

> @@ -5648,7 +5648,7 @@ static bool skl_plane_wm_equals(struct drm_i915_pri=
vate *dev_priv,
>  	}
>  =

>  	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
> -		skl_wm_level_equals(&wm1->sagv_wm0, &wm2->sagv_wm0);
> +		skl_wm_level_equals(&wm1->sagv.wm0, &wm2->sagv.wm0);
>  }
>  =

>  static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
> @@ -5886,13 +5886,13 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
>  				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
>  				    enast(old_wm->trans_wm.plane_en),
> -				    enast(old_wm->sagv_wm0.plane_en),
> +				    enast(old_wm->sagv.wm0.plane_en),
>  				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
>  				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
>  				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
>  				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
>  				    enast(new_wm->trans_wm.plane_en),
> -				    enast(new_wm->sagv_wm0.plane_en));
> +				    enast(new_wm->sagv.wm0.plane_en));
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d"
> @@ -5907,7 +5907,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
>  				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
>  				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res=
_l,
> -				    enast(old_wm->sagv_wm0.ignore_lines), old_wm->sagv_wm0.plane_res=
_l,
> +				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.plane_res=
_l,
>  =

>  				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
>  				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
> @@ -5918,7 +5918,7 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
>  				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
>  				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l,
> -				    enast(new_wm->sagv_wm0.ignore_lines), new_wm->sagv_wm0.plane_res=
_l);
> +				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res=
_l);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> @@ -5929,13 +5929,13 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
>  				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
>  				    old_wm->trans_wm.plane_res_b,
> -				    old_wm->sagv_wm0.plane_res_b,
> +				    old_wm->sagv.wm0.plane_res_b,
>  				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
>  				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
>  				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
>  				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
>  				    new_wm->trans_wm.plane_res_b,
> -				    new_wm->sagv_wm0.plane_res_b);
> +				    new_wm->sagv.wm0.plane_res_b);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d"
> @@ -5946,13 +5946,13 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
>  				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
>  				    old_wm->trans_wm.min_ddb_alloc,
> -				    old_wm->sagv_wm0.min_ddb_alloc,
> +				    old_wm->sagv.wm0.min_ddb_alloc,
>  				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
>  				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
>  				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
>  				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
>  				    new_wm->trans_wm.min_ddb_alloc,
> -				    new_wm->sagv_wm0.min_ddb_alloc);
> +				    new_wm->sagv.wm0.min_ddb_alloc);
>  		}
>  	}
>  }
> @@ -6189,7 +6189,7 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *cr=
tc,
>  		}
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 12)
> -			wm->sagv_wm0 =3D wm->wm[0];
> +			wm->sagv.wm0 =3D wm->wm[0];
>  =

>  		if (plane_id !=3D PLANE_CURSOR)
>  			val =3D intel_uncore_read(&dev_priv->uncore, PLANE_WM_TRANS(pipe, pla=
ne_id));
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
