Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6233962C794
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 19:24:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356AE10E0A2;
	Wed, 16 Nov 2022 18:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AF310E0A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 18:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668623040; x=1700159040;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pfRyGPBSR5qQduUIt8vBsGr1H75RL5DQIbIv9a17j90=;
 b=BS9J7FEtDoARdBSEyGMjj89nw1LTXp24P6vJypPAzvp14+oFtOdx5yhY
 wJnjpeQ5Vr+PWWRaFMSwmdVdsM3PeJIsiDuQ6guo74qgav18ZBh3mePg8
 9WazyWY7LCeAr61dqg74UMB9wmb0veeEqe2XobJiudcs53kyTEuR/+YSQ
 9DAqV1h/b8+acHBC6n4OA0jpzTe0JSwJ//dM1NjWq+RyUGUj5oPWmbHOg
 etlNX48w8amCDNKObQlIPuTQLepH3vgqoztf1AsU2hlJqkeum6Wjx6IqR
 Zo3iLCjXDC48/UmdjQ4rAW207PIAgqp8oqSnCpcEhauP5QU5AsM67qGBi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="293015945"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="293015945"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 10:23:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670599066"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="670599066"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 16 Nov 2022 10:23:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Nov 2022 20:23:31 +0200
Date: Wed, 16 Nov 2022 20:23:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y3Uqowmo36DpDjym@intel.com>
References: <20221116150657.1347504-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221116150657.1347504-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: wait power off delay at
 driver remove to optimize probe
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

On Wed, Nov 16, 2022 at 05:06:57PM +0200, Jani Nikula wrote:
> Panel power off delay is the time the panel power needs to remain off
> after being switched off, before it can be switched on again.
> 
> For the purpose of respecting panel power off delay at driver probe,
> assuming the panel was last switched off at driver probe is overly
> pessimistic. If the panel was never on, we'd end up waiting for no
> reason.
> 
> We don't know what has happened before kernel boot, but we can make some
> assumptions:
> 
> - The panel may have been switched off right before kernel boot by some
>   pre-os environment.
> 
> - After kernel boot, the panel may only be switched off by i915.
> 
> - At i915 driver probe, only a previously loaded and removed i915 may
>   have switched the panel power off.
> 
> With these assumptions, we can initialize the last power off time to
> kernel boot time, if we also ensure i915 driver remove waits for the
> panel power off delay after switching panel power off.
> 
> This shaves off the time it takes from kernel boot to i915 probe from
> the first panel enable, if (and only if) the panel was not already
> enabled at boot.
> 
> The encoder destroy hook is pretty much the last place where we can
> wait, right after we've ensured the panel power has been switched off,
> and before the whole encode is destroyed.

Yeah, the fact that we have the vdd_off_sync() in there at least
theoretically means the vdd might be on at any point before that.

I was also pondering about doing this for all encoder types.
Though the benefits are slightly less pronounced I guess:
a) we don't need to power the panel for the output probe on those,
   so a bit more time will have elapsed anyway before we have to
   power the panel on during the first modeset
b) for LVDS we rely 100% on the pps state machine so the initial
   boot case is already as optimal as possible. Adding the explicit
   wait into the unload path could thus only help the speed of
   of the first modeset during module reload

But maybe we'd stil want to do that, for consistency if nothing else?

Either way, this patch is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7417
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_pps.c | 8 +++++++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 914161d7d122..67089711d9e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4877,6 +4877,12 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>  
>  	intel_pps_vdd_off_sync(intel_dp);
>  
> +	/*
> +	 * Ensure power off delay is respected on module remove, so that we can
> +	 * reduce delays at driver probe. See pps_init_timestamps().
> +	 */
> +	intel_pps_wait_power_cycle(intel_dp);
> +
>  	intel_dp_aux_fini(intel_dp);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 81ee7f3aadf6..9bbf41a076f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1100,7 +1100,13 @@ bool intel_pps_have_panel_power_or_vdd(struct intel_dp *intel_dp)
>  
>  static void pps_init_timestamps(struct intel_dp *intel_dp)
>  {
> -	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
> +	/*
> +	 * Initialize panel power off time to 0, assuming panel power could have
> +	 * been toggled between kernel boot and now only by a previously loaded
> +	 * and removed i915, which has already ensured sufficient power off
> +	 * delay at module remove.
> +	 */
> +	intel_dp->pps.panel_power_off_time = 0;
>  	intel_dp->pps.last_power_on = jiffies;
>  	intel_dp->pps.last_backlight_off = jiffies;
>  }
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
