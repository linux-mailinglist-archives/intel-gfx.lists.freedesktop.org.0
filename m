Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C519C7022
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 14:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 807A210E70F;
	Wed, 13 Nov 2024 13:03:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="id8rbo/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB6110E6EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2024 13:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731503028; x=1763039028;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nKZz5M74DGlk6n/ik3GmKMqpY3MefjmCj7Jqu4EqkdM=;
 b=id8rbo/A98pI2NYuluC5liR1CRSJpvkRyu7I705V1d1RxEDWndqecI2+
 UjVMh4MbRU3Gwy1Kn+oeZ06DIYrOgS8ERFSNOWy+msSbGL+0UHpWueFO7
 LAyaeC3PtWU6oWa4TVv5BPen3oIXXyzxphE3O/3ZT7q2qmXHLjIM/1BTj
 4Jd1lgsHDmh/epbrYI70cCHaYvP7n+sscqQesutJiWm4sowWJxHvg4D6L
 DVcBb3OhDnjBukzp2migebTxK3whWwyHa4I3UhlSZO9tmUvAAeU62GEcM
 XIoYbuTRXGl1jbkEGcszcDc6jwXG67TWrbmwFPoznre2ZSK1qcswp7uqN g==;
X-CSE-ConnectionGUID: oK10wXaqRg+yWG9NsaBM7g==
X-CSE-MsgGUID: SuFWhDzBTf6tOgbBLZRdSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="31637448"
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="31637448"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 05:03:44 -0800
X-CSE-ConnectionGUID: GOVcKF+yTh+s90ru9tS3KQ==
X-CSE-MsgGUID: yhAjfAPfT12jo1IdjAKzXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="87764273"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.186])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 05:03:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
In-Reply-To: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
Date: Wed, 13 Nov 2024 15:03:38 +0200
Message-ID: <87iksrb80l.fsf@intel.com>
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

On Wed, 13 Nov 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> In the C20 algorithm for HDMI TMDS, certain fields have been updated
> in the BSpec to set values for SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1,
> such as tx_misc and dac_ctrl_range.
> This patch covers fields that need to be set based on the platform type.
> here for xe2lpd, xe2HPD and MTL/ARL platform.
>
> Some SoCs cannot be directly distinguished by their GMD version Id,
> Specifically to set value of tx_misc, so direct device PCI IDs
> and PCI Host Bridge IDs are used for differentiation.
>
> Bspec:74165,74491
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 57 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  | 11 ++++
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 19 ++++++-
>  include/drm/intel/pciids.h                    |  8 ++-
>  4 files changed, 82 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 8ad19106fee1..018add48b8ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -6,6 +6,7 @@
>  #include <linux/log2.h>
>  #include <linux/math64.h>
>  #include "i915_reg.h"
> +#include <drm/intel/pciids.h>

No. Do not look at PCI IDs directly inline.

>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> @@ -2164,9 +2165,55 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +static bool intel_c20_tx_mics_3_platform(struct drm_i915_private *dev_priv)

No new struct drm_i915_private uses please.

> +{
> +	u16 devid = INTEL_DEVID(dev_priv);

No. Do not use INTEL_DEVID() in display code. There are no current users
and we intend to keep it that way.

> +	u16 host_bridge_pci_dev_id;
> +	struct pci_dev *pdev = NULL;
> +	bool check = false;
> +	/*
> +	 * Some SoCs have the same PCI IDs, so differentiate them based
> +	 * on the host bridge PCI device ID to use the correct txx_mics value
> +	 */
> +	while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
> +		host_bridge_pci_dev_id = pdev->device;
> +
> +	check = (pdev &&
> +		 (IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(host_bridge_pci_dev_id)));
> +
> +	return ((devid == MTL_TXX_MISC3_PLATFORM_ID) ||
> +		(devid == ARL_TXX_MISC3_PLATFORM_ID) || check);
> +}

None of this belongs in cx0 PHY code.

> +
> +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	u16 tx_misc;
> +	u16 tx_dcc_cal_dac_ctrl_range = 8;
> +	u16 tx_dcc_bypass = 1;
> +	u16 tx_term_ctrl;
> +
> +	if (IS_BATTLEMAGE(dev_priv)) {
> +		tx_misc = 0;
> +		tx_term_ctrl = 2;
> +
> +	} else if (DISPLAY_VER(dev_priv) >= 20) {
> +		tx_misc = 5;
> +		tx_term_ctrl = 4;
> +	} else if (IS_METEORLAKE(dev_priv)) {
> +		if (intel_c20_tx_mics_3_platform(dev_priv))
> +			tx_misc = 3;
> +		else
> +			tx_misc = 7;
> +
> +		tx_term_ctrl = 2;
> +	}
> +	return PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc, tx_dcc_cal_dac_ctrl_range,
> +					 tx_dcc_bypass, tx_term_ctrl);
> +}
> +
>  static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
>  	u64 datarate;
>  	u64 mpll_tx_clk_div;
> @@ -2176,7 +2223,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  	u64 mpll_multiplier;
>  	u64 mpll_fracn_quot;
>  	u64 mpll_fracn_rem;
> -	u16 tx_misc;
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
>  
> @@ -2196,11 +2242,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
>  						  datarate), 255);
>  
> -	if (DISPLAY_VER(display) >= 20)
> -		tx_misc = 0x5;
> -	else
> -		tx_misc = 0x0;
> -
>  	if (vco_freq <= DATARATE_3000000000)
>  		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>  	else if (vco_freq <= DATARATE_3500000000)
> @@ -2212,7 +2253,7 @@ static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>  
>  	pll_state->clock	= crtc_state->port_clock;
>  	pll_state->tx[0]	= 0xbe88;
> -	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
> +	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
>  	pll_state->tx[2]	= 0x0000;
>  	pll_state->cmn[0]	= 0x0500;
>  	pll_state->cmn[1]	= 0x0005;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9004b99bb51f..b2417c58ae20 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -9,6 +9,17 @@
>  #include <linux/types.h>
>  #include <linux/bitfield.h>
>  #include <linux/bits.h>
> +#include <linux/pci.h>
> +
> +#define HOST_BRIDGE_PCI_DEV_ID1 0x7D1C
> +#define HOST_BRIDGE_PCI_DEV_ID2 0x7D2D
> +#define HOST_BRIDGE_PCI_DEV_ID3 0x7D2E
> +#define HOST_BRIDGE_PCI_DEV_ID4 0x7D2F
> +#define IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(id)  \
> +	(((id) == HOST_BRIDGE_PCI_DEV_ID1) || \
> +	 ((id) == HOST_BRIDGE_PCI_DEV_ID2) || \
> +	 ((id) == HOST_BRIDGE_PCI_DEV_ID3) || \
> +	 ((id) == HOST_BRIDGE_PCI_DEV_ID4))
>  

None of this belongs in cx0 PHY code.

>  enum icl_port_dpll_id;
>  struct drm_i915_private;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 582d6277d20c..b586e569434f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -279,9 +279,22 @@
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))
>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
> -#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> -#define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
> -#define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> +#define  C20_PHY_TX_RATE REG_GENMASK(2, 0)
> +#define  C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
> +#define  C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> +#define  C20_PHY_TX_DCC_CAL_RANGE_MASK	REG_GENMASK16(11, 8)
> +#define  C20_PHY_TX_DCC_CAL_RANGE(val) \
> +		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK, (val))
> +#define  C20_PHY_TX_DCC_BYPASS_SET	REG_BIT(12)
> +#define  C20_PHY_TX_DCC_BYPASS(val)	(val ? C20_PHY_TX_DCC_BYPASS_SET : 0)
> +#define  C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
> +#define  C20_PHY_TX_TERM_CTL(val)	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
> +#define PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc, tx_dcc_cal_dac_ctrl_range,	\
> +				  tx_dcc_bypass, tx_term_ctrl)		\
> +		(C20_PHY_TX_MISC(tx_misc) |				\
> +		 C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |	\
> +		 C20_PHY_TX_DCC_BYPASS(tx_dcc_bypass) |			\
> +		 C20_PHY_TX_TERM_CTL(tx_term_ctrl))

Explain.

>  
>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index 7632507af166..d88c58534148 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -765,8 +765,12 @@
>  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>  
>  /* ARL */
> +
> +#define ARL_TXX_MISC3_PLATFORM_ID 0x7D41
> +#define MTL_TXX_MISC3_PLATFORM_ID 0x7D45

No. Look around you. Do you see a single thing like this?

> +
>  #define INTEL_ARL_IDS(MACRO__, ...) \
> -	MACRO__(0x7D41, ## __VA_ARGS__), \
> +	MACRO__(ARL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
>  	MACRO__(0x7D51, ## __VA_ARGS__), \
>  	MACRO__(0x7D67, ## __VA_ARGS__), \
>  	MACRO__(0x7DD1, ## __VA_ARGS__), \
> @@ -775,7 +779,7 @@
>  /* MTL */
>  #define INTEL_MTL_IDS(MACRO__, ...) \
>  	MACRO__(0x7D40, ## __VA_ARGS__), \
> -	MACRO__(0x7D45, ## __VA_ARGS__), \
> +	MACRO__(MTL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
>  	MACRO__(0x7D55, ## __VA_ARGS__), \
>  	MACRO__(0x7D60, ## __VA_ARGS__), \
>  	MACRO__(0x7DD5, ## __VA_ARGS__)

-- 
Jani Nikula, Intel
