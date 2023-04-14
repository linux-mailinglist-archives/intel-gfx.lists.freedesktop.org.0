Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 498A56E1DF5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 10:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6311710E144;
	Fri, 14 Apr 2023 08:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0697A10E144
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 08:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681460384; x=1712996384;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=o/zZKvXuSMx+rZ0EwivR4J2dVNPVvONXuTPwHaYHhuo=;
 b=RDcKJTrUq6wteAn4Jz6aZyHuld/6P1g9W7Y2xIF+wWMueP7FC0o2xL33
 3THbBsYL7gTaasJPGEElQ4DlWkctshCLAOUHMw7okQ8Ga9qMR9QGVA6OO
 yb5BbpUVV/A8G8ZpmhrLJ8YWkSwJ5dgGBRRZHXGYD9tPzlvjPhnz+P9T6
 TU/4+rldkq+Rw37OkSMZq99zjaFE4zt9DVH1K8cySsvInS9JtexDHNx0d
 wWGCdco8ZyBnJGwv7RlfYzuP9INcJlICJ0MkqM7XOqKnF3/3Oov+IaEzU
 36xTsyGIFooKd4b7vbHzIqlXUrq2vCYMWy9e/E54goJr3OYnJcaBckgiv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="347130113"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="347130113"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="813783992"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="813783992"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 01:19:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230414072345.1041605-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230414072345.1041605-1-suraj.kandpal@intel.com>
Date: Fri, 14 Apr 2023 11:19:35 +0300
Message-ID: <87a5zaho4o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: PCH display HPD IRQ is
 not detected with default filter value
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

On Fri, 14 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> As a result of this change, when HPD active going low pulse or HPD IRQ
> is presented and the refclk (19.2MHz) is not toggling already toggling,
> there is a 60 to 90us synchronization delay which effectively reduces
> the duration of the IRQ pulse to less than the programmed 500us filter
> value and the hot plug interrupt is NOT registered.
> Program 0xC7204 (PP_CONTROL) bit #0 to '1' to enable workaround and clear
> to disable it.
> Driver shall enable this WA when external display is connected and
> remove WA when display is unplugged or before going into sleep to allow
> CS entry.
> Driver shall not enable WA when eDP is connected.
> Wa_1508796671:adls
>
> Cc: Arun Murthy <arun.r.murthy@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

I don't know what the right fix should eventually be, but this, as it
is, is absolutely not it.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_pps.c |  1 +
>  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
>  3 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8e16745275f6..f93895d99fd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4689,6 +4689,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder = &dig_port->base;
>  	enum drm_connector_status status;
> +	int32_t pp;

For registers, this should be u32. There isn't a single int32_t use in
the driver.

>  
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.id, connector->name);
> @@ -4792,6 +4793,22 @@ intel_dp_detect(struct drm_connector *connector,
>  						 status,
>  						 intel_dp->dpcd,
>  						 intel_dp->downstream_ports);
> +
> +	/*
> +	 * WA_150879661:adls
> +	 * Driver shall enable this WA when external display is connected
> +	 * and remove WA when display is unplugged
> +	 */
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		if (status == connector_status_connected &&
> +		    !dev_priv->edp_present)
> +			pp = PANEL_POWER_ON;
> +		else if (status == connector_status_disconnected)
> +			pp = 0;
> +
> +		intel_de_rmw(dev_priv, _MMIO(PCH_PPS_BASE + 4), 1, pp);

You're not supposed to cook up register offsets inline in code like
that. The *PPS_BASE macros are not for general use. There's PP_CONTROL
macro for that particular register.

Why would you use magic 1 for clearing and PANEL_POWER_ON macro for
setting the bit in the rmw call?

For the most part, only the PPS code in intel_pps.c is supposed to touch
the PPS registers.

> +	}
> +
>  	return status;
>  }
>  
> @@ -5489,6 +5506,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
>  		intel_dp_aux_fini(intel_dp);
>  		goto fail;
> +	} else {
> +		dev_priv->edp_present = true;
>  	}
>  
>  	intel_dp_set_source_rates(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 24b5b12f7732..21538338af3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1726,4 +1726,5 @@ void assert_pps_unlocked(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	I915_STATE_WARN(panel_pipe == pipe && locked,
>  			"panel assertion failure, pipe %c regs locked\n",
>  			pipe_name(pipe));
> +
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6254aa977398..ebe16aee0ca8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -352,6 +352,8 @@ struct drm_i915_private {
>  	/* The TTM device structure. */
>  	struct ttm_device bdev;
>  
> +	bool edp_present;

Please don't add global state flags that duplicate info.

And when you actually need to, struct drm_i915_private is no longer the
dumping ground for random info anyway.

BR,
Jani.

> +
>  	I915_SELFTEST_DECLARE(struct i915_selftest_stash selftest;)
>  
>  	/*

-- 
Jani Nikula, Intel Open Source Graphics Center
