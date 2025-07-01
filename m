Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D8EAEF34E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 11:29:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCF110E277;
	Tue,  1 Jul 2025 09:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMA2XlzF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B5810E277;
 Tue,  1 Jul 2025 09:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751362129; x=1782898129;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IEYe84dwUhMoyEcezM2sHTfy7XHYs29+emKtPby1CD4=;
 b=mMA2XlzFoB90clFYTPr5rLzycMjnWk58V3TXsznhXoUL6OLfa4z5X64M
 B6e6/qmWgy0GbzATTh9TsRZ0eVbNvtR5zoBLtywK4TLkutZOBiAwoUxVw
 7LdBo33H4a2HAaLxNdli4ZauQcL5dyyA95Vm4LwSLxM6X9RzSUZgezHho
 645bTvEYK7mhmohpK/OOxJwb0jiMCc87P3cm7ifx6Riop9NJn42WC7jeD
 O3Ctxqrq/kO3uGwn4KAUjFmT4bkPvjbUW8Yx3U3c+ro2kHGBgj9iXjH+g
 GnlN9/AFvhWfNmXttdonMZGYW9uDwDvu4IkBeyBNXDaagNEylMdJnegSA A==;
X-CSE-ConnectionGUID: rE3HF30kQ1qMfKixSZ/Sfw==
X-CSE-MsgGUID: 0e7yLthGTKi6m0X//Klw4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="53724330"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53724330"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 02:28:48 -0700
X-CSE-ConnectionGUID: oIoN2FVeQii2fG/HK8pHow==
X-CSE-MsgGUID: rwROTJ6vT0WiWY0OnTKcSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="184648493"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 02:28:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 arun.r.murthy@intel.com, lucas.demarchi@intel.com, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH]  drm/i915/display: Optimize panel power-on  wait time
In-Reply-To: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
Date: Tue, 01 Jul 2025 12:28:41 +0300
Message-ID: <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
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

On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>  The current wait_panel_on() uses intel_de_wait() with a long timeout
>  (5000ms), which is suboptimal on Xe platforms where the underlying
>  xe_mmio_wait32() employs an exponential backoff strategy. This leads
>  to unnecessary delays during resume or power-on  when the panel becomes
>  ready earlier than the full timeout.
>
>  This patch splits the total wait time into two pases
>     - First wait for the typical panel-on time(180ms)
>     - If panel is not ready , continue polling in short 20ms intervals
>       until the maximum timeout (5000ms) is reached

I'm *very* reluctant to merge any new custom wait hacks. I'm in the
process of *removing* a plethora of them [1][2][3].

I think the question is, should xe_mmio_wait32() (and the i915
counterpart) and the intel_de_wait*() functions be migrated to an
interface similar to read_poll_timeout(), i.e. provide sleep and timeout
separately, no exponential backoff. And implement the waits using
read_poll_timeout(), or whatever Ville ends up with [4].


[1] https://lore.kernel.org/r/cover.1750959689.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/20250626192632.2330349-1-jani.nikula@intel.com
[3] https://lore.kernel.org/r/cover.1751023767.git.jani.nikula@intel.com
[4] https://lore.kernel.org/r/aF67cxjlfWiWMx-4@intel.com

> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 61 +++++++++++++++++++++++-
>  1 file changed, 60 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index bff81fb5c316..57a062c8038d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -598,8 +598,67 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
>  #define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)
>  #define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)
>  
> +#define PANEL_TYPICAL_ON_TIME_MS		(180)
> +#define PANEL_MAXIMUM_ON_TIME_MS		(5000)
> +
>  static void intel_pps_verify_state(struct intel_dp *intel_dp);
>  
> +/*
> + * Panel power-on typically completes within ~200ms. Using a large timeout
> + * (5000ms) with intel_de_wait() results in unnecessary delays,
> + * especially under Xe, where xe_mmio_wait32() uses an exponential backoff.
> + *
> + * To optimize resume and power-on latency, we first wait for the typical
> + * completion window, then perform short polling loops thereafter.
> + * This reduces worst-case latency while still ensuring correctness.
> + */
> +static void wait_panel_on_status(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> +	u32 mask = IDLE_ON_MASK;
> +	u32 value = IDLE_ON_VALUE;
> +	int elapsed  = PANEL_TYPICAL_ON_TIME_MS;
> +
> +	lockdep_assert_held(&display->pps.mutex);
> +
> +	intel_pps_verify_state(intel_dp);
> +
> +	pp_stat_reg = _pp_stat_reg(intel_dp);
> +	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
> +
> +	drm_dbg_kms(display->drm,
> +		    "[ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
> +		    dig_port->base.base.base.id, dig_port->base.base.name,
> +		    pps_name(intel_dp),
> +		    mask, value,
> +		    intel_de_read(display, pp_stat_reg),
> +		    intel_de_read(display, pp_ctrl_reg));
> +
> +	/* Wait for typical panel on time first */
> +	if (intel_de_wait(display, pp_stat_reg, mask, value, PANEL_TYPICAL_ON_TIME_MS) == 0)
> +		goto panel_wait_complete;
> +
> +	/* Wait for maxtime in 20ms intervals */
> +	while (elapsed < PANEL_MAXIMUM_ON_TIME_MS) {
> +		if (intel_de_wait(display, pp_stat_reg, mask, value, 20) == 0)
> +			goto panel_wait_complete;
> +
> +		elapsed += 20;
> +	}

That's just not how time works in the kernel. Please let's not reinvent
wheels.


BR,
Jani.

> +
> +	drm_err(display->drm,
> +		"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
> +		dig_port->base.base.base.id, dig_port->base.base.name,
> +		pps_name(intel_dp),
> +		intel_de_read(display, pp_stat_reg),
> +		intel_de_read(display, pp_ctrl_reg));
> +
> +panel_wait_complete:
> +	drm_dbg_kms(display->drm, "Wait complete\n");
> +}
> +
>  static void wait_panel_status(struct intel_dp *intel_dp,
>  			      u32 mask, u32 value)
>  {
> @@ -642,7 +701,7 @@ static void wait_panel_on(struct intel_dp *intel_dp)
>  		    "[ENCODER:%d:%s] %s wait for panel power on\n",
>  		    dig_port->base.base.base.id, dig_port->base.base.name,
>  		    pps_name(intel_dp));
> -	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
> +	wait_panel_on_status(intel_dp);
>  }
>  
>  static void wait_panel_off(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
