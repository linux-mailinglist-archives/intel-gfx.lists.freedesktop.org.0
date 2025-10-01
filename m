Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E1CBAFBA7
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C7210E0B1;
	Wed,  1 Oct 2025 08:49:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LcKqYR9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5883A10E0B1;
 Wed,  1 Oct 2025 08:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759308571; x=1790844571;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wRihrVXaaNAuJrmj+Y0j9YFI/ZIRigZyOr4MCB28w44=;
 b=LcKqYR9auZMy5+AWOztp56eBeiDFZ4oHsgFqf2e1M4U3lAvPwYDyR03V
 hXLI4BCVR19qDnoC+8PhgXvoLENNhlI70bVMx4X6M5JYWmRX5d22x1mHc
 naKvFheg0d3WyjP59If6imxMAy0E7qz5Hn32Nlx71dmT+JrEinG+8sE6m
 EM5oZM+eqsZb7s9HJ20S7nnlw33uGF5oPgzwiB8EBy55nNz6U/BQUvdan
 lvH7YwDJAkeGIcen4Kn7AsxjoT1Iq92foIrKCAe6lela9Z1pGgI/IRClP
 I8HmkuFNR5SRc2cG7drd4NrRkWAAIpipbCLqek+gV5aY+lgAxv5n02xzG g==;
X-CSE-ConnectionGUID: qj1ztuadR5qrrn776nRplg==
X-CSE-MsgGUID: O0mLwLbKQeus3QHevlNhsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="49135234"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="49135234"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:49:30 -0700
X-CSE-ConnectionGUID: W2xPVrCFSR6+HHP9eo+kKg==
X-CSE-MsgGUID: kXMsEnfxTSK+rLqw1FvhQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="182763287"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:49:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: Re: [RFC PATCH 03/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/CONTEXT_TOGGLE flag macro
In-Reply-To: <20251001082839.2585559-4-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-4-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 11:49:24 +0300
Message-ID: <b3b8850950cba8cf3fee5b26a47be7e3ed707cb6@intel.com>
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> Define PHY_C20_CONTEXT_TOGGLE, so it can be used instead of the plain
> bit number.

PHY_C20_CONTEXT_TOGGLE is already there, this just shuffles the
definition around.

>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 9492661f1645..a7aee098e7b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2628,7 +2628,8 @@ static void intel_c20_pll_program(struct intel_display *display,
>  	int i;
>  
>  	/* 1. Read current context selection */
> -	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
> +	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
> +		PHY_C20_CONTEXT_TOGGLE;
>  
>  	/*
>  	 * 2. If there is a protocol switch from HDMI to DP or vice versa, clear
> @@ -2719,7 +2720,8 @@ static void intel_c20_pll_program(struct intel_display *display,
>  	 * the updated programming toggle context bit
>  	 */
>  	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
> +		      PHY_C20_CONTEXT_TOGGLE, cntx ? 0 : PHY_C20_CONTEXT_TOGGLE,
> +		      MB_WRITE_COMMITTED);
>  }
>  
>  static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ad2f7fb3beae..5bd1e02b5313 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -301,8 +301,8 @@
>  #define   PHY_C20_IS_DP			REG_BIT8(6)
>  #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
>  #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
> -#define PHY_C20_VDR_HDMI_RATE		0xD01
>  #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
> +#define PHY_C20_VDR_HDMI_RATE		0xD01
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
>  #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)

-- 
Jani Nikula, Intel
