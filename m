Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C840545D82F
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 11:23:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E75D6E4A5;
	Thu, 25 Nov 2021 10:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F39F6E4A5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 10:23:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="296295772"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="296295772"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:23:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="475600371"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 25 Nov 2021 02:23:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Nov 2021 12:23:22 +0200
Date: Thu, 25 Nov 2021 12:23:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZ9kGqXSDTnTqeoG@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
 <0afc1d559c463fb5f9fc74b768df6a4e6bfcd2c6.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0afc1d559c463fb5f9fc74b768df6a4e6bfcd2c6.1637588831.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: remove
 intel_wait_for_vblank()
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

On Mon, Nov 22, 2021 at 03:51:03PM +0200, Jani Nikula wrote:
> There are only three call sites remaining for
> intel_wait_for_vblank(). Remove the function, and open code it to avoid
> new users from showing up.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
>  4 files changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 91c19e0a98d7..e3b863ee0bbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1690,7 +1690,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, CDCLK_CTL, val);
>  
>  	if (pipe != INVALID_PIPE)
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->base);

That looks rather hideuous. I think I'd prefer to keep the wrapper.

>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		ret = sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 8796527f74e5..43b3f6044f96 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -721,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>  		intel_uncore_posting_read(uncore, pipeconf_reg);
>  		/* Wait for next Vblank to substitue
>  		 * border color for Color info */
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->base);
>  		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
>  		status = ((st00 & (1 << 4)) != 0) ?
>  			connector_status_connected :
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 48d93d1f6c1a..1fc602bdfde1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2098,8 +2098,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	 * to change the workaround. */
>  	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
>  	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
> -		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
> -		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
> +		struct intel_crtc *wa_crtc;
> +
> +		wa_crtc = intel_get_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
> +
> +		drm_crtc_wait_one_vblank(&wa_crtc->base);
> +		drm_crtc_wait_one_vblank(&wa_crtc->base);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a5508b8cdf63..2a18c4e554ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2016,14 +2016,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
>  	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
>  }
>  
> -static inline void
> -intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
> -{
> -	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
> -
> -	drm_crtc_wait_one_vblank(&crtc->base);
> -}
> -
>  static inline void
>  intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
