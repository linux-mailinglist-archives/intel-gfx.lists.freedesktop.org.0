Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA0F128549
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 23:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F51C6ECCB;
	Fri, 20 Dec 2019 22:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5496ECCB
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 22:58:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 14:58:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,337,1571727600"; d="scan'208";a="213700148"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 20 Dec 2019 14:58:12 -0800
Date: Fri, 20 Dec 2019 14:58:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20191220225812.GA2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-16-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218161105.30638-16-imre.deak@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 15/15] drm/i915/tgl: Add Clear Color support
 for TGL Render Decompression
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
Cc: Ville Syrjala <ville.syrjala@intel.com>, intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Nanley G Chery <nanley.g.chery@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 06:11:05PM +0200, Imre Deak wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Render Decompression is supported with Y-Tiled main surface. The CCS is
> linear and has 4 bits of data for each main surface cache line pair, a
> ratio of 1:256. Additional Clear Color information is passed from the
> user-space through an offset in the GEM BO. Add a new modifier to identify
> and parse new Clear Color information and extend Gen12 render decompression
> functionality to the newly added modifier.
> 
> v2: Fix has_alpha flag for modifiers, omit CC modifier during initial
>     plane config(Matt). Fix Lookup error.
> v3: Fix the panic while running kms_cube
> v4: Add alignment check and reuse the comments for ge12_ccs_formats(Matt)
> v5: Fix typos and wrap comments(Matt)
> v6:
> - Use format block descriptors to get the subsampling calculations for
>   the CCS surface right.
> - Use helpers to convert between main and CCS surfaces.
> - Prevent coordinate checks for the CC surface.

I notice that we're not handling CCS_CC as a case during
skylake_get_initial_plane_config() in this patch.  It's probably very,
very unlikely that we'll ever have any form of compression on a pre-OS
framebuffer; I'm wondering if we should remove the CCS handling we have
there today and just skip framebuffer reconstruction if we see
compression active (either with or without clear color) on a framebuffer
that we're inheriting from the pre-OS software.  But if we keep support
for non-CC compressed framebuffers, we should probably at least add a
case handling CC if we see the registers set that way.  Of course if
that inherited framebuffer is in stolen memory, then we're not going to
be able to grab the page and kmap_atomic() it either.  So probably
easier to reject CCS_CC pre-OS framebuffers rather than trying to copy
the framebuffer to non-stolen memory before use...

Aside from that, I have a couple other comments below, but they're minor
things that you can either ignore or deal with in followup patches, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Ville Syrjala <ville.syrjala@intel.com>
> Cc: Shashank Sharma <shashank.sharma@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com> (v5)
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 67 +++++++++++++++++--
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 11 ++-
>  drivers/gpu/drm/i915/i915_reg.h               | 12 ++++
>  4 files changed, 88 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1c2becf47bfd..f264a0792d0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1944,8 +1944,8 @@ static bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
>  static bool is_gen12_ccs_modifier(u64 modifier)
>  {
>  	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
>  	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
> -
>  }
>  
>  static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
> @@ -1953,6 +1953,12 @@ static bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane)
>  	return is_gen12_ccs_modifier(fb->modifier) && is_ccs_plane(fb, plane);
>  }
>  
> +static bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
> +{
> +	return fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
> +	       plane == 2;
> +}
> +
>  static bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
>  {
>  	if (is_ccs_modifier(fb->modifier))
> @@ -1974,6 +1980,9 @@ static int ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
>  	WARN_ON(!is_ccs_modifier(fb->modifier) ||
>  		ccs_plane < fb->format->num_planes / 2);
>  
> +	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
> +		return 0;
> +
>  	return ccs_plane - fb->format->num_planes / 2;
>  }
>  

Do we actually wind up ever calling this function with the CC plane?
From what I can see all the callsites are in places where we've already
bailed out if we see we're operating on the CC plane.


> @@ -2013,6 +2022,7 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>  			return 128;
>  		/* fall through */
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		if (is_ccs_plane(fb, color_plane))
>  			return 64;
> @@ -2154,6 +2164,7 @@ static unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>  			return 256 * 1024;
>  		return 0;
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		return 16 * 1024;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
> @@ -2539,6 +2550,7 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
>  		return I915_TILING_Y;
>  	default:
> @@ -2608,6 +2620,25 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>  	  .hsub = 2, .vsub = 2, .is_yuv = true },
>  };
>  
> +/*
> + * Same as gen12_ccs_formats[] above, but with additional surface used
> + * to pass Clear Color information in plane 2 with 64 bits of data.
> + */
> +static const struct drm_format_info gen12_ccs_cc_formats[] = {
> +	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +};
> +
>  static const struct drm_format_info *
>  lookup_format_info(const struct drm_format_info formats[],
>  		   int num_formats, u32 format)
> @@ -2636,6 +2667,10 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
>  		return lookup_format_info(gen12_ccs_formats,
>  					  ARRAY_SIZE(gen12_ccs_formats),
>  					  cmd->pixel_format);
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> +		return lookup_format_info(gen12_ccs_cc_formats,
> +					  ARRAY_SIZE(gen12_ccs_cc_formats),
> +					  cmd->pixel_format);
>  	default:
>  		return NULL;
>  	}
> @@ -2644,6 +2679,7 @@ intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
>  bool is_ccs_modifier(u64 modifier)
>  {
>  	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
>  	       modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
>  	       modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>  	       modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> @@ -2869,7 +2905,7 @@ intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
>  	int ccs_x, ccs_y;
>  	int main_x, main_y;
>  
> -	if (!is_ccs_plane(fb, ccs_plane))
> +	if (!is_ccs_plane(fb, ccs_plane) || is_gen12_ccs_cc_plane(fb, ccs_plane))
>  		return 0;
>  
>  	intel_tile_dims(fb, ccs_plane, &tile_width, &tile_height);
> @@ -2921,6 +2957,18 @@ intel_fill_fb_info(struct drm_i915_private *dev_priv,
>  		int x, y;
>  		int ret;
>  
> +		/*
> +		 * Plane 2 of Render Compression with Clear Color fb modifier
> +		 * is consumed by the driver and not passed to DE. Skip the
> +		 * arithmetic related to alignment and offset calculation.
> +		 */
> +		if (is_gen12_ccs_cc_plane(fb, i)) {
> +			if (IS_ALIGNED(fb->offsets[2], PAGE_SIZE))
> +				continue;
> +			else
> +				return -EINVAL;
> +		}
> +
>  		cpp = fb->format->cpp[i];
>  		intel_fb_plane_dims(&width, &height, fb, i);
>  
> @@ -3858,7 +3906,8 @@ static int skl_check_ccs_aux_surface(struct intel_plane_state *plane_state)
>  		int hsub, vsub;
>  		int x, y;
>  
> -		if (!is_ccs_plane(fb, ccs_plane))
> +		if (!is_ccs_plane(fb, ccs_plane) ||
> +		    is_gen12_ccs_cc_plane(fb, ccs_plane))
>  			continue;
>  
>  		intel_fb_plane_get_subsampling(&main_hsub, &main_vsub, fb,
> @@ -4512,6 +4561,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>  	case I915_FORMAT_MOD_Y_TILED:
>  		return PLANE_CTL_TILED_Y;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>  		return PLANE_CTL_TILED_Y |
> @@ -15360,6 +15410,15 @@ static int intel_plane_pin_fb(struct intel_plane_state *plane_state)
>  
>  	plane_state->vma = vma;
>  
> +	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC) {
> +		u32 *ccaddr = kmap_atomic(i915_gem_object_get_page(intel_fb_obj(fb),
> +								  fb->offsets[2] >> PAGE_SHIFT));
> +
> +		plane_state->ccval = ((u64)*(ccaddr + CC_VAL_HIGHER_OFFSET) << 32)
> +				     | *(ccaddr + CC_VAL_LOWER_OFFSET);
> +		kunmap_atomic(ccaddr);
> +	}
> +
>  	return 0;

Some of the lines here are long enough that we should probably
split/wrap them differently.

Personally I still feel like describing the CC plane as a C structure
would make it easier to read/understand, even if the kernel driver
doesn't actually use some of the fields in it.  Or at least just mapping
the buffer as a u64* instead of a u32* so that we can read a single
value from it rather than reading the low and high parts separately.


Matt

>  }
>  
> @@ -16651,7 +16710,7 @@ static int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  			goto err;
>  		}
>  
> -		if (is_gen12_ccs_plane(fb, i)) {
> +		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
>  			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
>  
>  			if (fb->pitches[i] != ccs_aux_stride) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3cdf44fa4164..ab01349b7273 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -607,6 +607,9 @@ struct intel_plane_state {
>  	u32 planar_slave;
>  
>  	struct drm_intel_sprite_colorkey ckey;
> +
> +	/* Clear Color Value */
> +	u64 ccval;
>  };
>  
>  struct intel_initial_plane_config {
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index be56b6f56411..1a7037429d32 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -598,6 +598,7 @@ skl_program_plane(struct intel_plane *plane,
>  	unsigned long irqflags;
>  	u32 keymsk, keymax;
>  	u32 plane_ctl = plane_state->ctl;
> +	u64 ccval = plane_state->ccval;
>  
>  	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
>  
> @@ -640,6 +641,10 @@ skl_program_plane(struct intel_plane *plane,
>  	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
>  		icl_program_input_csc(plane, crtc_state, plane_state);
>  
> +	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
> +		intel_uncore_write64_fw(&dev_priv->uncore,
> +					PLANE_CC_VAL(pipe, plane_id), ccval);
> +
>  	skl_write_plane_wm(plane, crtc_state);
>  
>  	I915_WRITE_FW(PLANE_KEYVAL(pipe, plane_id), key->min_value);
> @@ -2108,7 +2113,8 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  	     fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
>  	     fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
>  	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)) {
> +	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> +	     fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)) {
>  		DRM_DEBUG_KMS("Y/Yf tiling not supported in IF-ID mode\n");
>  		return -EINVAL;
>  	}
> @@ -2582,6 +2588,7 @@ static const u64 skl_plane_format_modifiers_ccs[] = {
>  static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
>  	I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>  	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
>  	I915_FORMAT_MOD_Y_TILED,
>  	I915_FORMAT_MOD_X_TILED,
>  	DRM_FORMAT_MOD_LINEAR,
> @@ -2590,6 +2597,7 @@ static const u64 gen12_plane_format_modifiers_mc_ccs[] = {
>  
>  static const u64 gen12_plane_format_modifiers_rc_ccs[] = {
>  	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
> +	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
>  	I915_FORMAT_MOD_Y_TILED,
>  	I915_FORMAT_MOD_X_TILED,
>  	DRM_FORMAT_MOD_LINEAR,
> @@ -2772,6 +2780,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> +	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>  		break;
>  	default:
>  		return false;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b6dc735e85e1..d93451f3d8ae 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6841,6 +6841,8 @@ enum {
>  #define _PLANE_KEYMAX_1_A			0x701a0
>  #define _PLANE_KEYMAX_2_A			0x702a0
>  #define  PLANE_KEYMAX_ALPHA(a)			((a) << 24)
> +#define _PLANE_CC_VAL_1_A			0x701b4
> +#define _PLANE_CC_VAL_2_A			0x702b4
>  #define _PLANE_AUX_DIST_1_A			0x701c0
>  #define _PLANE_AUX_DIST_2_A			0x702c0
>  #define _PLANE_AUX_OFFSET_1_A			0x701c4
> @@ -6880,6 +6882,16 @@ enum {
>  #define _PLANE_NV12_BUF_CFG_1_A		0x70278
>  #define _PLANE_NV12_BUF_CFG_2_A		0x70378
>  
> +#define _PLANE_CC_VAL_1_B			0x711b4
> +#define _PLANE_CC_VAL_2_B			0x712b4
> +#define _PLANE_CC_VAL_1(pipe)	_PIPE(pipe, _PLANE_CC_VAL_1_A, _PLANE_CC_VAL_1_B)
> +#define _PLANE_CC_VAL_2(pipe)	_PIPE(pipe, _PLANE_CC_VAL_2_A, _PLANE_CC_VAL_2_B)
> +#define PLANE_CC_VAL(pipe, plane)	\
> +	_MMIO_PLANE(plane, _PLANE_CC_VAL_1(pipe), _PLANE_CC_VAL_2(pipe))
> +
> +#define CC_VAL_LOWER_OFFSET		4
> +#define CC_VAL_HIGHER_OFFSET		5
> +
>  /* Input CSC Register Definitions */
>  #define _PLANE_INPUT_CSC_RY_GY_1_A	0x701E0
>  #define _PLANE_INPUT_CSC_RY_GY_2_A	0x702E0
> -- 
> 2.22.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
