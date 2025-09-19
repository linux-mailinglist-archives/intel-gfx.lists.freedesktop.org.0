Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA98B88701
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 10:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D305610E969;
	Fri, 19 Sep 2025 08:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aith7dug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FB610E969
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 08:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758271003; x=1789807003;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J6qjm5AoET9k2+lBfsCeTaB+CqL26EOWDZk4gwfTho4=;
 b=Aith7dugo8YVnZnM9hi78dQYg/i6o+nyL8FXkyskAau9eOs5URwfRLE6
 AU7wuShbLpv1P2qBjY74CgeI1w18kr4q81IyiE+78sQeuyPv4BImj9yQ4
 8OihwE+jlZnLxZzuQDgV5IRmBov2m/j8hj7dHxI3ceVSF3DbwbYNl9AQO
 PlEh6z8u6dCZ2xg7Los5ca9JD58O5rflbnyJccMhW5RH68a3g35UKR0CG
 iSgl9uabmGoxRyBwnt4EQSr5+s9LBmuZfccQ0vWj1OspDvgABT79eZ4CP
 9DPBfkgV19+ZJo1d378SsEjd67UP7e0E9+vFNbnBPS/l2WpDLXTl5h4eQ w==;
X-CSE-ConnectionGUID: s6Ld6QCLTReGS8SWpABAww==
X-CSE-MsgGUID: zv2Rq7rXSMy11+2X1E+tNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60545223"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60545223"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:36:42 -0700
X-CSE-ConnectionGUID: E0myO415TnO65YMktwBKOw==
X-CSE-MsgGUID: NbolaKzkR3m9zoFWGSagoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="176183914"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 01:36:41 -0700
Date: Fri, 19 Sep 2025 11:36:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915/wm: convert x/y-tiling bools to an enum
Message-ID: <aM0WFVMhQwIU-4QI@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-5-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250908073734.1180687-5-luciano.coelho@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 08, 2025 at 10:35:33AM +0300, Luca Coelho wrote:
> There are currently two booleans to define three tiling modes, which
> is bad practice because it allows representing an invalid mode.  In
> order to simplify this, convert these two booleans into one
> enumeration with three possible tiling modes.
> 
> Additionally, introduce the concept of Y "family" of tiling, which
> groups Y, Yf and 4 tiling, since they're effectively treated in the
> same way in the watermark calculations.  Describe the grouping in the
> enumeration definition.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
>  1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 0ce3420a919e..dd4bed02c3c0 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -53,9 +53,16 @@ struct intel_dbuf_state {
>  #define intel_atomic_get_new_dbuf_state(state) \
>  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->dbuf.obj))
>  
> +/* Tiling mode groups relevant to WM calculations */
> +enum wm_tiling_mode {
> +	WM_TILING_LINEAR,
> +	WM_TILING_X_TILED,	/* mostly like linear */

The _TILED suffix seems redundant here.

> +	WM_TILING_Y_FAMILY,	/* includes Y, Yf and 4 tiling */

I don't really like the "y family" invention. Doesn't really
unconfuse anything for the reader without going back to have
a look at the comment.

I think it would be better to just spell out each tilimg mode.
So I guess something like "WM_TILING_Y_Yf_4"

> +};
> +
>  /* Stores plane specific WM parameters */
>  struct skl_wm_params {
> -	bool x_tiled, y_tiled;
> +	enum wm_tiling_mode tiling;

That'll now be 4 bytes.

>  	bool rc_surface;
>  	bool is_planar;

and we'll have a two byte hole here.

>  	u32 width;
        u8 cpp;

And there's a 3 byte hole already here after the cpp.
Should group the u8 with the bools to avoid so many holes.

We could also shrink y_min_scanlines to a u8 and
stick it into the last 1 byte hole. That'd shrink the whole
struct by 4 bytes.

dbuf_block_size would also fit in a u16, but doesn't look
like we have any other holes where we could stick it. Hmm,
actually 'width' could probably also be shrunk to be a u16.
So could get rid of another 4 bytes here if we really
wanted to.

But I suppose all that repacking should be a separate patch...

> @@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_display *display, int level,
>  	     display->platform.cometlake) && skl_watermark_ipc_enabled(display))
>  		latency += 4;
>  
> -	if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
> +	if (skl_needs_memory_bw_wa(display) &&
> +	    wp && wp->tiling == WM_TILING_X_TILED)
>  		latency += 15;
>  
>  	return latency;
> @@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  
> -	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> -	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
> -		intel_fb_is_tiled_modifier(modifier);
> +	if (modifier == I915_FORMAT_MOD_X_TILED)
> +		wp->tiling = WM_TILING_X_TILED;
> +	else if (modifier != I915_FORMAT_MOD_X_TILED &&

The modifier check here is redundant with the if-else construct.

> +		 intel_fb_is_tiled_modifier(modifier))
> +		wp->tiling = WM_TILING_Y_FAMILY;
> +	else
> +		wp->tiling = WM_TILING_LINEAR;

In fact we can avoid the entire intel_fb_is_tiled_modifier()
call with something like:

if (mod == LINEAR)
	tiling = LINEAR;
else if (mod == X)
	tiling = X;
else
	tiling = Y_Yf_4;

The wm code always pops up fairly high in cpu profiles, so
anything that makes it lighter is worth considering.

> +
>  	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
>  	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
>  
> @@ -1716,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  		wp->y_min_scanlines *= 2;
>  
>  	wp->plane_bytes_per_line = wp->width * wp->cpp;
> -	if (wp->y_tiled) {
> +	if (wp->tiling == WM_TILING_Y_FAMILY) {
>  		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line *
>  					   wp->y_min_scanlines,
>  					   wp->dbuf_block_size);
> @@ -1732,7 +1745,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>  		interm_pbpl = DIV_ROUND_UP(wp->plane_bytes_per_line,
>  					   wp->dbuf_block_size);
>  
> -		if (!wp->x_tiled || DISPLAY_VER(display) >= 10)
> +		if (wp->tiling != WM_TILING_X_TILED || DISPLAY_VER(display) >= 10)
>  			interm_pbpl++;
>  
>  		wp->plane_blocks_per_line = u32_to_fixed16(interm_pbpl);
> @@ -1820,7 +1833,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  				 latency,
>  				 wp->plane_blocks_per_line);
>  
> -	if (wp->y_tiled) {
> +	if (wp->tiling == WM_TILING_Y_FAMILY) {
>  		selected_result = max_fixed16(method2, wp->y_tile_minimum);
>  	} else {
>  		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> @@ -1870,7 +1883,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  
>  		/* Display WA #1126: skl,bxt,kbl */
>  		if (level >= 1 && level <= 7) {
> -			if (wp->y_tiled) {
> +			if (wp->tiling == WM_TILING_Y_FAMILY) {
>  				blocks += fixed16_to_u32_round_up(wp->y_tile_minimum);
>  				lines += wp->y_min_scanlines;
>  			} else {
> @@ -1889,7 +1902,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	}
>  
>  	if (DISPLAY_VER(display) >= 11) {
> -		if (wp->y_tiled) {
> +		if (wp->tiling == WM_TILING_Y_FAMILY) {
>  			int extra_lines;
>  
>  			if (lines % wp->y_min_scanlines == 0)
> @@ -2015,7 +2028,7 @@ static void skl_compute_transition_wm(struct intel_display *display,
>  	 */
>  	wm0_blocks = wm0->blocks - 1;
>  
> -	if (wp->y_tiled) {
> +	if (wp->tiling == WM_TILING_Y_FAMILY) {
>  		trans_y_tile_min =
>  			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
>  		blocks = max(wm0_blocks, trans_y_tile_min) + trans_offset;
> -- 
> 2.50.1

-- 
Ville Syrjälä
Intel
