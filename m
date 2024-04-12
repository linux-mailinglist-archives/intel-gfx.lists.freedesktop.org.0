Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A858A32DF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 17:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF94F10F727;
	Fri, 12 Apr 2024 15:52:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bW2PhLr6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D2E10F724;
 Fri, 12 Apr 2024 15:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712937158; x=1744473158;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tCvWol1pd1ENtm3T3Yz9NxRWx75ukfH0PKDHSUu4ytk=;
 b=bW2PhLr6hLUyzRASFDkkU6/S9vFA3btTjFET9nDi2QLO2tCsvcA/93zY
 o3V1ZtZCGY0PtZUzzYY0BYpgg7tpMaNGeakMI/j2dIu3L1eE/w9ktKNS4
 PFkmM1oYzvhf+Sgu8eDCEZynYTXSi7wAuqNdzrsXzwpIW5fqq2KivnK7X
 1QCedu+sg2ahEVvvGFn19sNdW9V/5jEXSr1qH/Z0O20+0BO19RD2gE9G/
 SUWX2XukL7ikDK7zKJHHUeA7ZuVOW2gBomdFuwfft/S19JGnotcYT78xp
 NK2pY592B6I0Jf5b28bQHpTWCDI4/P2/3TOG57Ax+EQyHVkKEODbxDw9C Q==;
X-CSE-ConnectionGUID: R21c4D9lSVO52jsfwsH89w==
X-CSE-MsgGUID: 9kDhCRKRRp+KhuzAH3OUTQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19109624"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19109624"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:52:37 -0700
X-CSE-ConnectionGUID: tZKIupICRG6e6g5fvHVZNw==
X-CSE-MsgGUID: ZgphYVV4Qs2JaYwVeOrMQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="25816898"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:52:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/6] drm/i915/display: split out intel_dpio_regs.h from
 i915_reg.h
In-Reply-To: <ZhlTz7QEj3G6vzc7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712933479.git.jani.nikula@intel.com>
 <29df02935f8c53f96bfa871300a669722d9ab8c4.1712933479.git.jani.nikula@intel.com>
 <ZhlTz7QEj3G6vzc7@intel.com>
Date: Fri, 12 Apr 2024 18:52:29 +0300
Message-ID: <878r1i4lz6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 12 Apr 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Apr 12, 2024 at 05:52:57PM +0300, Jani Nikula wrote:
>> Clean up i915_reg.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../i915/display/intel_display_power_well.c   |   1 +
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c |   1 +
>>  drivers/gpu/drm/i915/display/intel_dpll.c     |   1 +
>>  drivers/gpu/drm/i915/display/vlv_dpio_regs.h  | 352 ++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_reg.h               | 343 -----------------
>>  5 files changed, 355 insertions(+), 343 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/vlv_dpio_regs.h
>
> I have pretty much the same thing, but IIRC I did a bunch of=20
> changes to the definitons first, and then extracted them.
> So the rebase could be somewhat painful.
>
> I suppose I should actually post my stuff and then we can
> figure out what to do with these...

Let's not waste the cleanups, the movement is the easy part.

BR,
Jani.


>
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index e4de40228997..0b356ff0e319 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -26,6 +26,7 @@
>>  #include "intel_tc.h"
>>  #include "intel_vga.h"
>>  #include "skl_watermark.h"
>> +#include "vlv_dpio_regs.h"
>>  #include "vlv_sideband.h"
>>  #include "vlv_sideband_reg.h"
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu=
/drm/i915/display/intel_dpio_phy.c
>> index 2d7a71c8c69c..8d99e00ea326 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> @@ -29,6 +29,7 @@
>>  #include "intel_display_types.h"
>>  #include "intel_dp.h"
>>  #include "intel_dpio_phy.h"
>> +#include "vlv_dpio_regs.h"
>>  #include "vlv_sideband.h"
>>=20=20
>>  /**
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm=
/i915/display/intel_dpll.c
>> index 3038655377ea..5c14bbd6ca82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
>> @@ -20,6 +20,7 @@
>>  #include "intel_panel.h"
>>  #include "intel_pps.h"
>>  #include "intel_snps_phy.h"
>> +#include "vlv_dpio_regs.h"
>>  #include "vlv_sideband.h"
>>=20=20
>>  struct intel_dpll_funcs {
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dpio_regs.h b/drivers/gpu/=
drm/i915/display/vlv_dpio_regs.h
>> new file mode 100644
>> index 000000000000..0982682c269f
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/vlv_dpio_regs.h
>> @@ -0,0 +1,352 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2024 Intel Corporation */
>> +
>> +#ifndef __VLV_DPIO_REGS_H__
>> +#define __VLV_DPIO_REGS_H__
>> +
>> +#include "intel_display_reg_defs.h"
>> +
>> +/*
>> + * Per pipe/PLL DPIO regs
>> + */
>> +#define _VLV_PLL_DW3_CH0		0x800c
>> +#define   DPIO_POST_DIV_SHIFT		(28) /* 3 bits */
>> +#define   DPIO_POST_DIV_DAC		0
>> +#define   DPIO_POST_DIV_HDMIDP		1 /* DAC 225-400M rate */
>> +#define   DPIO_POST_DIV_LVDS1		2
>> +#define   DPIO_POST_DIV_LVDS2		3
>> +#define   DPIO_K_SHIFT			(24) /* 4 bits */
>> +#define   DPIO_P1_SHIFT			(21) /* 3 bits */
>> +#define   DPIO_P2_SHIFT			(16) /* 5 bits */
>> +#define   DPIO_N_SHIFT			(12) /* 4 bits */
>> +#define   DPIO_ENABLE_CALIBRATION	(1 << 11)
>> +#define   DPIO_M1DIV_SHIFT		(8) /* 3 bits */
>> +#define   DPIO_M2DIV_MASK		0xff
>> +#define _VLV_PLL_DW3_CH1		0x802c
>> +#define VLV_PLL_DW3(ch) _PIPE(ch, _VLV_PLL_DW3_CH0, _VLV_PLL_DW3_CH1)
>> +
>> +#define _VLV_PLL_DW5_CH0		0x8014
>> +#define   DPIO_REFSEL_OVERRIDE		27
>> +#define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
>> +#define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */
>> +#define   DPIO_PLL_REFCLK_SEL_SHIFT	16 /* 2 bits */
>> +#define   DPIO_PLL_REFCLK_SEL_MASK	3
>> +#define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
>> +#define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
>> +#define _VLV_PLL_DW5_CH1		0x8034
>> +#define VLV_PLL_DW5(ch) _PIPE(ch, _VLV_PLL_DW5_CH0, _VLV_PLL_DW5_CH1)
>> +
>> +#define _VLV_PLL_DW7_CH0		0x801c
>> +#define _VLV_PLL_DW7_CH1		0x803c
>> +#define VLV_PLL_DW7(ch) _PIPE(ch, _VLV_PLL_DW7_CH0, _VLV_PLL_DW7_CH1)
>> +
>> +#define _VLV_PLL_DW8_CH0		0x8040
>> +#define _VLV_PLL_DW8_CH1		0x8060
>> +#define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
>> +
>> +#define VLV_PLL_DW9_BCAST		0xc044
>> +#define _VLV_PLL_DW9_CH0		0x8044
>> +#define _VLV_PLL_DW9_CH1		0x8064
>> +#define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
>> +
>> +#define _VLV_PLL_DW10_CH0		0x8048
>> +#define _VLV_PLL_DW10_CH1		0x8068
>> +#define VLV_PLL_DW10(ch) _PIPE(ch, _VLV_PLL_DW10_CH0, _VLV_PLL_DW10_CH1)
>> +
>> +#define _VLV_PLL_DW11_CH0		0x804c
>> +#define _VLV_PLL_DW11_CH1		0x806c
>> +#define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
>> +
>> +/* Spec for ref block start counts at DW10 */
>> +#define VLV_REF_DW13			0x80ac
>> +
>> +#define VLV_CMN_DW0			0x8100
>> +
>> +/*
>> + * Per DDI channel DPIO regs
>> + */
>> +
>> +#define _VLV_PCS_DW0_CH0		0x8200
>> +#define _VLV_PCS_DW0_CH1		0x8400
>> +#define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
>> +#define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
>> +#define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
>> +#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
>> +#define VLV_PCS_DW0(ch) _PORT(ch, _VLV_PCS_DW0_CH0, _VLV_PCS_DW0_CH1)
>> +
>> +#define _VLV_PCS01_DW0_CH0		0x200
>> +#define _VLV_PCS23_DW0_CH0		0x400
>> +#define _VLV_PCS01_DW0_CH1		0x2600
>> +#define _VLV_PCS23_DW0_CH1		0x2800
>> +#define VLV_PCS01_DW0(ch) _PORT(ch, _VLV_PCS01_DW0_CH0, _VLV_PCS01_DW0_=
CH1)
>> +#define VLV_PCS23_DW0(ch) _PORT(ch, _VLV_PCS23_DW0_CH0, _VLV_PCS23_DW0_=
CH1)
>> +
>> +#define _VLV_PCS_DW1_CH0		0x8204
>> +#define _VLV_PCS_DW1_CH1		0x8404
>> +#define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
>> +#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
>> +#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
>> +#define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
>> +#define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
>> +#define VLV_PCS_DW1(ch) _PORT(ch, _VLV_PCS_DW1_CH0, _VLV_PCS_DW1_CH1)
>> +
>> +#define _VLV_PCS01_DW1_CH0		0x204
>> +#define _VLV_PCS23_DW1_CH0		0x404
>> +#define _VLV_PCS01_DW1_CH1		0x2604
>> +#define _VLV_PCS23_DW1_CH1		0x2804
>> +#define VLV_PCS01_DW1(ch) _PORT(ch, _VLV_PCS01_DW1_CH0, _VLV_PCS01_DW1_=
CH1)
>> +#define VLV_PCS23_DW1(ch) _PORT(ch, _VLV_PCS23_DW1_CH0, _VLV_PCS23_DW1_=
CH1)
>> +
>> +#define _VLV_PCS_DW8_CH0		0x8220
>> +#define _VLV_PCS_DW8_CH1		0x8420
>> +#define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
>> +#define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
>> +#define VLV_PCS_DW8(ch) _PORT(ch, _VLV_PCS_DW8_CH0, _VLV_PCS_DW8_CH1)
>> +
>> +#define _VLV_PCS01_DW8_CH0		0x0220
>> +#define _VLV_PCS23_DW8_CH0		0x0420
>> +#define _VLV_PCS01_DW8_CH1		0x2620
>> +#define _VLV_PCS23_DW8_CH1		0x2820
>> +#define VLV_PCS01_DW8(port) _PORT(port, _VLV_PCS01_DW8_CH0, _VLV_PCS01_=
DW8_CH1)
>> +#define VLV_PCS23_DW8(port) _PORT(port, _VLV_PCS23_DW8_CH0, _VLV_PCS23_=
DW8_CH1)
>> +
>> +#define _VLV_PCS_DW9_CH0		0x8224
>> +#define _VLV_PCS_DW9_CH1		0x8424
>> +#define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
>> +#define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
>> +#define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
>> +#define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
>> +#define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
>> +#define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
>> +#define	VLV_PCS_DW9(ch) _PORT(ch, _VLV_PCS_DW9_CH0, _VLV_PCS_DW9_CH1)
>> +
>> +#define _VLV_PCS01_DW9_CH0		0x224
>> +#define _VLV_PCS23_DW9_CH0		0x424
>> +#define _VLV_PCS01_DW9_CH1		0x2624
>> +#define _VLV_PCS23_DW9_CH1		0x2824
>> +#define VLV_PCS01_DW9(ch) _PORT(ch, _VLV_PCS01_DW9_CH0, _VLV_PCS01_DW9_=
CH1)
>> +#define VLV_PCS23_DW9(ch) _PORT(ch, _VLV_PCS23_DW9_CH0, _VLV_PCS23_DW9_=
CH1)
>> +
>> +#define _CHV_PCS_DW10_CH0		0x8228
>> +#define _CHV_PCS_DW10_CH1		0x8428
>> +#define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
>> +#define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
>> +#define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
>> +#define   DPIO_PCS_TX2DEEMP_9P5		(0 << 24)
>> +#define   DPIO_PCS_TX2DEEMP_6P0		(2 << 24)
>> +#define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
>> +#define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
>> +#define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
>> +#define CHV_PCS_DW10(ch) _PORT(ch, _CHV_PCS_DW10_CH0, _CHV_PCS_DW10_CH1)
>> +
>> +#define _VLV_PCS01_DW10_CH0		0x0228
>> +#define _VLV_PCS23_DW10_CH0		0x0428
>> +#define _VLV_PCS01_DW10_CH1		0x2628
>> +#define _VLV_PCS23_DW10_CH1		0x2828
>> +#define VLV_PCS01_DW10(port) _PORT(port, _VLV_PCS01_DW10_CH0, _VLV_PCS0=
1_DW10_CH1)
>> +#define VLV_PCS23_DW10(port) _PORT(port, _VLV_PCS23_DW10_CH0, _VLV_PCS2=
3_DW10_CH1)
>> +
>> +#define _VLV_PCS_DW11_CH0		0x822c
>> +#define _VLV_PCS_DW11_CH1		0x842c
>> +#define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
>> +#define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
>> +#define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
>> +#define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
>> +#define VLV_PCS_DW11(ch) _PORT(ch, _VLV_PCS_DW11_CH0, _VLV_PCS_DW11_CH1)
>> +
>> +#define _VLV_PCS01_DW11_CH0		0x022c
>> +#define _VLV_PCS23_DW11_CH0		0x042c
>> +#define _VLV_PCS01_DW11_CH1		0x262c
>> +#define _VLV_PCS23_DW11_CH1		0x282c
>> +#define VLV_PCS01_DW11(ch) _PORT(ch, _VLV_PCS01_DW11_CH0, _VLV_PCS01_DW=
11_CH1)
>> +#define VLV_PCS23_DW11(ch) _PORT(ch, _VLV_PCS23_DW11_CH0, _VLV_PCS23_DW=
11_CH1)
>> +
>> +#define _VLV_PCS01_DW12_CH0		0x0230
>> +#define _VLV_PCS23_DW12_CH0		0x0430
>> +#define _VLV_PCS01_DW12_CH1		0x2630
>> +#define _VLV_PCS23_DW12_CH1		0x2830
>> +#define VLV_PCS01_DW12(ch) _PORT(ch, _VLV_PCS01_DW12_CH0, _VLV_PCS01_DW=
12_CH1)
>> +#define VLV_PCS23_DW12(ch) _PORT(ch, _VLV_PCS23_DW12_CH0, _VLV_PCS23_DW=
12_CH1)
>> +
>> +#define _VLV_PCS_DW12_CH0		0x8230
>> +#define _VLV_PCS_DW12_CH1		0x8430
>> +#define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
>> +#define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
>> +#define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
>> +#define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
>> +#define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
>> +#define VLV_PCS_DW12(ch) _PORT(ch, _VLV_PCS_DW12_CH0, _VLV_PCS_DW12_CH1)
>> +
>> +#define _VLV_PCS_DW14_CH0		0x8238
>> +#define _VLV_PCS_DW14_CH1		0x8438
>> +#define	VLV_PCS_DW14(ch) _PORT(ch, _VLV_PCS_DW14_CH0, _VLV_PCS_DW14_CH1)
>> +
>> +#define _VLV_PCS_DW23_CH0		0x825c
>> +#define _VLV_PCS_DW23_CH1		0x845c
>> +#define VLV_PCS_DW23(ch) _PORT(ch, _VLV_PCS_DW23_CH0, _VLV_PCS_DW23_CH1)
>> +
>> +#define _VLV_TX_DW2_CH0			0x8288
>> +#define _VLV_TX_DW2_CH1			0x8488
>> +#define   DPIO_SWING_MARGIN000_SHIFT	16
>> +#define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
>> +#define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
>> +#define VLV_TX_DW2(ch) _PORT(ch, _VLV_TX_DW2_CH0, _VLV_TX_DW2_CH1)
>> +
>> +#define _VLV_TX_DW3_CH0			0x828c
>> +#define _VLV_TX_DW3_CH1			0x848c
>> +/* The following bit for CHV phy */
>> +#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
>> +#define   DPIO_SWING_MARGIN101_SHIFT	16
>> +#define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
>> +#define VLV_TX_DW3(ch) _PORT(ch, _VLV_TX_DW3_CH0, _VLV_TX_DW3_CH1)
>> +
>> +#define _VLV_TX_DW4_CH0			0x8290
>> +#define _VLV_TX_DW4_CH1			0x8490
>> +#define   DPIO_SWING_DEEMPH9P5_SHIFT	24
>> +#define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
>> +#define   DPIO_SWING_DEEMPH6P0_SHIFT	16
>> +#define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
>> +#define VLV_TX_DW4(ch) _PORT(ch, _VLV_TX_DW4_CH0, _VLV_TX_DW4_CH1)
>> +
>> +#define _VLV_TX3_DW4_CH0		0x690
>> +#define _VLV_TX3_DW4_CH1		0x2a90
>> +#define VLV_TX3_DW4(ch) _PORT(ch, _VLV_TX3_DW4_CH0, _VLV_TX3_DW4_CH1)
>> +
>> +#define _VLV_TX_DW5_CH0			0x8294
>> +#define _VLV_TX_DW5_CH1			0x8494
>> +#define   DPIO_TX_OCALINIT_EN		(1 << 31)
>> +#define VLV_TX_DW5(ch) _PORT(ch, _VLV_TX_DW5_CH0, _VLV_TX_DW5_CH1)
>> +
>> +#define _VLV_TX_DW11_CH0		0x82ac
>> +#define _VLV_TX_DW11_CH1		0x84ac
>> +#define VLV_TX_DW11(ch) _PORT(ch, _VLV_TX_DW11_CH0, _VLV_TX_DW11_CH1)
>> +
>> +#define _VLV_TX_DW14_CH0		0x82b8
>> +#define _VLV_TX_DW14_CH1		0x84b8
>> +#define VLV_TX_DW14(ch) _PORT(ch, _VLV_TX_DW14_CH0, _VLV_TX_DW14_CH1)
>> +
>> +/* CHV dpPhy registers */
>> +#define _CHV_PLL_DW0_CH0		0x8000
>> +#define _CHV_PLL_DW0_CH1		0x8180
>> +#define CHV_PLL_DW0(ch) _PIPE(ch, _CHV_PLL_DW0_CH0, _CHV_PLL_DW0_CH1)
>> +
>> +#define _CHV_PLL_DW1_CH0		0x8004
>> +#define _CHV_PLL_DW1_CH1		0x8184
>> +#define   DPIO_CHV_N_DIV_SHIFT		8
>> +#define   DPIO_CHV_M1_DIV_BY_2		(0 << 0)
>> +#define CHV_PLL_DW1(ch) _PIPE(ch, _CHV_PLL_DW1_CH0, _CHV_PLL_DW1_CH1)
>> +
>> +#define _CHV_PLL_DW2_CH0		0x8008
>> +#define _CHV_PLL_DW2_CH1		0x8188
>> +#define CHV_PLL_DW2(ch) _PIPE(ch, _CHV_PLL_DW2_CH0, _CHV_PLL_DW2_CH1)
>> +
>> +#define _CHV_PLL_DW3_CH0		0x800c
>> +#define _CHV_PLL_DW3_CH1		0x818c
>> +#define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
>> +#define  DPIO_CHV_FIRST_MOD		(0 << 8)
>> +#define  DPIO_CHV_SECOND_MOD		(1 << 8)
>> +#define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
>> +#define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
>> +#define CHV_PLL_DW3(ch) _PIPE(ch, _CHV_PLL_DW3_CH0, _CHV_PLL_DW3_CH1)
>> +
>> +#define _CHV_PLL_DW6_CH0		0x8018
>> +#define _CHV_PLL_DW6_CH1		0x8198
>> +#define   DPIO_CHV_GAIN_CTRL_SHIFT	16
>> +#define	  DPIO_CHV_INT_COEFF_SHIFT	8
>> +#define   DPIO_CHV_PROP_COEFF_SHIFT	0
>> +#define CHV_PLL_DW6(ch) _PIPE(ch, _CHV_PLL_DW6_CH0, _CHV_PLL_DW6_CH1)
>> +
>> +#define _CHV_PLL_DW8_CH0		0x8020
>> +#define _CHV_PLL_DW8_CH1		0x81A0
>> +#define   DPIO_CHV_TDC_TARGET_CNT_SHIFT 0
>> +#define   DPIO_CHV_TDC_TARGET_CNT_MASK  (0x3FF << 0)
>> +#define CHV_PLL_DW8(ch) _PIPE(ch, _CHV_PLL_DW8_CH0, _CHV_PLL_DW8_CH1)
>> +
>> +#define _CHV_PLL_DW9_CH0		0x8024
>> +#define _CHV_PLL_DW9_CH1		0x81A4
>> +#define  DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT		1 /* 3 bits */
>> +#define  DPIO_CHV_INT_LOCK_THRESHOLD_MASK		(7 << 1)
>> +#define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fi=
ne  */
>> +#define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
>> +
>> +#define _CHV_CMN_DW0_CH0               0x8100
>> +#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
>> +#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
>> +#define   DPIO_ALLDL_POWERDOWN			(1 << 1)
>> +#define   DPIO_ANYDL_POWERDOWN			(1 << 0)
>> +
>> +#define _CHV_CMN_DW5_CH0               0x8114
>> +#define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
>> +#define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
>> +#define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
>> +#define   CHV_BUFRIGHTENA1_MASK		(3 << 20)
>> +#define   CHV_BUFLEFTENA1_DISABLE	(0 << 22)
>> +#define   CHV_BUFLEFTENA1_NORMAL	(1 << 22)
>> +#define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
>> +#define   CHV_BUFLEFTENA1_MASK		(3 << 22)
>> +
>> +#define _CHV_CMN_DW13_CH0		0x8134
>> +#define _CHV_CMN_DW0_CH1		0x8080
>> +#define   DPIO_CHV_S1_DIV_SHIFT		21
>> +#define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
>> +#define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
>> +#define   DPIO_CHV_K_DIV_SHIFT		4
>> +#define   DPIO_PLL_FREQLOCK		(1 << 1)
>> +#define   DPIO_PLL_LOCK			(1 << 0)
>> +#define CHV_CMN_DW13(ch) _PIPE(ch, _CHV_CMN_DW13_CH0, _CHV_CMN_DW0_CH1)
>> +
>> +#define _CHV_CMN_DW14_CH0		0x8138
>> +#define _CHV_CMN_DW1_CH1		0x8084
>> +#define   DPIO_AFC_RECAL		(1 << 14)
>> +#define   DPIO_DCLKP_EN			(1 << 13)
>> +#define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
>> +#define   CHV_BUFLEFTENA2_NORMAL	(1 << 17) /* CL2 DW1 only */
>> +#define   CHV_BUFLEFTENA2_FORCE		(3 << 17) /* CL2 DW1 only */
>> +#define   CHV_BUFLEFTENA2_MASK		(3 << 17) /* CL2 DW1 only */
>> +#define   CHV_BUFRIGHTENA2_DISABLE	(0 << 19) /* CL2 DW1 only */
>> +#define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
>> +#define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
>> +#define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
>> +#define CHV_CMN_DW14(ch) _PIPE(ch, _CHV_CMN_DW14_CH0, _CHV_CMN_DW1_CH1)
>> +
>> +#define _CHV_CMN_DW19_CH0		0x814c
>> +#define _CHV_CMN_DW6_CH1		0x8098
>> +#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
>> +#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
>> +#define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
>> +#define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
>> +
>> +#define CHV_CMN_DW19(ch) _PIPE(ch, _CHV_CMN_DW19_CH0, _CHV_CMN_DW6_CH1)
>> +
>> +#define CHV_CMN_DW28			0x8170
>> +#define   DPIO_CL1POWERDOWNEN		(1 << 23)
>> +#define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
>> +#define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
>> +#define   DPIO_SUS_CLK_CONFIG_CLKREQ		(1 << 0)
>> +#define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
>> +#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
>> +
>> +#define CHV_CMN_DW30			0x8178
>> +#define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
>> +#define   DPIO_LRC_BYPASS		(1 << 3)
>> +
>> +#define _TXLANE(ch, lane, offset) ((ch ? 0x2400 : 0) + \
>> +					(lane) * 0x200 + (offset))
>> +
>> +#define CHV_TX_DW0(ch, lane) _TXLANE(ch, lane, 0x80)
>> +#define CHV_TX_DW1(ch, lane) _TXLANE(ch, lane, 0x84)
>> +#define CHV_TX_DW2(ch, lane) _TXLANE(ch, lane, 0x88)
>> +#define CHV_TX_DW3(ch, lane) _TXLANE(ch, lane, 0x8c)
>> +#define CHV_TX_DW4(ch, lane) _TXLANE(ch, lane, 0x90)
>> +#define CHV_TX_DW5(ch, lane) _TXLANE(ch, lane, 0x94)
>> +#define CHV_TX_DW6(ch, lane) _TXLANE(ch, lane, 0x98)
>> +#define CHV_TX_DW7(ch, lane) _TXLANE(ch, lane, 0x9c)
>> +#define CHV_TX_DW8(ch, lane) _TXLANE(ch, lane, 0xa0)
>> +#define CHV_TX_DW9(ch, lane) _TXLANE(ch, lane, 0xa4)
>> +#define CHV_TX_DW10(ch, lane) _TXLANE(ch, lane, 0xa8)
>> +#define CHV_TX_DW11(ch, lane) _TXLANE(ch, lane, 0xac)
>> +#define   DPIO_FRC_LATENCY_SHFIT	8
>> +#define CHV_TX_DW14(ch, lane) _TXLANE(ch, lane, 0xb8)
>> +#define   DPIO_UPAR_SHIFT		30
>> +
>> +#endif
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index bb63c7214e12..86700c6caa27 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -195,349 +195,6 @@
>>  #define  DPIO_SFR_BYPASS		(1 << 1)
>>  #define  DPIO_CMNRST			(1 << 0)
>>=20=20
>> -/*
>> - * Per pipe/PLL DPIO regs
>> - */
>> -#define _VLV_PLL_DW3_CH0		0x800c
>> -#define   DPIO_POST_DIV_SHIFT		(28) /* 3 bits */
>> -#define   DPIO_POST_DIV_DAC		0
>> -#define   DPIO_POST_DIV_HDMIDP		1 /* DAC 225-400M rate */
>> -#define   DPIO_POST_DIV_LVDS1		2
>> -#define   DPIO_POST_DIV_LVDS2		3
>> -#define   DPIO_K_SHIFT			(24) /* 4 bits */
>> -#define   DPIO_P1_SHIFT			(21) /* 3 bits */
>> -#define   DPIO_P2_SHIFT			(16) /* 5 bits */
>> -#define   DPIO_N_SHIFT			(12) /* 4 bits */
>> -#define   DPIO_ENABLE_CALIBRATION	(1 << 11)
>> -#define   DPIO_M1DIV_SHIFT		(8) /* 3 bits */
>> -#define   DPIO_M2DIV_MASK		0xff
>> -#define _VLV_PLL_DW3_CH1		0x802c
>> -#define VLV_PLL_DW3(ch) _PIPE(ch, _VLV_PLL_DW3_CH0, _VLV_PLL_DW3_CH1)
>> -
>> -#define _VLV_PLL_DW5_CH0		0x8014
>> -#define   DPIO_REFSEL_OVERRIDE		27
>> -#define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
>> -#define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */
>> -#define   DPIO_PLL_REFCLK_SEL_SHIFT	16 /* 2 bits */
>> -#define   DPIO_PLL_REFCLK_SEL_MASK	3
>> -#define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
>> -#define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
>> -#define _VLV_PLL_DW5_CH1		0x8034
>> -#define VLV_PLL_DW5(ch) _PIPE(ch, _VLV_PLL_DW5_CH0, _VLV_PLL_DW5_CH1)
>> -
>> -#define _VLV_PLL_DW7_CH0		0x801c
>> -#define _VLV_PLL_DW7_CH1		0x803c
>> -#define VLV_PLL_DW7(ch) _PIPE(ch, _VLV_PLL_DW7_CH0, _VLV_PLL_DW7_CH1)
>> -
>> -#define _VLV_PLL_DW8_CH0		0x8040
>> -#define _VLV_PLL_DW8_CH1		0x8060
>> -#define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
>> -
>> -#define VLV_PLL_DW9_BCAST		0xc044
>> -#define _VLV_PLL_DW9_CH0		0x8044
>> -#define _VLV_PLL_DW9_CH1		0x8064
>> -#define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
>> -
>> -#define _VLV_PLL_DW10_CH0		0x8048
>> -#define _VLV_PLL_DW10_CH1		0x8068
>> -#define VLV_PLL_DW10(ch) _PIPE(ch, _VLV_PLL_DW10_CH0, _VLV_PLL_DW10_CH1)
>> -
>> -#define _VLV_PLL_DW11_CH0		0x804c
>> -#define _VLV_PLL_DW11_CH1		0x806c
>> -#define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
>> -
>> -/* Spec for ref block start counts at DW10 */
>> -#define VLV_REF_DW13			0x80ac
>> -
>> -#define VLV_CMN_DW0			0x8100
>> -
>> -/*
>> - * Per DDI channel DPIO regs
>> - */
>> -
>> -#define _VLV_PCS_DW0_CH0		0x8200
>> -#define _VLV_PCS_DW0_CH1		0x8400
>> -#define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
>> -#define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
>> -#define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
>> -#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
>> -#define VLV_PCS_DW0(ch) _PORT(ch, _VLV_PCS_DW0_CH0, _VLV_PCS_DW0_CH1)
>> -
>> -#define _VLV_PCS01_DW0_CH0		0x200
>> -#define _VLV_PCS23_DW0_CH0		0x400
>> -#define _VLV_PCS01_DW0_CH1		0x2600
>> -#define _VLV_PCS23_DW0_CH1		0x2800
>> -#define VLV_PCS01_DW0(ch) _PORT(ch, _VLV_PCS01_DW0_CH0, _VLV_PCS01_DW0_=
CH1)
>> -#define VLV_PCS23_DW0(ch) _PORT(ch, _VLV_PCS23_DW0_CH0, _VLV_PCS23_DW0_=
CH1)
>> -
>> -#define _VLV_PCS_DW1_CH0		0x8204
>> -#define _VLV_PCS_DW1_CH1		0x8404
>> -#define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
>> -#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
>> -#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
>> -#define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
>> -#define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
>> -#define VLV_PCS_DW1(ch) _PORT(ch, _VLV_PCS_DW1_CH0, _VLV_PCS_DW1_CH1)
>> -
>> -#define _VLV_PCS01_DW1_CH0		0x204
>> -#define _VLV_PCS23_DW1_CH0		0x404
>> -#define _VLV_PCS01_DW1_CH1		0x2604
>> -#define _VLV_PCS23_DW1_CH1		0x2804
>> -#define VLV_PCS01_DW1(ch) _PORT(ch, _VLV_PCS01_DW1_CH0, _VLV_PCS01_DW1_=
CH1)
>> -#define VLV_PCS23_DW1(ch) _PORT(ch, _VLV_PCS23_DW1_CH0, _VLV_PCS23_DW1_=
CH1)
>> -
>> -#define _VLV_PCS_DW8_CH0		0x8220
>> -#define _VLV_PCS_DW8_CH1		0x8420
>> -#define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
>> -#define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
>> -#define VLV_PCS_DW8(ch) _PORT(ch, _VLV_PCS_DW8_CH0, _VLV_PCS_DW8_CH1)
>> -
>> -#define _VLV_PCS01_DW8_CH0		0x0220
>> -#define _VLV_PCS23_DW8_CH0		0x0420
>> -#define _VLV_PCS01_DW8_CH1		0x2620
>> -#define _VLV_PCS23_DW8_CH1		0x2820
>> -#define VLV_PCS01_DW8(port) _PORT(port, _VLV_PCS01_DW8_CH0, _VLV_PCS01_=
DW8_CH1)
>> -#define VLV_PCS23_DW8(port) _PORT(port, _VLV_PCS23_DW8_CH0, _VLV_PCS23_=
DW8_CH1)
>> -
>> -#define _VLV_PCS_DW9_CH0		0x8224
>> -#define _VLV_PCS_DW9_CH1		0x8424
>> -#define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
>> -#define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
>> -#define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
>> -#define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
>> -#define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
>> -#define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
>> -#define	VLV_PCS_DW9(ch) _PORT(ch, _VLV_PCS_DW9_CH0, _VLV_PCS_DW9_CH1)
>> -
>> -#define _VLV_PCS01_DW9_CH0		0x224
>> -#define _VLV_PCS23_DW9_CH0		0x424
>> -#define _VLV_PCS01_DW9_CH1		0x2624
>> -#define _VLV_PCS23_DW9_CH1		0x2824
>> -#define VLV_PCS01_DW9(ch) _PORT(ch, _VLV_PCS01_DW9_CH0, _VLV_PCS01_DW9_=
CH1)
>> -#define VLV_PCS23_DW9(ch) _PORT(ch, _VLV_PCS23_DW9_CH0, _VLV_PCS23_DW9_=
CH1)
>> -
>> -#define _CHV_PCS_DW10_CH0		0x8228
>> -#define _CHV_PCS_DW10_CH1		0x8428
>> -#define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
>> -#define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
>> -#define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
>> -#define   DPIO_PCS_TX2DEEMP_9P5		(0 << 24)
>> -#define   DPIO_PCS_TX2DEEMP_6P0		(2 << 24)
>> -#define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
>> -#define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
>> -#define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
>> -#define CHV_PCS_DW10(ch) _PORT(ch, _CHV_PCS_DW10_CH0, _CHV_PCS_DW10_CH1)
>> -
>> -#define _VLV_PCS01_DW10_CH0		0x0228
>> -#define _VLV_PCS23_DW10_CH0		0x0428
>> -#define _VLV_PCS01_DW10_CH1		0x2628
>> -#define _VLV_PCS23_DW10_CH1		0x2828
>> -#define VLV_PCS01_DW10(port) _PORT(port, _VLV_PCS01_DW10_CH0, _VLV_PCS0=
1_DW10_CH1)
>> -#define VLV_PCS23_DW10(port) _PORT(port, _VLV_PCS23_DW10_CH0, _VLV_PCS2=
3_DW10_CH1)
>> -
>> -#define _VLV_PCS_DW11_CH0		0x822c
>> -#define _VLV_PCS_DW11_CH1		0x842c
>> -#define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
>> -#define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
>> -#define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
>> -#define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
>> -#define VLV_PCS_DW11(ch) _PORT(ch, _VLV_PCS_DW11_CH0, _VLV_PCS_DW11_CH1)
>> -
>> -#define _VLV_PCS01_DW11_CH0		0x022c
>> -#define _VLV_PCS23_DW11_CH0		0x042c
>> -#define _VLV_PCS01_DW11_CH1		0x262c
>> -#define _VLV_PCS23_DW11_CH1		0x282c
>> -#define VLV_PCS01_DW11(ch) _PORT(ch, _VLV_PCS01_DW11_CH0, _VLV_PCS01_DW=
11_CH1)
>> -#define VLV_PCS23_DW11(ch) _PORT(ch, _VLV_PCS23_DW11_CH0, _VLV_PCS23_DW=
11_CH1)
>> -
>> -#define _VLV_PCS01_DW12_CH0		0x0230
>> -#define _VLV_PCS23_DW12_CH0		0x0430
>> -#define _VLV_PCS01_DW12_CH1		0x2630
>> -#define _VLV_PCS23_DW12_CH1		0x2830
>> -#define VLV_PCS01_DW12(ch) _PORT(ch, _VLV_PCS01_DW12_CH0, _VLV_PCS01_DW=
12_CH1)
>> -#define VLV_PCS23_DW12(ch) _PORT(ch, _VLV_PCS23_DW12_CH0, _VLV_PCS23_DW=
12_CH1)
>> -
>> -#define _VLV_PCS_DW12_CH0		0x8230
>> -#define _VLV_PCS_DW12_CH1		0x8430
>> -#define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
>> -#define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
>> -#define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
>> -#define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
>> -#define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
>> -#define VLV_PCS_DW12(ch) _PORT(ch, _VLV_PCS_DW12_CH0, _VLV_PCS_DW12_CH1)
>> -
>> -#define _VLV_PCS_DW14_CH0		0x8238
>> -#define _VLV_PCS_DW14_CH1		0x8438
>> -#define	VLV_PCS_DW14(ch) _PORT(ch, _VLV_PCS_DW14_CH0, _VLV_PCS_DW14_CH1)
>> -
>> -#define _VLV_PCS_DW23_CH0		0x825c
>> -#define _VLV_PCS_DW23_CH1		0x845c
>> -#define VLV_PCS_DW23(ch) _PORT(ch, _VLV_PCS_DW23_CH0, _VLV_PCS_DW23_CH1)
>> -
>> -#define _VLV_TX_DW2_CH0			0x8288
>> -#define _VLV_TX_DW2_CH1			0x8488
>> -#define   DPIO_SWING_MARGIN000_SHIFT	16
>> -#define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
>> -#define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
>> -#define VLV_TX_DW2(ch) _PORT(ch, _VLV_TX_DW2_CH0, _VLV_TX_DW2_CH1)
>> -
>> -#define _VLV_TX_DW3_CH0			0x828c
>> -#define _VLV_TX_DW3_CH1			0x848c
>> -/* The following bit for CHV phy */
>> -#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
>> -#define   DPIO_SWING_MARGIN101_SHIFT	16
>> -#define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
>> -#define VLV_TX_DW3(ch) _PORT(ch, _VLV_TX_DW3_CH0, _VLV_TX_DW3_CH1)
>> -
>> -#define _VLV_TX_DW4_CH0			0x8290
>> -#define _VLV_TX_DW4_CH1			0x8490
>> -#define   DPIO_SWING_DEEMPH9P5_SHIFT	24
>> -#define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
>> -#define   DPIO_SWING_DEEMPH6P0_SHIFT	16
>> -#define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
>> -#define VLV_TX_DW4(ch) _PORT(ch, _VLV_TX_DW4_CH0, _VLV_TX_DW4_CH1)
>> -
>> -#define _VLV_TX3_DW4_CH0		0x690
>> -#define _VLV_TX3_DW4_CH1		0x2a90
>> -#define VLV_TX3_DW4(ch) _PORT(ch, _VLV_TX3_DW4_CH0, _VLV_TX3_DW4_CH1)
>> -
>> -#define _VLV_TX_DW5_CH0			0x8294
>> -#define _VLV_TX_DW5_CH1			0x8494
>> -#define   DPIO_TX_OCALINIT_EN		(1 << 31)
>> -#define VLV_TX_DW5(ch) _PORT(ch, _VLV_TX_DW5_CH0, _VLV_TX_DW5_CH1)
>> -
>> -#define _VLV_TX_DW11_CH0		0x82ac
>> -#define _VLV_TX_DW11_CH1		0x84ac
>> -#define VLV_TX_DW11(ch) _PORT(ch, _VLV_TX_DW11_CH0, _VLV_TX_DW11_CH1)
>> -
>> -#define _VLV_TX_DW14_CH0		0x82b8
>> -#define _VLV_TX_DW14_CH1		0x84b8
>> -#define VLV_TX_DW14(ch) _PORT(ch, _VLV_TX_DW14_CH0, _VLV_TX_DW14_CH1)
>> -
>> -/* CHV dpPhy registers */
>> -#define _CHV_PLL_DW0_CH0		0x8000
>> -#define _CHV_PLL_DW0_CH1		0x8180
>> -#define CHV_PLL_DW0(ch) _PIPE(ch, _CHV_PLL_DW0_CH0, _CHV_PLL_DW0_CH1)
>> -
>> -#define _CHV_PLL_DW1_CH0		0x8004
>> -#define _CHV_PLL_DW1_CH1		0x8184
>> -#define   DPIO_CHV_N_DIV_SHIFT		8
>> -#define   DPIO_CHV_M1_DIV_BY_2		(0 << 0)
>> -#define CHV_PLL_DW1(ch) _PIPE(ch, _CHV_PLL_DW1_CH0, _CHV_PLL_DW1_CH1)
>> -
>> -#define _CHV_PLL_DW2_CH0		0x8008
>> -#define _CHV_PLL_DW2_CH1		0x8188
>> -#define CHV_PLL_DW2(ch) _PIPE(ch, _CHV_PLL_DW2_CH0, _CHV_PLL_DW2_CH1)
>> -
>> -#define _CHV_PLL_DW3_CH0		0x800c
>> -#define _CHV_PLL_DW3_CH1		0x818c
>> -#define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
>> -#define  DPIO_CHV_FIRST_MOD		(0 << 8)
>> -#define  DPIO_CHV_SECOND_MOD		(1 << 8)
>> -#define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
>> -#define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
>> -#define CHV_PLL_DW3(ch) _PIPE(ch, _CHV_PLL_DW3_CH0, _CHV_PLL_DW3_CH1)
>> -
>> -#define _CHV_PLL_DW6_CH0		0x8018
>> -#define _CHV_PLL_DW6_CH1		0x8198
>> -#define   DPIO_CHV_GAIN_CTRL_SHIFT	16
>> -#define	  DPIO_CHV_INT_COEFF_SHIFT	8
>> -#define   DPIO_CHV_PROP_COEFF_SHIFT	0
>> -#define CHV_PLL_DW6(ch) _PIPE(ch, _CHV_PLL_DW6_CH0, _CHV_PLL_DW6_CH1)
>> -
>> -#define _CHV_PLL_DW8_CH0		0x8020
>> -#define _CHV_PLL_DW8_CH1		0x81A0
>> -#define   DPIO_CHV_TDC_TARGET_CNT_SHIFT 0
>> -#define   DPIO_CHV_TDC_TARGET_CNT_MASK  (0x3FF << 0)
>> -#define CHV_PLL_DW8(ch) _PIPE(ch, _CHV_PLL_DW8_CH0, _CHV_PLL_DW8_CH1)
>> -
>> -#define _CHV_PLL_DW9_CH0		0x8024
>> -#define _CHV_PLL_DW9_CH1		0x81A4
>> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT		1 /* 3 bits */
>> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_MASK		(7 << 1)
>> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fi=
ne  */
>> -#define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
>> -
>> -#define _CHV_CMN_DW0_CH0               0x8100
>> -#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
>> -#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
>> -#define   DPIO_ALLDL_POWERDOWN			(1 << 1)
>> -#define   DPIO_ANYDL_POWERDOWN			(1 << 0)
>> -
>> -#define _CHV_CMN_DW5_CH0               0x8114
>> -#define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
>> -#define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
>> -#define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
>> -#define   CHV_BUFRIGHTENA1_MASK		(3 << 20)
>> -#define   CHV_BUFLEFTENA1_DISABLE	(0 << 22)
>> -#define   CHV_BUFLEFTENA1_NORMAL	(1 << 22)
>> -#define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
>> -#define   CHV_BUFLEFTENA1_MASK		(3 << 22)
>> -
>> -#define _CHV_CMN_DW13_CH0		0x8134
>> -#define _CHV_CMN_DW0_CH1		0x8080
>> -#define   DPIO_CHV_S1_DIV_SHIFT		21
>> -#define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
>> -#define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
>> -#define   DPIO_CHV_K_DIV_SHIFT		4
>> -#define   DPIO_PLL_FREQLOCK		(1 << 1)
>> -#define   DPIO_PLL_LOCK			(1 << 0)
>> -#define CHV_CMN_DW13(ch) _PIPE(ch, _CHV_CMN_DW13_CH0, _CHV_CMN_DW0_CH1)
>> -
>> -#define _CHV_CMN_DW14_CH0		0x8138
>> -#define _CHV_CMN_DW1_CH1		0x8084
>> -#define   DPIO_AFC_RECAL		(1 << 14)
>> -#define   DPIO_DCLKP_EN			(1 << 13)
>> -#define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
>> -#define   CHV_BUFLEFTENA2_NORMAL	(1 << 17) /* CL2 DW1 only */
>> -#define   CHV_BUFLEFTENA2_FORCE		(3 << 17) /* CL2 DW1 only */
>> -#define   CHV_BUFLEFTENA2_MASK		(3 << 17) /* CL2 DW1 only */
>> -#define   CHV_BUFRIGHTENA2_DISABLE	(0 << 19) /* CL2 DW1 only */
>> -#define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
>> -#define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
>> -#define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
>> -#define CHV_CMN_DW14(ch) _PIPE(ch, _CHV_CMN_DW14_CH0, _CHV_CMN_DW1_CH1)
>> -
>> -#define _CHV_CMN_DW19_CH0		0x814c
>> -#define _CHV_CMN_DW6_CH1		0x8098
>> -#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
>> -#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
>> -#define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
>> -#define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
>> -
>> -#define CHV_CMN_DW19(ch) _PIPE(ch, _CHV_CMN_DW19_CH0, _CHV_CMN_DW6_CH1)
>> -
>> -#define CHV_CMN_DW28			0x8170
>> -#define   DPIO_CL1POWERDOWNEN		(1 << 23)
>> -#define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
>> -#define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
>> -#define   DPIO_SUS_CLK_CONFIG_CLKREQ		(1 << 0)
>> -#define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
>> -#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
>> -
>> -#define CHV_CMN_DW30			0x8178
>> -#define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
>> -#define   DPIO_LRC_BYPASS		(1 << 3)
>> -
>> -#define _TXLANE(ch, lane, offset) ((ch ? 0x2400 : 0) + \
>> -					(lane) * 0x200 + (offset))
>> -
>> -#define CHV_TX_DW0(ch, lane) _TXLANE(ch, lane, 0x80)
>> -#define CHV_TX_DW1(ch, lane) _TXLANE(ch, lane, 0x84)
>> -#define CHV_TX_DW2(ch, lane) _TXLANE(ch, lane, 0x88)
>> -#define CHV_TX_DW3(ch, lane) _TXLANE(ch, lane, 0x8c)
>> -#define CHV_TX_DW4(ch, lane) _TXLANE(ch, lane, 0x90)
>> -#define CHV_TX_DW5(ch, lane) _TXLANE(ch, lane, 0x94)
>> -#define CHV_TX_DW6(ch, lane) _TXLANE(ch, lane, 0x98)
>> -#define CHV_TX_DW7(ch, lane) _TXLANE(ch, lane, 0x9c)
>> -#define CHV_TX_DW8(ch, lane) _TXLANE(ch, lane, 0xa0)
>> -#define CHV_TX_DW9(ch, lane) _TXLANE(ch, lane, 0xa4)
>> -#define CHV_TX_DW10(ch, lane) _TXLANE(ch, lane, 0xa8)
>> -#define CHV_TX_DW11(ch, lane) _TXLANE(ch, lane, 0xac)
>> -#define   DPIO_FRC_LATENCY_SHFIT	8
>> -#define CHV_TX_DW14(ch, lane) _TXLANE(ch, lane, 0xb8)
>> -#define   DPIO_UPAR_SHIFT		30
>> -
>>  /* BXT PHY registers */
>>  #define _BXT_PHY0_BASE			0x6C000
>>  #define _BXT_PHY1_BASE			0x162000
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
