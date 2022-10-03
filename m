Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D2F5F3A01
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 01:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8B1510E097;
	Mon,  3 Oct 2022 23:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC7F10E097
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 23:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664840735; x=1696376735;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=317Tfy4z3+oo6hkhc6ggPCzwpzkBgBGZGIl71+R7lFM=;
 b=OfGZTY6BCDuCJPFfKczrtxYckkrpAGgn2pEPCCucO5jD2KclGpLsnMSI
 sXGJ3P8yOQOybRhm70lUdwTx4mpzv4IntWHS3lYDQqYaxjGnLGp87vs1T
 350BiLRad8hYUKWOMEv3VcvjInLNA75bvqMYjz510mJysBHRm6YUOEJwQ
 KHHEJBP02uFAxxOWdoz3aNsa021+fJS07wUp2IAHGeGKjqkClwd/s+ZqX
 h+fN5dPhLKDdTI+d2roHWKX/B3mElq7EZAaAqEQTyMFR9o0Mq6dzsJnuq
 hUvpBeOo5/MibBdesVT9L1TsHoqSb1IIyedSGhA9mCW7Q5IXbTybdWZyn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="303749125"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="303749125"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:45:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686342172"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686342172"
Received: from kbalinsk-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.213.7.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 16:45:32 -0700
Date: Tue, 4 Oct 2022 01:45:30 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Yzt0Gif4yzdA/88b@ashyti-mobl2.lan>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003223258.2650934-2-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Use drm_device alias
 if defined
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

[...]

> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	}
>  
>  	if (!dev_priv->display.vbt.int_lvds_support) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(dev,
>  			    "Internal LVDS support disabled by VBT\n");

you don't need to break this anymore

>  		return;
>  	}
> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	pin = GMBUS_PIN_PANEL;
>  	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>  		if ((lvds & LVDS_PORT_EN) == 0) {
> -			drm_dbg_kms(&dev_priv->drm,
> +			drm_dbg_kms(dev,
>  				    "LVDS is not present in VBT\n");

here, as well (and so on for the rest)

With the above:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

>  			return;
>  		}
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(dev,
>  			    "LVDS is not present in VBT, but enabled anyway\n");
>  	}
>  
> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	intel_backlight_setup(intel_connector, INVALID_PIPE);
>  
>  	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>  		    lvds_encoder->is_dual_link ? "dual" : "single");
>  
>  	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	return;
>  
>  failed:
> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>  	drm_connector_cleanup(connector);
>  	drm_encoder_cleanup(encoder);
>  	kfree(lvds_encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index caa07ef34f21ef..ba3666e94fc48d 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>  	struct opregion_asle *asle = dev_priv->display.opregion.asle;
>  	struct drm_device *dev = &dev_priv->drm;
>  
> -	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
> +	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
>  
>  	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
>  		drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index dee0147a316ce7..fdfe3611e74a76 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  	enum port port;
>  	enum pipe pipe;
>  
> -	drm_dbg_kms(&dev_priv->drm, "\n");
> +	drm_dbg_kms(dev, "\n");
>  
>  	/* There is no detection method for MIPI so rely on VBT */
>  	if (!intel_bios_is_dsi_present(dev_priv, &port))
> -- 
> 2.34.1
