Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E28B41EB5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCA910E210;
	Wed,  3 Sep 2025 12:18:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KYZT4ghx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA57610E210;
 Wed,  3 Sep 2025 12:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756901926; x=1788437926;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3hlhmVK+CAFbXAjd9frGU5akz1hXGP0uoSOheVvAB6o=;
 b=KYZT4ghxY6O26fv4ZF0deeqyXb3tvkbgAw/aSOFY8jM7Z9LLbnbwcKNQ
 JwScMGwj+g13WKIJjPPZ2nIfU8qtlJZH26QmqzAmACIvi0mLS/2OOu0Xn
 bIhzk4XJHegvg99N5FaBdxBIQA2WP6tCyN0kR18IhBu4EoZkfWXCgDGcb
 sVGF6hh/+fPF3cQIr0f9R/Gim2sZNzM/B6Jii9ZJiXbjiMBsCz9J6grYA
 cIwAEZUWM4RNAORKJz4DYeceY1DrIf9U2jeSK+R3dVsXACEHoeEVS3w5v
 M/8qn0UDRNJHRjDpTBLaJAxeKXRAc3ZF4UUrP/WEBZ9mVdq56iru3PplU g==;
X-CSE-ConnectionGUID: xJbepkfZTdGGoTw7wifL5w==
X-CSE-MsgGUID: YJqIyt9gRGCU0z1H15d4Rg==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62854448"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="62854448"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:18:46 -0700
X-CSE-ConnectionGUID: 3JR3pDlYQ8OKHIcVJxNvJA==
X-CSE-MsgGUID: etvdDCHWS8OEyQgoBBL2cw==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:18:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/display: Initialize phy and ch variables
In-Reply-To: <20250903120147.1799446-1-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903120147.1799446-1-mika.kahola@intel.com>
Date: Wed, 03 Sep 2025 15:18:41 +0300
Message-ID: <4007cf393a333c1ffe62c2245c098bb99751f55e@intel.com>
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

On Wed, 03 Sep 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> phy and ch variables are potentially used uninitialized.

They're not, bxt_port_to_phy_channel() initializes them in all code
paths.

> To make absolutely sure that these variables are not used
> uninitialized let's initialize these with known values as
> DPIO_PHY0 and DPIO_CH0, respectively.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8ea96cc524a1..45b67a3716e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2174,8 +2174,8 @@ static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
>  	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
>  	intel_wakeref_t wakeref;
> -	enum dpio_phy phy;
> -	enum dpio_channel ch;
> +	enum dpio_phy phy = DPIO_PHY0;
> +	enum dpio_channel ch = DPIO_CH0;
>  	u32 val;
>  	bool ret;

-- 
Jani Nikula, Intel
