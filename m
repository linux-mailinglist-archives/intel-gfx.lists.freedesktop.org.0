Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2F9B88E9B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 12:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D66A10E986;
	Fri, 19 Sep 2025 10:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4PW50Ee";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE55010E984;
 Fri, 19 Sep 2025 10:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758277610; x=1789813610;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q9Qif207L9O3ce8/NF0AU4aRYMt4pLC+1QdLO5D8v6M=;
 b=W4PW50EeTEy9PBt7whlreNU9gTWkvH0FYwFe5J8NtiPj1blkjL4D1sBG
 PCC/kdn2FUgEY25NMe4klYmEETbF8oeUEH4qI28lmGNxa5nrp5e0x5Aaw
 KIevWabgl70zqs7LuCgixM9Svw3XswnGVm4rlWkM4pM25iGZSbCOZ9w1W
 H75nuwpqcvtniRK4Z1R8lrPjzNTxfihCZ6l2eLN7ZM4ugnYOhXLoLWsox
 4kgCw98ojEo7WsvyBC2pMPbSquQk2QUA2RWHb6nHIRPi7NFFX7BVo4xhO
 Q7DBQwwo47Zne0wh4a7n635LObbUgh2zRC0t+ssJR9PRY/9IL+EgTyJYo g==;
X-CSE-ConnectionGUID: 7PwzDbR/QcmmURWJ45h36w==
X-CSE-MsgGUID: GBBHoB6oQ9a2eAt9gjaiDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60318372"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="60318372"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:26:50 -0700
X-CSE-ConnectionGUID: vH4DzlmVTleXTkET6f6NGg==
X-CSE-MsgGUID: gqlRIytMTKiqmloFhXk9qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="175057126"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 03:26:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>, Uma Shankar
 <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/display: Set SPREAD_AMP bit to enable SSC
In-Reply-To: <20250918212847.1838637-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250918212847.1838637-1-khaled.almahallawy@intel.com>
Date: Fri, 19 Sep 2025 13:26:43 +0300
Message-ID: <11551c7d318448823015cc26d6409e0f897f0562@intel.com>
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

On Thu, 18 Sep 2025, Khaled Almahallawy <khaled.almahallawy@intel.com> wrote:
> According to DP Specs[1]:
> "SSC is enabled or disabled when the SPREAD_AMP bit in the
> DOWNSPREAD_CTRL register is set or cleared (DPCD 00107h[4]  = 1 or 0,
> respectively)."
>
> Set the SPREAD_AMP bit before starting link training to ensure SSC
> is enabled as required.
>
> [1]: DisplayPort Standard v2.1 - Sec 2.2.3.1 De-spreading of the
> Regenerated Stream Clock
>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 27f3716bdc1f..db2ea3c51a5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -711,9 +711,13 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
>  
>  void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	u8 link_config[2];
> +	bool ssc_enabled = intel_panel_use_ssc(display) &&
> +			(intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);

This is actually pretty messy.

intel_panel_use_ssc() looks at a module parameter, and then at an
*obsolete* field in the VBT, but may also be quirked away.

And as the name implies, it's for panels, originally LVDS only.

Someone needs to look at the VBT spec, there's a handful of places
mentioning SSC, and *all* usage of intel_panel_use_ssc() in the driver,
and match those properly, using the right part from VBT depending on BDB
version and panel/child device, etc.

(Side note, there's Cx0 PHY code looking at DPCD registers for this,
WTF.)

This code here would probably benefit from having:

intel_dp_source_supports_ssc()

and

intel_dp_sink_supports_ssc()

to make all of this clear here.

> -	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
> +	link_config[0] = (is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) |
> +		(ssc_enabled ? DP_SPREAD_AMP_0_5 : 0);

Getting complex, maybe something like:

	if (is_vrr)
		link_config[0] |= DP_MSA_TIMING_PAR_IGNORE_EN;
	if (intel_dp_source_supports_ssc() && intel_dp_sink_supports_ssc())
		link_config[0] |= DP_SPREAD_AMP_0_5;

>  	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
>  			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);

-- 
Jani Nikula, Intel
