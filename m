Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045679C85CE
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 10:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C9910E0FC;
	Thu, 14 Nov 2024 09:15:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxOeXsfV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0084D10E0FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2024 09:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731575709; x=1763111709;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=krk9SbMUbPvspwT/VUh8XDAUsOenCkMK9v8sdOgeWLk=;
 b=jxOeXsfVWa2lo3FhemueqVqSZ4eta6V05qDFoBv2F2acsuCz4XE1r0nf
 Uxn4O8njApNepjfRZFMS0nKz7Ui066PJc2FXo8nqpQDasMWdLdh3IxnFA
 i7p2SBaTl1mz3yDCQG9B2QWZOYdUrz6BgLZ8kRJBiJhubhsdJzX2RiWZo
 Gb38b5H3RTQYyVjspb4cjH7puN3LQ9MznDOEAJFAp2UxB92bqP0zgNWqY
 pLopkwwnIkGfkwJUX+cfdd0quTdP2UhEjZ8RUuAsSXZwAe46gjN26znWf
 66yJEjWBtYDdI42MtqniME3KippUGWMCbcCuw1yXNil47ZMP+P34T3qa5 g==;
X-CSE-ConnectionGUID: 7gMvHMKaSaSXCFLyS0X+Ow==
X-CSE-MsgGUID: 8hJFd6KMRX2LK3EmGd8PlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="42885112"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="42885112"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 01:15:08 -0800
X-CSE-ConnectionGUID: oZR97hX9QbmJpNDPNN60Xw==
X-CSE-MsgGUID: eaeO3yqbQ1qaOo4AT3E4dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="92594237"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.240])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 01:15:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
In-Reply-To: <IA1PR11MB6266CEFC2A73DDC75817A5F6E25A2@IA1PR11MB6266.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
 <87iksrb80l.fsf@intel.com>
 <IA1PR11MB6266CEFC2A73DDC75817A5F6E25A2@IA1PR11MB6266.namprd11.prod.outlook.com>
Date: Thu, 14 Nov 2024 11:15:04 +0200
Message-ID: <87frnub2hz.fsf@intel.com>
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

On Wed, 13 Nov 2024, "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, November 13, 2024 6:34 PM
>> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
>> Subject: Re: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
>> 
>> On Wed, 13 Nov 2024, Dnyaneshwar Bhadane
>> <dnyaneshwar.bhadane@intel.com> wrote:
>> > In the C20 algorithm for HDMI TMDS, certain fields have been updated
>> > in the BSpec to set values for SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, such
>> > as tx_misc and dac_ctrl_range.
>> > This patch covers fields that need to be set based on the platform type.
>> > here for xe2lpd, xe2HPD and MTL/ARL platform.
>> >
>> > Some SoCs cannot be directly distinguished by their GMD version Id,
>> > Specifically to set value of tx_misc, so direct device PCI IDs and PCI
>> > Host Bridge IDs are used for differentiation.
> I will rephrase this as per new changes. 
>> >
>> > Bspec:74165,74491
>> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 57
>> > ++++++++++++++++---  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |
>> > 11 ++++  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 19 ++++++-
>> >  include/drm/intel/pciids.h                    |  8 ++-
>> >  4 files changed, 82 insertions(+), 13 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > index 8ad19106fee1..018add48b8ad 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > @@ -6,6 +6,7 @@
>> >  #include <linux/log2.h>
>> >  #include <linux/math64.h>
>> >  #include "i915_reg.h"
>> > +#include <drm/intel/pciids.h>
>> 
>> No. Do not look at PCI IDs directly inline.
> #1 
> Sure, I am removing this does here. The reason was that earlier plan was 
> without using sub platform macros but recently It got introduce in codebase.
>> 
>> >  #include "intel_cx0_phy.h"
>> >  #include "intel_cx0_phy_regs.h"
>> >  #include "intel_ddi.h"
>> > @@ -2164,9 +2165,55 @@ static void intel_c10pll_dump_hw_state(struct
>> drm_i915_private *i915,
>> >  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>> }
>> >
>> > +static bool intel_c20_tx_mics_3_platform(struct drm_i915_private
>> > +*dev_priv)
>> 
>> No new struct drm_i915_private uses please.
>> 
>> > +{
>> > +	u16 devid = INTEL_DEVID(dev_priv);
>> 
>> No. Do not use INTEL_DEVID() in display code. There are no current users and
>> we intend to keep it that way.
>
> This will be removed as part of #1 comment. 
>> 
>> > +	u16 host_bridge_pci_dev_id;
>> > +	struct pci_dev *pdev = NULL;
>> > +	bool check = false;
>> > +	/*
>> > +	 * Some SoCs have the same PCI IDs, so differentiate them based
>> > +	 * on the host bridge PCI device ID to use the correct txx_mics value
>> > +	 */
>> > +	while ((pdev = pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
>> > +		host_bridge_pci_dev_id = pdev->device;
>> > +
>> > +	check = (pdev &&
>> > +
>> (IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(host_bridge_pci_dev_id)));
>> > +
>> > +	return ((devid == MTL_TXX_MISC3_PLATFORM_ID) ||
> Condition will be change with correct macro.
>> > +		(devid == ARL_TXX_MISC3_PLATFORM_ID) || check); }
>> 
>> None of this belongs in cx0 PHY code.
> #3
> Earlier the c20 TMDS algorithm was display version specific and generic but now we need 
> compare with platform type for selecting correct value for tx_misc , tx_term_ctrl 
> Please suggest correct place not to sure to place here as par of the condition below.

The point is, this file is about cx0 PHY implementation, it's not about
platform identification. Like, what if there'll be another place that
needs this?

The right place *might* be intel_display_device.[ch] but it might be
intel_quirks.[ch] too. Or it might be a new file under soc/. Depends.

Is there really no other way than looking at host bridge?

>
>> > +
>> > +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state
>> > +*crtc_state) {
>> > +	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc-
>> >dev);
>> > +	u16 tx_misc;
>> > +	u16 tx_dcc_cal_dac_ctrl_range = 8;
>> > +	u16 tx_dcc_bypass = 1;
>> > +	u16 tx_term_ctrl;
>> > +
>> > +	if (IS_BATTLEMAGE(dev_priv)) {
>> > +		tx_misc = 0;
>> > +		tx_term_ctrl = 2;
>> > +
>> > +	} else if (DISPLAY_VER(dev_priv) >= 20) {
>> > +		tx_misc = 5;
>> > +		tx_term_ctrl = 4;
>> > +	} else if (IS_METEORLAKE(dev_priv)) {
>> > +		if (intel_c20_tx_mics_3_platform(dev_priv))
>> > +			tx_misc = 3;
>> > +		else
>> > +			tx_misc = 7;
>> > +
>> > +		tx_term_ctrl = 2;
>> > +	}
>> > +	return PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
>> tx_dcc_cal_dac_ctrl_range,
>> > +					 tx_dcc_bypass, tx_term_ctrl);
>> > +}
>> > +
>> >  static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
>> > *crtc_state)  {
>> > -	struct intel_display *display = to_intel_display(crtc_state);
>> >  	struct intel_c20pll_state *pll_state = &crtc_state-
>> >dpll_hw_state.cx0pll.c20;
>> >  	u64 datarate;
>> >  	u64 mpll_tx_clk_div;
>> > @@ -2176,7 +2223,6 @@ static int
>> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>> >  	u64 mpll_multiplier;
>> >  	u64 mpll_fracn_quot;
>> >  	u64 mpll_fracn_rem;
>> > -	u16 tx_misc;
>> >  	u8  mpllb_ana_freq_vco;
>> >  	u8  mpll_div_multiplier;
>> >
>> > @@ -2196,11 +2242,6 @@ static int
>> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
>> >  	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate
>> >> 1)),
>> >  						  datarate), 255);
>> >
>> > -	if (DISPLAY_VER(display) >= 20)
>> > -		tx_misc = 0x5;
>> > -	else
>> > -		tx_misc = 0x0;
>> > -
>> >  	if (vco_freq <= DATARATE_3000000000)
>> >  		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>> >  	else if (vco_freq <= DATARATE_3500000000) @@ -2212,7 +2253,7 @@
>> > static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
>> > *crtc_state)
>> >
>> >  	pll_state->clock	= crtc_state->port_clock;
>> >  	pll_state->tx[0]	= 0xbe88;
>> > -	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
>> > +	pll_state->tx[1]	= intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
>> >  	pll_state->tx[2]	= 0x0000;
>> >  	pll_state->cmn[0]	= 0x0500;
>> >  	pll_state->cmn[1]	= 0x0005;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> > index 9004b99bb51f..b2417c58ae20 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> > @@ -9,6 +9,17 @@
>> >  #include <linux/types.h>
>> >  #include <linux/bitfield.h>
>> >  #include <linux/bits.h>
>> > +#include <linux/pci.h>
>> > +
>> > +#define HOST_BRIDGE_PCI_DEV_ID1 0x7D1C #define
>> > +HOST_BRIDGE_PCI_DEV_ID2 0x7D2D #define HOST_BRIDGE_PCI_DEV_ID3
>> 0x7D2E
>> > +#define HOST_BRIDGE_PCI_DEV_ID4 0x7D2F #define
>> > +IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(id)  \
>> > +	(((id) == HOST_BRIDGE_PCI_DEV_ID1) || \
>> > +	 ((id) == HOST_BRIDGE_PCI_DEV_ID2) || \
>> > +	 ((id) == HOST_BRIDGE_PCI_DEV_ID3) || \
>> > +	 ((id) == HOST_BRIDGE_PCI_DEV_ID4))
>> >
>> 
>> None of this belongs in cx0 PHY code.
> Is intel_display_reg_defs.h is good place ?.

No. There's nothing like this in there. And you shouldn't make all the
macros be about "TXX MISC 3". Identify the platform in one place, in a
generic way, and use that information in another.

Again, what if there's another part of the driver that needs the same
identification? It would be really odd to call that "TXX MISC 3".

>> 
>> >  enum icl_port_dpll_id;
>> >  struct drm_i915_private;
>> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > index 582d6277d20c..b586e569434f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> > @@ -279,9 +279,22 @@
>> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG :
>> > _MTL_C20_A_TX_CNTX_CFG) - (idx))  #define
>> PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
>> _MTL_C20_B_TX_CNTX_CFG) - (idx))
>> > -#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
>> > -#define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
>> > -#define   C20_PHY_TX_MISC(val)
>> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>> > +#define  C20_PHY_TX_RATE REG_GENMASK(2, 0)
>> > +#define  C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
>> > +#define  C20_PHY_TX_MISC(val)
>> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>> > +#define  C20_PHY_TX_DCC_CAL_RANGE_MASK	REG_GENMASK16(11,
>> 8)
>> > +#define  C20_PHY_TX_DCC_CAL_RANGE(val) \
>> > +		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK,
>> (val))
>> > +#define  C20_PHY_TX_DCC_BYPASS_SET	REG_BIT(12)
>> > +#define  C20_PHY_TX_DCC_BYPASS(val)	(val ?
>> C20_PHY_TX_DCC_BYPASS_SET : 0)
>> > +#define  C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
>> > +#define  C20_PHY_TX_TERM_CTL(val)
>> 	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
>> > +#define PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
>> tx_dcc_cal_dac_ctrl_range,	\
>> > +				  tx_dcc_bypass, tx_term_ctrl)		\
>> > +		(C20_PHY_TX_MISC(tx_misc) |				\
>> > +		 C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
>> 	\
>> > +		 C20_PHY_TX_DCC_BYPASS(tx_dcc_bypass) |
>> 	\
>> > +		 C20_PHY_TX_TERM_CTL(tx_term_ctrl))
>> 
>> Explain.
> Yes, 
> tx[1] (SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1) field is 16 bit field.
> With  tx_mics mapped to [0:7] bit , txX_dcc_cal_dac_ctrl_range [8:11]
> txX_dcc_bypass  is 12th bit and txX_term_ctrl mapped to [13:15] bit.

But we only describe the register bits and bitfields here. We don't add
macros that group a lot of stuff together. You do that where the
information is used.

Pretty much imagine that the register macros could one day be
automatically generated, and you'd only have the register fields here,
nothing else.

BR,
Jani.

>
> I will add this explanation as well in commit message.
>> 
>> >
>> >  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG
>> :
>> > _MTL_C20_A_CMN_CNTX_CFG) - (idx)) diff --git
>> > a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h index
>> > 7632507af166..d88c58534148 100644
>> > --- a/include/drm/intel/pciids.h
>> > +++ b/include/drm/intel/pciids.h
>> > @@ -765,8 +765,12 @@
>> >  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>> >
>> >  /* ARL */
>> > +
>> > +#define ARL_TXX_MISC3_PLATFORM_ID 0x7D41 #define
>> > +MTL_TXX_MISC3_PLATFORM_ID 0x7D45
>> 
>> No. Look around you. Do you see a single thing like this?
> It will be removed as per comment #1.
>
> Thank you jani for reviewing.
>
> Dnyaneshwar,
>> 
>> > +
>> >  #define INTEL_ARL_IDS(MACRO__, ...) \
>> > -	MACRO__(0x7D41, ## __VA_ARGS__), \
>> > +	MACRO__(ARL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
>> >  	MACRO__(0x7D51, ## __VA_ARGS__), \
>> >  	MACRO__(0x7D67, ## __VA_ARGS__), \
>> >  	MACRO__(0x7DD1, ## __VA_ARGS__), \
>> > @@ -775,7 +779,7 @@
>> >  /* MTL */
>> >  #define INTEL_MTL_IDS(MACRO__, ...) \
>> >  	MACRO__(0x7D40, ## __VA_ARGS__), \
>> > -	MACRO__(0x7D45, ## __VA_ARGS__), \
>> > +	MACRO__(MTL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
>> >  	MACRO__(0x7D55, ## __VA_ARGS__), \
>> >  	MACRO__(0x7D60, ## __VA_ARGS__), \
>> >  	MACRO__(0x7DD5, ## __VA_ARGS__)
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
