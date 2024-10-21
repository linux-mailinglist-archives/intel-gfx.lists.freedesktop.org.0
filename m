Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEA39A69D6
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBB210E042;
	Mon, 21 Oct 2024 13:15:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIfWxAx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FD510E042;
 Mon, 21 Oct 2024 13:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729516530; x=1761052530;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=pNIqyk6oXIkgsXK65hv/qt8xehGiwcq8Jbjm+DD1tsw=;
 b=bIfWxAx6eAZHEnHydtOYdQXlJUbEJisorMiVM65gBwr516bQVkg5fYma
 6XzJMhDJw8hSvXYZ370dP3WtwKxkpRtPuTDtlRT9n9YMStghQKJMCwoRz
 ZFkB3BtHRd6iJ/BolzGwgRJ3J7TtHsekVadSyDG9Wd2sQCXRf1jyMCKef
 qCf3WNPPbbX1pyXBh164vUz/PRvmUNzKahZbY3eSHLtVyQf90KzhMH6gR
 ePIU7DWb4Im6BHY2OHQ0ilbyJnpUoluzypSJ6bL2iyOSNJn+zYqBIG+hN
 hGGNIXyW7tuVSyO8B0wPhfkbghx4lf1kvqNUgq8I4M8chsFqNViVB/G01 g==;
X-CSE-ConnectionGUID: XNMB068qQ66oAskcvzMJyA==
X-CSE-MsgGUID: UlOtSesQSgCDeZDPVTFmRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29164302"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29164302"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:15:30 -0700
X-CSE-ConnectionGUID: evWOK5NsQPSf6Sx6n6WpFg==
X-CSE-MsgGUID: Ew1XAvVKSUOqmSunVsr+qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79468951"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:15:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
In-Reply-To: <172951555814.2472.7619896990957879815@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
 <8734kpzljp.fsf@intel.com>
 <172951555814.2472.7619896990957879815@gjsousa-mobl2>
Date: Mon, 21 Oct 2024 16:15:25 +0300
Message-ID: <87plnty4uq.fsf@intel.com>
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

On Mon, 21 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-10-21 09:29:30-03:00)
>>On Thu, 17 Oct 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> There has been an update to the Bspec in which we need to set
>>> tx_misc=0x5 field for C20 TX Context programming for HDMI TMDS for
>>> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
>>> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
>>> our state struct. Update the algorithm to reflect this change.
>>>
>>> Bspec: 74489
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>>>  2 files changed, 16 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> index f73d576fd99e..22184b2d5a11 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>>>                              i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>>>  }
>>>  
>>> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
>>> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encoder,
>>> +                                           u64 pixel_clock,
>>> +                                           struct intel_c20pll_state *pll_state)
>>>  {
>>> +        struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>
>>No new struct drm_i915_private local variables or parameters, please.
>>
>>struct intel_display *display = to_intel_display(encoder);
>
> I actually had thought about this when writing this patch, but then I
> concluded that a future major refactor in the entire file would make
> more sense, since we are not using struct intel_display anywhere in this
> file yet...

I actually don't mind having files with mixed i915/display usage because
it's going to be a somewhat gradual conversion anyway, and there are
bound to be i915 stragglers even in the files that we mass convert.

> I can send a v2 to use struct intel_display here. Or maybe I could send
> a series containing preparatory patch to convert everything related to
> C10/C20 to use the new struct and then this patch as the second in the
> series (although those two patches would not be not totally related to
> each other).
>
> Let me know what is preferred.

Up to you, really.

BR,
Jani.


>
> --
> Gustavo Sousa
>
>>
>>> +
>>>          u64 datarate;
>>>          u64 mpll_tx_clk_div;
>>>          u64 vco_freq_shift;
>>> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>          u64 mpll_fracn_rem;
>>>          u8  mpllb_ana_freq_vco;
>>>          u8  mpll_div_multiplier;
>>> +        u16  tx_misc;
>>>  
>>>          if (pixel_clock < 25175 || pixel_clock > 600000)
>>>                  return -EINVAL;
>>> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>          mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
>>>                                                    datarate), 255);
>>>  
>>> +        if (DISPLAY_VER(i915) >= 20)
>>> +                tx_misc = 0x5;
>>> +        else
>>> +                tx_misc = 0x0;
>>> +
>>>          if (vco_freq <= DATARATE_3000000000)
>>>                  mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>>>          else if (vco_freq <= DATARATE_3500000000)
>>> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>>>  
>>>          pll_state->clock        = pixel_clock;
>>>          pll_state->tx[0]        = 0xbe88;
>>> -        pll_state->tx[1]        = 0x9800;
>>> +        pll_state->tx[1]        = 0x9800 | C20_PHY_TX_MISC(tx_misc);
>>>          pll_state->tx[2]        = 0x0000;
>>>          pll_state->cmn[0]        = 0x0500;
>>>          pll_state->cmn[1]        = 0x0005;
>>> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>>>  
>>>          /* try computed C20 HDMI tables before using consolidated tables */
>>>          if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>>> -                if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
>>> +                if (intel_c20_compute_hdmi_tmds_pll(encoder,
>>> +                                                    crtc_state->port_clock,
>>
>>Alternatively you could just pass crtc_state. *shrug*.
>>
>>>                                                      &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
>>>                          return 0;
>>>          }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> index ab3ae110b68f..c1949aa1b909 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>>> @@ -280,6 +280,8 @@
>>>  #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
>>>  #define   C20_PHY_TX_RATE                REG_GENMASK(2, 0)
>>> +#define   C20_PHY_TX_MISC_MASK                REG_GENMASK(7, 0)
>>> +#define   C20_PHY_TX_MISC(val)                REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>>
>>REG_FIELD_PREP16 should have a mask of REG_GENMASK16, and all the masks
>>and fields and bits for a register should all use the same width.
>>
>>BR,
>>Jani.
>>
>>
>>>  
>>>  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>>>                  ((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
