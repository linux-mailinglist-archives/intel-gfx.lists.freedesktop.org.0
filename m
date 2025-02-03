Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFAAA255C0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 10:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6617F10E2BE;
	Mon,  3 Feb 2025 09:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFFh9SWE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED4510E2BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 09:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738574608; x=1770110608;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JQ1tPFqjUaQ01Ahe1SHWYYC/LsiXJhORlYJARAo31Ew=;
 b=gFFh9SWE4qZ1OD+CaSgh2ccMpUFJO1SGa29uqGA3I+V6nv7Y9YI452Lt
 TwHJCGRlYgnYkYzgPJb/16pksOLKNROTQpRpfg4NI4is1GCD10tqpC4Ou
 BUWDRUGLPKCU4AQbBjCSlC88qMxstuMKAmlnF8AXyQe7ceHTImB8g4KCk
 t4ptOdOqhEGDBsznvCCe4MbsGFtzGGGmTMvLK8cxnKRTyJfAsyRHN3QIY
 IYL44atIOpJ+EmqNSEzi4mWnlMVxmkdCP9a7Ry0uzQJA2+amNy++iYLeE
 k4++VX41e+yn0JT9ZCy0x8xWa+c8dKne4J9G1Fr5VQo+9e24ev6+CcJHT A==;
X-CSE-ConnectionGUID: rdyyN3CXQxuEQagslNxehg==
X-CSE-MsgGUID: xhk3PmPhTQehwOaI8kDpfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11334"; a="42715535"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="42715535"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 01:23:28 -0800
X-CSE-ConnectionGUID: aLzhuLbbQv6eLM4fBn4iJA==
X-CSE-MsgGUID: tFK+BpiQSdqUXhr6muOQ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="110814715"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 01:23:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
In-Reply-To: <20250203085613.236340-1-mohammed.thasleem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
Date: Mon, 03 Feb 2025 11:23:23 +0200
Message-ID: <87r04f756c.fsf@intel.com>
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

On Mon, 03 Feb 2025, Mohammed Thasleem <mohammed.thasleem@intel.com> wrote:
> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> due to dc6 counter has been removed to validate DC state.
> Adding dc6_entry_counter at display dirver to validate dc6 state.
>
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
>  3 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..cc244617011f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -376,6 +376,7 @@ struct intel_display {
>  	struct {
>  		struct intel_dmc *dmc;
>  		intel_wakeref_t wakeref;
> +		u32 dc6_entry_counter;
>  	} dmc;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f45a4f9ba23c..0eb178aa618d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
>  	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
>  
>  	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> +
> +	display->dmc.dc6_entry_counter++;

This file has no business touching the guts of display->dmc.

BR,
Jani.


>  }
>  
>  void bxt_enable_dc9(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 221d3abda791..f51bd8e6011d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	if (i915_mmio_reg_valid(dc6_reg))
>  		seq_printf(m, "DC5 -> DC6 count: %d\n",
>  			   intel_de_read(display, dc6_reg));
> +	seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));

-- 
Jani Nikula, Intel
