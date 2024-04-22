Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891588ACD25
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 14:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0402F10F5E5;
	Mon, 22 Apr 2024 12:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K2Ed7gfv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E293D10F5E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713789966; x=1745325966;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Px6ZbnxQ0j88hj/yo++hkC83CFNx7MsGokkPUkWFt5g=;
 b=K2Ed7gfv866amg9UEKb+4rvJ5LBBFKGuxBXkWr+inxVRATqtZEv/UksP
 JRk6VU00QQMUX67L19t43HeakvL1qcdc7FrOixHIATM42MhBrU9b2gGA/
 kqASy6q+9FoF07/aCqN2yFib8B6jmGRF/ekY0RFDI058R0b2Wfo1n5eyS
 wLTQzcZgeCKkDliaE6QEv9A1yAeN+35K2NkAfTceZ/w1PmJrDI1GOE8KL
 tHxsZFl7r9liE5AMjFmKkwxl9ScD3c7X8T9hiSxemLx29sUBgYIBP2E0N
 7pl4t0fv8XZBQre7jz1I73CZ0CyILdpwEVLbK4P62K9I8XjH9fn7SylW2 w==;
X-CSE-ConnectionGUID: fIR9K8mPQc+QHXXMYBxmsg==
X-CSE-MsgGUID: FgMg2XgxSyKZ7AlHcDby9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="20463772"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="20463772"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 05:46:06 -0700
X-CSE-ConnectionGUID: cNtbrYD0QBaIr9BLc2wUlg==
X-CSE-MsgGUID: nR6rKwsCQhathWGeElP9ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24513143"
Received: from ralbanes-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.63.128])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 05:46:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 13/14] drm/i915/dpio: Clean up the vlv/chv PHY register
 bits
In-Reply-To: <20240422083457.23815-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-14-ville.syrjala@linux.intel.com>
Date: Mon, 22 Apr 2024 15:46:01 +0300
Message-ID: <87edaxtvjq.fsf@intel.com>
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

On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_BIT() & co. for the vlv/chv DPIO PHY registers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

What a PITA patch to review!

A couple of comments inline, overall

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

[snip]

>  #define VLV_PLL_DW5(ch)			_VLV_PLL((ch), 5)
> -#define   DPIO_REFSEL_OVERRIDE		27
> -#define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
> -#define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */

Here the shift is 21...

> -#define   DPIO_PLL_REFCLK_SEL_SHIFT	16 /* 2 bits */
> -#define   DPIO_PLL_REFCLK_SEL_MASK	3
> -#define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
> -#define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
> +#define   DPIO_REFSEL_OVERRIDE		REG_BIT(27)
> +#define   DPIO_PLL_MODESEL_MASK		REG_GENMASK(26, 24)
> +#define   DPIO_BIAS_CURRENT_CTL_MASK	REG_GENMASK(22, 20) /* always 0x7 */

...and here it's 20. Is this is a fix to match spec or an accident?

Code offers no help as it's unused afaict.

> +#define   DPIO_PLL_REFCLK_SEL_MASK	REG_GENMASK(17, 16)
> +#define   DPIO_DRIVER_CTL_MASK		REG_GENMASK(15, 12) /* always set to 0x8=
 */
> +#define   DPIO_CLK_BIAS_CTL_MASK	REG_GENMASK(11, 8) /* always set to 0x5=
 */
>=20=20
>  #define VLV_PLL_DW7(ch)			_VLV_PLL((ch), 7)
>=20=20
> @@ -253,101 +259,110 @@
>  #define VLV_PCS_DW0_GRP(ch)		_VLV_PCS_GRP((ch), 0)
>  #define VLV_PCS01_DW0(ch)		_VLV_PCS((ch), 0, 0)
>  #define VLV_PCS23_DW0(ch)		_VLV_PCS((ch), 1, 0)
> -#define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
> -#define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
> -#define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
> -#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
> +#define   DPIO_PCS_TX_LANE2_RESET	REG_BIT(16)
> +#define   DPIO_PCS_TX_LANE1_RESET	REG_BIT(7)
> +#define   DPIO_LEFT_TXFIFO_RST_MASTER2	REG_BIT(4)
> +#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	REG_BIT(3)
>=20=20
> -#define VLV_PCS_DW1_GRP(ch)		_VLV_PCS_GRP((ch), 1)
> -#define VLV_PCS01_DW1(ch)		_VLV_PCS((ch), 0, 1)
> -#define VLV_PCS23_DW1(ch)		_VLV_PCS((ch), 1, 1)
> -#define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
> -#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
> -#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
> -#define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
> -#define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
> +#define VLV_PCS_DW1_GRP(ch)		 _VLV_PCS_GRP((ch), 1)
> +#define VLV_PCS01_DW1(ch) _VLV_PCS((ch), 0, 1)
> +#define VLV_PCS23_DW1(ch) _VLV_PCS((ch), 1, 1)
> +#define   CHV_PCS_REQ_SOFTRESET_EN		REG_BIT(23)
> +#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN		REG_BIT(22)
> +#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN	REG_BIT(21)
> +#define   DPIO_PCS_CLK_DATAWIDTH_MASK		REG_GENMASK(7, 6)
> +#define   DPIO_PCS_CLK_DATAWIDTH_8_10		REG_FIELD_PREP(DPIO_PCS_CLK_DATAW=
IDTH_MASK, 1)
> +#define   DPIO_PCS_CLK_DATAWIDTH_16_20		REG_FIELD_PREP(DPIO_PCS_CLK_DATA=
WIDTH_MASK, 2)
> +#define   DPIO_PCS_CLK_DATAWIDTH_32_40		REG_FIELD_PREP(DPIO_PCS_CLK_DATA=
WIDTH_MASK, 3)
> +#define   DPIO_PCS_CLK_SOFT_RESET		REG_BIT(5)
>=20=20
>  #define VLV_PCS_DW8_GRP(ch)		_VLV_PCS_GRP((ch), 8)
>  #define VLV_PCS01_DW8(ch)		_VLV_PCS((ch), 0, 8)
>  #define VLV_PCS23_DW8(ch)		_VLV_PCS((ch), 1, 8)
> -#define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
> -#define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
> +#define   DPIO_PCS_USEDCLKCHANNEL		REG_BIT(21)
> +#define   DPIO_PCS_USEDCLKCHANNEL_OVRRIDE	REG_BIT(20)
>=20=20
> -#define VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
> +#define	VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)

Is the TAB intentional here, and in a number of similar places below?

BR,
Jani.

>  #define VLV_PCS01_DW9(ch)		_VLV_PCS((ch), 0, 9)
>  #define VLV_PCS23_DW9(ch)		_VLV_PCS((ch), 1, 9)
> -#define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
> -#define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
> -#define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
> -#define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
> -#define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
> -#define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
> +#define   DPIO_PCS_TX2MARGIN_MASK	REG_GENMASK(15, 13)
> +#define   DPIO_PCS_TX2MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK,=
 0)
> +#define   DPIO_PCS_TX2MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK,=
 1)
> +#define   DPIO_PCS_TX1MARGIN_MASK	REG_GENMASK(12, 10)
> +#define   DPIO_PCS_TX1MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK,=
 0)
> +#define   DPIO_PCS_TX1MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK,=
 1)
>=20=20
> -#define VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
> +#define	VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
>  #define VLV_PCS01_DW10(ch)		_VLV_PCS((ch), 0, 10)
>  #define VLV_PCS23_DW10(ch)		_VLV_PCS((ch), 1, 10)
> -#define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
> -#define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
> -#define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
> -#define   DPIO_PCS_TX2DEEMP_9P5		(0 << 24)
> -#define   DPIO_PCS_TX2DEEMP_6P0		(2 << 24)
> -#define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
> -#define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
> -#define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
> +#define   DPIO_PCS_SWING_CALC_TX1_TX3	REG_BIT(31)
> +#define   DPIO_PCS_SWING_CALC_TX0_TX2	REG_BIT(30)
> +#define   DPIO_PCS_TX2DEEMP_MASK	REG_GENMASK(27, 24)
> +#define   DPIO_PCS_TX2DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, =
0)
> +#define   DPIO_PCS_TX2DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, =
2)
> +#define   DPIO_PCS_TX1DEEMP_MASK	REG_GENMASK(19, 16)
> +#define   DPIO_PCS_TX1DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, =
0)
> +#define   DPIO_PCS_TX1DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, =
2)
>=20=20
> -#define VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
> +#define	VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
>  #define VLV_PCS01_DW11(ch)		_VLV_PCS((ch), 0, 11)
>  #define VLV_PCS23_DW11(ch)		_VLV_PCS((ch), 1, 11)
> -#define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
> -#define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
> -#define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
> -#define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
> +#define   DPIO_TX2_STAGGER_MASK_MASK	REG_GENMASK(28, 24)
> +#define   DPIO_TX2_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MASK_=
MASK, (x))
> +#define   DPIO_LANEDESKEW_STRAP_OVRD	REG_BIT(3)
> +#define   DPIO_LEFT_TXFIFO_RST_MASTER	REG_BIT(1)
> +#define   DPIO_RIGHT_TXFIFO_RST_MASTER	REG_BIT(0)
>=20=20
> -#define VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
> +#define	VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
>  #define VLV_PCS01_DW12(ch)		_VLV_PCS((ch), 0, 12)
>  #define VLV_PCS23_DW12(ch)		_VLV_PCS((ch), 1, 12)
> -#define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
> -#define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
> -#define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
> -#define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
> -#define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
> +#define   DPIO_TX2_STAGGER_MULT_MASK	REG_GENMASK(22, 20)
> +#define   DPIO_TX2_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MULT_=
MASK, (x))
> +#define   DPIO_TX1_STAGGER_MULT_MASK	REG_GENMASK(20, 16)
> +#define   DPIO_TX1_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MULT_=
MASK, (x))
> +#define   DPIO_TX1_STAGGER_MASK_MASK	REG_GENMASK(12, 8)
> +#define   DPIO_TX1_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MASK_=
MASK, (x))
> +#define   DPIO_LANESTAGGER_STRAP_OVRD	REG_BIT(6)
> +#define   DPIO_LANESTAGGER_STRAP_MASK	REG_GENMASK(4, 0)
> +#define   DPIO_LANESTAGGER_STRAP(x)	REG_FIELD_PREP(DPIO_LANESTAGGER_STRA=
P_MASK, (x))
>=20=20
> -#define VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
> +#define	VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
>  #define VLV_PCS01_DW14(ch)		_VLV_PCS((ch), 0, 14)
>  #define VLV_PCS23_DW14(ch)		_VLV_PCS((ch), 1, 14)
>=20=20
> -#define VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
> -#define VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
> +#define	VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
> +#define	VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
>  #define VLV_PCS01_DW17(ch)		_VLV_PCS((ch), 0, 17)
>  #define VLV_PCS23_DW17(ch)		_VLV_PCS((ch), 1, 17)
>=20=20
> -#define VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
> +#define	VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
>  #define VLV_PCS01_DW23(ch)		_VLV_PCS((ch), 0, 23)
>  #define VLV_PCS23_DW23(ch)		_VLV_PCS((ch), 1, 23)
>=20=20
>  #define VLV_TX_DW2_GRP(ch)		_VLV_TX_GRP((ch), 2)
>  #define VLV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
> -#define   DPIO_SWING_MARGIN000_SHIFT	16
> -#define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
> -#define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
> +#define   DPIO_SWING_MARGIN000_MASK	REG_GENMASK(23, 16)
> +#define   DPIO_SWING_MARGIN000(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN000_MA=
SK, (x))
> +#define   DPIO_UNIQ_TRANS_SCALE_MASK	REG_GENMASK(15, 8)
> +#define   DPIO_UNIQ_TRANS_SCALE(x)	REG_FIELD_PREP(DPIO_UNIQ_TRANS_SCALE_=
MASK, (x))
>=20=20
>  #define VLV_TX_DW3_GRP(ch)		_VLV_TX_GRP((ch), 3)
>  #define VLV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
>  /* The following bit for CHV phy */
> -#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
> -#define   DPIO_SWING_MARGIN101_SHIFT	16
> -#define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
> +#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	REG_BIT(27)
> +#define   DPIO_SWING_MARGIN101_MASK	REG_GENMASK(23, 16)
> +#define   DPIO_SWING_MARGIN101(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN101_MA=
SK, (x))
>=20=20
>  #define VLV_TX_DW4_GRP(ch)		_VLV_TX_GRP((ch), 4)
>  #define VLV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
> -#define   DPIO_SWING_DEEMPH9P5_SHIFT	24
> -#define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
> -#define   DPIO_SWING_DEEMPH6P0_SHIFT	16
> -#define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
> +#define   DPIO_SWING_DEEMPH9P5_MASK	REG_GENMASK(31, 24)
> +#define   DPIO_SWING_DEEMPH9P5(x)	REG_FIELD_PREP(DPIO_SWING_DEEMPH9P5_MA=
SK, (x))
> +#define   DPIO_SWING_DEEMPH6P0_MASK	REG_GENMASK(23, 16)
> +#define   DPIO_SWING_DEEMPH6P0_SHIFT	REG_FIELD_PREP(DPIO_SWING_DEEMPH6P0=
_MASK, (x))
>=20=20
>  #define VLV_TX_DW5_GRP(ch)		_VLV_TX_GRP((ch), 5)
>  #define VLV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
> -#define   DPIO_TX_OCALINIT_EN		(1 << 31)
> +#define   DPIO_TX_OCALINIT_EN		REG_BIT(31)
>=20=20
>  #define VLV_TX_DW11_GRP(ch)		_VLV_TX_GRP((ch), 11)
>  #define VLV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
> @@ -357,93 +372,107 @@
>=20=20
>  /* CHV dpPhy registers */
>  #define CHV_PLL_DW0(ch)			_CHV_PLL((ch), 0)
> +#define   DPIO_CHV_M2_DIV_MASK		REG_GENMASK(7, 0)
> +#define   DPIO_CHV_M2_DIV(m2)		REG_FIELD_PREP(DPIO_CHV_M2_DIV_MASK, (m2))
>=20=20
>  #define CHV_PLL_DW1(ch)			_CHV_PLL((ch), 1)
> -#define   DPIO_CHV_N_DIV_SHIFT		8
> -#define   DPIO_CHV_M1_DIV_BY_2		(0 << 0)
> +#define   DPIO_CHV_N_DIV_MASK		REG_GENMASK(11, 8)
> +#define   DPIO_CHV_N_DIV(n)		REG_FIELD_PREP(DPIO_CHV_N_DIV_MASK, (n))
> +#define   DPIO_CHV_M1_DIV_MASK		REG_GENMASK(2, 0)
> +#define   DPIO_CHV_M1_DIV(m1)		REG_FIELD_PREP(DPIO_CHV_M1_DIV_MASK, (m1))
> +#define   DPIO_CHV_M1_DIV_BY_2		0
>=20=20
>  #define CHV_PLL_DW2(ch)			_CHV_PLL((ch), 2)
> +#define   DPIO_CHV_M2_FRAC_DIV_MASK	REG_GENMASK(21, 0)
> +#define   DPIO_CHV_M2_FRAC_DIV(m2_frac)	REG_FIELD_PREP(DPIO_CHV_M2_FRAC_=
DIV_MASK, (m2_frac))
>=20=20
>  #define CHV_PLL_DW3(ch)			_CHV_PLL((ch), 3)
> -#define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
> -#define  DPIO_CHV_FIRST_MOD		(0 << 8)
> -#define  DPIO_CHV_SECOND_MOD		(1 << 8)
> -#define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
> -#define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
> +#define   DPIO_CHV_FRAC_DIV_EN		REG_BIT(16)
> +#define   DPIO_CHV_SECOND_MOD		REG_BIT(8)
> +#define   DPIO_CHV_FEEDFWD_GAIN_MASK	REG_GENMASK(3, 0)
> +#define   DPIO_CHV_FEEDFWD_GAIN(x)	REG_FIELD_PREP(DPIO_CHV_FEEDFWD_GAIN_=
MASK, (x))
>=20=20
>  #define CHV_PLL_DW6(ch)			_CHV_PLL((ch), 6)
> -#define   DPIO_CHV_GAIN_CTRL_SHIFT	16
> -#define	  DPIO_CHV_INT_COEFF_SHIFT	8
> -#define   DPIO_CHV_PROP_COEFF_SHIFT	0
> +#define   DPIO_CHV_GAIN_CTRL_MASK	REG_GENMASK(18, 16)
> +#define   DPIO_CHV_GAIN_CTRL(x)		REG_FIELD_PREP(DPIO_CHV_GAIN_CTRL_MASK,=
 (x))
> +#define   DPIO_CHV_INT_COEFF_MASK	REG_GENMASK(12, 8)
> +#define   DPIO_CHV_INT_COEFF(x)		REG_FIELD_PREP(DPIO_CHV_INT_COEFF_MASK,=
 (x))
> +#define   DPIO_CHV_PROP_COEFF_MASK	REG_GENMASK(3, 0)
> +#define   DPIO_CHV_PROP_COEFF(x)	REG_FIELD_PREP(DPIO_CHV_PROP_COEFF_MASK=
, (x))
>=20=20
>  #define CHV_PLL_DW8(ch)			_CHV_PLL((ch), 8)
> -#define   DPIO_CHV_TDC_TARGET_CNT_SHIFT 0
> -#define   DPIO_CHV_TDC_TARGET_CNT_MASK  (0x3FF << 0)
> +#define   DPIO_CHV_TDC_TARGET_CNT_MASK	REG_GENMASK(9, 0)
> +#define   DPIO_CHV_TDC_TARGET_CNT(x)	REG_FIELD_PREP(DPIO_CHV_TDC_TARGET_=
CNT_MASK, (x))
>=20=20
>  #define CHV_PLL_DW9(ch)			_CHV_PLL((ch), 9)
> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT		1 /* 3 bits */
> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_MASK		(7 << 1)
> -#define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fin=
e  */
> +#define   DPIO_CHV_INT_LOCK_THRESHOLD_MASK		REG_GENMASK(3, 1)
> +#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LO=
CK_THRESHOLD_MASK, (x))
> +#define   DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	REG_BIT(0) /* 1: coarse=
 & 0 : fine  */
>=20=20
>  #define CHV_CMN_DW0_CH0			_CHV_CMN(0, 0)
> -#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
> -#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
> -#define   DPIO_ALLDL_POWERDOWN			(1 << 1)
> -#define   DPIO_ANYDL_POWERDOWN			(1 << 0)
> +#define   DPIO_ALLDL_POWERDOWN_CH0	REG_BIT(19)
> +#define   DPIO_ANYDL_POWERDOWN_CH0	REG_BIT(18)
> +#define   DPIO_ALLDL_POWERDOWN		BIT(1)
> +#define   DPIO_ANYDL_POWERDOWN		BIT(0)
>=20=20
>  #define CHV_CMN_DW5_CH0			_CHV_CMN(0, 5)
> -#define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
> -#define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
> -#define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
> -#define   CHV_BUFRIGHTENA1_MASK		(3 << 20)
> -#define   CHV_BUFLEFTENA1_DISABLE	(0 << 22)
> -#define   CHV_BUFLEFTENA1_NORMAL	(1 << 22)
> -#define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
> -#define   CHV_BUFLEFTENA1_MASK		(3 << 22)
> +#define   CHV_BUFRIGHTENA1_MASK		REG_GENMASK(21, 20)
> +#define   CHV_BUFRIGHTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK,=
 0)
> +#define   CHV_BUFRIGHTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, =
1)
> +#define   CHV_BUFRIGHTENA1_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 3)
> +#define   CHV_BUFLEFTENA1_MASK		REG_GENMASK(23, 22)
> +#define   CHV_BUFLEFTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 0)
> +#define   CHV_BUFLEFTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 1)
> +#define   CHV_BUFLEFTENA1_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 3)
>=20=20
>  #define CHV_CMN_DW13_CH0		_CHV_CMN(0, 13)
>  #define CHV_CMN_DW0_CH1			_CHV_CMN(1, 0)
> -#define   DPIO_CHV_S1_DIV_SHIFT		21
> -#define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
> -#define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
> -#define   DPIO_CHV_K_DIV_SHIFT		4
> -#define   DPIO_PLL_FREQLOCK		(1 << 1)
> -#define   DPIO_PLL_LOCK			(1 << 0)
> +#define   DPIO_CHV_S1_DIV_MASK		REG_GENMASK(23, 21)
> +#define   DPIO_CHV_S1_DIV(s1)		REG_FIELD_PREP(DPIO_CHV_S1_DIV_MASK, (s1))
> +#define   DPIO_CHV_P1_DIV_MASK		REG_GENMASK(15, 13)
> +#define   DPIO_CHV_P1_DIV(p1)		REG_FIELD_PREP(DPIO_CHV_P1_DIV_MASK, (p1))
> +#define   DPIO_CHV_P2_DIV_MASK		REG_GENMASK(12, 8)
> +#define   DPIO_CHV_P2_DIV(p2)		REG_FIELD_PREP(DPIO_CHV_P2_DIV_MASK, (p2))
> +#define   DPIO_CHV_K_DIV_MASK		REG_GENMASK(7, 4)
> +#define   DPIO_CHV_K_DIV(k)		REG_FIELD_PREP(DPIO_CHV_K_DIV_MASK, (k))
> +#define   DPIO_PLL_FREQLOCK		REG_BIT(1)
> +#define   DPIO_PLL_LOCK			REG_BIT(0)
>  #define CHV_CMN_DW13(ch)		_PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
>=20=20
>  #define CHV_CMN_DW14_CH0		_CHV_CMN(0, 14)
>  #define CHV_CMN_DW1_CH1			_CHV_CMN(1, 1)
> -#define   DPIO_AFC_RECAL		(1 << 14)
> -#define   DPIO_DCLKP_EN			(1 << 13)
> -#define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
> -#define   CHV_BUFLEFTENA2_NORMAL	(1 << 17) /* CL2 DW1 only */
> -#define   CHV_BUFLEFTENA2_FORCE		(3 << 17) /* CL2 DW1 only */
> -#define   CHV_BUFLEFTENA2_MASK		(3 << 17) /* CL2 DW1 only */
> -#define   CHV_BUFRIGHTENA2_DISABLE	(0 << 19) /* CL2 DW1 only */
> -#define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
> -#define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
> -#define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
> +#define   DPIO_AFC_RECAL		REG_BIT(14)
> +#define   DPIO_DCLKP_EN			REG_BIT(13)
> +#define   CHV_BUFLEFTENA2_MASK		REG_GENMASK(18, 17) /* CL2 DW1 only */
> +#define   CHV_BUFLEFTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 0)
> +#define   CHV_BUFLEFTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 1)
> +#define   CHV_BUFLEFTENA2_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 3)
> +#define   CHV_BUFRIGHTENA2_MASK		REG_GENMASK(20, 19) /* CL2 DW1 only */
> +#define   CHV_BUFRIGHTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK,=
 0)
> +#define   CHV_BUFRIGHTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, =
1)
> +#define   CHV_BUFRIGHTENA2_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 3)
>  #define CHV_CMN_DW14(ch)		_PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
>=20=20
>  #define CHV_CMN_DW19_CH0		_CHV_CMN(0, 19)
>  #define CHV_CMN_DW6_CH1			_CHV_CMN(1, 6)
> -#define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
> -#define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
> -#define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
> -#define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
> +#define   DPIO_ALLDL_POWERDOWN_CH1	REG_BIT(30) /* CL2 DW6 only */
> +#define   DPIO_ANYDL_POWERDOWN_CH1	REG_BIT(29) /* CL2 DW6 only */
> +#define   DPIO_DYNPWRDOWNEN_CH1		REG_BIT(28) /* CL2 DW6 only */
> +#define   CHV_CMN_USEDCLKCHANNEL	REG_BIT(13)
>  #define CHV_CMN_DW19(ch)		_PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
>=20=20
>  #define CHV_CMN_DW28			_CHV_CMN(0, 28)
> -#define   DPIO_CL1POWERDOWNEN		(1 << 23)
> -#define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
> -#define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
> -#define   DPIO_SUS_CLK_CONFIG_CLKREQ		(1 << 0)
> -#define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
> -#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
> +#define   DPIO_CL1POWERDOWNEN			REG_BIT(23)
> +#define   DPIO_DYNPWRDOWNEN_CH0			REG_BIT(22)
> +#define   DPIO_SUS_CLK_CONFIG_MASK		REG_GENMASK(1, 0)
> +#define   DPIO_SUS_CLK_CONFIG_ON		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MAS=
K, 0)
> +#define   DPIO_SUS_CLK_CONFIG_CLKREQ		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG=
_MASK, 1)
> +#define   DPIO_SUS_CLK_CONFIG_GATE		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_M=
ASK, 2)
> +#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	REG_FIELD_PREP(DPIO_SUS_CLK_CO=
NFIG_MASK, 3)
>=20=20
>  #define CHV_CMN_DW30			_CHV_CMN(0, 30)
> -#define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
> -#define   DPIO_LRC_BYPASS		(1 << 3)
> +#define   DPIO_CL2_LDOFUSE_PWRENB	REG_BIT(6)
> +#define   DPIO_LRC_BYPASS		REG_BIT(3)
>=20=20
>  #define CHV_TX_DW0(ch, lane)		_VLV_TX((ch), (lane), 0)
>  #define CHV_TX_DW1(ch, lane)		_VLV_TX((ch), (lane), 1)
> @@ -458,10 +487,11 @@
>  #define CHV_TX_DW10(ch, lane)		_VLV_TX((ch), (lane), 10)
>=20=20
>  #define CHV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
> -#define   DPIO_FRC_LATENCY_SHFIT	8
> +#define   DPIO_FRC_LATENCY_MASK		REG_GENMASK(10, 8)
> +#define   DPIO_FRC_LATENCY(x)		REG_FIELD_PREP(DPIO_FRC_LATENCY_MASK, (x))
>=20=20
>  #define CHV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
> -#define   DPIO_UPAR_SHIFT		30
> +#define   DPIO_UPAR			REG_BIT(30)
>=20=20
>  #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
>  #define  MIPIO_RST_CTRL				(1 << 2)

--=20
Jani Nikula, Intel
