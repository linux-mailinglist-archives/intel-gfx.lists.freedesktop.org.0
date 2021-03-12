Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03F9338D53
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 13:42:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E116E0CA;
	Fri, 12 Mar 2021 12:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89D06E0CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 12:42:47 +0000 (UTC)
IronPort-SDR: Rp0SdBflThjPOuBqLoNPDzEyJ3vS205IeNpDQQLTfVhS8B3AFaRfuHU64yYgLUpvJYCihmlKs/
 hZUWWp8BdJeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="273869409"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="273869409"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:42:46 -0800
IronPort-SDR: TREpyZnapKbxM6wORa3+p2IqVjEzc8tEo2t4K/vxcrblEfkCEZTd6zaGO4BtjEOYCKLaZgaiBd
 KpT6hlLxxVNQ==
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="448612895"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 04:42:44 -0800
Date: Fri, 12 Mar 2021 14:45:05 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210312124505.GA12330@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305153610.12177-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: s/plane_res_b/blocks/ etc.
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

On Fri, Mar 05, 2021 at 05:36:10PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Rename a bunch of the skl+ watermark struct members to
> have sensible names. Avoids me having to think what
> plane_res_b/etc. means.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  24 +--
>  .../drm/i915/display/intel_display_types.h    |   6 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 198 +++++++++---------
>  3 files changed, 112 insertions(+), 116 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 076d381d3387..ad6567f04bfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9433,12 +9433,12 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  			drm_err(&dev_priv->drm,
>  				"[PLANE:%d:%s] mismatch in WM%d (expected e=3D%d b=3D%u l=3D%u, got =
e=3D%d b=3D%u l=3D%u)\n",
>  				plane->base.base.id, plane->base.name, level,
> -				sw_wm_level->plane_en,
> -				sw_wm_level->plane_res_b,
> -				sw_wm_level->plane_res_l,
> -				hw_wm_level->plane_en,
> -				hw_wm_level->plane_res_b,
> -				hw_wm_level->plane_res_l);
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
>  		}
>  =

>  		hw_wm_level =3D &hw->wm.planes[plane->id].trans_wm;
> @@ -9448,12 +9448,12 @@ static void verify_wm_state(struct intel_crtc *cr=
tc,
>  			drm_err(&dev_priv->drm,
>  				"[PLANE:%d:%s] mismatch in trans WM (expected e=3D%d b=3D%u l=3D%u, =
got e=3D%d b=3D%u l=3D%u)\n",
>  				plane->base.base.id, plane->base.name,
> -				sw_wm_level->plane_en,
> -				sw_wm_level->plane_res_b,
> -				sw_wm_level->plane_res_l,
> -				hw_wm_level->plane_en,
> -				hw_wm_level->plane_res_b,
> -				hw_wm_level->plane_res_l);
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
>  		}
>  =

>  		/* DDB */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 8d9113fa82c7..b6eaa8ee2b66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -721,9 +721,9 @@ struct intel_pipe_wm {
>  =

>  struct skl_wm_level {
>  	u16 min_ddb_alloc;
> -	u16 plane_res_b;
> -	u8 plane_res_l;
> -	bool plane_en;
> +	u16 blocks;
> +	u8 lines;
> +	bool enable;
>  	bool ignore_lines;
>  	bool can_sagv;
>  };
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 3e26d8b667a1..559bc3ba9a74 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3893,12 +3893,12 @@ static bool skl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
>  		int level;
>  =

>  		/* Skip this plane if it's not enabled */
> -		if (!wm->wm[0].plane_en)
> +		if (!wm->wm[0].enable)
>  			continue;
>  =

>  		/* Find the highest enabled wm level for this plane */
>  		for (level =3D ilk_wm_max_level(dev_priv);
> -		     !wm->wm[level].plane_en; --level)
> +		     !wm->wm[level].enable; --level)
>  		     { }
>  =

>  		/* Highest common enabled wm level for all planes */
> @@ -3917,7 +3917,7 @@ static bool skl_crtc_can_enable_sagv(const struct i=
ntel_crtc_state *crtc_state)
>  		 * All enabled planes must have enabled a common wm level that
>  		 * can tolerate memory latencies higher than sagv_block_time_us
>  		 */
> -		if (wm->wm[0].plane_en && !wm->wm[max_level].can_sagv)
> +		if (wm->wm[0].enable && !wm->wm[max_level].can_sagv)
>  			return false;
>  	}
>  =

> @@ -3936,7 +3936,7 @@ static bool tgl_crtc_can_enable_sagv(const struct i=
ntel_crtc_state *crtc_state)
>  		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  =

> -		if (wm->wm[0].plane_en && !wm->sagv.wm0.plane_en)
> +		if (wm->wm[0].enable && !wm->sagv.wm0.enable)
>  			return false;
>  	}
>  =

> @@ -4987,9 +4987,9 @@ skl_allocate_plane_ddb(struct intel_atomic_state *s=
tate,
>  			 * Underruns with WM1+ disabled
>  			 */
>  			if (IS_GEN(dev_priv, 11) &&
> -			    level =3D=3D 1 && wm->wm[0].plane_en) {
> -				wm->wm[level].plane_res_b =3D wm->wm[0].plane_res_b;
> -				wm->wm[level].plane_res_l =3D wm->wm[0].plane_res_l;
> +			    level =3D=3D 1 && wm->wm[0].enable) {
> +				wm->wm[level].blocks =3D wm->wm[0].blocks;
> +				wm->wm[level].lines =3D wm->wm[0].lines;
>  				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
>  			}
>  		}
> @@ -5210,7 +5210,7 @@ static void skl_compute_plane_wm(const struct intel=
_crtc_state *crtc_state,
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	uint_fixed_16_16_t method1, method2;
>  	uint_fixed_16_16_t selected_result;
> -	u32 res_blocks, res_lines, min_ddb_alloc =3D 0;
> +	u32 blocks, lines, min_ddb_alloc =3D 0;
>  =

>  	if (latency =3D=3D 0) {
>  		/* reject it */
> @@ -5256,24 +5256,22 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  		}
>  	}
>  =

> -	res_blocks =3D fixed16_to_u32_round_up(selected_result) + 1;
> -	res_lines =3D div_round_up_fixed16(selected_result,
> -					 wp->plane_blocks_per_line);
> +	blocks =3D fixed16_to_u32_round_up(selected_result) + 1;
> +	lines =3D div_round_up_fixed16(selected_result,
> +				     wp->plane_blocks_per_line);
>  =

>  	if (IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv)) {
>  		/* Display WA #1125: skl,bxt,kbl */
>  		if (level =3D=3D 0 && wp->rc_surface)
> -			res_blocks +=3D
> -				fixed16_to_u32_round_up(wp->y_tile_minimum);
> +			blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
>  =

>  		/* Display WA #1126: skl,bxt,kbl */
>  		if (level >=3D 1 && level <=3D 7) {
>  			if (wp->y_tiled) {
> -				res_blocks +=3D
> -				    fixed16_to_u32_round_up(wp->y_tile_minimum);
> -				res_lines +=3D wp->y_min_scanlines;
> +				blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> +				lines +=3D wp->y_min_scanlines;
>  			} else {
> -				res_blocks++;
> +				blocks++;
>  			}
>  =

>  			/*
> @@ -5282,8 +5280,8 @@ static void skl_compute_plane_wm(const struct intel=
_crtc_state *crtc_state,
>  			 * Assumption in DDB algorithm optimization for special
>  			 * cases. Also covers Display WA #1125 for RC.
>  			 */
> -			if (result_prev->plane_res_b > res_blocks)
> -				res_blocks =3D result_prev->plane_res_b;
> +			if (result_prev->blocks > blocks)
> +				blocks =3D result_prev->blocks;
>  		}
>  	}
>  =

> @@ -5291,40 +5289,39 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  		if (wp->y_tiled) {
>  			int extra_lines;
>  =

> -			if (res_lines % wp->y_min_scanlines =3D=3D 0)
> +			if (lines % wp->y_min_scanlines =3D=3D 0)
>  				extra_lines =3D wp->y_min_scanlines;
>  			else
>  				extra_lines =3D wp->y_min_scanlines * 2 -
> -					res_lines % wp->y_min_scanlines;
> +					lines % wp->y_min_scanlines;
>  =

> -			min_ddb_alloc =3D mul_round_up_u32_fixed16(res_lines + extra_lines,
> +			min_ddb_alloc =3D mul_round_up_u32_fixed16(lines + extra_lines,
>  								 wp->plane_blocks_per_line);
>  		} else {
> -			min_ddb_alloc =3D res_blocks +
> -				DIV_ROUND_UP(res_blocks, 10);
> +			min_ddb_alloc =3D blocks + DIV_ROUND_UP(blocks, 10);
>  		}
>  	}
>  =

>  	if (!skl_wm_has_lines(dev_priv, level))
> -		res_lines =3D 0;
> +		lines =3D 0;
>  =

> -	if (res_lines > 31) {
> +	if (lines > 31) {
>  		/* reject it */
>  		result->min_ddb_alloc =3D U16_MAX;
>  		return;
>  	}
>  =

>  	/*
> -	 * If res_lines is valid, assume we can use this watermark level
> +	 * If lines is valid, assume we can use this watermark level
>  	 * for now.  We'll come back and disable it after we calculate the
>  	 * DDB allocation if it turns out we don't actually have enough
>  	 * blocks to satisfy it.
>  	 */
> -	result->plane_res_b =3D res_blocks;
> -	result->plane_res_l =3D res_lines;
> +	result->blocks =3D blocks;
> +	result->lines =3D lines;
>  	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here */
> -	result->min_ddb_alloc =3D max(min_ddb_alloc, res_blocks) + 1;
> -	result->plane_en =3D true;
> +	result->min_ddb_alloc =3D max(min_ddb_alloc, blocks) + 1;
> +	result->enable =3D true;
>  =

>  	if (INTEL_GEN(dev_priv) < 12)
>  		result->can_sagv =3D latency >=3D dev_priv->sagv_block_time_us;
> @@ -5370,7 +5367,7 @@ static void skl_compute_transition_wm(struct drm_i9=
15_private *dev_priv,
>  				      const struct skl_wm_params *wp)
>  {
>  	u16 trans_min, trans_amount, trans_y_tile_min;
> -	u16 wm0_sel_res_b, trans_offset_b, res_blocks;
> +	u16 wm0_blocks, trans_offset, blocks;
>  =

>  	/* Transition WM don't make any sense if ipc is disabled */
>  	if (!dev_priv->ipc_enabled)
> @@ -5394,38 +5391,37 @@ static void skl_compute_transition_wm(struct drm_=
i915_private *dev_priv,
>  	else
>  		trans_amount =3D 10; /* This is configurable amount */
>  =

> -	trans_offset_b =3D trans_min + trans_amount;
> +	trans_offset =3D trans_min + trans_amount;
>  =

>  	/*
>  	 * The spec asks for Selected Result Blocks for wm0 (the real value),
>  	 * not Result Blocks (the integer value). Pay attention to the capital
> -	 * letters. The value wm_l0->plane_res_b is actually Result Blocks, but
> +	 * letters. The value wm_l0->blocks is actually Result Blocks, but
>  	 * since Result Blocks is the ceiling of Selected Result Blocks plus 1,
>  	 * and since we later will have to get the ceiling of the sum in the
>  	 * transition watermarks calculation, we can just pretend Selected
>  	 * Result Blocks is Result Blocks minus 1 and it should work for the
>  	 * current platforms.
>  	 */
> -	wm0_sel_res_b =3D wm0->plane_res_b - 1;
> +	wm0_blocks =3D wm0->blocks - 1;
>  =

>  	if (wp->y_tiled) {
>  		trans_y_tile_min =3D
>  			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
> -		res_blocks =3D max(wm0_sel_res_b, trans_y_tile_min) +
> -				trans_offset_b;
> +		blocks =3D max(wm0_blocks, trans_y_tile_min) + trans_offset;
>  	} else {
> -		res_blocks =3D wm0_sel_res_b + trans_offset_b;
> +		blocks =3D wm0_blocks + trans_offset;
>  	}
> -	res_blocks++;
> +	blocks++;
>  =

>  	/*
>  	 * Just assume we can enable the transition watermark.  After
>  	 * computing the DDB we'll come back and disable it if that
>  	 * assumption turns out to be false.
>  	 */
> -	trans_wm->plane_res_b =3D res_blocks;
> -	trans_wm->min_ddb_alloc =3D max_t(u16, wm0->min_ddb_alloc, res_blocks +=
 1);
> -	trans_wm->plane_en =3D true;
> +	trans_wm->blocks =3D blocks;
> +	trans_wm->min_ddb_alloc =3D max_t(u16, wm0->min_ddb_alloc, blocks + 1);
> +	trans_wm->enable =3D true;
>  }
>  =

>  static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
> @@ -5600,12 +5596,12 @@ static void skl_write_wm_level(struct drm_i915_pr=
ivate *dev_priv,
>  {
>  	u32 val =3D 0;
>  =

> -	if (level->plane_en)
> +	if (level->enable)
>  		val |=3D PLANE_WM_EN;
>  	if (level->ignore_lines)
>  		val |=3D PLANE_WM_IGNORE_LINES;
> -	val |=3D level->plane_res_b;
> -	val |=3D level->plane_res_l << PLANE_WM_LINES_SHIFT;
> +	val |=3D level->blocks;
> +	val |=3D level->lines << PLANE_WM_LINES_SHIFT;
>  =

>  	intel_de_write_fw(dev_priv, reg, val);
>  }
> @@ -5670,10 +5666,10 @@ void skl_write_cursor_wm(struct intel_plane *plan=
e,
>  bool skl_wm_level_equals(const struct skl_wm_level *l1,
>  			 const struct skl_wm_level *l2)
>  {
> -	return l1->plane_en =3D=3D l2->plane_en &&
> +	return l1->enable =3D=3D l2->enable &&
>  		l1->ignore_lines =3D=3D l2->ignore_lines &&
> -		l1->plane_res_l =3D=3D l2->plane_res_l &&
> -		l1->plane_res_b =3D=3D l2->plane_res_b;
> +		l1->lines =3D=3D l2->lines &&
> +		l1->blocks =3D=3D l2->blocks;
>  }
>  =

>  static bool skl_plane_wm_equals(struct drm_i915_private *dev_priv,
> @@ -5927,66 +5923,66 @@ skl_print_wm_changes(struct intel_atomic_state *s=
tate)
>  				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm,%cstwm"
>  				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
,%cstwm\n",
>  				    plane->base.base.id, plane->base.name,
> -				    enast(old_wm->wm[0].plane_en), enast(old_wm->wm[1].plane_en),
> -				    enast(old_wm->wm[2].plane_en), enast(old_wm->wm[3].plane_en),
> -				    enast(old_wm->wm[4].plane_en), enast(old_wm->wm[5].plane_en),
> -				    enast(old_wm->wm[6].plane_en), enast(old_wm->wm[7].plane_en),
> -				    enast(old_wm->trans_wm.plane_en),
> -				    enast(old_wm->sagv.wm0.plane_en),
> -				    enast(old_wm->sagv.trans_wm.plane_en),
> -				    enast(new_wm->wm[0].plane_en), enast(new_wm->wm[1].plane_en),
> -				    enast(new_wm->wm[2].plane_en), enast(new_wm->wm[3].plane_en),
> -				    enast(new_wm->wm[4].plane_en), enast(new_wm->wm[5].plane_en),
> -				    enast(new_wm->wm[6].plane_en), enast(new_wm->wm[7].plane_en),
> -				    enast(new_wm->trans_wm.plane_en),
> -				    enast(new_wm->sagv.wm0.plane_en),
> -				    enast(new_wm->sagv.trans_wm.plane_en));
> +				    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
> +				    enast(old_wm->wm[2].enable), enast(old_wm->wm[3].enable),
> +				    enast(old_wm->wm[4].enable), enast(old_wm->wm[5].enable),
> +				    enast(old_wm->wm[6].enable), enast(old_wm->wm[7].enable),
> +				    enast(old_wm->trans_wm.enable),
> +				    enast(old_wm->sagv.wm0.enable),
> +				    enast(old_wm->sagv.trans_wm.enable),
> +				    enast(new_wm->wm[0].enable), enast(new_wm->wm[1].enable),
> +				    enast(new_wm->wm[2].enable), enast(new_wm->wm[3].enable),
> +				    enast(new_wm->wm[4].enable), enast(new_wm->wm[5].enable),
> +				    enast(new_wm->wm[6].enable), enast(new_wm->wm[7].enable),
> +				    enast(new_wm->trans_wm.enable),
> +				    enast(new_wm->sagv.wm0.enable),
> +				    enast(new_wm->sagv.trans_wm.enable));
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d,%c%4d"
>  				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d,%c%4d\n",
>  				    plane->base.base.id, plane->base.name,
> -				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].plane_res_l,
> -				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].plane_res_l,
> -				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].plane_res_l,
> -				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].plane_res_l,
> -				    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].plane_res_l,
> -				    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].plane_res_l,
> -				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].plane_res_l,
> -				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].plane_res_l,
> -				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.plane_res=
_l,
> -				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.plane_res=
_l,
> -				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm=
.plane_res_l,
> -				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].plane_res_l,
> -				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].plane_res_l,
> -				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].plane_res_l,
> -				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].plane_res_l,
> -				    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].plane_res_l,
> -				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].plane_res_l,
> -				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].plane_res_l,
> -				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].plane_res_l,
> -				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res=
_l,
> -				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.plane_res=
_l,
> -				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm=
.plane_res_l);
> +				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
> +				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].lines,
> +				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].lines,
> +				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].lines,
> +				    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].lines,
> +				    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].lines,
> +				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].lines,
> +				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].lines,
> +				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.lines,
> +				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.lines,
> +				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm=
.lines,
> +				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].lines,
> +				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].lines,
> +				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].lines,
> +				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].lines,
> +				    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].lines,
> +				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].lines,
> +				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].lines,
> +				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].lines,
> +				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.lines,
> +				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.lines,
> +				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm=
.lines);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
>  				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
>  				    plane->base.base.id, plane->base.name,
> -				    old_wm->wm[0].plane_res_b, old_wm->wm[1].plane_res_b,
> -				    old_wm->wm[2].plane_res_b, old_wm->wm[3].plane_res_b,
> -				    old_wm->wm[4].plane_res_b, old_wm->wm[5].plane_res_b,
> -				    old_wm->wm[6].plane_res_b, old_wm->wm[7].plane_res_b,
> -				    old_wm->trans_wm.plane_res_b,
> -				    old_wm->sagv.wm0.plane_res_b,
> -				    old_wm->sagv.trans_wm.plane_res_b,
> -				    new_wm->wm[0].plane_res_b, new_wm->wm[1].plane_res_b,
> -				    new_wm->wm[2].plane_res_b, new_wm->wm[3].plane_res_b,
> -				    new_wm->wm[4].plane_res_b, new_wm->wm[5].plane_res_b,
> -				    new_wm->wm[6].plane_res_b, new_wm->wm[7].plane_res_b,
> -				    new_wm->trans_wm.plane_res_b,
> -				    new_wm->sagv.wm0.plane_res_b,
> -				    new_wm->sagv.trans_wm.plane_res_b);
> +				    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
> +				    old_wm->wm[2].blocks, old_wm->wm[3].blocks,
> +				    old_wm->wm[4].blocks, old_wm->wm[5].blocks,
> +				    old_wm->wm[6].blocks, old_wm->wm[7].blocks,
> +				    old_wm->trans_wm.blocks,
> +				    old_wm->sagv.wm0.blocks,
> +				    old_wm->sagv.trans_wm.blocks,
> +				    new_wm->wm[0].blocks, new_wm->wm[1].blocks,
> +				    new_wm->wm[2].blocks, new_wm->wm[3].blocks,
> +				    new_wm->wm[4].blocks, new_wm->wm[5].blocks,
> +				    new_wm->wm[6].blocks, new_wm->wm[7].blocks,
> +				    new_wm->trans_wm.blocks,
> +				    new_wm->sagv.wm0.blocks,
> +				    new_wm->sagv.trans_wm.blocks);
>  =

>  			drm_dbg_kms(&dev_priv->drm,
>  				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> @@ -6210,10 +6206,10 @@ static void ilk_optimize_watermarks(struct intel_=
atomic_state *state,
>  =

>  static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *leve=
l)
>  {
> -	level->plane_en =3D val & PLANE_WM_EN;
> +	level->enable =3D val & PLANE_WM_EN;
>  	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES;
> -	level->plane_res_b =3D val & PLANE_WM_BLOCKS_MASK;
> -	level->plane_res_l =3D (val >> PLANE_WM_LINES_SHIFT) &
> +	level->blocks =3D val & PLANE_WM_BLOCKS_MASK;
> +	level->lines =3D (val >> PLANE_WM_LINES_SHIFT) &
>  		PLANE_WM_LINES_MASK;
>  }
>  =

> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
