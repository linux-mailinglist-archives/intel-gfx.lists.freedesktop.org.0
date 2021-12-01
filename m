Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8246510F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0116A6EADF;
	Wed,  1 Dec 2021 15:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C286EADF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:12:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="322722288"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="322722288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:12:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512741886"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 01 Dec 2021 07:12:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:12:06 +0200
Date: Wed, 1 Dec 2021 17:12:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeQxngZ9e0EDBQM@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <aabcda1208072a732d7796e6dacce37dca9bb843.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aabcda1208072a732d7796e6dacce37dca9bb843.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 04/10] drm/i915/display: remove
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

On Wed, Dec 01, 2021 at 03:57:06PM +0200, Jani Nikula wrote:
> There are only three call sites remaining for
> intel_wait_for_vblank(). Remove the function, and open code it to avoid
> new users from showing up.
> 
> v2:
> - Use intel_crtc_wait_for_next_vblank() (Ville)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
>  4 files changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 5a475aa52079..986fb9ba750e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1690,7 +1690,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, CDCLK_CTL, val);
>  
>  	if (pipe != INVALID_PIPE)
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		ret = sandybridge_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 42533e6457b5..6a3893c8ff22 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -721,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, u32 pipe)
>  		intel_uncore_posting_read(uncore, pipeconf_reg);
>  		/* Wait for next Vblank to substitue
>  		 * border color for Color info */
> -		intel_wait_for_vblank(dev_priv, pipe);
> +		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
>  		st00 = intel_uncore_read8(uncore, _VGA_MSR_WRITE);
>  		status = ((st00 & (1 << 4)) != 0) ?
>  			connector_status_connected :
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 624a7d719531..09f088e6272b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2101,8 +2101,12 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	 * to change the workaround. */
>  	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
>  	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
> -		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
> -		intel_wait_for_vblank(dev_priv, hsw_workaround_pipe);
> +		struct intel_crtc *wa_crtc;
> +
> +		wa_crtc = intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
> +
> +		intel_crtc_wait_for_next_vblank(wa_crtc);
> +		intel_crtc_wait_for_next_vblank(wa_crtc);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 036f9be3045d..a48dfd1474dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2025,14 +2025,6 @@ intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
>  	drm_crtc_wait_one_vblank(&crtc->base);
>  }
>  
> -static inline void
> -intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
> -{
> -	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
> -
> -	intel_crtc_wait_for_next_vblank(crtc);
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
