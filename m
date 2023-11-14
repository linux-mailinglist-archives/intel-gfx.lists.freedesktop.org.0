Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED27E7EAE0D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 11:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85DAF10E1EF;
	Tue, 14 Nov 2023 10:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892CC10E1EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 10:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699957764; x=1731493764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=yP6+tel0B/FQ5uKQBqMWrgzDcPiQSnlqhORGl5Bai6s=;
 b=XXV5kBhNDqPYHqKg7J+XXqCBxNfnXpOjI3Ddk7t7/cgCnZAwGLzA50ie
 Zh3kHYRsWu5uL91vUPGe706YnAA5nA2azX+Bn1oBxcWNBs64QWdtEXLjc
 v5SVUa7BBYAlagkQazCV/+COdjMFYNvRllBLPKj3Av9p/+6m7NiDZySqt
 ff4I7Oqz+XF7qz1W0lhYY7IlfSbggUaUzXPA0lRgVADy1QYNHmq5T/UVz
 3GA48cZ0QNH/6SRL6tn5fP/5BTRF6H6EP0y6jWFjMXehakbdTWjrVmgi/
 nV1S0rBi7FeacAlp0GR3CKeIrHqwetKNol1ItUE+9RRGwbMUyW3yoxkvm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3687336"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; 
   d="scan'208";a="3687336"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:29:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="1011871530"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="1011871530"
Received: from hatran1-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.56.145])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 02:29:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZVM7kOm7BctYuTB_@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231113164711.4100548-1-jani.nikula@intel.com>
 <20231113164711.4100548-4-jani.nikula@intel.com>
 <ZVM7kOm7BctYuTB_@intel.com>
Date: Tue, 14 Nov 2023 12:29:19 +0200
Message-ID: <87msvgsk5c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: move sideband regs to
 vlv_sideband_reg.h
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

On Tue, 14 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 13, 2023 at 06:47:11PM +0200, Jani Nikula wrote:
>> Move the VLV/CHV sideband doorbell and data/addr MMIO registers as well
>> as the DPIO register definitions to vlv_sideband_reg.h.
>
> I have patches sitting in a branch to extract {vlv,bxt}_dpio_phy_regs.h
> instead. I think that split makes more sense in terms of how the
> hardware is structured.

I don't disagree. I'll drop this patch, please rebase yours once 1-3
have been merged. I'll send v2 of them shortly.

BR,
Jani.


>
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h         | 374 -----------------------
>>  drivers/gpu/drm/i915/vlv_sideband_reg.h | 377 ++++++++++++++++++++++++
>>  2 files changed, 377 insertions(+), 374 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 27dc903f0553..cd3974127b66 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -158,386 +158,12 @@
>>  #define  DEBUG_RESET_RENDER		(1 << 8)
>>  #define  DEBUG_RESET_DISPLAY		(1 << 9)
>>=20=20
>> -/*
>> - * IOSF sideband
>> - */
>> -#define VLV_IOSF_DOORBELL_REQ			_MMIO(VLV_DISPLAY_BASE + 0x2100)
>> -#define   IOSF_DEVFN_SHIFT			24
>> -#define   IOSF_OPCODE_SHIFT			16
>> -#define   IOSF_PORT_SHIFT			8
>> -#define   IOSF_BYTE_ENABLES_SHIFT		4
>> -#define   IOSF_BAR_SHIFT			1
>> -#define   IOSF_SB_BUSY				(1 << 0)
>> -#define   IOSF_PORT_BUNIT			0x03
>> -#define   IOSF_PORT_PUNIT			0x04
>> -#define   IOSF_PORT_NC				0x11
>> -#define   IOSF_PORT_DPIO			0x12
>> -#define   IOSF_PORT_GPIO_NC			0x13
>> -#define   IOSF_PORT_CCK				0x14
>> -#define   IOSF_PORT_DPIO_2			0x1a
>> -#define   IOSF_PORT_FLISDSI			0x1b
>> -#define   IOSF_PORT_GPIO_SC			0x48
>> -#define   IOSF_PORT_GPIO_SUS			0xa8
>> -#define   IOSF_PORT_CCU				0xa9
>> -#define   CHV_IOSF_PORT_GPIO_N			0x13
>> -#define   CHV_IOSF_PORT_GPIO_SE			0x48
>> -#define   CHV_IOSF_PORT_GPIO_E			0xa8
>> -#define   CHV_IOSF_PORT_GPIO_SW			0xb2
>> -#define VLV_IOSF_DATA				_MMIO(VLV_DISPLAY_BASE + 0x2104)
>> -#define VLV_IOSF_ADDR				_MMIO(VLV_DISPLAY_BASE + 0x2108)
>> -
>> -/* DPIO registers */
>> -#define DPIO_DEVFN			0
>> -
>>  #define DPIO_CTL			_MMIO(VLV_DISPLAY_BASE + 0x2110)
>>  #define  DPIO_MODSEL1			(1 << 3) /* if ref clk b =3D=3D 27 */
>>  #define  DPIO_MODSEL0			(1 << 2) /* if ref clk a =3D=3D 27 */
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
>> diff --git a/drivers/gpu/drm/i915/vlv_sideband_reg.h b/drivers/gpu/drm/i=
915/vlv_sideband_reg.h
>> index b7fbff3d0409..6abdd83f2fba 100644
>> --- a/drivers/gpu/drm/i915/vlv_sideband_reg.h
>> +++ b/drivers/gpu/drm/i915/vlv_sideband_reg.h
>> @@ -6,6 +6,40 @@
>>  #ifndef _VLV_SIDEBAND_REG_H_
>>  #define _VLV_SIDEBAND_REG_H_
>>=20=20
>> +#include "i915_reg_defs.h"
>> +#include "display/intel_display_reg_defs.h"
>> +
>> +/*
>> + * IOSF sideband
>> + */
>> +#define VLV_IOSF_DOORBELL_REQ			_MMIO(VLV_DISPLAY_BASE + 0x2100)
>> +#define   IOSF_DEVFN_SHIFT			24
>> +#define   IOSF_OPCODE_SHIFT			16
>> +#define   IOSF_PORT_SHIFT			8
>> +#define   IOSF_BYTE_ENABLES_SHIFT		4
>> +#define   IOSF_BAR_SHIFT			1
>> +#define   IOSF_SB_BUSY				(1 << 0)
>> +#define   IOSF_PORT_BUNIT			0x03
>> +#define   IOSF_PORT_PUNIT			0x04
>> +#define   IOSF_PORT_NC				0x11
>> +#define   IOSF_PORT_DPIO			0x12
>> +#define   IOSF_PORT_GPIO_NC			0x13
>> +#define   IOSF_PORT_CCK				0x14
>> +#define   IOSF_PORT_DPIO_2			0x1a
>> +#define   IOSF_PORT_FLISDSI			0x1b
>> +#define   IOSF_PORT_GPIO_SC			0x48
>> +#define   IOSF_PORT_GPIO_SUS			0xa8
>> +#define   IOSF_PORT_CCU				0xa9
>> +#define   CHV_IOSF_PORT_GPIO_N			0x13
>> +#define   CHV_IOSF_PORT_GPIO_SE			0x48
>> +#define   CHV_IOSF_PORT_GPIO_E			0xa8
>> +#define   CHV_IOSF_PORT_GPIO_SW			0xb2
>> +#define VLV_IOSF_DATA				_MMIO(VLV_DISPLAY_BASE + 0x2104)
>> +#define VLV_IOSF_ADDR				_MMIO(VLV_DISPLAY_BASE + 0x2108)
>> +
>> +/* DPIO registers */
>> +#define DPIO_DEVFN			0
>> +
>>  /* See configdb bunit SB addr map */
>>  #define BUNIT_REG_BISOC				0x11
>>=20=20
>> @@ -177,4 +211,347 @@
>>  #define  CCK_FREQUENCY_STATUS_SHIFT		8
>>  #define  CCK_FREQUENCY_VALUES			(0x1f << 0)
>>=20=20
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
>>  #endif /* _VLV_SIDEBAND_REG_H_ */
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
