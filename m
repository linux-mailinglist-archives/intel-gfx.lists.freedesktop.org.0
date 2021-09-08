Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E406A4036F2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF1D6E092;
	Wed,  8 Sep 2021 09:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208796E092
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:33:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="281450740"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="281450740"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:33:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="538472872"
Received: from mdoerbec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.33.106])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:33:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <20210908003944.2972024-4-airlied@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-4-airlied@gmail.com>
Date: Wed, 08 Sep 2021 12:33:23 +0300
Message-ID: <87r1dz76os.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915/wm: move the update
 watermark wrapper to display side.
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

On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> From: Dave Airlie <airlied@redhat.com>
>
> A vague goal is to have the vfunc table be the api between
> wm and display, not having direction function calls cross
> the boundary.
>
> This aligns the legacy update_wm with the newer vfuncs.
>
> The comment probably needs to live somewhere else, it seems
> like it should live in the pm side though not the display side,
> but I brought it along for the ride.
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.c              | 39 -------------------
>  drivers/gpu/drm/i915/intel_pm.h              |  1 -
>  3 files changed, 40 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d95283bf2631..b495371c1889 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c

We haven't been axing stuff out of intel_display.c so we could add
somethign else back! ;)

A new file for watermarks or display pm? Ville?

BR,
Jani.



> @@ -125,6 +125,46 @@ static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
>  
> +
> +/**
> + * intel_update_watermarks - update FIFO watermark values based on current modes
> + * @crtc: the #intel_crtc on which to compute the WM
> + *
> + * Calculate watermark values for the various WM regs based on current mode
> + * and plane configuration.
> + *
> + * There are several cases to deal with here:
> + *   - normal (i.e. non-self-refresh)
> + *   - self-refresh (SR) mode
> + *   - lines are large relative to FIFO size (buffer can hold up to 2)
> + *   - lines are small relative to FIFO size (buffer can hold more than 2
> + *     lines), so need to account for TLB latency
> + *
> + *   The normal calculation is:
> + *     watermark = dotclock * bytes per pixel * latency
> + *   where latency is platform & configuration dependent (we assume pessimal
> + *   values here).
> + *
> + *   The SR calculation is:
> + *     watermark = (trunc(latency/line time)+1) * surface width *
> + *       bytes per pixel
> + *   where
> + *     line time = htotal / dotclock
> + *     surface width = hdisplay for normal plane and 64 for cursor
> + *   and latency is assumed to be high, as above.
> + *
> + * The final value programmed to the register should always be rounded up,
> + * and include an extra 2 entries to account for clock crossings.
> + *
> + * We don't use the sprite, so we can ignore that.  And on Crestline we have
> + * to set the non-SR watermarks to 8.
> + */
> +static void intel_update_watermarks(struct drm_i915_private *dev_priv)
> +{
> +	if (dev_priv->display.update_wm)
> +		dev_priv->display.update_wm(dev_priv);
> +}
> +
>  /* returns HPLL frequency in kHz */
>  int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 406baa49e6ad..4054c6f7a2f9 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7132,45 +7132,6 @@ void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS);
>  }
>  
> -/**
> - * intel_update_watermarks - update FIFO watermark values based on current modes
> - * @crtc: the #intel_crtc on which to compute the WM
> - *
> - * Calculate watermark values for the various WM regs based on current mode
> - * and plane configuration.
> - *
> - * There are several cases to deal with here:
> - *   - normal (i.e. non-self-refresh)
> - *   - self-refresh (SR) mode
> - *   - lines are large relative to FIFO size (buffer can hold up to 2)
> - *   - lines are small relative to FIFO size (buffer can hold more than 2
> - *     lines), so need to account for TLB latency
> - *
> - *   The normal calculation is:
> - *     watermark = dotclock * bytes per pixel * latency
> - *   where latency is platform & configuration dependent (we assume pessimal
> - *   values here).
> - *
> - *   The SR calculation is:
> - *     watermark = (trunc(latency/line time)+1) * surface width *
> - *       bytes per pixel
> - *   where
> - *     line time = htotal / dotclock
> - *     surface width = hdisplay for normal plane and 64 for cursor
> - *   and latency is assumed to be high, as above.
> - *
> - * The final value programmed to the register should always be rounded up,
> - * and include an extra 2 entries to account for clock crossings.
> - *
> - * We don't use the sprite, so we can ignore that.  And on Crestline we have
> - * to set the non-SR watermarks to 8.
> - */
> -void intel_update_watermarks(struct drm_i915_private *dev_priv)
> -{
> -	if (dev_priv->display.update_wm)
> -		dev_priv->display.update_wm(dev_priv);
> -}
> -
>  void intel_enable_ipc(struct drm_i915_private *dev_priv)
>  {
>  	u32 val;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 99bce0b4f5fb..990cdcaf85ce 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -29,7 +29,6 @@ struct skl_wm_level;
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
>  void intel_suspend_hw(struct drm_i915_private *dev_priv);
>  int ilk_wm_max_level(const struct drm_i915_private *dev_priv);
> -void intel_update_watermarks(struct drm_i915_private *dev_priv);
>  void intel_init_pm(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
>  void intel_pm_setup(struct drm_i915_private *dev_priv);

-- 
Jani Nikula, Intel Open Source Graphics Center
