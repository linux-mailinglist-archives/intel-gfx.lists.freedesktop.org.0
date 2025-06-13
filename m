Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6773AD880E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 11:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3968F10E956;
	Fri, 13 Jun 2025 09:36:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSVtc8Ao";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E671E10E94B;
 Fri, 13 Jun 2025 09:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749807368; x=1781343368;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qGUY2ypNF3GNmcerHutxgi8nu30RmEH27GQjhQQu1C4=;
 b=mSVtc8AoRC71k0lMwAyQWEg8rvMCPnY15671vXLm0CaKjiluW+i3jdkq
 Zh/egi6PTxRAUO6KiruWhmdTUFLrSqFIn2meRLxZ7JkRQ/loVY0wIO6a5
 SeGqNOjvzDX4+YMoSBRL9AVHCIRsdQoNuCtda2uwZ22hvCNnAoKu4NjI0
 io+efdCcxrj9wKQB/OXpenaRhqvKLJGt2KMALDaAasq6IrI5fIPexbc15
 lccOWuusxfJ57ZbQD2ImE3Xv6UKOmvK8xl875IJdPGviv/ns3hauXgyA5
 lYRNhX/TUMTgaDKea7LKOOAx3J1JOOxT9W7xtBKzyI2At1F2NLWOFp3eW A==;
X-CSE-ConnectionGUID: hdFE8GooRaOWTPEyMRb5UA==
X-CSE-MsgGUID: YPpuJ4kxT0ec0QrHYlrV8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="69460854"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="69460854"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:36:07 -0700
X-CSE-ConnectionGUID: fhoG/oIRTQSMwBflxWZbtQ==
X-CSE-MsgGUID: cnGmUmx1QBWvvxIvuJLLUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="147767689"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.26])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 02:36:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation
 by using div64_u64
In-Reply-To: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
Date: Fri, 13 Jun 2025 12:36:02 +0300
Message-ID: <0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com>
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

On Fri, 13 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> DIV_ROUND_CLOSEST_ULL uses do_div(), which expects a 32-bit divisor.
> When passing a 64-bit constant like CURVE2_MULTIPLIER, the value is
> silently truncated to u32, potentially leading to incorrect results
> on large divisors.
>
> Replace DIV_ROUND_CLOSEST_ULL with div64_u64(), which correctly
> handles full 64-bit division. Since the result is clamped between
> 1 and 127, rounding is unnecessary and truncating division
> is sufficient.

I don't understand how you can make that conclusion. Please explain.

Would it be safer to just use DIV64_U64_ROUND_CLOSEST()?

> Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: <stable@vger.kernel.org> # v6.15+
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index 74bb3bedf30f..ac609bdf6653 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
>  			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
>  
>  	ana_cp_int_temp =
> -		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
> -				      CURVE2_MULTIPLIER);
> +		div64_u64(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
> +			  CURVE2_MULTIPLIER);
>  
>  	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));

Unrelated to this patch, but this should be:

	*ana_cp_int = clamp(ana_cp_int_temp, 1, 127);

There's a similar issue with ana_cp_prop also in the file.


BR,
Jani.


-- 
Jani Nikula, Intel
