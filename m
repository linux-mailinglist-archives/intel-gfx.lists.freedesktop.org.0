Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F64487B71
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 18:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F3F10E77F;
	Fri,  7 Jan 2022 17:30:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CE2810E77F
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 17:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641576624; x=1673112624;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5v9s/RkOrSWcjK3UFHrw2HwjtqIQHZIPo44Z+YY6ApA=;
 b=JwALoSKbYrlVfArTahknUZbD7FLtYyJzNmfP3h41TLrBpVO8kP5RR16l
 QIU+t7WvSRBOt+rR+ifxvRuprzC8SuN+KTGm4Np8X1/zJefA6mQjeKDqO
 3s2q+SLhivTWUYACjBrwDw5dHI7Dd7HtN0cQ3oO3/wmxyFxgyckDpH42o
 kA8hUOLdz4knp0Q7HYbD1UC5RXiTLPQh/xm6D5D5DvYenmx+RZn4FCkhf
 bepXAyYB/4hYDzntSzxy2wCVarkMFndnGJtOwoDd71RamlrC+coa/kWLr
 PLdtd8S8gkSYQUOcWFFPZCbZlUyjidBwr8LW7WipbF7YU/5j4fa8LJi2g A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="267205259"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="267205259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:30:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="668825316"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:30:23 -0800
Date: Fri, 7 Jan 2022 09:30:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ydh4rgsUp4FIPjb8@mdroper-desk1.amr.corp.intel.com>
References: <20220107094951.96181-1-jani.nikula@intel.com>
 <20220107094951.96181-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220107094951.96181-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: split out vlv sideband
 registers from i915_reg.h
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 07, 2022 at 11:49:51AM +0200, Jani Nikula wrote:
> Add a dedicated file vlv_sideband_reg.h for the VLV/CHV sideband
> registers. The sideband registers macros are needed by the same files
> that need vlv_sideband.h, so include the definitions from there.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This one also needs 2022 on the copyright line, but otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h         | 171 ----------------------
>  drivers/gpu/drm/i915/vlv_sideband.h     |   2 +
>  drivers/gpu/drm/i915/vlv_sideband_reg.h | 180 ++++++++++++++++++++++++
>  3 files changed, 182 insertions(+), 171 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/vlv_sideband_reg.h
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7517a2688896..459105f232d3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1125,177 +1125,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define VLV_IOSF_DATA				_MMIO(VLV_DISPLAY_BASE + 0x2104)
>  #define VLV_IOSF_ADDR				_MMIO(VLV_DISPLAY_BASE + 0x2108)
>  
> -/* See configdb bunit SB addr map */
> -#define BUNIT_REG_BISOC				0x11
> -
> -/* PUNIT_REG_*SSPM0 */
> -#define   _SSPM0_SSC(val)			((val) << 0)
> -#define   SSPM0_SSC_MASK			_SSPM0_SSC(0x3)
> -#define   SSPM0_SSC_PWR_ON			_SSPM0_SSC(0x0)
> -#define   SSPM0_SSC_CLK_GATE			_SSPM0_SSC(0x1)
> -#define   SSPM0_SSC_RESET			_SSPM0_SSC(0x2)
> -#define   SSPM0_SSC_PWR_GATE			_SSPM0_SSC(0x3)
> -#define   _SSPM0_SSS(val)			((val) << 24)
> -#define   SSPM0_SSS_MASK			_SSPM0_SSS(0x3)
> -#define   SSPM0_SSS_PWR_ON			_SSPM0_SSS(0x0)
> -#define   SSPM0_SSS_CLK_GATE			_SSPM0_SSS(0x1)
> -#define   SSPM0_SSS_RESET			_SSPM0_SSS(0x2)
> -#define   SSPM0_SSS_PWR_GATE			_SSPM0_SSS(0x3)
> -
> -/* PUNIT_REG_*SSPM1 */
> -#define   SSPM1_FREQSTAT_SHIFT			24
> -#define   SSPM1_FREQSTAT_MASK			(0x1f << SSPM1_FREQSTAT_SHIFT)
> -#define   SSPM1_FREQGUAR_SHIFT			8
> -#define   SSPM1_FREQGUAR_MASK			(0x1f << SSPM1_FREQGUAR_SHIFT)
> -#define   SSPM1_FREQ_SHIFT			0
> -#define   SSPM1_FREQ_MASK			(0x1f << SSPM1_FREQ_SHIFT)
> -
> -#define PUNIT_REG_VEDSSPM0			0x32
> -#define PUNIT_REG_VEDSSPM1			0x33
> -
> -#define PUNIT_REG_DSPSSPM			0x36
> -#define   DSPFREQSTAT_SHIFT_CHV			24
> -#define   DSPFREQSTAT_MASK_CHV			(0x1f << DSPFREQSTAT_SHIFT_CHV)
> -#define   DSPFREQGUAR_SHIFT_CHV			8
> -#define   DSPFREQGUAR_MASK_CHV			(0x1f << DSPFREQGUAR_SHIFT_CHV)
> -#define   DSPFREQSTAT_SHIFT			30
> -#define   DSPFREQSTAT_MASK			(0x3 << DSPFREQSTAT_SHIFT)
> -#define   DSPFREQGUAR_SHIFT			14
> -#define   DSPFREQGUAR_MASK			(0x3 << DSPFREQGUAR_SHIFT)
> -#define   DSP_MAXFIFO_PM5_STATUS		(1 << 22) /* chv */
> -#define   DSP_AUTO_CDCLK_GATE_DISABLE		(1 << 7) /* chv */
> -#define   DSP_MAXFIFO_PM5_ENABLE		(1 << 6) /* chv */
> -#define   _DP_SSC(val, pipe)			((val) << (2 * (pipe)))
> -#define   DP_SSC_MASK(pipe)			_DP_SSC(0x3, (pipe))
> -#define   DP_SSC_PWR_ON(pipe)			_DP_SSC(0x0, (pipe))
> -#define   DP_SSC_CLK_GATE(pipe)			_DP_SSC(0x1, (pipe))
> -#define   DP_SSC_RESET(pipe)			_DP_SSC(0x2, (pipe))
> -#define   DP_SSC_PWR_GATE(pipe)			_DP_SSC(0x3, (pipe))
> -#define   _DP_SSS(val, pipe)			((val) << (2 * (pipe) + 16))
> -#define   DP_SSS_MASK(pipe)			_DP_SSS(0x3, (pipe))
> -#define   DP_SSS_PWR_ON(pipe)			_DP_SSS(0x0, (pipe))
> -#define   DP_SSS_CLK_GATE(pipe)			_DP_SSS(0x1, (pipe))
> -#define   DP_SSS_RESET(pipe)			_DP_SSS(0x2, (pipe))
> -#define   DP_SSS_PWR_GATE(pipe)			_DP_SSS(0x3, (pipe))
> -
> -#define PUNIT_REG_ISPSSPM0			0x39
> -#define PUNIT_REG_ISPSSPM1			0x3a
> -
> -#define PUNIT_REG_PWRGT_CTRL			0x60
> -#define PUNIT_REG_PWRGT_STATUS			0x61
> -#define   PUNIT_PWRGT_MASK(pw_idx)		(3 << ((pw_idx) * 2))
> -#define   PUNIT_PWRGT_PWR_ON(pw_idx)		(0 << ((pw_idx) * 2))
> -#define   PUNIT_PWRGT_CLK_GATE(pw_idx)		(1 << ((pw_idx) * 2))
> -#define   PUNIT_PWRGT_RESET(pw_idx)		(2 << ((pw_idx) * 2))
> -#define   PUNIT_PWRGT_PWR_GATE(pw_idx)		(3 << ((pw_idx) * 2))
> -
> -#define PUNIT_PWGT_IDX_RENDER			0
> -#define PUNIT_PWGT_IDX_MEDIA			1
> -#define PUNIT_PWGT_IDX_DISP2D			3
> -#define PUNIT_PWGT_IDX_DPIO_CMN_BC		5
> -#define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01	6
> -#define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23	7
> -#define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01	8
> -#define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23	9
> -#define PUNIT_PWGT_IDX_DPIO_RX0			10
> -#define PUNIT_PWGT_IDX_DPIO_RX1			11
> -#define PUNIT_PWGT_IDX_DPIO_CMN_D		12
> -
> -#define PUNIT_REG_GPU_LFM			0xd3
> -#define PUNIT_REG_GPU_FREQ_REQ			0xd4
> -#define PUNIT_REG_GPU_FREQ_STS			0xd8
> -#define   GPLLENABLE				(1 << 4)
> -#define   GENFREQSTATUS				(1 << 0)
> -#define PUNIT_REG_MEDIA_TURBO_FREQ_REQ		0xdc
> -#define PUNIT_REG_CZ_TIMESTAMP			0xce
> -
> -#define PUNIT_FUSE_BUS2				0xf6 /* bits 47:40 */
> -#define PUNIT_FUSE_BUS1				0xf5 /* bits 55:48 */
> -
> -#define FB_GFX_FMAX_AT_VMAX_FUSE		0x136
> -#define FB_GFX_FREQ_FUSE_MASK			0xff
> -#define FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT	24
> -#define FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT	16
> -#define FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT	8
> -
> -#define FB_GFX_FMIN_AT_VMIN_FUSE		0x137
> -#define FB_GFX_FMIN_AT_VMIN_FUSE_SHIFT		8
> -
> -#define PUNIT_REG_DDR_SETUP2			0x139
> -#define   FORCE_DDR_FREQ_REQ_ACK		(1 << 8)
> -#define   FORCE_DDR_LOW_FREQ			(1 << 1)
> -#define   FORCE_DDR_HIGH_FREQ			(1 << 0)
> -
> -#define PUNIT_GPU_STATUS_REG			0xdb
> -#define PUNIT_GPU_STATUS_MAX_FREQ_SHIFT	16
> -#define PUNIT_GPU_STATUS_MAX_FREQ_MASK		0xff
> -#define PUNIT_GPU_STATIS_GFX_MIN_FREQ_SHIFT	8
> -#define PUNIT_GPU_STATUS_GFX_MIN_FREQ_MASK	0xff
> -
> -#define PUNIT_GPU_DUTYCYCLE_REG		0xdf
> -#define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT	8
> -#define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK	0xff
> -
> -#define IOSF_NC_FB_GFX_FREQ_FUSE		0x1c
> -#define   FB_GFX_MAX_FREQ_FUSE_SHIFT		3
> -#define   FB_GFX_MAX_FREQ_FUSE_MASK		0x000007f8
> -#define   FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT	11
> -#define   FB_GFX_FGUARANTEED_FREQ_FUSE_MASK	0x0007f800
> -#define IOSF_NC_FB_GFX_FMAX_FUSE_HI		0x34
> -#define   FB_FMAX_VMIN_FREQ_HI_MASK		0x00000007
> -#define IOSF_NC_FB_GFX_FMAX_FUSE_LO		0x30
> -#define   FB_FMAX_VMIN_FREQ_LO_SHIFT		27
> -#define   FB_FMAX_VMIN_FREQ_LO_MASK		0xf8000000
> -
> -#define VLV_TURBO_SOC_OVERRIDE		0x04
> -#define   VLV_OVERRIDE_EN		1
> -#define   VLV_SOC_TDP_EN		(1 << 1)
> -#define   VLV_BIAS_CPU_125_SOC_875	(6 << 2)
> -#define   CHV_BIAS_CPU_50_SOC_50	(3 << 2)
> -
> -/* vlv2 north clock has */
> -#define CCK_FUSE_REG				0x8
> -#define  CCK_FUSE_HPLL_FREQ_MASK		0x3
> -#define CCK_REG_DSI_PLL_FUSE			0x44
> -#define CCK_REG_DSI_PLL_CONTROL			0x48
> -#define  DSI_PLL_VCO_EN				(1 << 31)
> -#define  DSI_PLL_LDO_GATE			(1 << 30)
> -#define  DSI_PLL_P1_POST_DIV_SHIFT		17
> -#define  DSI_PLL_P1_POST_DIV_MASK		(0x1ff << 17)
> -#define  DSI_PLL_P2_MUX_DSI0_DIV2		(1 << 13)
> -#define  DSI_PLL_P3_MUX_DSI1_DIV2		(1 << 12)
> -#define  DSI_PLL_MUX_MASK			(3 << 9)
> -#define  DSI_PLL_MUX_DSI0_DSIPLL		(0 << 10)
> -#define  DSI_PLL_MUX_DSI0_CCK			(1 << 10)
> -#define  DSI_PLL_MUX_DSI1_DSIPLL		(0 << 9)
> -#define  DSI_PLL_MUX_DSI1_CCK			(1 << 9)
> -#define  DSI_PLL_CLK_GATE_MASK			(0xf << 5)
> -#define  DSI_PLL_CLK_GATE_DSI0_DSIPLL		(1 << 8)
> -#define  DSI_PLL_CLK_GATE_DSI1_DSIPLL		(1 << 7)
> -#define  DSI_PLL_CLK_GATE_DSI0_CCK		(1 << 6)
> -#define  DSI_PLL_CLK_GATE_DSI1_CCK		(1 << 5)
> -#define  DSI_PLL_LOCK				(1 << 0)
> -#define CCK_REG_DSI_PLL_DIVIDER			0x4c
> -#define  DSI_PLL_LFSR				(1 << 31)
> -#define  DSI_PLL_FRACTION_EN			(1 << 30)
> -#define  DSI_PLL_FRAC_COUNTER_SHIFT		27
> -#define  DSI_PLL_FRAC_COUNTER_MASK		(7 << 27)
> -#define  DSI_PLL_USYNC_CNT_SHIFT		18
> -#define  DSI_PLL_USYNC_CNT_MASK			(0x1ff << 18)
> -#define  DSI_PLL_N1_DIV_SHIFT			16
> -#define  DSI_PLL_N1_DIV_MASK			(3 << 16)
> -#define  DSI_PLL_M1_DIV_SHIFT			0
> -#define  DSI_PLL_M1_DIV_MASK			(0x1ff << 0)
> -#define CCK_CZ_CLOCK_CONTROL			0x62
> -#define CCK_GPLL_CLOCK_CONTROL			0x67
> -#define CCK_DISPLAY_CLOCK_CONTROL		0x6b
> -#define CCK_DISPLAY_REF_CLOCK_CONTROL		0x6c
> -#define  CCK_TRUNK_FORCE_ON			(1 << 17)
> -#define  CCK_TRUNK_FORCE_OFF			(1 << 16)
> -#define  CCK_FREQUENCY_STATUS			(0x1f << 8)
> -#define  CCK_FREQUENCY_STATUS_SHIFT		8
> -#define  CCK_FREQUENCY_VALUES			(0x1f << 0)
> -
>  /* DPIO registers */
>  #define DPIO_DEVFN			0
>  
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.h b/drivers/gpu/drm/i915/vlv_sideband.h
> index d7732f612e7f..9ce283d96b80 100644
> --- a/drivers/gpu/drm/i915/vlv_sideband.h
> +++ b/drivers/gpu/drm/i915/vlv_sideband.h
> @@ -9,6 +9,8 @@
>  #include <linux/bitops.h>
>  #include <linux/types.h>
>  
> +#include "vlv_sideband_reg.h"
> +
>  enum pipe;
>  struct drm_i915_private;
>  
> diff --git a/drivers/gpu/drm/i915/vlv_sideband_reg.h b/drivers/gpu/drm/i915/vlv_sideband_reg.h
> new file mode 100644
> index 000000000000..ae163881d9c4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/vlv_sideband_reg.h
> @@ -0,0 +1,180 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef _VLV_SIDEBAND_REG_H_
> +#define _VLV_SIDEBAND_REG_H_
> +
> +/* See configdb bunit SB addr map */
> +#define BUNIT_REG_BISOC				0x11
> +
> +/* PUNIT_REG_*SSPM0 */
> +#define   _SSPM0_SSC(val)			((val) << 0)
> +#define   SSPM0_SSC_MASK			_SSPM0_SSC(0x3)
> +#define   SSPM0_SSC_PWR_ON			_SSPM0_SSC(0x0)
> +#define   SSPM0_SSC_CLK_GATE			_SSPM0_SSC(0x1)
> +#define   SSPM0_SSC_RESET			_SSPM0_SSC(0x2)
> +#define   SSPM0_SSC_PWR_GATE			_SSPM0_SSC(0x3)
> +#define   _SSPM0_SSS(val)			((val) << 24)
> +#define   SSPM0_SSS_MASK			_SSPM0_SSS(0x3)
> +#define   SSPM0_SSS_PWR_ON			_SSPM0_SSS(0x0)
> +#define   SSPM0_SSS_CLK_GATE			_SSPM0_SSS(0x1)
> +#define   SSPM0_SSS_RESET			_SSPM0_SSS(0x2)
> +#define   SSPM0_SSS_PWR_GATE			_SSPM0_SSS(0x3)
> +
> +/* PUNIT_REG_*SSPM1 */
> +#define   SSPM1_FREQSTAT_SHIFT			24
> +#define   SSPM1_FREQSTAT_MASK			(0x1f << SSPM1_FREQSTAT_SHIFT)
> +#define   SSPM1_FREQGUAR_SHIFT			8
> +#define   SSPM1_FREQGUAR_MASK			(0x1f << SSPM1_FREQGUAR_SHIFT)
> +#define   SSPM1_FREQ_SHIFT			0
> +#define   SSPM1_FREQ_MASK			(0x1f << SSPM1_FREQ_SHIFT)
> +
> +#define PUNIT_REG_VEDSSPM0			0x32
> +#define PUNIT_REG_VEDSSPM1			0x33
> +
> +#define PUNIT_REG_DSPSSPM			0x36
> +#define   DSPFREQSTAT_SHIFT_CHV			24
> +#define   DSPFREQSTAT_MASK_CHV			(0x1f << DSPFREQSTAT_SHIFT_CHV)
> +#define   DSPFREQGUAR_SHIFT_CHV			8
> +#define   DSPFREQGUAR_MASK_CHV			(0x1f << DSPFREQGUAR_SHIFT_CHV)
> +#define   DSPFREQSTAT_SHIFT			30
> +#define   DSPFREQSTAT_MASK			(0x3 << DSPFREQSTAT_SHIFT)
> +#define   DSPFREQGUAR_SHIFT			14
> +#define   DSPFREQGUAR_MASK			(0x3 << DSPFREQGUAR_SHIFT)
> +#define   DSP_MAXFIFO_PM5_STATUS		(1 << 22) /* chv */
> +#define   DSP_AUTO_CDCLK_GATE_DISABLE		(1 << 7) /* chv */
> +#define   DSP_MAXFIFO_PM5_ENABLE		(1 << 6) /* chv */
> +#define   _DP_SSC(val, pipe)			((val) << (2 * (pipe)))
> +#define   DP_SSC_MASK(pipe)			_DP_SSC(0x3, (pipe))
> +#define   DP_SSC_PWR_ON(pipe)			_DP_SSC(0x0, (pipe))
> +#define   DP_SSC_CLK_GATE(pipe)			_DP_SSC(0x1, (pipe))
> +#define   DP_SSC_RESET(pipe)			_DP_SSC(0x2, (pipe))
> +#define   DP_SSC_PWR_GATE(pipe)			_DP_SSC(0x3, (pipe))
> +#define   _DP_SSS(val, pipe)			((val) << (2 * (pipe) + 16))
> +#define   DP_SSS_MASK(pipe)			_DP_SSS(0x3, (pipe))
> +#define   DP_SSS_PWR_ON(pipe)			_DP_SSS(0x0, (pipe))
> +#define   DP_SSS_CLK_GATE(pipe)			_DP_SSS(0x1, (pipe))
> +#define   DP_SSS_RESET(pipe)			_DP_SSS(0x2, (pipe))
> +#define   DP_SSS_PWR_GATE(pipe)			_DP_SSS(0x3, (pipe))
> +
> +#define PUNIT_REG_ISPSSPM0			0x39
> +#define PUNIT_REG_ISPSSPM1			0x3a
> +
> +#define PUNIT_REG_PWRGT_CTRL			0x60
> +#define PUNIT_REG_PWRGT_STATUS			0x61
> +#define   PUNIT_PWRGT_MASK(pw_idx)		(3 << ((pw_idx) * 2))
> +#define   PUNIT_PWRGT_PWR_ON(pw_idx)		(0 << ((pw_idx) * 2))
> +#define   PUNIT_PWRGT_CLK_GATE(pw_idx)		(1 << ((pw_idx) * 2))
> +#define   PUNIT_PWRGT_RESET(pw_idx)		(2 << ((pw_idx) * 2))
> +#define   PUNIT_PWRGT_PWR_GATE(pw_idx)		(3 << ((pw_idx) * 2))
> +
> +#define PUNIT_PWGT_IDX_RENDER			0
> +#define PUNIT_PWGT_IDX_MEDIA			1
> +#define PUNIT_PWGT_IDX_DISP2D			3
> +#define PUNIT_PWGT_IDX_DPIO_CMN_BC		5
> +#define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_01	6
> +#define PUNIT_PWGT_IDX_DPIO_TX_B_LANES_23	7
> +#define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_01	8
> +#define PUNIT_PWGT_IDX_DPIO_TX_C_LANES_23	9
> +#define PUNIT_PWGT_IDX_DPIO_RX0			10
> +#define PUNIT_PWGT_IDX_DPIO_RX1			11
> +#define PUNIT_PWGT_IDX_DPIO_CMN_D		12
> +
> +#define PUNIT_REG_GPU_LFM			0xd3
> +#define PUNIT_REG_GPU_FREQ_REQ			0xd4
> +#define PUNIT_REG_GPU_FREQ_STS			0xd8
> +#define   GPLLENABLE				(1 << 4)
> +#define   GENFREQSTATUS				(1 << 0)
> +#define PUNIT_REG_MEDIA_TURBO_FREQ_REQ		0xdc
> +#define PUNIT_REG_CZ_TIMESTAMP			0xce
> +
> +#define PUNIT_FUSE_BUS2				0xf6 /* bits 47:40 */
> +#define PUNIT_FUSE_BUS1				0xf5 /* bits 55:48 */
> +
> +#define FB_GFX_FMAX_AT_VMAX_FUSE		0x136
> +#define FB_GFX_FREQ_FUSE_MASK			0xff
> +#define FB_GFX_FMAX_AT_VMAX_2SS4EU_FUSE_SHIFT	24
> +#define FB_GFX_FMAX_AT_VMAX_2SS6EU_FUSE_SHIFT	16
> +#define FB_GFX_FMAX_AT_VMAX_2SS8EU_FUSE_SHIFT	8
> +
> +#define FB_GFX_FMIN_AT_VMIN_FUSE		0x137
> +#define FB_GFX_FMIN_AT_VMIN_FUSE_SHIFT		8
> +
> +#define PUNIT_REG_DDR_SETUP2			0x139
> +#define   FORCE_DDR_FREQ_REQ_ACK		(1 << 8)
> +#define   FORCE_DDR_LOW_FREQ			(1 << 1)
> +#define   FORCE_DDR_HIGH_FREQ			(1 << 0)
> +
> +#define PUNIT_GPU_STATUS_REG			0xdb
> +#define PUNIT_GPU_STATUS_MAX_FREQ_SHIFT	16
> +#define PUNIT_GPU_STATUS_MAX_FREQ_MASK		0xff
> +#define PUNIT_GPU_STATIS_GFX_MIN_FREQ_SHIFT	8
> +#define PUNIT_GPU_STATUS_GFX_MIN_FREQ_MASK	0xff
> +
> +#define PUNIT_GPU_DUTYCYCLE_REG		0xdf
> +#define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT	8
> +#define PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK	0xff
> +
> +#define IOSF_NC_FB_GFX_FREQ_FUSE		0x1c
> +#define   FB_GFX_MAX_FREQ_FUSE_SHIFT		3
> +#define   FB_GFX_MAX_FREQ_FUSE_MASK		0x000007f8
> +#define   FB_GFX_FGUARANTEED_FREQ_FUSE_SHIFT	11
> +#define   FB_GFX_FGUARANTEED_FREQ_FUSE_MASK	0x0007f800
> +#define IOSF_NC_FB_GFX_FMAX_FUSE_HI		0x34
> +#define   FB_FMAX_VMIN_FREQ_HI_MASK		0x00000007
> +#define IOSF_NC_FB_GFX_FMAX_FUSE_LO		0x30
> +#define   FB_FMAX_VMIN_FREQ_LO_SHIFT		27
> +#define   FB_FMAX_VMIN_FREQ_LO_MASK		0xf8000000
> +
> +#define VLV_TURBO_SOC_OVERRIDE		0x04
> +#define   VLV_OVERRIDE_EN		1
> +#define   VLV_SOC_TDP_EN		(1 << 1)
> +#define   VLV_BIAS_CPU_125_SOC_875	(6 << 2)
> +#define   CHV_BIAS_CPU_50_SOC_50	(3 << 2)
> +
> +/* vlv2 north clock has */
> +#define CCK_FUSE_REG				0x8
> +#define  CCK_FUSE_HPLL_FREQ_MASK		0x3
> +#define CCK_REG_DSI_PLL_FUSE			0x44
> +#define CCK_REG_DSI_PLL_CONTROL			0x48
> +#define  DSI_PLL_VCO_EN				(1 << 31)
> +#define  DSI_PLL_LDO_GATE			(1 << 30)
> +#define  DSI_PLL_P1_POST_DIV_SHIFT		17
> +#define  DSI_PLL_P1_POST_DIV_MASK		(0x1ff << 17)
> +#define  DSI_PLL_P2_MUX_DSI0_DIV2		(1 << 13)
> +#define  DSI_PLL_P3_MUX_DSI1_DIV2		(1 << 12)
> +#define  DSI_PLL_MUX_MASK			(3 << 9)
> +#define  DSI_PLL_MUX_DSI0_DSIPLL		(0 << 10)
> +#define  DSI_PLL_MUX_DSI0_CCK			(1 << 10)
> +#define  DSI_PLL_MUX_DSI1_DSIPLL		(0 << 9)
> +#define  DSI_PLL_MUX_DSI1_CCK			(1 << 9)
> +#define  DSI_PLL_CLK_GATE_MASK			(0xf << 5)
> +#define  DSI_PLL_CLK_GATE_DSI0_DSIPLL		(1 << 8)
> +#define  DSI_PLL_CLK_GATE_DSI1_DSIPLL		(1 << 7)
> +#define  DSI_PLL_CLK_GATE_DSI0_CCK		(1 << 6)
> +#define  DSI_PLL_CLK_GATE_DSI1_CCK		(1 << 5)
> +#define  DSI_PLL_LOCK				(1 << 0)
> +#define CCK_REG_DSI_PLL_DIVIDER			0x4c
> +#define  DSI_PLL_LFSR				(1 << 31)
> +#define  DSI_PLL_FRACTION_EN			(1 << 30)
> +#define  DSI_PLL_FRAC_COUNTER_SHIFT		27
> +#define  DSI_PLL_FRAC_COUNTER_MASK		(7 << 27)
> +#define  DSI_PLL_USYNC_CNT_SHIFT		18
> +#define  DSI_PLL_USYNC_CNT_MASK			(0x1ff << 18)
> +#define  DSI_PLL_N1_DIV_SHIFT			16
> +#define  DSI_PLL_N1_DIV_MASK			(3 << 16)
> +#define  DSI_PLL_M1_DIV_SHIFT			0
> +#define  DSI_PLL_M1_DIV_MASK			(0x1ff << 0)
> +#define CCK_CZ_CLOCK_CONTROL			0x62
> +#define CCK_GPLL_CLOCK_CONTROL			0x67
> +#define CCK_DISPLAY_CLOCK_CONTROL		0x6b
> +#define CCK_DISPLAY_REF_CLOCK_CONTROL		0x6c
> +#define  CCK_TRUNK_FORCE_ON			(1 << 17)
> +#define  CCK_TRUNK_FORCE_OFF			(1 << 16)
> +#define  CCK_FREQUENCY_STATUS			(0x1f << 8)
> +#define  CCK_FREQUENCY_STATUS_SHIFT		8
> +#define  CCK_FREQUENCY_VALUES			(0x1f << 0)
> +
> +#endif /* _VLV_SIDEBAND_REG_H_ */
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
