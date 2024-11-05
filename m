Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B1A9BC85A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 09:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD2110E534;
	Tue,  5 Nov 2024 08:53:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/27vmWd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1475210E534;
 Tue,  5 Nov 2024 08:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730796783; x=1762332783;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8EWyoFFjM3heozIIvwJGg/AGosl6owusNHkdbM5ifQs=;
 b=Q/27vmWdXvKA5xHJrapOVygg/iVTECjZdA2lM6lnI3rjZReAcVFAQ3hq
 RMEKsNc2fWRaXTI8Y/WIg1J0lXAcM1HBKUIefSqfyI1XTOmCAf98k9wja
 uXlbthS2TmXsowXed2v+TJkk0QXnvUcjTQoBHygI9TNemgmo7ouxCJwmn
 +yX7W2lvuXk2v4pclOpYxWfQgAXahcM+DRE96uKbno1S7Oka5xNDqlDaM
 REAFlgUg3EObQBqzZG2VYu8ttom1rAybV6PNXO4jiSBI5t3k/FrBCaBTT
 Cp1olXTjhi5fcPGFevi/xsSWlRsqqMCGqbutsAV0aT3zgYUNjh2wIG79K Q==;
X-CSE-ConnectionGUID: aG6n/k+dR8muq7WAKMPjyQ==
X-CSE-MsgGUID: Hg9Yq8HBR36sYEslN8FVqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30485132"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30485132"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 00:53:03 -0800
X-CSE-ConnectionGUID: jps3bpfvQ8+Hys1Iadyh1g==
X-CSE-MsgGUID: cllisc7rRq6DZcpB3hC4BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="83823569"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.82])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 00:53:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 1/8] drm/i915/display: update
 intel_enabled_dbuf_slices_mask to use intel_display
In-Reply-To: <20241105071600.235338-2-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-2-vinod.govindapillai@intel.com>
Date: Tue, 05 Nov 2024 10:52:58 +0200
Message-ID: <8734k6hxjp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 05 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Update intel_enabled_dbuf_slices_mask to use intel_display instead
> of drm_i915_private object. This is a prepratory patch for the next
> patch in the series, where all intel_de_read calls in skl_watermarks.c
> are updated to use intel_display instead of drm_i915_private.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c            | 9 +++++----
>  drivers/gpu/drm/i915/display/skl_watermark.h            | 3 ++-
>  4 files changed, 9 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2766fd9208b0..62e0faffca40 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1090,7 +1090,7 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
>  	u8 slices_mask;
>  
>  	dev_priv->display.dbuf.enabled_slices =
> -		intel_enabled_dbuf_slices_mask(dev_priv);
> +		intel_enabled_dbuf_slices_mask(&dev_priv->display);

Please add a local struct intel_display *display variable and pass that
to intel_enabled_dbuf_slices_mask().

The point is, all of the i915/dev_priv references need to go, and if you
add &dev_priv->display, this line needs to be updated again.

>  
>  	slices_mask = BIT(DBUF_S1) | dev_priv->display.dbuf.enabled_slices;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f0131dd853de..f792db191fcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -973,7 +973,7 @@ static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
>  
>  static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
>  {
> -	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
> +	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(&dev_priv->display);

Ditto.

>  	u8 enabled_dbuf_slices = dev_priv->display.dbuf.enabled_slices;
>  
>  	drm_WARN(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 3b0e87edbacf..d9d7238f0fb4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -52,13 +52,13 @@ struct skl_wm_params {
>  	u32 dbuf_block_size;
>  };
>  
> -u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
> +u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
>  {
>  	u8 enabled_slices = 0;
>  	enum dbuf_slice slice;
>  
> -	for_each_dbuf_slice(i915, slice) {
> -		if (intel_de_read(i915, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
> +	for_each_dbuf_slice(display, slice) {
> +		if (intel_de_read(display, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
>  			enabled_slices |= BIT(slice);
>  	}
>  
> @@ -3126,6 +3126,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);

Please prefer putting the display variable first if at all possible.


>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct skl_hw_state {
> @@ -3149,7 +3150,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
>  
>  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
>  
> -	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
> +	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
>  
>  	if (DISPLAY_VER(i915) >= 11 &&
>  	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index e73baec94873..990793e36272 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -17,11 +17,12 @@ struct intel_atomic_state;
>  struct intel_bw_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_plane;
>  struct skl_pipe_wm;
>  struct skl_wm_level;
>  
> -u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
> +u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
>  
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
>  void intel_sagv_post_plane_update(struct intel_atomic_state *state);

-- 
Jani Nikula, Intel
