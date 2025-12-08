Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FBACAD08C
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 13:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3163910E427;
	Mon,  8 Dec 2025 12:03:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBgeogGg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F32510E427;
 Mon,  8 Dec 2025 12:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765195401; x=1796731401;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lOAX5jTWJzOjNQIch0BI8kndk+ZSza1KZNDbWUSyX9M=;
 b=KBgeogGgB248WacbVAvTU7sgAtWYrlNqEH863waUnYWYr0lfqK+890u2
 zADKyUQ8HFzcLHbdm0JC0x7XEls0rJNHskp7xFSygO2nRQ0V3PbhD0fnR
 pdwZkQOzvf5IBNbflHIpfWba2f7DtqytUyhryWrbovpUajhY0tQ0Q7fUb
 Q+uuQgHzuwd//fYNsxhcLGTu1K8qY7zHwcVgjV0xaE+Netu1T2PKMyqmE
 uiNDUux5MZS1xWc+H1CfSPWBynXJvtExjBul9EKEmyK7YWiBP8loFj2LE
 bvUm4qdjIg7dY+dhJsqi0XlWGyKfp97O+11FmJVXI8W2+OIwdU4EKwqPs g==;
X-CSE-ConnectionGUID: uEIhmR0eTAmJJo05t9Ozww==
X-CSE-MsgGUID: w/ZYFazCTg2QpK8dOR9PUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="77456151"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="77456151"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 04:03:20 -0800
X-CSE-ConnectionGUID: 00a69WouTL+JpkTH+RQYtg==
X-CSE-MsgGUID: FBhMem3RSQyF87xodKdAUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="200389699"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.125])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 04:03:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch
 WARN to a debug message
In-Reply-To: <20251205122902.1724498-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251205122902.1724498-1-imre.deak@intel.com>
Date: Mon, 08 Dec 2025 14:03:15 +0200
Message-ID: <1365d3888c719e7bf8455164910be9a6d33d6be9@intel.com>
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

On Fri, 05 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> On C10 PHY PLLs the SSC is enabled by programming the
> XELPDP_PORT_CLOCK_CTL / XELPDP_SSC_ENABLE_PLLB flag and the
> PHY_C10_VDR_PLL 4..8 registers:
>
> - If SSC is enabled XELPDP_SSC_ENABLE_PLLB is set and the
>   PHY_C10_VDR_PLL registers are programmed to non-zero values.
> - If SSC is disabled XELPDP_SSC_ENABLE_PLLB is cleared and the
>   PHY_C10_VDR_PLL registers are programmed to zeroed-out values.
>
> The driver's state checker verifies if the above settings are consistent,
> i.e. if XELPDP_SSC_ENABLE_PLLB being set corresponds to the
> PHY_C10_VDR_PLL registers being zeroed-out or not.
>
> On WCL the BIOS programs non-zero values to the PHY_C10_VDR_PLL 4..8
> registers, but does not set the XELPDP_SSC_ENABLE_PLLB flag. This will
> trigger the following PLL state check warning during driver loading:
>
> <4>[   44.457809] xe 0000:00:02.0: [drm] PHY B: SSC enabled state (no), doesn't match PLL configuration (SSC-enabled)

BTW I also think the message is really confusing.

"SSC enabled state (no)" vs. "PLL configuration (SSC-enabled)".

*BOTH* need to say SSC with str_enabled_disabled() and ditch the clumsy
"SSC enabled state yes/no" and "SSC-enabled/SSC-disabled".

BR,
Jani.


> <4>[   44.457833] WARNING: CPU: 4 PID: 298 at drivers/gpu/drm/i915/display/intel_cx0_phy.c:2281 intel_cx0pll_readout_hw_state+0x221/0x620 [xe]
>
> It's not clear whether the HW uses the PHY_C10_VDR_PLL 4..8 register
> values if the XELPDP_SSC_ENABLE_PLLB flag is cleared, or just ignores
> them in this case. Since the driver always programs the register values
> according to the above, it still makes sense to verify that the
> programming happened correctly.
>
> To avoid the state check WARN during driver loading due to the way BIOS
> programs the registers, convert the WARN to a debug message.
>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 7bd17723e7abb..b973a9201edda 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2278,11 +2278,12 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
>  
>  	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
> -	drm_WARN(display->drm,
> -		 cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state),
> -		 "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
> -		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
> -		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
> +
> +	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
> +			    phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
> +			    intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
>  }
>  
>  static void intel_c10_pll_program(struct intel_display *display,

-- 
Jani Nikula, Intel
