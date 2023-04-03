Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D706D419D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 12:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAFF210E3A8;
	Mon,  3 Apr 2023 10:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC81D10E3A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 10:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680516714; x=1712052714;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ptCkijdpjyI4llseK0LQGWWTUTjxLTq8fP4wpeeW7w0=;
 b=Kz3R7OkkdfIZ6QbJFzTj37HV3rX31E1XWMqqMhz6OnfAJ2H32ufCA1hT
 QBa27ojgWB4vZKc3D0xBN0re7kzoFD409CR4lhPSyhLZPse1B3Vsq1ZQZ
 O2QSWDad+9AUiId5kNOFoQMNgd+OwQ+8XCps4knukigLQf4xanKNl1emD
 +aHtERmsaeWjqayKz0DLbbJwTMU+H0prr4YVFBfmCttmY5rssnaBDedGg
 yufoQ/KxBpv+8K/yczdHRv+YFYD5PabzZ/HutGBnb95K/qr+0+OQKU+33
 Am7o8ZbUNMKfNT0WtDkVC4FCN5wVB2VoAUa1/OwUOZqvcjh+S5OFDhZ1z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="341884855"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="341884855"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="688465995"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="688465995"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:11:52 -0700
Date: Mon, 3 Apr 2023 13:11:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZCqmZXQmo3AxxEXj@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230327123433.896216-5-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 27, 2023 at 03:34:30PM +0300, Mika Kahola wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
> has a dedicated PIPE 5.2 Message bus for configuration. This message
> bus is used to configure the phy internal registers.
> 
> XELPDP has C10 phys to drive output to the EDP and the native output
> from the display engine. Add structures, programming hardware state
> readout logic. Port clock calculations are similar to DG2. Use the DG2
> formulae to calculate the port clock but use the relevant pll signals.
> Note: PHY lane 0 is always used for PLL programming.
> 
> Add sequences for C10 phy enable/disable phy lane reset,
> powerdown change sequence and phy lane programming.
> 
> Bspec: 64539, 64568, 64599, 65100, 65101, 65450, 65451, 67610, 67636

Shouldn't the basic MTL DP/HDMI modeset sequences be part of this
patchset? I can't see how things would work otherwise. For DP it is the

"drm/i915/mtl/display: Implement DisplayPort sequences"

patch in the internal tree.

More things below, besides my earlier review comments.

> [...]
> +
> +static void intel_c10_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> +	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> +					 INTEL_CX0_LANE0;
> +	u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
> +					   INTEL_CX0_LANE1;
> +
> +	int i;
> +	struct intel_dp *intel_dp;
> +	bool use_ssc = false;
> +	u8 cmn0 = 0;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		intel_dp = enc_to_intel_dp(encoder);
> +		use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> +			  DP_MAX_DOWNSPREAD_0_5);
> +
> +		if (!intel_panel_use_ssc(i915))
> +			use_ssc = false;
> +
> +		cmn0 = C10_CMN0_DP_VAL;
> +	}
> +
> +	intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> +			C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +	/* Custom width needs to be programmed to 0 for both the phy lanes */
> +	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> +		      PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
> +		      MB_WRITE_COMMITTED);
> +
> +	/* Program the pll values only for the master lane */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> +		/* If not using ssc pll[4] through pll[8] must be 0*/
> +		intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),

This programs the PLL via the INTEL_CX0_LANE1 lane in the
lane_reversal=true case. However, I haven't found any trace of this
being correct in the spec. It just says that PLL must be programmed via
INTEL_CX0_LANE0 in all the cases, so both for lane_reversal and
!lane_reversal (see Bspec/64539 "Phy Lane and Transmitter Usage"
table/"Lane for message bus PLL programming" column).

> +				(!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
> +				(i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
> +
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
> +	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
> +	intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> +		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
> +		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);

For all the above writes, programming INTEL_CX0_LANE1 looks incorrect in the
lane_reversal=true case, should program INTEL_CX0_LANE0 instead.

> +}
> +
>
> [...]
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index d1ee8a2fc9cf..15e249f46a64 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -128,4 +128,34 @@
>  #define   XELPDP_SSC_ENABLE_PLLA			REG_BIT(1)
>  #define   XELPDP_SSC_ENABLE_PLLB			REG_BIT(0)
>  
> -#endif /* __INTEL_CX0_PHY_REGS_H__ */
> +/* C10 Vendor Registers */
> +#define PHY_C10_VDR_PLL(idx)		(0xC00 + (idx))
> +#define   C10_PLL0_FRACEN		REG_BIT8(4)
> +#define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> +#define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
> +#define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
> +#define   C10_CMN0_DP_VAL		0x21
> +#define   C10_CMN3_TXVBOOST_MASK	REG_GENMASK8(7, 5)
> +#define   C10_CMN3_TXVBOOST(val)	REG_FIELD_PREP8(C10_CMN3_TXVBOOST_MASK, val)
> +#define PHY_C10_VDR_TX(idx)		(0xC30 + (idx))
> +#define   C10_TX0_VAL			0x10
> +#define PHY_C10_VDR_CONTROL(idx)	(0xC70 + (idx) - 1)
> +#define   C10_VDR_CTRL_MSGBUS_ACCESS	REG_BIT8(2)
> +#define   C10_VDR_CTRL_MASTER_LANE	REG_BIT8(1)
> +#define   C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
> +#define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
> +
> +#define CX0_P0_STATE_ACTIVE             0x0
> +#define CX0_P2_STATE_READY              0x2
> +#define CX0_P2PG_STATE_DISABLE          0x9
> +#define CX0_P4PG_STATE_DISABLE          0xC
> +#define CX0_P2_STATE_RESET              0x2
> +
> +/* PHY_C10_VDR_PLL0 */
> +#define PLL_C10_MPLL_SSC_EN             REG_BIT8(0)

These should be indented and moved to be under their register
(XELPDP_PORT_BUF_CTL3, PHY_C10_VDR_PLL).

> +
> +/* PIPE SPEC Defined Registers */
> +#define PHY_CX0_TX_CONTROL(tx, control) (0x400 + ((tx) - 1) * 0x200 + (control))
> +#define CONTROL2_DISABLE_SINGLE_TX      REG_BIT(6)

The flag should be indented.

> +
> +#endif /* __INTEL_CX0_REG_DEFS_H__ */
>
> [...]
>
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index db26de6b57bc..f9d7c03e95d6 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -22,6 +22,19 @@
>  	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&		\
>  				 ((__n) < 0 || (__n) > 31))))
>  
> +/**
> + * REG_BIT8() - Prepare a u8 bit value
> + * @__n: 0-based bit number
> + *
> + * Local wrapper for BIT() to force u8, with compile time checks.
> + *
> + * @return: Value with bit @__n set.
> + */
> +#define REG_BIT8(__n)                                                   \
> +	((u8)(BIT(__n) +                                                \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__n) &&         \
> +				 ((__n) < 0 || (__n) > 7))))
> +
>  /**
>   * REG_GENMASK() - Prepare a continuous u32 bitmask
>   * @__high: 0-based high bit
> @@ -52,6 +65,21 @@
>  				 __is_constexpr(__low) &&		\
>  				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))
>  
> +/**
> + * REG_GENMASK8() - Prepare a continuous u8 bitmask
> + * @__high: 0-based high bit
> + * @__low: 0-based low bit
> + *
> + * Local wrapper for GENMASK() to force u8, with compile time checks.
> + *
> + * @return: Continuous bitmask from @__high to @__low, inclusive.
> + */
> +#define REG_GENMASK8(__high, __low)                                     \
> +	((u8)(GENMASK(__high, __low) +                                  \
> +	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&      \
> +				 __is_constexpr(__low) &&               \
> +				 ((__low) < 0 || (__high) > 7 || (__low) > (__high)))))
> +
>  /*
>   * Local integer constant expression version of is_power_of_2().
>   */
> @@ -74,6 +102,23 @@
>  	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
>  	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
>  
> +/**
> + * REG_FIELD_PREP8() - Prepare a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to put in the field
> + *
> + * Local copy of FIELD_PREP8() to generate an integer constant expression, force

The above is FIELD_PREP() only.

> + * u8 and for consistency with REG_FIELD_GET8(), REG_BIT8() and REG_GENMASK8().
> + *
> + * @return: @__val masked and shifted into the field defined by @__mask.
> + */
> +#define REG_FIELD_PREP8(__mask, __val)                                          \
> +	((u8)((((typeof(__mask))(__val) << __bf_shf(__mask)) & (__mask)) +      \
> +	       BUILD_BUG_ON_ZERO(!__is_constexpr(__mask)) +             \
> +	       BUILD_BUG_ON_ZERO((__mask) == 0 || (__mask) > U8_MAX) +          \
> +	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
> +	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> +
>  /**
>   * REG_FIELD_GET() - Extract a u32 bitfield value
>   * @__mask: shifted mask defining the field's length and position
> @@ -155,6 +200,18 @@
>   */
>  #define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
>  
> +/**
> + * REG_FIELD_GET8() - Extract a u8 bitfield value
> + * @__mask: shifted mask defining the field's length and position
> + * @__val: value to extract the bitfield value from
> + *
> + * Local wrapper for FIELD_GET() to force u8 and for consistency with
> + * REG_FIELD_PREP(), REG_BIT() and REG_GENMASK().
> + *
> + * @return: Masked and shifted value of the field defined by @__mask in @__val.
> + */
> +#define REG_FIELD_GET8(__mask, __val)   ((u8)FIELD_GET(__mask, __val))
> +
>  typedef struct {
>  	u32 reg;
>  } i915_reg_t;
> -- 
> 2.34.1
> 
