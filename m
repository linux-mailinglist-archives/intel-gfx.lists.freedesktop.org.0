Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E00786A2F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7ED10E4DD;
	Thu, 24 Aug 2023 08:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3840D10E4B9;
 Thu, 24 Aug 2023 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692866105; x=1724402105;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LxesuUToT8QX3olxMIGEDsudqPSgP462BCDZAuIf8VU=;
 b=GrB5WaCyPdQB8x34vHNJ6DzOK1oqINshvAy5fIKmf2+lfcbLcM8dFJqB
 AWIOt7phbrAflTctLsodnvwKDq0ZOTzuUhBINrLZcAv91QmQoJmVzHzXe
 zUt7AoE/CDu8MRuH58GRxpBhPFsvxyI1kEgM4sIyNo9RPOjZK92HmCXXU
 dbSSUq8WXfiTvM75Sl+udR4xiXKvuGLi0mSTCSnRarYnUeCiaSaEWnMOu
 F9fGdcZpFB3CO1xe9LANPUSuVDpa6kwRZwOr3arx1CLA+aB3cr91DKS6Q
 S3JsQX80kkc9MCeyU151PBX0IHQmmKZg4UiKqHFSCAxKV1lMP1F0gsy5t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405384450"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405384450"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:35:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713878393"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713878393"
Received: from andrzejk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.90])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:35:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230823170740.1180212-19-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-19-lucas.demarchi@intel.com>
Date: Thu, 24 Aug 2023 11:34:59 +0300
Message-ID: <87zg2g4z4c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 18/42] drm/i915/xe2lpd: Move
 registers to PICA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Aug 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index cb5d1be2ba19..4b5b9a97142d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -6,13 +6,15 @@
>  #ifndef __INTEL_CX0_PHY_REGS_H__
>  #define __INTEL_CX0_PHY_REGS_H__
>  
> +#include "i915_drv.h"

Please don't do this. Please don't add inline functions that depend on
i915_drv.h etc. being included from headers. This simple headers just
changed to including like half the headers in the entire driver. It's
that bad.

I think the main question is why does anything other than
intel_cx0_phy_regs.c need the helpers? It's probably the division
between that and intel_ddi.c that's wrong in the first place.

That's actually been one of the benefits of splitting the register
macros by area; you can tell what registers are used where, and
sometimes it gives bad code smells about stuff being accessed in the
wrong place.

BR,
Jani.


>  #include "i915_reg_defs.h"
> +#include "intel_display_limits.h"
>  
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
> -#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> @@ -27,7 +29,7 @@
>  #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>  #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>  #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
> -#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> @@ -54,7 +56,7 @@
>  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
> -#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -75,7 +77,7 @@
>  #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
>  #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -95,7 +97,7 @@
>  #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>  #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -114,7 +116,7 @@
>  #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>  #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>  #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
> -#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_CLOCK_CTL_A, \
>  										 _XELPDP_PORT_CLOCK_CTL_B, \
>  										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
> @@ -271,4 +273,61 @@
>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>  
> +/*
> + * All registers are in the same IP, with a single range.  However the registers
> + * for TC_PORT come first.
> + */
> +static inline enum port xe2lpd_port_idx(enum port port)
> +{
> +	return port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A;
> +}
> +
> +static inline i915_reg_t xelpdp_port_clock_ctl_reg(struct drm_i915_private *i915,
> +						   enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_CLOCK_CTL(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_CLOCK_CTL(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_buf_ctl3_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL3(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL3(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_buf_ctl2_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL2(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL2(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_buf_ctl1_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL1(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL1(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_m2p_msgbus_ctl_reg(struct drm_i915_private *i915,
> +							enum port port, int lane)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_M2P_MSGBUS_CTL(xe2lpd_port_idx(port), lane) :
> +		XELPDP_PORT_M2P_MSGBUS_CTL(port, lane);
> +}
> +
> +static inline i915_reg_t xelpdp_port_p2m_msgbus_status_reg(struct drm_i915_private *i915,
> +							   enum port port, int lane)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_P2M_MSGBUS_STATUS(xe2lpd_port_idx(port), lane) :
> +		XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane);
> +}
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3147ed174d83..3587ddc6d8ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -176,7 +176,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
>  	int ret;
>  
>  	/* FIXME: find out why Bspec's 100us timeout is too short */
> -	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
> +	ret = wait_for_us((intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port)) &
>  			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
>  	if (ret)
>  		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> @@ -224,7 +224,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
> +		ret = _wait_for(!(intel_de_read(dev_priv,
> +						xelpdp_port_buf_ctl1_reg(dev_priv, port)) &
> +				  XELPDP_PORT_BUF_PHY_IDLE),
>  				timeout_us, 10, 10);
>  	else
>  		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
> @@ -2365,7 +2367,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>  		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2385,7 +2387,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	u32 val;
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	val = intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port));
>  	val &= ~XELPDP_PORT_WIDTH_MASK;
>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>  
> @@ -2398,7 +2400,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>  		val |= XELPDP_PORT_REVERSAL;
>  
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +	intel_de_write(i915, xelpdp_port_buf_ctl1_reg(i915, port), val);
>  }
>  
>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
> @@ -2409,7 +2411,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>  
>  	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
>  	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
>  		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
>  }
>  
> @@ -2829,7 +2831,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>  		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2967,7 +2969,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  	/* De-select Thunderbolt */
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
> +		intel_de_rmw(dev_priv, xelpdp_port_buf_ctl1_reg(dev_priv, encoder->port),
>  			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
