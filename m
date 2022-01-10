Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A9A4896EA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 12:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B5D14A477;
	Mon, 10 Jan 2022 11:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C77714A47E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 11:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641812621; x=1673348621;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0YadDzcB9ishyS4JXZo5JjJtMONB2gqb31yg6lEJewc=;
 b=amdmIXn+pC2wa3SCIdZwOfvekjXw1oAY+JybfC/mBhpAwaf6P4oTiw4b
 etBHuM/JWhlIFH1yWz4MmSZ6ms8/yONzD2CZ70xYUliEt+McUgKh/satP
 /M4KKJSjJAq2BL+2eXYid6vUXd/378Fb6Z3G2H8f7btSMrOBLjplcO+lL
 XE23qycZJekOVlDzyQ0orTtZIetI0LAQnXg+wazAeX74JGiW+FwsRKVcZ
 nK1+yoKGFwKLH/rr0BdHJ6D6rAfs+GHnSIZwvI3r/8n9mvvsWiqznlpIP
 fJoRgUHKVef/EofSkZc87CwbFRm3qoYmwm68tCCjNpaJb2AN80uV01qs/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="306558296"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="306558296"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:03:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="474092005"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 03:03:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87v8yram5q.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
 <20220108044055.3123418-8-matthew.d.roper@intel.com>
 <87v8yram5q.fsf@intel.com>
Date: Mon, 10 Jan 2022 13:03:35 +0200
Message-ID: <87sftvam48.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915: Move SNPS PHY registers to
 their own header
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

On Mon, 10 Jan 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
>> These registers are only needed in a couple files and on specific
>> platforms; let's keep them separate from the general register pool.
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
>>  .../drm/i915/display/intel_snps_phy_regs.h    | 73 +++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_reg.h               | 67 -----------------
>>  3 files changed, 74 insertions(+), 67 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu=
/drm/i915/display/intel_snps_phy.c
>> index 09f405e4d363..718bfdbae9c8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -10,6 +10,7 @@
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_snps_phy.h"
>> +#include "intel_snps_phy_regs.h"
>>=20=20
>>  /**
>>   * DOC: Synopsis PHY support
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h b/driver=
s/gpu/drm/i915/display/intel_snps_phy_regs.h
>> new file mode 100644
>> index 000000000000..484d3d204012
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
>> @@ -0,0 +1,73 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_SNPS_REGS__
>> +#define __INTEL_SNPS_REGS__

Oh, nitpick, the include guard does not match the file name.

>
> #include "i915_reg_defs.h"
>
> Other than that,
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
>
>> +
>> +#define _SNPS_PHY_A_BASE			0x168000
>> +#define _SNPS_PHY_B_BASE			0x169000
>> +#define _SNPS_PHY(phy)				_PHY(phy, \
>> +						     _SNPS_PHY_A_BASE, \
>> +						     _SNPS_PHY_B_BASE)
>> +#define _SNPS2(phy, reg)			(_SNPS_PHY(phy) - \
>> +						 _SNPS_PHY_A_BASE + (reg))
>> +#define _MMIO_SNPS(phy, reg)			_MMIO(_SNPS2(phy, reg))
>> +#define _MMIO_SNPS_LN(ln, phy, reg)		_MMIO(_SNPS2(phy, \
>> +							     (reg) + (ln) * 0x10))
>> +
>> +#define SNPS_PHY_MPLLB_CP(phy)			_MMIO_SNPS(phy, 0x168000)
>> +#define   SNPS_PHY_MPLLB_CP_INT			REG_GENMASK(31, 25)
>> +#define   SNPS_PHY_MPLLB_CP_INT_GS		REG_GENMASK(23, 17)
>> +#define   SNPS_PHY_MPLLB_CP_PROP		REG_GENMASK(15, 9)
>> +#define   SNPS_PHY_MPLLB_CP_PROP_GS		REG_GENMASK(7, 1)
>> +
>> +#define SNPS_PHY_MPLLB_DIV(phy)			_MMIO_SNPS(phy, 0x168004)
>> +#define   SNPS_PHY_MPLLB_FORCE_EN		REG_BIT(31)
>> +#define   SNPS_PHY_MPLLB_DIV_CLK_EN		REG_BIT(30)
>> +#define   SNPS_PHY_MPLLB_DIV5_CLK_EN		REG_BIT(29)
>> +#define   SNPS_PHY_MPLLB_V2I			REG_GENMASK(27, 26)
>> +#define   SNPS_PHY_MPLLB_FREQ_VCO		REG_GENMASK(25, 24)
>> +#define   SNPS_PHY_MPLLB_DIV_MULTIPLIER		REG_GENMASK(23, 16)
>> +#define   SNPS_PHY_MPLLB_PMIX_EN		REG_BIT(10)
>> +#define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
>> +#define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
>> +#define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
>> +#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
>> +
>> +#define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
>> +#define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
>> +#define   SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN	REG_BIT(30)
>> +#define   SNPS_PHY_MPLLB_FRACN_DEN		REG_GENMASK(15, 0)
>> +
>> +#define SNPS_PHY_MPLLB_FRACN2(phy)		_MMIO_SNPS(phy, 0x16800C)
>> +#define   SNPS_PHY_MPLLB_FRACN_REM		REG_GENMASK(31, 16)
>> +#define   SNPS_PHY_MPLLB_FRACN_QUOT		REG_GENMASK(15, 0)
>> +
>> +#define SNPS_PHY_MPLLB_SSCEN(phy)		_MMIO_SNPS(phy, 0x168014)
>> +#define   SNPS_PHY_MPLLB_SSC_EN			REG_BIT(31)
>> +#define   SNPS_PHY_MPLLB_SSC_UP_SPREAD		REG_BIT(30)
>> +#define   SNPS_PHY_MPLLB_SSC_PEAK		REG_GENMASK(29, 10)
>> +
>> +#define SNPS_PHY_MPLLB_SSCSTEP(phy)		_MMIO_SNPS(phy, 0x168018)
>> +#define   SNPS_PHY_MPLLB_SSC_STEPSIZE		REG_GENMASK(31, 11)
>> +
>> +#define SNPS_PHY_MPLLB_DIV2(phy)		_MMIO_SNPS(phy, 0x16801C)
>> +#define   SNPS_PHY_MPLLB_HDMI_PIXEL_CLK_DIV	REG_GENMASK(19, 18)
>> +#define   SNPS_PHY_MPLLB_HDMI_DIV		REG_GENMASK(17, 15)
>> +#define   SNPS_PHY_MPLLB_REF_CLK_DIV		REG_GENMASK(14, 12)
>> +#define   SNPS_PHY_MPLLB_MULTIPLIER		REG_GENMASK(11, 0)
>> +
>> +#define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy, 0x168188)
>> +#define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31, 27)
>> +
>> +#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy, 0x168200)
>> +#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR	REG_GENMASK(31, 30)
>> +
>> +#define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln, phy, 0x168300)
>> +#define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23, 18)
>> +#define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15, 10)
>> +#define   SNPS_PHY_TX_EQ_PRE			REG_GENMASK(7, 2)
>> +
>> +#endif /* __INTEL_SNPS_REGS__ */
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 8ead30b47c69..5be5d0c28445 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2132,73 +2132,6 @@
>>  #define   MG_DP_MODE_CFG_DP_X2_MODE			(1 << 7)
>>  #define   MG_DP_MODE_CFG_DP_X1_MODE			(1 << 6)
>>=20=20
>> -/*
>> - * DG2 SNPS PHY registers (TC1 =3D PHY_E)
>> - */
>> -#define _SNPS_PHY_A_BASE			0x168000
>> -#define _SNPS_PHY_B_BASE			0x169000
>> -#define _SNPS_PHY(phy)				_PHY(phy, \
>> -						     _SNPS_PHY_A_BASE, \
>> -						     _SNPS_PHY_B_BASE)
>> -#define _SNPS2(phy, reg)			(_SNPS_PHY(phy) - \
>> -						 _SNPS_PHY_A_BASE + (reg))
>> -#define _MMIO_SNPS(phy, reg)			_MMIO(_SNPS2(phy, reg))
>> -#define _MMIO_SNPS_LN(ln, phy, reg)		_MMIO(_SNPS2(phy, \
>> -							     (reg) + (ln) * 0x10))
>> -
>> -#define SNPS_PHY_MPLLB_CP(phy)			_MMIO_SNPS(phy, 0x168000)
>> -#define   SNPS_PHY_MPLLB_CP_INT			REG_GENMASK(31, 25)
>> -#define   SNPS_PHY_MPLLB_CP_INT_GS		REG_GENMASK(23, 17)
>> -#define   SNPS_PHY_MPLLB_CP_PROP		REG_GENMASK(15, 9)
>> -#define   SNPS_PHY_MPLLB_CP_PROP_GS		REG_GENMASK(7, 1)
>> -
>> -#define SNPS_PHY_MPLLB_DIV(phy)			_MMIO_SNPS(phy, 0x168004)
>> -#define   SNPS_PHY_MPLLB_FORCE_EN		REG_BIT(31)
>> -#define   SNPS_PHY_MPLLB_DIV_CLK_EN		REG_BIT(30)
>> -#define   SNPS_PHY_MPLLB_DIV5_CLK_EN		REG_BIT(29)
>> -#define   SNPS_PHY_MPLLB_V2I			REG_GENMASK(27, 26)
>> -#define   SNPS_PHY_MPLLB_FREQ_VCO		REG_GENMASK(25, 24)
>> -#define   SNPS_PHY_MPLLB_DIV_MULTIPLIER		REG_GENMASK(23, 16)
>> -#define   SNPS_PHY_MPLLB_PMIX_EN		REG_BIT(10)
>> -#define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
>> -#define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
>> -#define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
>> -#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
>> -
>> -#define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
>> -#define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
>> -#define   SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN	REG_BIT(30)
>> -#define   SNPS_PHY_MPLLB_FRACN_DEN		REG_GENMASK(15, 0)
>> -
>> -#define SNPS_PHY_MPLLB_FRACN2(phy)		_MMIO_SNPS(phy, 0x16800C)
>> -#define   SNPS_PHY_MPLLB_FRACN_REM		REG_GENMASK(31, 16)
>> -#define   SNPS_PHY_MPLLB_FRACN_QUOT		REG_GENMASK(15, 0)
>> -
>> -#define SNPS_PHY_MPLLB_SSCEN(phy)		_MMIO_SNPS(phy, 0x168014)
>> -#define   SNPS_PHY_MPLLB_SSC_EN			REG_BIT(31)
>> -#define   SNPS_PHY_MPLLB_SSC_UP_SPREAD		REG_BIT(30)
>> -#define   SNPS_PHY_MPLLB_SSC_PEAK		REG_GENMASK(29, 10)
>> -
>> -#define SNPS_PHY_MPLLB_SSCSTEP(phy)		_MMIO_SNPS(phy, 0x168018)
>> -#define   SNPS_PHY_MPLLB_SSC_STEPSIZE		REG_GENMASK(31, 11)
>> -
>> -#define SNPS_PHY_MPLLB_DIV2(phy)		_MMIO_SNPS(phy, 0x16801C)
>> -#define   SNPS_PHY_MPLLB_HDMI_PIXEL_CLK_DIV	REG_GENMASK(19, 18)
>> -#define   SNPS_PHY_MPLLB_HDMI_DIV		REG_GENMASK(17, 15)
>> -#define   SNPS_PHY_MPLLB_REF_CLK_DIV		REG_GENMASK(14, 12)
>> -#define   SNPS_PHY_MPLLB_MULTIPLIER		REG_GENMASK(11, 0)
>> -
>> -#define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy, 0x168188)
>> -#define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31, 27)
>> -
>> -#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy, 0x168200)
>> -#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR	REG_GENMASK(31, 30)
>> -
>> -#define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln, phy, 0x168300)
>> -#define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23, 18)
>> -#define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15, 10)
>> -#define   SNPS_PHY_TX_EQ_PRE			REG_GENMASK(7, 2)
>> -
>>  /* The spec defines this only for BXT PHY0, but lets assume that this
>>   * would exist for PHY1 too if it had a second channel.
>>   */

--=20
Jani Nikula, Intel Open Source Graphics Center
