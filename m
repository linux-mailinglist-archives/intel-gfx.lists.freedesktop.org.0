Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D3E45B767
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 10:26:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04DE6E46B;
	Wed, 24 Nov 2021 09:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4628F6E46B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 09:26:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222117618"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="222117618"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:26:08 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="674800649"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:26:07 -0800
Date: Wed, 24 Nov 2021 11:26:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20211124092603.GB675880@ideak-desk.fi.intel.com>
References: <20211124092355.16668-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211124092355.16668-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/dg2: Tile 4 plane format
 support"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 24, 2021 at 11:23:55AM +0200, Stanislav Lisovskiy wrote:
> Tile4 patch still needs an ack from userspace,
> IGT tests and some essential fixes, related to
> new .plane_caps attribute being added.
> 
> This reverts commit 3c542cfa8266e3364938d055b3d548b7bed7f08e.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Acked-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 -
>  drivers/gpu/drm/i915/display/intel_fb.c       |  9 ---------
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  1 -
>  .../drm/i915/display/intel_plane_initial.c    |  1 -
>  .../drm/i915/display/skl_universal_plane.c    | 20 ++++++++-----------
>  drivers/gpu/drm/i915/i915_drv.h               |  1 -
>  drivers/gpu/drm/i915/i915_pci.c               |  1 -
>  drivers/gpu/drm/i915/i915_reg.h               |  1 -
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 -
>  drivers/gpu/drm/i915/intel_pm.c               |  1 -
>  include/uapi/drm/drm_fourcc.h                 |  8 --------
>  11 files changed, 8 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7429965d3682..f3c9208a30b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7766,7 +7766,6 @@ static int intel_atomic_check_async(struct intel_atomic_state *state, struct int
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> -		case I915_FORMAT_MOD_4_TILED:
>  			break;
>  		default:
>  			drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index b7f1ef62072c..c4a743d0913f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -139,9 +139,6 @@ struct intel_modifier_desc {
>  
>  static const struct intel_modifier_desc intel_modifiers[] = {
>  	{
> -		.modifier = I915_FORMAT_MOD_4_TILED,
> -		.display_ver = { 13, 13 },
> -	}, {
>  		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>  		.display_ver = { 12, 13 },
>  		.plane_caps = INTEL_PLANE_CAP_TILING_Y | INTEL_PLANE_CAP_CCS_MC,
> @@ -547,12 +544,6 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 128;
>  		else
>  			return 512;
> -	case I915_FORMAT_MOD_4_TILED:
> -		/*
> -		 * Each 4K tile consists of 64B(8*8) subtiles, with
> -		 * same shape as Y Tile(i.e 4*16B OWords)
> -		 */
> -		return 128;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
>  			return 128;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 0ceabe40d8c9..d0c34bc3af6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -898,7 +898,6 @@ static bool tiling_is_valid(struct drm_i915_private *i915,
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return DISPLAY_VER(i915) >= 9;
> -	case I915_FORMAT_MOD_4_TILED:
>  	case I915_FORMAT_MOD_X_TILED:
>  		return true;
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index d80855ee9b96..dcd698a02da2 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -125,7 +125,6 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> -	case I915_FORMAT_MOD_4_TILED:
>  		break;
>  	default:
>  		drm_dbg(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e5cda5bcbde4..28890876bdeb 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -751,8 +751,6 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  		return PLANE_CTL_TILED_X;
>  	case I915_FORMAT_MOD_Y_TILED:
>  		return PLANE_CTL_TILED_Y;
> -	case I915_FORMAT_MOD_4_TILED:
> -		return PLANE_CTL_TILED_4;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> @@ -1973,7 +1971,9 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_Y216:
>  	case DRM_FORMAT_XVYU12_16161616:
>  	case DRM_FORMAT_XVYU16161616:
> -		if (!intel_fb_is_ccs_modifier(modifier))
> +		if (modifier == DRM_FORMAT_MOD_LINEAR ||
> +		    modifier == I915_FORMAT_MOD_X_TILED ||
> +		    modifier == I915_FORMAT_MOD_Y_TILED)
>  			return true;
>  		fallthrough;
>  	default:
> @@ -2299,15 +2299,11 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  		else
>  			fb->modifier = I915_FORMAT_MOD_Y_TILED;
>  		break;
> -	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> -		if (HAS_4TILE(dev_priv)) {
> -			fb->modifier = I915_FORMAT_MOD_4_TILED;
> -		} else {
> -			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> -			else
> -				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
> -		}
> +	case PLANE_CTL_TILED_YF:
> +		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +			fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> +		else
> +			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
>  		break;
>  	default:
>  		MISSING_CASE(tiling);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 3d90bd732e91..1bfadd9127fc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1627,7 +1627,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
>  
>  #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
> -#define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
>  #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
>  #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
>  #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 403d3a581ce7..f01cba4ec283 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1044,7 +1044,6 @@ static const struct intel_device_info dg2_info = {
>  	DGFX_FEATURES,
>  	.graphics.rel = 55,
>  	.media.rel = 55,
> -	.has_4tile = 1,
>  	PLATFORM(INTEL_DG2),
>  	.platform_engine_mask =
>  		BIT(RCS0) | BIT(BCS0) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 22d18a292430..3450818802c2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7284,7 +7284,6 @@ enum {
>  #define   PLANE_CTL_TILED_X			(1 << 10)
>  #define   PLANE_CTL_TILED_Y			(4 << 10)
>  #define   PLANE_CTL_TILED_YF			(5 << 10)
> -#define   PLANE_CTL_TILED_4			(5 << 10)
>  #define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
>  #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
>  #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 67177e18704a..669f0d26c3c3 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -125,7 +125,6 @@ enum intel_ppgtt_type {
>  	func(has_64bit_reloc); \
>  	func(gpu_reset_clobbers_display); \
>  	func(has_reset_engine); \
> -	func(has_4tile); \
>  	func(has_global_mocs); \
>  	func(has_gt_uc); \
>  	func(has_l3_dpf); \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 167704f0acf0..01fa3fac1b57 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5386,7 +5386,6 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> -		      modifier == I915_FORMAT_MOD_4_TILED ||
>  		      modifier == I915_FORMAT_MOD_Yf_TILED ||
>  		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>  		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 41184a94935d..7f652c96845b 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -564,14 +564,6 @@ extern "C" {
>   * pitch is required to be a multiple of 4 tile widths.
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
> -/*
> - * Intel F-tiling(aka Tile4) layout
> - *
> - * This is a tiled layout using 4Kb tiles in row-major layout.
> - * Within the tile pixels are laid out in 64 byte units / sub-tiles in OWORD
> - * (16 bytes) chunks column-major..
> - */
> -#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 9)
>  
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
> -- 
> 2.24.1.485.gad05a3d8e5
> 
