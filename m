Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 187E9327AA7
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 10:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2896E526;
	Mon,  1 Mar 2021 09:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B556E526
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 09:25:24 +0000 (UTC)
IronPort-SDR: pDPb48p7HSQrh9QRr2CQN4/ebayRu78BCyngWvN4cPqbXlSNwSX9ayQ5dzCmk0ReBzZWqvw6Ic
 tuoh0m+r5tMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="185731446"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="185731446"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:25:23 -0800
IronPort-SDR: Fer3Zjwle2pSeG+jaeWSfKzkVEuxSERjyDsy5D52uCSt8p+zUz03d4voVj5VhWA4vTtZJ8RpPo
 J/xBHgb59FwQ==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="595359423"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 01:25:22 -0800
Date: Mon, 1 Mar 2021 11:27:08 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210301092708.GD22174@intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
 <20210226153204.1270-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226153204.1270-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Clean up verify_wm_state()
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

On Fri, Feb 26, 2021 at 05:32:04PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Get rid of the nonsense cursor special case in verify_wm_state()
> by just iterating through all the planes. And let's use the
> canonical [PLANE:..] style in the debug prints while at it.

Great move!

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 88 ++++----------------
>  drivers/gpu/drm/i915/display/intel_display.h |  5 --
>  2 files changed, 17 insertions(+), 76 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e2ef31a93407..e0ecd8eea68d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9348,11 +9348,10 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		struct skl_ddb_entry ddb_uv[I915_MAX_PLANES];
>  		struct skl_pipe_wm wm;
>  	} *hw;
> -	struct skl_pipe_wm *sw_wm;
> -	struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
> +	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> +	int level, max_level =3D ilk_wm_max_level(dev_priv);
> +	struct intel_plane *plane;
>  	u8 hw_enabled_slices;
> -	const enum pipe pipe =3D crtc->pipe;
> -	int plane, level, max_level =3D ilk_wm_max_level(dev_priv);
>  =

>  	if (INTEL_GEN(dev_priv) < 9 || !new_crtc_state->hw.active)
>  		return;
> @@ -9362,7 +9361,6 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  		return;
>  =

>  	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
> -	sw_wm =3D &new_crtc_state->wm.skl.optimal;
>  =

>  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
>  =

> @@ -9375,21 +9373,21 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  			dev_priv->dbuf.enabled_slices,
>  			hw_enabled_slices);
>  =

> -	/* planes */
> -	for_each_universal_plane(dev_priv, pipe, plane) {
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
>  		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
>  =

>  		/* Watermarks */
>  		for (level =3D 0; level <=3D max_level; level++) {
> -			hw_wm_level =3D &hw->wm.planes[plane].wm[level];
> -			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane, level);
> +			hw_wm_level =3D &hw->wm.planes[plane->id].wm[level];
> +			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane->id, level);
>  =

>  			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
>  				continue;
>  =

>  			drm_err(&dev_priv->drm,
> -				"mismatch in WM pipe %c plane %d level %d (expected e=3D%d b=3D%u l=
=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
> -				pipe_name(pipe), plane + 1, level,
> +				"[PLANE:%d:%s] mismatch in WM%d (expected e=3D%d b=3D%u l=3D%u, got =
e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name, level,
>  				sw_wm_level->plane_en,
>  				sw_wm_level->plane_res_b,
>  				sw_wm_level->plane_res_l,
> @@ -9398,13 +9396,13 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  				hw_wm_level->plane_res_l);
>  		}
>  =

> -		hw_wm_level =3D &hw->wm.planes[plane].trans_wm;
> -		sw_wm_level =3D skl_plane_trans_wm(sw_wm, plane);
> +		hw_wm_level =3D &hw->wm.planes[plane->id].trans_wm;
> +		sw_wm_level =3D skl_plane_trans_wm(sw_wm, plane->id);
>  =

>  		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
>  			drm_err(&dev_priv->drm,
> -				"mismatch in trans WM pipe %c plane %d (expected e=3D%d b=3D%u l=3D%=
u, got e=3D%d b=3D%u l=3D%u)\n",
> -				pipe_name(pipe), plane + 1,
> +				"[PLANE:%d:%s] mismatch in trans WM (expected e=3D%d b=3D%u l=3D%u, =
got e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name,
>  				sw_wm_level->plane_en,
>  				sw_wm_level->plane_res_b,
>  				sw_wm_level->plane_res_l,
> @@ -9414,65 +9412,13 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  		}
>  =

>  		/* DDB */
> -		hw_ddb_entry =3D &hw->ddb_y[plane];
> -		sw_ddb_entry =3D &new_crtc_state->wm.skl.plane_ddb_y[plane];
> +		hw_ddb_entry =3D &hw->ddb_y[plane->id];
> +		sw_ddb_entry =3D &new_crtc_state->wm.skl.plane_ddb_y[plane->id];
>  =

>  		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
>  			drm_err(&dev_priv->drm,
> -				"mismatch in DDB state pipe %c plane %d (expected (%u,%u), found (%u=
,%u))\n",
> -				pipe_name(pipe), plane + 1,
> -				sw_ddb_entry->start, sw_ddb_entry->end,
> -				hw_ddb_entry->start, hw_ddb_entry->end);
> -		}
> -	}
> -
> -	/*
> -	 * cursor
> -	 * If the cursor plane isn't active, we may not have updated it's ddb
> -	 * allocation. In that case since the ddb allocation will be updated
> -	 * once the plane becomes visible, we can skip this check
> -	 */
> -	if (1) {
> -		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
> -
> -		/* Watermarks */
> -		for (level =3D 0; level <=3D max_level; level++) {
> -			hw_wm_level =3D &hw->wm.planes[PLANE_CURSOR].wm[level];
> -			sw_wm_level =3D skl_plane_wm_level(sw_wm, PLANE_CURSOR, level);
> -			drm_err(&dev_priv->drm,
> -				"mismatch in WM pipe %c cursor level %d (expected e=3D%d b=3D%u l=3D=
%u, got e=3D%d b=3D%u l=3D%u)\n",
> -				pipe_name(pipe), level,
> -				sw_wm_level->plane_en,
> -				sw_wm_level->plane_res_b,
> -				sw_wm_level->plane_res_l,
> -				hw_wm_level->plane_en,
> -				hw_wm_level->plane_res_b,
> -				hw_wm_level->plane_res_l);
> -		}
> -
> -		hw_wm_level =3D &hw->wm.planes[PLANE_CURSOR].trans_wm;
> -		sw_wm_level =3D skl_plane_trans_wm(sw_wm, PLANE_CURSOR);
> -
> -		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&dev_priv->drm,
> -				"mismatch in trans WM pipe %c cursor (expected e=3D%d b=3D%u l=3D%u,=
 got e=3D%d b=3D%u l=3D%u)\n",
> -				pipe_name(pipe),
> -				sw_wm_level->plane_en,
> -				sw_wm_level->plane_res_b,
> -				sw_wm_level->plane_res_l,
> -				hw_wm_level->plane_en,
> -				hw_wm_level->plane_res_b,
> -				hw_wm_level->plane_res_l);
> -		}
> -
> -		/* DDB */
> -		hw_ddb_entry =3D &hw->ddb_y[PLANE_CURSOR];
> -		sw_ddb_entry =3D &new_crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR];
> -
> -		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
> -			drm_err(&dev_priv->drm,
> -				"mismatch in DDB state pipe %c cursor (expected (%u,%u), found (%u,%=
u))\n",
> -				pipe_name(pipe),
> +				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
> +				plane->base.base.id, plane->base.name,
>  				sw_ddb_entry->start, sw_ddb_entry->end,
>  				hw_ddb_entry->start, hw_ddb_entry->end);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 61080152319f..216047233a6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -353,11 +353,6 @@ enum phy_fia {
>  	for_each_cpu_transcoder(__dev_priv, __t) \
>  		for_each_if ((__mask) & BIT(__t))
>  =

> -#define for_each_universal_plane(__dev_priv, __pipe, __p)		\
> -	for ((__p) =3D 0;							\
> -	     (__p) < RUNTIME_INFO(__dev_priv)->num_sprites[(__pipe)] + 1;	\
> -	     (__p)++)
> -
>  #define for_each_sprite(__dev_priv, __p, __s)				\
>  	for ((__s) =3D 0;							\
>  	     (__s) < RUNTIME_INFO(__dev_priv)->num_sprites[(__p)];	\
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
