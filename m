Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBFF48AEC1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 14:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE3F10E323;
	Tue, 11 Jan 2022 13:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37D710E323
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 13:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641908696; x=1673444696;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DHlmT2TVZnZ8TAFm5arDBt+1GuwhtXN4Gqqekkg/Cow=;
 b=ZylSnd3vrGsH95N2T0z9XQLxlmU9+LrUjII9NztFRdZFZeVs5MOgOjl9
 nKnty03Z6t/QkcwCXS8HpbVDSWKCA7EG3GCAe5MuAptWRzyT9NHynLJMy
 xsHCzwv+GwF4HWXUQMGQqN4ygDeN/OWbHISV+1sNUE7Im1qdbiBXaH71K
 vffKkLxBsRgYjVnqUd/26w5XLWVkxoJ9/1VQoxOmL4R/ZWofM9SwvlRQZ
 kJonjL70TP3AN/BWdt8P/oaO6Cm4GrBaI4EpIN5xaC7CgbmAqna4raYmj
 PXIfavSAoOJlnfgj41ByuNCnFwIC3iJD1awCcKh8pJmojYofFQOPx0ErB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="306836583"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="306836583"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 05:44:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="762533205"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 05:44:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220111051600.3429104-10-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-10-matthew.d.roper@intel.com>
Date: Tue, 11 Jan 2022 15:44:51 +0200
Message-ID: <87fspu8jzg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 09/11] drm/i915: Move combo PHY registers
 to their own header
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

On Mon, 10 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> These registers are only needed in a couple files and on specific
> platforms; let's keep them separate from the general register pool.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>  .../gpu/drm/i915/display/intel_combo_phy.c    |   1 +
>  .../drm/i915/display/intel_combo_phy_regs.h   | 162 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
>  .../drm/i915/display/intel_display_power.c    |   1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 154 -----------------
>  7 files changed, 167 insertions(+), 154 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 5781e9fac8b4..95f49535fa6e 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -32,6 +32,7 @@
>  #include "intel_atomic.h"
>  #include "intel_backlight.h"
>  #include "intel_combo_phy.h"
> +#include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu=
/drm/i915/display/intel_combo_phy.c
> index f628e0542933..4dfe77351b8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -4,6 +4,7 @@
>   */
>=20=20
>  #include "intel_combo_phy.h"
> +#include "intel_combo_phy_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/driver=
s/gpu/drm/i915/display/intel_combo_phy_regs.h
> new file mode 100644
> index 000000000000..2ed65193ca19
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -0,0 +1,162 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_COMBO_PHY_REGS__
> +#define __INTEL_COMBO_PHY_REGS__
> +
> +#include "i915_reg_defs.h"
> +
> +#define _ICL_COMBOPHY_A				0x162000
> +#define _ICL_COMBOPHY_B				0x6C000
> +#define _EHL_COMBOPHY_C				0x160000
> +#define _RKL_COMBOPHY_D				0x161000
> +#define _ADL_COMBOPHY_E				0x16B000
> +
> +#define _ICL_COMBOPHY(phy)			_PICK(phy, _ICL_COMBOPHY_A, \
> +						      _ICL_COMBOPHY_B, \
> +						      _EHL_COMBOPHY_C, \
> +						      _RKL_COMBOPHY_D, \
> +						      _ADL_COMBOPHY_E)
> +
> +/* ICL Port CL_DW registers */
> +#define _ICL_PORT_CL_DW(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 4 * (dw))
> +
> +#define ICL_PORT_CL_DW5(phy)			_MMIO(_ICL_PORT_CL_DW(5, phy))
> +#define   CL_POWER_DOWN_ENABLE			(1 << 4)
> +#define   SUS_CLOCK_CONFIG			(3 << 0)
> +
> +#define ICL_PORT_CL_DW10(phy)			_MMIO(_ICL_PORT_CL_DW(10, phy))
> +#define  PG_SEQ_DELAY_OVERRIDE_MASK		(3 << 25)
> +#define  PG_SEQ_DELAY_OVERRIDE_SHIFT		25
> +#define  PG_SEQ_DELAY_OVERRIDE_ENABLE		(1 << 24)
> +#define  PWR_UP_ALL_LANES			(0x0 << 4)
> +#define  PWR_DOWN_LN_3_2_1			(0xe << 4)
> +#define  PWR_DOWN_LN_3_2			(0xc << 4)
> +#define  PWR_DOWN_LN_3				(0x8 << 4)
> +#define  PWR_DOWN_LN_2_1_0			(0x7 << 4)
> +#define  PWR_DOWN_LN_1_0			(0x3 << 4)
> +#define  PWR_DOWN_LN_3_1			(0xa << 4)
> +#define  PWR_DOWN_LN_3_1_0			(0xb << 4)
> +#define  PWR_DOWN_LN_MASK			(0xf << 4)
> +#define  PWR_DOWN_LN_SHIFT			4
> +#define  EDP4K2K_MODE_OVRD_EN			(1 << 3)
> +#define  EDP4K2K_MODE_OVRD_OPTIMIZED		(1 << 2)
> +
> +#define ICL_PORT_CL_DW12(phy)			_MMIO(_ICL_PORT_CL_DW(12, phy))
> +#define   ICL_LANE_ENABLE_AUX			(1 << 0)
> +
> +/* ICL Port COMP_DW registers */
> +#define _ICL_PORT_COMP				0x100
> +#define _ICL_PORT_COMP_DW(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 _ICL_PORT_COMP + 4 * (dw))
> +
> +#define ICL_PORT_COMP_DW0(phy)			_MMIO(_ICL_PORT_COMP_DW(0, phy))
> +#define   COMP_INIT				(1 << 31)
> +
> +#define ICL_PORT_COMP_DW1(phy)			_MMIO(_ICL_PORT_COMP_DW(1, phy))
> +
> +#define ICL_PORT_COMP_DW3(phy)			_MMIO(_ICL_PORT_COMP_DW(3, phy))
> +#define   PROCESS_INFO_DOT_0			(0 << 26)
> +#define   PROCESS_INFO_DOT_1			(1 << 26)
> +#define   PROCESS_INFO_DOT_4			(2 << 26)
> +#define   PROCESS_INFO_MASK			(7 << 26)
> +#define   PROCESS_INFO_SHIFT			26
> +#define   VOLTAGE_INFO_0_85V			(0 << 24)
> +#define   VOLTAGE_INFO_0_95V			(1 << 24)
> +#define   VOLTAGE_INFO_1_05V			(2 << 24)
> +#define   VOLTAGE_INFO_MASK			(3 << 24)
> +#define   VOLTAGE_INFO_SHIFT			24
> +
> +#define ICL_PORT_COMP_DW8(phy)			_MMIO(_ICL_PORT_COMP_DW(8, phy))
> +#define   IREFGEN				(1 << 24)
> +
> +#define ICL_PORT_COMP_DW9(phy)			_MMIO(_ICL_PORT_COMP_DW(9, phy))
> +
> +#define ICL_PORT_COMP_DW10(phy)			_MMIO(_ICL_PORT_COMP_DW(10, phy))
> +
> +/* ICL Port PCS registers */
> +#define _ICL_PORT_PCS_AUX			0x300
> +#define _ICL_PORT_PCS_GRP			0x600
> +#define _ICL_PORT_PCS_LN(ln)			(0x800 + (ln) * 0x100)
> +#define _ICL_PORT_PCS_DW_AUX(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 _ICL_PORT_PCS_AUX + 4 * (dw))
> +#define _ICL_PORT_PCS_DW_GRP(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 _ICL_PORT_PCS_GRP + 4 * (dw))
> +#define _ICL_PORT_PCS_DW_LN(dw, ln, phy)	 (_ICL_COMBOPHY(phy) + \
> +						  _ICL_PORT_PCS_LN(ln) + 4 * (dw))
> +#define ICL_PORT_PCS_DW1_AUX(phy)		_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
> +#define ICL_PORT_PCS_DW1_GRP(phy)		_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
> +#define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, p=
hy))
> +#define   DCC_MODE_SELECT_MASK			(0x3 << 20)
> +#define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
> +#define   COMMON_KEEPER_EN			(1 << 26)
> +#define   LATENCY_OPTIM_MASK			(0x3 << 2)
> +#define   LATENCY_OPTIM_VAL(x)			((x) << 2)
> +
> +/* ICL Port TX registers */
> +#define _ICL_PORT_TX_AUX			0x380
> +#define _ICL_PORT_TX_GRP			0x680
> +#define _ICL_PORT_TX_LN(ln)			(0x880 + (ln) * 0x100)
> +
> +#define _ICL_PORT_TX_DW_AUX(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 _ICL_PORT_TX_AUX + 4 * (dw))
> +#define _ICL_PORT_TX_DW_GRP(dw, phy)		(_ICL_COMBOPHY(phy) + \
> +						 _ICL_PORT_TX_GRP + 4 * (dw))
> +#define _ICL_PORT_TX_DW_LN(dw, ln, phy) 	(_ICL_COMBOPHY(phy) + \
> +						  _ICL_PORT_TX_LN(ln) + 4 * (dw))
> +
> +#define ICL_PORT_TX_DW2_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
> +#define ICL_PORT_TX_DW2_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
> +#define ICL_PORT_TX_DW2_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(2, ln, phy=
))
> +#define   SWING_SEL_UPPER(x)			(((x) >> 3) << 15)
> +#define   SWING_SEL_UPPER_MASK			(1 << 15)
> +#define   SWING_SEL_LOWER(x)			(((x) & 0x7) << 11)
> +#define   SWING_SEL_LOWER_MASK			(0x7 << 11)
> +#define   FRC_LATENCY_OPTIM_MASK		(0x7 << 8)
> +#define   FRC_LATENCY_OPTIM_VAL(x)		((x) << 8)
> +#define   RCOMP_SCALAR(x)			((x) << 0)
> +#define   RCOMP_SCALAR_MASK			(0xFF << 0)
> +
> +#define ICL_PORT_TX_DW4_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
> +#define ICL_PORT_TX_DW4_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
> +#define ICL_PORT_TX_DW4_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy=
))
> +#define   LOADGEN_SELECT			(1 << 31)
> +#define   POST_CURSOR_1(x)			((x) << 12)
> +#define   POST_CURSOR_1_MASK			(0x3F << 12)
> +#define   POST_CURSOR_2(x)			((x) << 6)
> +#define   POST_CURSOR_2_MASK			(0x3F << 6)
> +#define   CURSOR_COEFF(x)			((x) << 0)
> +#define   CURSOR_COEFF_MASK			(0x3F << 0)
> +
> +#define ICL_PORT_TX_DW5_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
> +#define ICL_PORT_TX_DW5_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
> +#define ICL_PORT_TX_DW5_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(5, ln, phy=
))
> +#define   TX_TRAINING_EN			(1 << 31)
> +#define   TAP2_DISABLE				(1 << 30)
> +#define   TAP3_DISABLE				(1 << 29)
> +#define   SCALING_MODE_SEL(x)			((x) << 18)
> +#define   SCALING_MODE_SEL_MASK			(0x7 << 18)
> +#define   RTERM_SELECT(x)			((x) << 3)
> +#define   RTERM_SELECT_MASK			(0x7 << 3)
> +
> +#define ICL_PORT_TX_DW7_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
> +#define ICL_PORT_TX_DW7_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
> +#define ICL_PORT_TX_DW7_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy=
))
> +#define   N_SCALAR(x)				((x) << 24)
> +#define   N_SCALAR_MASK				(0x7F << 24)
> +
> +#define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
> +#define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
> +#define ICL_PORT_TX_DW8_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, ln, phy=
))
> +#define   ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
> +#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
> +#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_=
TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)
> +
> +#define _ICL_DPHY_CHKN_REG			0x194
> +#define ICL_DPHY_CHKN(port)			_MMIO(_ICL_COMBOPHY(port) + _ICL_DPHY_CHKN=
_REG)
> +#define   ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP	REG_BIT(7)
> +
> +#endif /* __INTEL_COMBO_PHY_REGS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 9c9d574f0b8c..766a8dbe095d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -32,6 +32,7 @@
>  #include "intel_audio.h"
>  #include "intel_backlight.h"
>  #include "intel_combo_phy.h"
> +#include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 05babdcf5f2e..fba35fb6d2df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -7,6 +7,7 @@
>  #include "i915_irq.h"
>  #include "intel_cdclk.h"
>  #include "intel_combo_phy.h"
> +#include "intel_combo_phy_regs.h"
>  #include "intel_crt.h"
>  #include "intel_de.h"
>  #include "intel_display_power.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d6d8c9922feb..942a755a0c48 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -46,6 +46,7 @@
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_backlight.h"
> +#include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 71fefd04d71b..7646982be30b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1554,160 +1554,6 @@
>  #define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
>  #define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
>=20=20
> -/*
> - * ICL Port/COMBO-PHY Registers
> - */
> -#define _ICL_COMBOPHY_A			0x162000
> -#define _ICL_COMBOPHY_B			0x6C000
> -#define _EHL_COMBOPHY_C			0x160000
> -#define _RKL_COMBOPHY_D			0x161000
> -#define _ADL_COMBOPHY_E			0x16B000
> -
> -#define _ICL_COMBOPHY(phy)		_PICK(phy, _ICL_COMBOPHY_A, \
> -					      _ICL_COMBOPHY_B, \
> -					      _EHL_COMBOPHY_C, \
> -					      _RKL_COMBOPHY_D, \
> -					      _ADL_COMBOPHY_E)
> -
> -/* ICL Port CL_DW registers */
> -#define _ICL_PORT_CL_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 4 * (dw))
> -
> -#define ICL_PORT_CL_DW5(phy)		_MMIO(_ICL_PORT_CL_DW(5, phy))
> -#define   CL_POWER_DOWN_ENABLE		(1 << 4)
> -#define   SUS_CLOCK_CONFIG		(3 << 0)
> -
> -#define ICL_PORT_CL_DW10(phy)		_MMIO(_ICL_PORT_CL_DW(10, phy))
> -#define  PG_SEQ_DELAY_OVERRIDE_MASK	(3 << 25)
> -#define  PG_SEQ_DELAY_OVERRIDE_SHIFT	25
> -#define  PG_SEQ_DELAY_OVERRIDE_ENABLE	(1 << 24)
> -#define  PWR_UP_ALL_LANES		(0x0 << 4)
> -#define  PWR_DOWN_LN_3_2_1		(0xe << 4)
> -#define  PWR_DOWN_LN_3_2		(0xc << 4)
> -#define  PWR_DOWN_LN_3			(0x8 << 4)
> -#define  PWR_DOWN_LN_2_1_0		(0x7 << 4)
> -#define  PWR_DOWN_LN_1_0		(0x3 << 4)
> -#define  PWR_DOWN_LN_3_1		(0xa << 4)
> -#define  PWR_DOWN_LN_3_1_0		(0xb << 4)
> -#define  PWR_DOWN_LN_MASK		(0xf << 4)
> -#define  PWR_DOWN_LN_SHIFT		4
> -#define  EDP4K2K_MODE_OVRD_EN		(1 << 3)
> -#define  EDP4K2K_MODE_OVRD_OPTIMIZED	(1 << 2)
> -
> -#define ICL_PORT_CL_DW12(phy)		_MMIO(_ICL_PORT_CL_DW(12, phy))
> -#define   ICL_LANE_ENABLE_AUX		(1 << 0)
> -
> -/* ICL Port COMP_DW registers */
> -#define _ICL_PORT_COMP			0x100
> -#define _ICL_PORT_COMP_DW(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 _ICL_PORT_COMP + 4 * (dw))
> -
> -#define ICL_PORT_COMP_DW0(phy)		_MMIO(_ICL_PORT_COMP_DW(0, phy))
> -#define   COMP_INIT			(1 << 31)
> -
> -#define ICL_PORT_COMP_DW1(phy)		_MMIO(_ICL_PORT_COMP_DW(1, phy))
> -
> -#define ICL_PORT_COMP_DW3(phy)		_MMIO(_ICL_PORT_COMP_DW(3, phy))
> -#define   PROCESS_INFO_DOT_0		(0 << 26)
> -#define   PROCESS_INFO_DOT_1		(1 << 26)
> -#define   PROCESS_INFO_DOT_4		(2 << 26)
> -#define   PROCESS_INFO_MASK		(7 << 26)
> -#define   PROCESS_INFO_SHIFT		26
> -#define   VOLTAGE_INFO_0_85V		(0 << 24)
> -#define   VOLTAGE_INFO_0_95V		(1 << 24)
> -#define   VOLTAGE_INFO_1_05V		(2 << 24)
> -#define   VOLTAGE_INFO_MASK		(3 << 24)
> -#define   VOLTAGE_INFO_SHIFT		24
> -
> -#define ICL_PORT_COMP_DW8(phy)		_MMIO(_ICL_PORT_COMP_DW(8, phy))
> -#define   IREFGEN			(1 << 24)
> -
> -#define ICL_PORT_COMP_DW9(phy)		_MMIO(_ICL_PORT_COMP_DW(9, phy))
> -
> -#define ICL_PORT_COMP_DW10(phy)		_MMIO(_ICL_PORT_COMP_DW(10, phy))
> -
> -/* ICL Port PCS registers */
> -#define _ICL_PORT_PCS_AUX		0x300
> -#define _ICL_PORT_PCS_GRP		0x600
> -#define _ICL_PORT_PCS_LN(ln)		(0x800 + (ln) * 0x100)
> -#define _ICL_PORT_PCS_DW_AUX(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 _ICL_PORT_PCS_AUX + 4 * (dw))
> -#define _ICL_PORT_PCS_DW_GRP(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 _ICL_PORT_PCS_GRP + 4 * (dw))
> -#define _ICL_PORT_PCS_DW_LN(dw, ln, phy) (_ICL_COMBOPHY(phy) + \
> -					  _ICL_PORT_PCS_LN(ln) + 4 * (dw))
> -#define ICL_PORT_PCS_DW1_AUX(phy)	_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
> -#define ICL_PORT_PCS_DW1_GRP(phy)	_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
> -#define ICL_PORT_PCS_DW1_LN(ln, phy)	_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, ph=
y))
> -#define   DCC_MODE_SELECT_MASK		(0x3 << 20)
> -#define   DCC_MODE_SELECT_CONTINUOSLY	(0x3 << 20)
> -#define   COMMON_KEEPER_EN		(1 << 26)
> -#define   LATENCY_OPTIM_MASK		(0x3 << 2)
> -#define   LATENCY_OPTIM_VAL(x)		((x) << 2)
> -
> -/* ICL Port TX registers */
> -#define _ICL_PORT_TX_AUX		0x380
> -#define _ICL_PORT_TX_GRP		0x680
> -#define _ICL_PORT_TX_LN(ln)		(0x880 + (ln) * 0x100)
> -
> -#define _ICL_PORT_TX_DW_AUX(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 _ICL_PORT_TX_AUX + 4 * (dw))
> -#define _ICL_PORT_TX_DW_GRP(dw, phy)	(_ICL_COMBOPHY(phy) + \
> -					 _ICL_PORT_TX_GRP + 4 * (dw))
> -#define _ICL_PORT_TX_DW_LN(dw, ln, phy) (_ICL_COMBOPHY(phy) + \
> -					  _ICL_PORT_TX_LN(ln) + 4 * (dw))
> -
> -#define ICL_PORT_TX_DW2_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(2, phy))
> -#define ICL_PORT_TX_DW2_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(2, phy))
> -#define ICL_PORT_TX_DW2_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(2, ln, phy))
> -#define   SWING_SEL_UPPER(x)		(((x) >> 3) << 15)
> -#define   SWING_SEL_UPPER_MASK		(1 << 15)
> -#define   SWING_SEL_LOWER(x)		(((x) & 0x7) << 11)
> -#define   SWING_SEL_LOWER_MASK		(0x7 << 11)
> -#define   FRC_LATENCY_OPTIM_MASK	(0x7 << 8)
> -#define   FRC_LATENCY_OPTIM_VAL(x)	((x) << 8)
> -#define   RCOMP_SCALAR(x)		((x) << 0)
> -#define   RCOMP_SCALAR_MASK		(0xFF << 0)
> -
> -#define ICL_PORT_TX_DW4_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(4, phy))
> -#define ICL_PORT_TX_DW4_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(4, phy))
> -#define ICL_PORT_TX_DW4_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(4, ln, phy))
> -#define   LOADGEN_SELECT		(1 << 31)
> -#define   POST_CURSOR_1(x)		((x) << 12)
> -#define   POST_CURSOR_1_MASK		(0x3F << 12)
> -#define   POST_CURSOR_2(x)		((x) << 6)
> -#define   POST_CURSOR_2_MASK		(0x3F << 6)
> -#define   CURSOR_COEFF(x)		((x) << 0)
> -#define   CURSOR_COEFF_MASK		(0x3F << 0)
> -
> -#define ICL_PORT_TX_DW5_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(5, phy))
> -#define ICL_PORT_TX_DW5_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(5, phy))
> -#define ICL_PORT_TX_DW5_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(5, ln, phy))
> -#define   TX_TRAINING_EN		(1 << 31)
> -#define   TAP2_DISABLE			(1 << 30)
> -#define   TAP3_DISABLE			(1 << 29)
> -#define   SCALING_MODE_SEL(x)		((x) << 18)
> -#define   SCALING_MODE_SEL_MASK		(0x7 << 18)
> -#define   RTERM_SELECT(x)		((x) << 3)
> -#define   RTERM_SELECT_MASK		(0x7 << 3)
> -
> -#define ICL_PORT_TX_DW7_AUX(phy)	_MMIO(_ICL_PORT_TX_DW_AUX(7, phy))
> -#define ICL_PORT_TX_DW7_GRP(phy)	_MMIO(_ICL_PORT_TX_DW_GRP(7, phy))
> -#define ICL_PORT_TX_DW7_LN(ln, phy)	_MMIO(_ICL_PORT_TX_DW_LN(7, ln, phy))
> -#define   N_SCALAR(x)			((x) << 24)
> -#define   N_SCALAR_MASK			(0x7F << 24)
> -
> -#define ICL_PORT_TX_DW8_AUX(phy)		_MMIO(_ICL_PORT_TX_DW_AUX(8, phy))
> -#define ICL_PORT_TX_DW8_GRP(phy)		_MMIO(_ICL_PORT_TX_DW_GRP(8, phy))
> -#define ICL_PORT_TX_DW8_LN(ln, phy)		_MMIO(_ICL_PORT_TX_DW_LN(8, ln, phy=
))
> -#define   ICL_PORT_TX_DW8_ODCC_CLK_SEL		REG_BIT(31)
> -#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_MASK	REG_GENMASK(30, 29)
> -#define   ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2	REG_FIELD_PREP(ICL_PORT_=
TX_DW8_ODCC_CLK_DIV_SEL_MASK, 0x1)
> -
> -#define _ICL_DPHY_CHKN_REG			0x194
> -#define ICL_DPHY_CHKN(port)			_MMIO(_ICL_COMBOPHY(port) + _ICL_DPHY_CHKN=
_REG)
> -#define   ICL_DPHY_CHKN_AFE_OVER_PPI_STRAP	REG_BIT(7)
> -
>  #define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
>  	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))

--=20
Jani Nikula, Intel Open Source Graphics Center
