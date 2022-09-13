Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E915B6A9B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 11:23:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3765910E668;
	Tue, 13 Sep 2022 09:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9295810E668
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 09:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663060999; x=1694596999;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WF+0QjUSQVKD/Iub/ZvY5w61I+xhIoAyOxg1CMe4kzg=;
 b=SSgtLglom3Ov234FtUNYP+GMrn2pD6Ij/NA2CpPgA4x5P+bD++k5+R7v
 vwzxLHCnlVnHI+9RsfrTeNU9/xqsLkBSv6FByedfo0XI74LWsr1Gr6zjU
 3k36e2aKz8SbuLs5VScui0TcX4JWwUWzXisWHikgbSDz4CBfLSvmcAryP
 oV2ukRmt12nAn1gXU+f874B3Nr0Xh2Nle1BlQPDSYb2eCVtKigAtq7H9H
 BqDWwfUspzbk+bmt94w+Z0q9k2owZ4kEPMwYm9Rn7xGZIP+J2N5r4WHnp
 MZ94TpZ2E4HiUjqx6u5tHWp6SeJPM5myyiMegEnWSGYUYCt/21Aqw8CWv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="359816641"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="359816641"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 02:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="593865214"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 13 Sep 2022 02:23:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Sep 2022 12:23:15 +0300
Date: Tue, 13 Sep 2022 12:23:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YyBMAwJodjmJ9J9H@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
 <536237d5bc919e8c97a96796f235f5bb264ceff2.1662983005.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <536237d5bc919e8c97a96796f235f5bb264ceff2.1662983005.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/ipc: refactor and rename IPC
 functions
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

On Mon, Sep 12, 2022 at 02:45:12PM +0300, Jani Nikula wrote:
> Rename the IPC functions to have skl_watermark_ipc_ prefix, rename
> enable to update to reflect what the function actually does, and add
> enabled function to abstract direct ->ipc_enabled access for state
> query.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 ++---
>  .../drm/i915/display/intel_display_debugfs.c  |  6 ++---
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 25 +++++++++++--------
>  drivers/gpu/drm/i915/display/skl_watermark.h  |  5 ++--
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  5 files changed, 24 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2d0018ae34b1..a0829dcfd6d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4779,7 +4779,7 @@ static u16 skl_linetime_wm(const struct intel_crtc_state *crtc_state)
>  
>  	/* Display WA #1135: BXT:ALL GLK:ALL */
>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> -	    dev_priv->ipc_enabled)
> +	    skl_watermark_ipc_enabled(dev_priv))

I forgot this spilled so far :/

But yeah, looks OK to me. Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		linetime_wm /= 2;
>  
>  	return min(linetime_wm, 0x1ff);
> @@ -8782,7 +8782,7 @@ int intel_modeset_init(struct drm_i915_private *i915)
>  	intel_hpd_init(i915);
>  	intel_hpd_poll_disable(i915);
>  
> -	intel_init_ipc(i915);
> +	skl_watermark_ipc_init(i915);
>  
>  	return 0;
>  }
> @@ -8913,7 +8913,7 @@ void intel_display_resume(struct drm_device *dev)
>  	if (!ret)
>  		ret = __intel_display_resume(i915, state, &ctx);
>  
> -	intel_enable_ipc(i915);
> +	skl_watermark_ipc_update(i915);
>  	drm_modeset_drop_locks(&ctx);
>  	drm_modeset_acquire_fini(&ctx);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fe40e2a226d6..d2139cf4f825 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -988,7 +988,7 @@ static int i915_ipc_status_show(struct seq_file *m, void *data)
>  	struct drm_i915_private *dev_priv = m->private;
>  
>  	seq_printf(m, "Isochronous Priority Control: %s\n",
> -			str_yes_no(dev_priv->ipc_enabled));
> +		   str_yes_no(skl_watermark_ipc_enabled(dev_priv)));
>  	return 0;
>  }
>  
> @@ -1016,11 +1016,11 @@ static ssize_t i915_ipc_status_write(struct file *file, const char __user *ubuf,
>  		return ret;
>  
>  	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -		if (!dev_priv->ipc_enabled && enable)
> +		if (!skl_watermark_ipc_enabled(dev_priv) && enable)
>  			drm_info(&dev_priv->drm,
>  				 "Enabling IPC: WM will be proper only after next commit\n");
>  		dev_priv->ipc_enabled = enable;
> -		intel_enable_ipc(dev_priv);
> +		skl_watermark_ipc_update(dev_priv);
>  	}
>  
>  	return len;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index cb297725d5b9..df505ca6ef91 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1837,10 +1837,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
>  	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
>  	 * Display WA #1141: kbl,cfl
>  	 */
> -	if ((IS_KABYLAKE(i915) ||
> -	     IS_COFFEELAKE(i915) ||
> -	     IS_COMETLAKE(i915)) &&
> -	    i915->ipc_enabled)
> +	if ((IS_KABYLAKE(i915) || IS_COFFEELAKE(i915) || IS_COMETLAKE(i915)) &&
> +	    skl_watermark_ipc_enabled(i915))
>  		latency += 4;
>  
>  	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
> @@ -2008,7 +2006,7 @@ static void skl_compute_transition_wm(struct drm_i915_private *i915,
>  	u16 wm0_blocks, trans_offset, blocks;
>  
>  	/* Transition WM don't make any sense if ipc is disabled */
> -	if (!i915->ipc_enabled)
> +	if (!skl_watermark_ipc_enabled(i915))
>  		return;
>  
>  	/*
> @@ -3116,7 +3114,12 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
>  	kfree(hw);
>  }
>  
> -void intel_enable_ipc(struct drm_i915_private *i915)
> +bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
> +{
> +	return i915->ipc_enabled;
> +}
> +
> +void skl_watermark_ipc_update(struct drm_i915_private *i915)
>  {
>  	u32 val;
>  
> @@ -3125,7 +3128,7 @@ void intel_enable_ipc(struct drm_i915_private *i915)
>  
>  	val = intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
>  
> -	if (i915->ipc_enabled)
> +	if (skl_watermark_ipc_enabled(i915))
>  		val |= DISP_IPC_ENABLE;
>  	else
>  		val &= ~DISP_IPC_ENABLE;
> @@ -3133,7 +3136,7 @@ void intel_enable_ipc(struct drm_i915_private *i915)
>  	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
>  }
>  
> -static bool intel_can_enable_ipc(struct drm_i915_private *i915)
> +static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
>  {
>  	/* Display WA #0477 WaDisableIPC: skl */
>  	if (IS_SKYLAKE(i915))
> @@ -3148,14 +3151,14 @@ static bool intel_can_enable_ipc(struct drm_i915_private *i915)
>  	return true;
>  }
>  
> -void intel_init_ipc(struct drm_i915_private *i915)
> +void skl_watermark_ipc_init(struct drm_i915_private *i915)
>  {
>  	if (!HAS_IPC(i915))
>  		return;
>  
> -	i915->ipc_enabled = intel_can_enable_ipc(i915);
> +	i915->ipc_enabled = skl_watermark_ipc_can_enable(i915);
>  
> -	intel_enable_ipc(i915);
> +	skl_watermark_ipc_update(i915);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 50da05932750..7e5adef0c510 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -44,8 +44,9 @@ void skl_wm_sanitize(struct drm_i915_private *i915);
>  void intel_wm_state_verify(struct intel_crtc *crtc,
>  			   struct intel_crtc_state *new_crtc_state);
>  
> -void intel_enable_ipc(struct drm_i915_private *i915);
> -void intel_init_ipc(struct drm_i915_private *i915);
> +void skl_watermark_ipc_init(struct drm_i915_private *i915);
> +void skl_watermark_ipc_update(struct drm_i915_private *i915);
> +bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
>  
>  void skl_wm_init(struct drm_i915_private *i915);
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8262bfb2a2d9..c459eb362c47 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1756,7 +1756,7 @@ static int intel_runtime_resume(struct device *kdev)
>  		intel_hpd_poll_disable(dev_priv);
>  	}
>  
> -	intel_enable_ipc(dev_priv);
> +	skl_watermark_ipc_update(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(rpm);
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
