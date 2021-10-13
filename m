Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D2A42CAC7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046C46EAD2;
	Wed, 13 Oct 2021 20:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3CC46EAD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 20:17:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227421555"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="227421555"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:17:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="480954392"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 13 Oct 2021 13:17:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 23:17:05 +0300
Date: Wed, 13 Oct 2021 23:17:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YWc+wFtUJlvPuJI4@intel.com>
References: <20211007203517.3364336-3-imre.deak@intel.com>
 <20211008001915.3508011-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211008001915.3508011-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915: Move
 intel_get_format_info() to intel_fb.c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 08, 2021 at 03:19:09AM +0300, Imre Deak wrote:
> Move the function retrieving the format override information for a given
> format/modifier to intel_fb.c. We can store a pointer to the format list
> in each modifier's descriptor instead of the corresponding switch/case
> logic, avoiding the listing of the modifiers twice.
> 
> v2: Handle invalid modifiers in intel_fb_get_format_info() passed from
>     userspace.

Do we have any tests for that btw?

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 132 +--------------
>  drivers/gpu/drm/i915/display/intel_fb.c      | 163 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |   3 +
>  3 files changed, 167 insertions(+), 131 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4f0badb11bbba..90802d16fbf91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1087,136 +1087,6 @@ void intel_add_fb_offsets(int *x, int *y,
>  	*y += state->view.color_plane[color_plane].y;
>  }
>  
> -/*
> - * From the Sky Lake PRM:
> - * "The Color Control Surface (CCS) contains the compression status of
> - *  the cache-line pairs. The compression state of the cache-line pair
> - *  is specified by 2 bits in the CCS. Each CCS cache-line represents
> - *  an area on the main surface of 16 x16 sets of 128 byte Y-tiled
> - *  cache-line-pairs. CCS is always Y tiled."
> - *
> - * Since cache line pairs refers to horizontally adjacent cache lines,
> - * each cache line in the CCS corresponds to an area of 32x16 cache
> - * lines on the main surface. Since each pixel is 4 bytes, this gives
> - * us a ratio of one byte in the CCS for each 8x16 pixels in the
> - * main surface.
> - */
> -static const struct drm_format_info skl_ccs_formats[] = {
> -	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> -	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> -	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> -	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> -	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> -	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> -	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> -	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> -};
> -
> -/*
> - * Gen-12 compression uses 4 bits of CCS data for each cache line pair in the
> - * main surface. And each 64B CCS cache line represents an area of 4x1 Y-tiles
> - * in the main surface. With 4 byte pixels and each Y-tile having dimensions of
> - * 32x32 pixels, the ratio turns out to 1B in the CCS for every 2x32 pixels in
> - * the main surface.
> - */
> -static const struct drm_format_info gen12_ccs_formats[] = {
> -	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> -	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 1, .vsub = 1, },
> -	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> -	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 1, .vsub = 1, },
> -	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> -	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 1, .vsub = 1, .has_alpha = true },
> -	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> -	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 1, .vsub = 1, .has_alpha = true },
> -	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
> -	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 2, .vsub = 1, .is_yuv = true },
> -	{ .format = DRM_FORMAT_YVYU, .num_planes = 2,
> -	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 2, .vsub = 1, .is_yuv = true },
> -	{ .format = DRM_FORMAT_UYVY, .num_planes = 2,
> -	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 2, .vsub = 1, .is_yuv = true },
> -	{ .format = DRM_FORMAT_VYUY, .num_planes = 2,
> -	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 2, .vsub = 1, .is_yuv = true },
> -	{ .format = DRM_FORMAT_XYUV8888, .num_planes = 2,
> -	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> -	  .hsub = 1, .vsub = 1, .is_yuv = true },
> -	{ .format = DRM_FORMAT_NV12, .num_planes = 4,
> -	  .char_per_block = { 1, 2, 1, 1 }, .block_w = { 1, 1, 4, 4 }, .block_h = { 1, 1, 1, 1 },
> -	  .hsub = 2, .vsub = 2, .is_yuv = true },
> -	{ .format = DRM_FORMAT_P010, .num_planes = 4,
> -	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> -	  .hsub = 2, .vsub = 2, .is_yuv = true },
> -	{ .format = DRM_FORMAT_P012, .num_planes = 4,
> -	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> -	  .hsub = 2, .vsub = 2, .is_yuv = true },
> -	{ .format = DRM_FORMAT_P016, .num_planes = 4,
> -	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> -	  .hsub = 2, .vsub = 2, .is_yuv = true },
> -};
> -
> -/*
> - * Same as gen12_ccs_formats[] above, but with additional surface used
> - * to pass Clear Color information in plane 2 with 64 bits of data.
> - */
> -static const struct drm_format_info gen12_ccs_cc_formats[] = {
> -	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> -	  .hsub = 1, .vsub = 1, },
> -	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> -	  .hsub = 1, .vsub = 1, },
> -	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> -	  .hsub = 1, .vsub = 1, .has_alpha = true },
> -	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
> -	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
> -	  .hsub = 1, .vsub = 1, .has_alpha = true },
> -};
> -
> -static const struct drm_format_info *
> -lookup_format_info(const struct drm_format_info formats[],
> -		   int num_formats, u32 format)
> -{
> -	int i;
> -
> -	for (i = 0; i < num_formats; i++) {
> -		if (formats[i].format == format)
> -			return &formats[i];
> -	}
> -
> -	return NULL;
> -}
> -
> -static const struct drm_format_info *
> -intel_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
> -{
> -	switch (cmd->modifier[0]) {
> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		return lookup_format_info(skl_ccs_formats,
> -					  ARRAY_SIZE(skl_ccs_formats),
> -					  cmd->pixel_format);
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		return lookup_format_info(gen12_ccs_formats,
> -					  ARRAY_SIZE(gen12_ccs_formats),
> -					  cmd->pixel_format);
> -	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> -		return lookup_format_info(gen12_ccs_cc_formats,
> -					  ARRAY_SIZE(gen12_ccs_cc_formats),
> -					  cmd->pixel_format);
> -	default:
> -		return NULL;
> -	}
> -}
> -
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier)
>  {
> @@ -11270,7 +11140,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  
>  static const struct drm_mode_config_funcs intel_mode_funcs = {
>  	.fb_create = intel_user_framebuffer_create,
> -	.get_format_info = intel_get_format_info,
> +	.get_format_info = intel_fb_get_format_info,
>  	.output_poll_changed = intel_fbdev_output_poll_changed,
>  	.mode_valid = intel_mode_valid,
>  	.atomic_check = intel_atomic_check,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 11a4c3e81cead..920de857ffa28 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -13,9 +13,108 @@
>  
>  #define check_array_bounds(i915, a, i) drm_WARN_ON(&(i915)->drm, (i) >= ARRAY_SIZE(a))
>  
> +/*
> + * From the Sky Lake PRM:
> + * "The Color Control Surface (CCS) contains the compression status of
> + *  the cache-line pairs. The compression state of the cache-line pair
> + *  is specified by 2 bits in the CCS. Each CCS cache-line represents
> + *  an area on the main surface of 16 x16 sets of 128 byte Y-tiled
> + *  cache-line-pairs. CCS is always Y tiled."
> + *
> + * Since cache line pairs refers to horizontally adjacent cache lines,
> + * each cache line in the CCS corresponds to an area of 32x16 cache
> + * lines on the main surface. Since each pixel is 4 bytes, this gives
> + * us a ratio of one byte in the CCS for each 8x16 pixels in the
> + * main surface.
> + */
> +static const struct drm_format_info skl_ccs_formats[] = {
> +	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> +	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> +	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> +	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> +};
> +
> +/*
> + * Gen-12 compression uses 4 bits of CCS data for each cache line pair in the
> + * main surface. And each 64B CCS cache line represents an area of 4x1 Y-tiles
> + * in the main surface. With 4 byte pixels and each Y-tile having dimensions of
> + * 32x32 pixels, the ratio turns out to 1B in the CCS for every 2x32 pixels in
> + * the main surface.
> + */
> +static const struct drm_format_info gen12_ccs_formats[] = {
> +	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
> +	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 2, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_YVYU, .num_planes = 2,
> +	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 2, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_UYVY, .num_planes = 2,
> +	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 2, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_VYUY, .num_planes = 2,
> +	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 2, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_XYUV8888, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .is_yuv = true },
> +	{ .format = DRM_FORMAT_NV12, .num_planes = 4,
> +	  .char_per_block = { 1, 2, 1, 1 }, .block_w = { 1, 1, 4, 4 }, .block_h = { 1, 1, 1, 1 },
> +	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +	{ .format = DRM_FORMAT_P010, .num_planes = 4,
> +	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> +	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +	{ .format = DRM_FORMAT_P012, .num_planes = 4,
> +	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> +	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +	{ .format = DRM_FORMAT_P016, .num_planes = 4,
> +	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
> +	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +};
> +
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
> +#define FORMAT_OVERRIDE(format_list) \
> +	.formats = format_list, \
> +	.format_count = ARRAY_SIZE(format_list)
> +
>  const struct intel_modifier_desc {
>  	u64 id;
>  	u64 display_versions;
> +	const struct drm_format_info *formats;
> +	int format_count;
>  	u8 is_linear:1;
>  
>  	struct {
> @@ -49,33 +148,97 @@ const struct intel_modifier_desc {
>  		.display_versions = DISPLAY_VER_MASK(9, 11),
>  
>  		.ccs.type = INTEL_CCS_RC,
> +
> +		FORMAT_OVERRIDE(skl_ccs_formats),
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Yf_TILED_CCS,
>  		.display_versions = DISPLAY_VER_MASK(9, 11),
>  
>  		.ccs.type = INTEL_CCS_RC,
> +
> +		FORMAT_OVERRIDE(skl_ccs_formats),
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
>  
>  		.ccs.type = INTEL_CCS_RC,
> +
> +		FORMAT_OVERRIDE(gen12_ccs_formats),
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
>  
>  		.ccs.type = INTEL_CCS_RC_CC,
> +
> +		FORMAT_OVERRIDE(gen12_ccs_cc_formats),
>  	},
>  	{
>  		.id = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
>  		.display_versions = DISPLAY_VER_MASK(12, 13),
>  
>  		.ccs.type = INTEL_CCS_MC,
> +
> +		FORMAT_OVERRIDE(gen12_ccs_formats),
>  	},
>  };
>  
> +static const struct intel_modifier_desc *lookup_modifier_or_null(u64 modifier)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(intel_modifiers); i++)
> +		if (intel_modifiers[i].id == modifier)
> +			return &intel_modifiers[i];
> +
> +	return NULL;
> +}
> +
> +static const struct intel_modifier_desc *lookup_modifier(u64 modifier)
> +{
> +	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
> +
> +	if (WARN_ON(!md))
> +		return &intel_modifiers[0];
> +
> +	return md;
> +}
> +
> +static const struct drm_format_info *
> +lookup_format_info(const struct drm_format_info formats[],
> +		   int num_formats, u32 format)
> +{
> +	int i;
> +
> +	for (i = 0; i < num_formats; i++) {
> +		if (formats[i].format == format)
> +			return &formats[i];
> +	}
> +
> +	return NULL;
> +}
> +
> +/**
> + * intel_fb_get_format_info: Get a modifier specific format information
> + * @cmd: FB add command structure
> + *
> + * Returns:
> + * Returns the format information for @cmd->pixel_format specific to @cmd->modifier[0],
> + * or %NULL if the modifier doesn't override the format.
> + */
> +const struct drm_format_info *
> +intel_fb_get_format_info(const struct drm_mode_fb_cmd2 *cmd)
> +{
> +	const struct intel_modifier_desc *md = lookup_modifier_or_null(cmd->modifier[0]);
> +
> +	if (!md || !md->formats)
> +		return NULL;
> +
> +	return lookup_format_info(md->formats, md->format_count, cmd->pixel_format);
> +}
> +
>  static bool is_ccs_type_modifier(const struct intel_modifier_desc *md, u8 ccs_type)
>  {
>  	return md->ccs.type & ccs_type;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 5bff88ccb9372..a87c58a3219cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -39,6 +39,9 @@ u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
>  				  enum intel_plane_caps plane_caps);
>  bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
>  
> +const struct drm_format_info *
> +intel_fb_get_format_info(const struct drm_mode_fb_cmd2 *cmd);
> +
>  bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
>  
>  int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
> -- 
> 2.27.0

-- 
Ville Syrjälä
Intel
