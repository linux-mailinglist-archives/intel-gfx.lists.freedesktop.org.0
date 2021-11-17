Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D404548DE
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 15:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B97BA6E47E;
	Wed, 17 Nov 2021 14:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D05B89A1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 14:33:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="220841612"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="220841612"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 06:33:48 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="454882411"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 06:33:47 -0800
Date: Wed, 17 Nov 2021 16:33:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20211117143343.GA204593@ideak-desk.fi.intel.com>
References: <20211117110100.8991-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211117110100.8991-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Tile 4 plane format support
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

On Wed, Nov 17, 2021 at 01:01:00PM +0200, Stanislav Lisovskiy wrote:
> TileF(Tile4 in bspec) format is 4K tile organized into
> 64B subtiles with same basic shape as for legacy TileY
> which will be supported by Display13.
> 
> v2: - Fixed wrong case condition(Jani Nikula)
>     - Increased I915_FORMAT_MOD_F_TILED up to 12(Imre Deak)
> 
> v3: - s/I915_TILING_F/TILING_4/g
>     - s/I915_FORMAT_MOD_F_TILED/I915_FORMAT_MOD_4_TILED/g
>     - Removed unneeded fencing code
> 
> v4: - Rebased, fixed merge conflict with new table-oriented
>       format modifier checking(Stan)
>     - Replaced the rest of "Tile F" mentions to "Tile 4"(Stan)
> 
> v5: - Still had to remove some Tile F mentionings
>     - Moved has_4tile from adlp to DG2(Ramalingam)
>     - Check specifically for DG2, but not the Display13(Imre)
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c       | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 ++
>  .../drm/i915/display/intel_plane_initial.c    |  1 +
>  .../drm/i915/display/skl_universal_plane.c    | 20 +++++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h               |  1 +
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
>  drivers/gpu/drm/i915/intel_pm.c               |  1 +
>  include/uapi/drm/drm_fourcc.h                 |  8 ++++++++
>  11 files changed, 39 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0ceee8ac6671..eaea986dff99 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7743,6 +7743,7 @@ static int intel_atomic_check_async(struct intel_atomic_state *state, struct int
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> +		case I915_FORMAT_MOD_4_TILED:
>  			break;
>  		default:
>  			drm_dbg_kms(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index c4a743d0913f..a3d465e111d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -184,6 +184,9 @@ static const struct intel_modifier_desc intel_modifiers[] = {
>  		.modifier = I915_FORMAT_MOD_Yf_TILED,
>  		.display_ver = { 9, 11 },
>  		.plane_caps = INTEL_PLANE_CAP_TILING_Yf,
> +	}, {
> +		.modifier = I915_FORMAT_MOD_4_TILED,
> +		.display_ver = { 12, 13 },

Starting from display version 13. The list is priority ordered so this
needs to be the first item.

>  	}, {
>  		.modifier = I915_FORMAT_MOD_Y_TILED,
>  		.display_ver = { 9, 13 },
> @@ -544,6 +547,12 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 128;
>  		else
>  			return 512;
> +	case I915_FORMAT_MOD_4_TILED:
> +		/*
> +		 * Each 4K tile consists of 64B(8*8) subtiles, with
> +		 * same shape as Y Tile(i.e 4*16B OWords)
> +		 */
> +		return 128;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
>  			return 128;
> @@ -726,6 +735,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_4_TILED:

The 4-tiled formats need to be mapped via DPT on all platforms, which is
handled earlier in the func, so handling it here shouldn't be needed.

>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return 1 * 1024 * 1024;
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d0c34bc3af6c..5f2ad0f4bd81 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -898,6 +898,8 @@ static bool tiling_is_valid(struct drm_i915_private *i915,
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return DISPLAY_VER(i915) >= 9;
> +	case I915_FORMAT_MOD_4_TILED:
> +		return HAS_4TILE(i915);

Could return true always, since only HAS_4TILE() platforms will use/pass
to this func the modifier.

>  	case I915_FORMAT_MOD_X_TILED:
>  		return true;
>  	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index dcd698a02da2..d80855ee9b96 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -125,6 +125,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	case DRM_FORMAT_MOD_LINEAR:
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
> +	case I915_FORMAT_MOD_4_TILED:
>  		break;
>  	default:
>  		drm_dbg(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 28890876bdeb..000c99ae4042 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -751,6 +751,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  		return PLANE_CTL_TILED_X;
>  	case I915_FORMAT_MOD_Y_TILED:
>  		return PLANE_CTL_TILED_Y;
> +	case I915_FORMAT_MOD_4_TILED:
> +		return PLANE_CTL_TILED_4;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> @@ -1971,9 +1973,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_Y216:
>  	case DRM_FORMAT_XVYU12_16161616:
>  	case DRM_FORMAT_XVYU16161616:
> -		if (modifier == DRM_FORMAT_MOD_LINEAR ||
> -		    modifier == I915_FORMAT_MOD_X_TILED ||
> -		    modifier == I915_FORMAT_MOD_Y_TILED)
> +		if (!intel_fb_is_ccs_modifier(modifier))
>  			return true;
>  		fallthrough;
>  	default:
> @@ -2299,11 +2299,15 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  		else
>  			fb->modifier = I915_FORMAT_MOD_Y_TILED;
>  		break;
> -	case PLANE_CTL_TILED_YF:
> -		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> -		else
> -			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
> +	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> +		if ((DISPLAY_VER(dev_priv) >= 13) && HAS_4TILE(dev_priv)) {

Could be just HAS_4TILE().

> +			fb->modifier = I915_FORMAT_MOD_4_TILED;
> +		} else {
> +			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> +			else
> +				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
> +		}
>  		break;
>  	default:
>  		MISSING_CASE(tiling);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6f9f20a10c0c..d4be97419332 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1627,6 +1627,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
>  
>  #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
> +#define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
>  #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
>  #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
>  #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 4c7fcc5f9a97..49da25d736af 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1037,6 +1037,7 @@ static const struct intel_device_info dg2_info = {
>  	DGFX_FEATURES,
>  	.graphics.rel = 55,
>  	.media.rel = 55,
> +	.has_4tile = 1,
>  	PLATFORM(INTEL_DG2),
>  	.platform_engine_mask =
>  		BIT(RCS0) | BIT(BCS0) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f15ffc53e858..7813a56473e5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7279,6 +7279,7 @@ enum {
>  #define   PLANE_CTL_TILED_X			(1 << 10)
>  #define   PLANE_CTL_TILED_Y			(4 << 10)
>  #define   PLANE_CTL_TILED_YF			(5 << 10)
> +#define   PLANE_CTL_TILED_4			(5 << 10)
>  #define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
>  #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
>  #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 669f0d26c3c3..67177e18704a 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -125,6 +125,7 @@ enum intel_ppgtt_type {
>  	func(has_64bit_reloc); \
>  	func(gpu_reset_clobbers_display); \
>  	func(has_reset_engine); \
> +	func(has_4tile); \
>  	func(has_global_mocs); \
>  	func(has_gt_uc); \
>  	func(has_l3_dpf); \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 89dc7f69baf3..310588354202 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5378,6 +5378,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> +		      modifier == I915_FORMAT_MOD_4_TILED ||
>  		      modifier == I915_FORMAT_MOD_Yf_TILED ||
>  		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>  		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> index 7f652c96845b..cb64d810c15d 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -564,6 +564,14 @@ extern "C" {
>   * pitch is required to be a multiple of 4 tile widths.
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
> +/*
> + * Intel F-tiling(aka Tile4) layout
> + *
> + * This is a tiled layout using 4Kb tiles in row-major layout.
> + * Within the tile pixels are laid out in 64 byte units / sub-tiles in OWORD
> + * (16 bytes) chunks column-major..
> + */
> +#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 12)

The encoding should be 9. I requested keeping this at 12 originally, but
that request can be ignored, as there is no need to reserve the space
for ADLP modifiers.

With the above comments addressed the patch looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
> -- 
> 2.24.1.485.gad05a3d8e5
> 
