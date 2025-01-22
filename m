Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F263AA19052
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 12:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D323810E6C7;
	Wed, 22 Jan 2025 11:11:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+dhs6sW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DE410E306;
 Wed, 22 Jan 2025 11:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737544264; x=1769080264;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lM8XE7OmyysYeg7ZJsWGLyeXle11y1R4KtyH5tGw250=;
 b=R+dhs6sWD/4bMNAgIts0tapcSNVCBvEzVLasGR9BDD6HOwvTHGFdXnhl
 adMkHc57LlqMwMNT/wAlC1paqQB1EIbBsw6NCIxAlaNE2VZ4xeGMduMOE
 j9VnM2aIgZOz6T+1nzx3fKJQswhM/+HdpLvIoeFwjhHos199fnR4Y9QFs
 vTAD2OdPszcBU7flRdZ72a26vZ9MKBy3E2OZCeiAoXdKccVit8rRMFmlz
 RjyLSx5ozIJuxLM4HbwWD3iXUWCX5vUa6D12n36It9AVJ/GiUkEg0SNQV
 phoNNs0jlsE5X+QErobjQu1kVdZh4ZprCCCqtxdCiZljUD/lheY3yb8It Q==;
X-CSE-ConnectionGUID: gbmxbCiGQeOYxONTqW/4Ww==
X-CSE-MsgGUID: FkWAz+8zQXOo8QXr1q1cxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38020831"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="38020831"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 03:11:04 -0800
X-CSE-ConnectionGUID: +tVOOnx/S5OSr59GeWMWNw==
X-CSE-MsgGUID: EXYoqCsSSSWSLrkb3AnCSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="112119294"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 03:11:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com
Subject: Re: [PATCH 3/5] drm/i915/cx0_phy_regs: Add C10 registers bits
In-Reply-To: <20250120042122.1029481-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
 <20250120042122.1029481-4-ankit.k.nautiyal@intel.com>
Date: Wed, 22 Jan 2025 13:10:57 +0200
Message-ID: <87y0z3nlxa.fsf@intel.com>
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

On Mon, 20 Jan 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add C10 register bits to be used for computing HDMI PLLs with
> algorithm.
>
> v2: Add bspec reference. (Suraj)
>
> Bspec: 74166
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 91eb1d423c71..da27cff878a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -218,10 +218,34 @@
>  
>  /* C10 Vendor Registers */
>  #define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
> +#define   C10_PLL0_SSC_EN		REG_BIT8(0)
> +#define   C10_PLL0_DIVCLK_EN		REG_BIT8(1)
> +#define   C10_PLL0_DIV5CLK_EN		REG_BIT8(2)
> +#define   C10_PLL0_WORDDIV2_EN		REG_BIT8(3)
>  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> +#define   C10_PLL0_PMIX_EN		REG_BIT8(5)
> +#define   C10_PLL0_ANA_FREQ_VCO_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL1_DIV_MULTIPLIER_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL2_MULTIPLIERL_MASK	REG_GENMASK8(7, 0)
>  #define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> +#define   C10_PLL8_SSC_UP_SPREAD	REG_BIT(5)

All of the reg bits and masks should use the same width, i.e. REG_BIT8()
here.

> +#define   C10_PLL9_FRACN_DENL_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL10_FRACN_DENH_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL11_FRACN_QUOT_L_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL12_FRACN_QUOT_H_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL13_FRACN_REM_L_MASK	REG_GENMASK8(7, 0)
> +#define   C10_PLL14_FRACN_REM_H_MASK	REG_GENMASK8(7, 0)
>  #define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
>  #define   C10_PLL15_HDMIDIV_MASK	REG_GENMASK8(5, 3)
> +#define   C10_PLL15_PIXELCLKDIV_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL16_ANA_CPINT		REG_GENMASK8(6, 0)
> +#define   C10_PLL16_ANA_CPINTGS_L	REG_BIT(7)

Ditto.

> +#define   C10_PLL17_ANA_CPINTGS_H_MASK	REG_GENMASK8(5, 0)
> +#define   C10_PLL17_ANA_CPPROP_L_MASK	REG_GENMASK8(7, 6)
> +#define   C10_PLL18_ANA_CPPROP_H_MASK	REG_GENMASK8(4, 0)
> +#define   C10_PLL18_ANA_CPPROPGS_L_MASK	REG_GENMASK8(7, 5)
> +#define   C10_PLL19_ANA_CPPROPGS_H_MASK	REG_GENMASK8(3, 0)
> +#define   C10_PLL19_ANA_V2I_MASK	REG_GENMASK8(5, 4)
>  
>  #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
>  #define   C10_CMN0_REF_RANGE		REG_FIELD_PREP(REG_GENMASK(4, 0), 1)

-- 
Jani Nikula, Intel
