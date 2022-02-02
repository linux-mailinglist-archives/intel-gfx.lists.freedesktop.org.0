Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 026104A6F4B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB6710E993;
	Wed,  2 Feb 2022 11:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0CD10E993
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643799649; x=1675335649;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/wBl8XmCtHq3tyPnBs3Sp75u9FYJUFiIOD/wbtBviNY=;
 b=KSiA68IuZiOQsi9QKCRzdiXz8a2Cxb5kSRpOmXQk7k85MIlzAioTrGkr
 rXh0jTyCW5FiemHW40ZvJQOPjpgMVNroUKEWX+GBC3w/gNp10q0WfjDQe
 QvhEqdpmg1v+sDFxHe2l6UuOX/4U36kFK+n4mydqfltMloshKehMZaH3D
 SMnrtb9p7+fSK4QOtWHXFjO5LInLuSvMmXTxnfBcBc8nOox8V8Rqu3FbK
 L+qU9utNXNKyzCg52DqWi5jt9/LLZy1UyRVxAt6F0UQLsVYyIM7aMusOX
 xXk9FYFjkPxytfFfwLdO/HjxCgBRfwZ3NlxQhpYc7xkfjyoDOg/5nWJCT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="227860545"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="227860545"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:00:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="627030732"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 02 Feb 2022 03:00:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:00:46 +0200
Date: Wed, 2 Feb 2022 13:00:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YfpkXv6Xl25q0unN@intel.com>
References: <20220202104249.2680843-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220202104249.2680843-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable unused power wells left
 enabled by BIOS
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

On Wed, Feb 02, 2022 at 12:42:49PM +0200, Imre Deak wrote:
> Make sure all unused power wells left enabled by BIOS get disabled
> during driver loading and system resume.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5028
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
>  .../drm/i915/display/intel_display_power.c    | 31 +++++++++++++++++++
>  .../drm/i915/display/intel_display_power.h    |  1 +
>  3 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c431076f98a15..df347329d90e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10664,6 +10664,8 @@ intel_modeset_setup_hw_state(struct drm_device *dev,
>  	}
>  
>  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> +
> +	intel_power_domains_sanitize_state(dev_priv);

One slight concern is intel_vga_redisable() which is called after
this during resume. Dunno if there's any way we could end up
disabling the power well that houses the VGA logic before actually 
turning off the VGA plane?

Hmm. Maybe we should just reorder the intel_modeset_setup_hw_state()
vs. intel_vga_redisable() anyway. We already do those in the opposite
order during driver probe. No idea why we have a different order for
resume.

Apart from that this seems sane enough to me.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  void intel_display_resume(struct drm_device *dev)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 369317805d245..d2102cc17bb4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -6213,6 +6213,37 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  }
>  
> +/**
> + * intel_power_domains_sanitize_state - sanitize power domains state
> + * @i915: i915 device instance
> + *
> + * Sanitize the power domains state during driver loading and system resume.
> + * The function will disable all display power wells that BIOS has enabled
> + * without a user for it (any user for a power well has taken a reference
> + * on it by the time this function is called, after the state of all the
> + * pipe, encoder, etc. HW resources have been sanitized).
> + */
> +void intel_power_domains_sanitize_state(struct drm_i915_private *i915)
> +{
> +	struct i915_power_domains *power_domains = &i915->power_domains;
> +	struct i915_power_well *power_well;
> +
> +	mutex_lock(&power_domains->lock);
> +
> +	for_each_power_well_reverse(i915, power_well) {
> +		if (power_well->desc->always_on || power_well->count ||
> +		    !power_well->desc->ops->is_enabled(i915, power_well))
> +			continue;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "BIOS left unused %s power well enabled, disabling it\n",
> +			    power_well->desc->name);
> +		intel_power_well_disable(i915, power_well);
> +	}
> +
> +	mutex_unlock(&power_domains->lock);
> +}
> +
>  /**
>   * intel_power_domains_enable - enable toggling of display power wells
>   * @i915: i915 device instance
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 686d18eaa24c8..a985f0e7ef78b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -219,6 +219,7 @@ void intel_power_domains_disable(struct drm_i915_private *dev_priv);
>  void intel_power_domains_suspend(struct drm_i915_private *dev_priv,
>  				 enum i915_drm_suspend_mode);
>  void intel_power_domains_resume(struct drm_i915_private *dev_priv);
> +void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
>  
>  void intel_display_power_suspend_late(struct drm_i915_private *i915);
>  void intel_display_power_resume_early(struct drm_i915_private *i915);
> -- 
> 2.27.0

-- 
Ville Syrjälä
Intel
