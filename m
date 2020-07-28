Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E24B231536
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 23:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6971E89D9B;
	Tue, 28 Jul 2020 21:54:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E1489D9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 21:54:21 +0000 (UTC)
IronPort-SDR: 7BUNtSV6gZUH2OLXZkfqu8uI+4AAH5y7PRuP3MGYk0ENrmpwpxRV+HgXPcqTEFsdXRV7o+Kfa+
 J23FAvGBIfpQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="148780673"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="148780673"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 14:54:20 -0700
IronPort-SDR: kieJgHhxHC1ZOwaHQhFeAMEIHX8x+PbDpoUXx/MgSsTF8Zx7swqFs9GNloJjLMd+AD2U0Xc6tt
 bxIfZnfpNVFg==
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="312786043"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 14:54:20 -0700
Date: Tue, 28 Jul 2020 14:54:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200728215418.GF35208@mdroper-desk1.amr.corp.intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724213918.27424-7-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 06/22] drm/i915/dg1: Add DPLL macros for
 DG1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 02:39:02PM -0700, Lucas De Marchi wrote:
> From: Aditya Swarup <aditya.swarup@intel.com>
> 
> DG1 has 4 DPLLs where DPLL0 and DPLL1 drive DDIA/B and
> DPLL2 and DPLL3 drive DDIC/DDID.

Since this is a DG1-specific commit with DG1-specific macros, we should
also use the DG1-specific terminology in the commit message to avoid
confusion (i.e., DDI-TC1 and DDI-TC2 instead of DDIC/DDID).

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Introduce DG1_DPLL_CFCRx() helper macros to configure
> DPLL registers.
> 
> Bspec: 50288, 50299
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 17 ++++++++++++++++-
>  2 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 5d9a2bc371e7..205542fb8dc7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -154,6 +154,23 @@ enum intel_dpll_id {
>  	 * @DPLL_ID_TGL_MGPLL6: TGL TC PLL port 6 (TC6)
>  	 */
>  	DPLL_ID_TGL_MGPLL6 = 8,
> +
> +	/**
> +	 * @DPLL_ID_DG1_DPLL0: DG1 combo PHY DPLL0
> +	 */
> +	DPLL_ID_DG1_DPLL0 = 0,
> +	/**
> +	 * @DPLL_ID_DG1_DPLL1: DG1 combo PHY DPLL1
> +	 */
> +	DPLL_ID_DG1_DPLL1 = 1,
> +	/**
> +	 * @DPLL_ID_DG1_DPLL2: DG1 combo PHY DPLL2
> +	 */
> +	DPLL_ID_DG1_DPLL2 = 2,
> +	/**
> +	 * @DPLL_ID_DG1_DPLL3: DG1 combo PHY DPLL3
> +	 */
> +	DPLL_ID_DG1_DPLL3 = 3,
>  };
>  
>  #define I915_NUM_PLLS 9
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3767b32127da..986e31af7763 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -242,7 +242,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
>  #define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
>  #define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
> -#define _MMIO_PLL3(pll, a, b, c)	_MMIO(_PICK(pll, a, b, c))
> +#define _MMIO_PLL3(pll, ...)		_MMIO(_PICK(pll, __VA_ARGS__))
> +
>  
>  /*
>   * Device info offset array based helpers for groups of registers with unevenly
> @@ -10547,6 +10548,20 @@ enum skl_power_gate {
>  #define RKL_DPLL_CFGCR1(pll)		_MMIO_PLL(pll, _TGL_DPLL0_CFGCR1, \
>  						  _TGL_DPLL1_CFGCR1)
>  
> +#define _DG1_DPLL2_CFGCR0		0x16C284
> +#define _DG1_DPLL3_CFGCR0		0x16C28C
> +#define DG1_DPLL_CFGCR0(pll)		_MMIO_PLL3(pll, _TGL_DPLL0_CFGCR0, \
> +						   _TGL_DPLL1_CFGCR0, \
> +						   _DG1_DPLL2_CFGCR0, \
> +						   _DG1_DPLL3_CFGCR0)
> +
> +#define _DG1_DPLL2_CFGCR1               0x16C288
> +#define _DG1_DPLL3_CFGCR1               0x16C290
> +#define DG1_DPLL_CFGCR1(pll)            _MMIO_PLL3(pll, _TGL_DPLL0_CFGCR1, \
> +						   _TGL_DPLL1_CFGCR1, \
> +						   _DG1_DPLL2_CFGCR1, \
> +						   _DG1_DPLL3_CFGCR1)
> +
>  #define _DKL_PHY1_BASE			0x168000
>  #define _DKL_PHY2_BASE			0x169000
>  #define _DKL_PHY3_BASE			0x16A000
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
