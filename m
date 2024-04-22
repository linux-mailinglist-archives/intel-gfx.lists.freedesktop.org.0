Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CED78AC72C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F3A1128C6;
	Mon, 22 Apr 2024 08:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrFEEeN0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38811128C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774933; x=1745310933;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JpVQ5VrWEfkck9tM8OGTLzn2XUjbYD4uVMN5Ci+qZfQ=;
 b=DrFEEeN0PX6A0MdqQqOpqgn2/3XyBLiKWdMVjWIOthkt0gHewcdFbd1g
 +Qe4atJCeAsi1dQnWwbCjnmLWyjAJM5LvgTZ8ProN835aHptY1iBhXmOd
 8wl4FMaDdbguWWJKkTiDkX3o/ymgZpCAGHLkfnH3LPOgCrY3vGB17Tljn
 ugmvcjJoUTuAGkSVJUKEWs2X/isFnLFHthuMXTJoHozPHJtca+RSvERty
 EafPTcAEplCIxXmR14Ljw9nl1EzGswoYOpx1Rpc6pGP6EvQdUh0DAN8MH
 6TMAw1pieP+/jMzKpd+XEpSA2YG3R0Z+VAv5bQNncryf3pdPxob8wVUJZ g==;
X-CSE-ConnectionGUID: o6YorwJHRV64HpnRyqblPA==
X-CSE-MsgGUID: PRvUNTNQTuWr8O57+EEh2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453494"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453494"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:32 -0700
X-CSE-ConnectionGUID: KV4shZxvRT+Ypl5xaS7RXA==
X-CSE-MsgGUID: Wm2T8tQaSFKckqmxGzvN6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021835"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/14] drm/i915/dpio: Clean up VLV/CHV DPIO PHY register
 defines
Date: Mon, 22 Apr 2024 11:34:55 +0300
Message-ID: <20240422083457.23815-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The DPIO PHY registers follow clear numbering rules. Express
those in a few macros to get rid of the hand calculated
final offsets.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 271 +++++++-----------
 2 files changed, 99 insertions(+), 174 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 89a51b420075..fa665d353df9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1078,7 +1078,7 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
 
 	if (tx3_demph)
-		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(ch), tx3_demph);
+		vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(ch, 3), tx3_demph);
 
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b24ce3cff1a0..6d16f9944eff 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -195,10 +195,22 @@
 #define  DPIO_SFR_BYPASS		(1 << 1)
 #define  DPIO_CMNRST			(1 << 0)
 
+#define _VLV_CMN(dw) (0x8100 + (dw) * 4)
+#define _CHV_CMN(cl, dw) (0x8100 - (cl) * 0x80 + (dw) * 4)
+#define _VLV_PLL(ch, dw) (0x8000 + (ch) * 0x20 + (dw) * 4) /* dw 0-7,16-23 */
+#define _CHV_PLL(ch, dw) (0x8000 + (ch) * 0x180 + (dw) * 4)
+#define _VLV_REF(dw) (0x80a0 + ((dw) - 8) * 4) /* dw 8-15 */
+#define _VLV_PCS(ch, spline, dw) (0x200 + (ch) * 0x2400 + (spline) * 0x200 + (dw) * 4)
+#define _VLV_PCS_GRP(ch, dw) (0x8200 + (ch) * 0x200 + (dw) * 4)
+#define _VLV_PCS_BCAST(dw) (0xc000 + (dw) * 4)
+#define _VLV_TX(ch, lane, dw) (0x80 + (ch) * 0x2400 + (lane) * 0x200 + (dw) * 4)
+#define _VLV_TX_GRP(ch, dw) (0x8280 + (ch) * 0x200 + (dw) * 4)
+#define _VLV_TX_BCAST(dw) (0xc080 + (dw) * 4)
+
 /*
  * Per pipe/PLL DPIO regs
  */
-#define _VLV_PLL_DW3_CH0		0x800c
+#define VLV_PLL_DW3(ch)			_VLV_PLL((ch), 3)
 #define   DPIO_POST_DIV_SHIFT		(28) /* 3 bits */
 #define   DPIO_POST_DIV_DAC		0
 #define   DPIO_POST_DIV_HDMIDP		1 /* DAC 225-400M rate */
@@ -211,10 +223,8 @@
 #define   DPIO_ENABLE_CALIBRATION	(1 << 11)
 #define   DPIO_M1DIV_SHIFT		(8) /* 3 bits */
 #define   DPIO_M2DIV_MASK		0xff
-#define _VLV_PLL_DW3_CH1		0x802c
-#define VLV_PLL_DW3(ch) _PIPE(ch, _VLV_PLL_DW3_CH0, _VLV_PLL_DW3_CH1)
 
-#define _VLV_PLL_DW5_CH0		0x8014
+#define VLV_PLL_DW5(ch)			_VLV_PLL((ch), 5)
 #define   DPIO_REFSEL_OVERRIDE		27
 #define   DPIO_PLL_MODESEL_SHIFT	24 /* 3 bits */
 #define   DPIO_BIAS_CURRENT_CTL_SHIFT	21 /* 3 bits, always 0x7 */
@@ -222,101 +232,60 @@
 #define   DPIO_PLL_REFCLK_SEL_MASK	3
 #define   DPIO_DRIVER_CTL_SHIFT		12 /* always set to 0x8 */
 #define   DPIO_CLK_BIAS_CTL_SHIFT	8 /* always set to 0x5 */
-#define _VLV_PLL_DW5_CH1		0x8034
-#define VLV_PLL_DW5(ch) _PIPE(ch, _VLV_PLL_DW5_CH0, _VLV_PLL_DW5_CH1)
 
-#define _VLV_PLL_DW7_CH0		0x801c
-#define _VLV_PLL_DW7_CH1		0x803c
-#define VLV_PLL_DW7(ch) _PIPE(ch, _VLV_PLL_DW7_CH0, _VLV_PLL_DW7_CH1)
+#define VLV_PLL_DW7(ch)			_VLV_PLL((ch), 7)
 
-#define _VLV_PLL_DW16_CH0		0x8040
-#define _VLV_PLL_DW16_CH1		0x8060
-#define VLV_PLL_DW16(ch) _PIPE(ch, _VLV_PLL_DW16_CH0, _VLV_PLL_DW16_CH1)
+#define VLV_PLL_DW16(ch)		_VLV_PLL((ch), 16)
 
-#define _VLV_PLL_DW17_CH0		0x8044
-#define _VLV_PLL_DW17_CH1		0x8064
-#define VLV_PLL_DW17(ch) _PIPE(ch, _VLV_PLL_DW17_CH0, _VLV_PLL_DW17_CH1)
+#define VLV_PLL_DW17(ch)		_VLV_PLL((ch), 17)
 
-#define _VLV_PLL_DW18_CH0		0x8048
-#define _VLV_PLL_DW18_CH1		0x8068
-#define VLV_PLL_DW18(ch) _PIPE(ch, _VLV_PLL_DW18_CH0, _VLV_PLL_DW18_CH1)
+#define VLV_PLL_DW18(ch)		_VLV_PLL((ch), 18)
 
-#define _VLV_PLL_DW19_CH0		0x804c
-#define _VLV_PLL_DW19_CH1		0x806c
-#define VLV_PLL_DW19(ch) _PIPE(ch, _VLV_PLL_DW19_CH0, _VLV_PLL_DW19_CH1)
+#define VLV_PLL_DW19(ch)		_VLV_PLL((ch), 19)
 
-/* Spec for ref block start counts at DW8 */
-#define VLV_REF_DW11			0x80ac
+#define VLV_REF_DW11			_VLV_REF(11)
 
-#define VLV_CMN_DW0			0x8100
+#define VLV_CMN_DW0			_VLV_CMN(0)
 
 /*
  * Per DDI channel DPIO regs
  */
-
-#define _VLV_PCS_DW0_CH0_GRP		0x8200
-#define _VLV_PCS_DW0_CH1_GRP		0x8400
+#define VLV_PCS_DW0_GRP(ch)		_VLV_PCS_GRP((ch), 0)
+#define VLV_PCS01_DW0(ch)		_VLV_PCS((ch), 0, 0)
+#define VLV_PCS23_DW0(ch)		_VLV_PCS((ch), 1, 0)
 #define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
 #define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
 #define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
 #define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
-#define VLV_PCS_DW0_GRP(ch) _PORT(ch, _VLV_PCS_DW0_CH0_GRP, _VLV_PCS_DW0_CH1_GRP)
 
-#define _VLV_PCS01_DW0_CH0		0x200
-#define _VLV_PCS23_DW0_CH0		0x400
-#define _VLV_PCS01_DW0_CH1		0x2600
-#define _VLV_PCS23_DW0_CH1		0x2800
-#define VLV_PCS01_DW0(ch) _PORT(ch, _VLV_PCS01_DW0_CH0, _VLV_PCS01_DW0_CH1)
-#define VLV_PCS23_DW0(ch) _PORT(ch, _VLV_PCS23_DW0_CH0, _VLV_PCS23_DW0_CH1)
-
-#define _VLV_PCS_DW1_CH0_GRP		0x8204
-#define _VLV_PCS_DW1_CH1_GRP		0x8404
+#define VLV_PCS_DW1_GRP(ch)		_VLV_PCS_GRP((ch), 1)
+#define VLV_PCS01_DW1(ch)		_VLV_PCS((ch), 0, 1)
+#define VLV_PCS23_DW1(ch)		_VLV_PCS((ch), 1, 1)
 #define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
 #define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
 #define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
 #define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
 #define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
-#define VLV_PCS_DW1_GRP(ch) _PORT(ch, _VLV_PCS_DW1_CH0_GRP, _VLV_PCS_DW1_CH1_GRP)
 
-#define _VLV_PCS01_DW1_CH0		0x204
-#define _VLV_PCS23_DW1_CH0		0x404
-#define _VLV_PCS01_DW1_CH1		0x2604
-#define _VLV_PCS23_DW1_CH1		0x2804
-#define VLV_PCS01_DW1(ch) _PORT(ch, _VLV_PCS01_DW1_CH0, _VLV_PCS01_DW1_CH1)
-#define VLV_PCS23_DW1(ch) _PORT(ch, _VLV_PCS23_DW1_CH0, _VLV_PCS23_DW1_CH1)
-
-#define _VLV_PCS_DW8_CH0_GRP		0x8220
-#define _VLV_PCS_DW8_CH1_GRP		0x8420
+#define VLV_PCS_DW8_GRP(ch)		_VLV_PCS_GRP((ch), 8)
+#define VLV_PCS01_DW8(ch)		_VLV_PCS((ch), 0, 8)
+#define VLV_PCS23_DW8(ch)		_VLV_PCS((ch), 1, 8)
 #define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
 #define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
-#define VLV_PCS_DW8_GRP(ch) _PORT(ch, _VLV_PCS_DW8_CH0_GRP, _VLV_PCS_DW8_CH1_GRP)
 
-#define _VLV_PCS01_DW8_CH0		0x0220
-#define _VLV_PCS23_DW8_CH0		0x0420
-#define _VLV_PCS01_DW8_CH1		0x2620
-#define _VLV_PCS23_DW8_CH1		0x2820
-#define VLV_PCS01_DW8(port) _PORT(port, _VLV_PCS01_DW8_CH0, _VLV_PCS01_DW8_CH1)
-#define VLV_PCS23_DW8(port) _PORT(port, _VLV_PCS23_DW8_CH0, _VLV_PCS23_DW8_CH1)
-
-#define _VLV_PCS_DW9_CH0_GRP		0x8224
-#define _VLV_PCS_DW9_CH1_GRP		0x8424
+#define VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
+#define VLV_PCS01_DW9(ch)		_VLV_PCS((ch), 0, 9)
+#define VLV_PCS23_DW9(ch)		_VLV_PCS((ch), 1, 9)
 #define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
 #define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
 #define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
 #define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
 #define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
 #define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
-#define VLV_PCS_DW9_GRP(ch) _PORT(ch, _VLV_PCS_DW9_CH0_GRP, _VLV_PCS_DW9_CH1_GRP)
 
-#define _VLV_PCS01_DW9_CH0		0x224
-#define _VLV_PCS23_DW9_CH0		0x424
-#define _VLV_PCS01_DW9_CH1		0x2624
-#define _VLV_PCS23_DW9_CH1		0x2824
-#define VLV_PCS01_DW9(ch) _PORT(ch, _VLV_PCS01_DW9_CH0, _VLV_PCS01_DW9_CH1)
-#define VLV_PCS23_DW9(ch) _PORT(ch, _VLV_PCS23_DW9_CH0, _VLV_PCS23_DW9_CH1)
-
-#define _CHV_PCS_DW10_CH0_GRP		0x8228
-#define _CHV_PCS_DW10_CH1_GRP		0x8428
+#define VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
+#define VLV_PCS01_DW10(ch)		_VLV_PCS((ch), 0, 10)
+#define VLV_PCS23_DW10(ch)		_VLV_PCS((ch), 1, 10)
 #define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
 #define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
 #define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
@@ -325,147 +294,104 @@
 #define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
 #define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
 #define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
-#define CHV_PCS_DW10_GRP(ch) _PORT(ch, _CHV_PCS_DW10_CH0_GRP, _CHV_PCS_DW10_CH1_GRP)
 
-#define _VLV_PCS01_DW10_CH0		0x0228
-#define _VLV_PCS23_DW10_CH0		0x0428
-#define _VLV_PCS01_DW10_CH1		0x2628
-#define _VLV_PCS23_DW10_CH1		0x2828
-#define VLV_PCS01_DW10(port) _PORT(port, _VLV_PCS01_DW10_CH0, _VLV_PCS01_DW10_CH1)
-#define VLV_PCS23_DW10(port) _PORT(port, _VLV_PCS23_DW10_CH0, _VLV_PCS23_DW10_CH1)
-
-#define _VLV_PCS_DW11_CH0_GRP		0x822c
-#define _VLV_PCS_DW11_CH1_GRP		0x842c
+#define VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
+#define VLV_PCS01_DW11(ch)		_VLV_PCS((ch), 0, 11)
+#define VLV_PCS23_DW11(ch)		_VLV_PCS((ch), 1, 11)
 #define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
 #define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
 #define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
 #define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
-#define VLV_PCS_DW11_GRP(ch) _PORT(ch, _VLV_PCS_DW11_CH0_GRP, _VLV_PCS_DW11_CH1_GRP)
 
-#define _VLV_PCS01_DW11_CH0		0x022c
-#define _VLV_PCS23_DW11_CH0		0x042c
-#define _VLV_PCS01_DW11_CH1		0x262c
-#define _VLV_PCS23_DW11_CH1		0x282c
-#define VLV_PCS01_DW11(ch) _PORT(ch, _VLV_PCS01_DW11_CH0, _VLV_PCS01_DW11_CH1)
-#define VLV_PCS23_DW11(ch) _PORT(ch, _VLV_PCS23_DW11_CH0, _VLV_PCS23_DW11_CH1)
-
-#define _VLV_PCS01_DW12_CH0		0x0230
-#define _VLV_PCS23_DW12_CH0		0x0430
-#define _VLV_PCS01_DW12_CH1		0x2630
-#define _VLV_PCS23_DW12_CH1		0x2830
-#define VLV_PCS01_DW12(ch) _PORT(ch, _VLV_PCS01_DW12_CH0, _VLV_PCS01_DW12_CH1)
-#define VLV_PCS23_DW12(ch) _PORT(ch, _VLV_PCS23_DW12_CH0, _VLV_PCS23_DW12_CH1)
-
-#define _VLV_PCS_DW12_CH0_GRP		0x8230
-#define _VLV_PCS_DW12_CH1_GRP		0x8430
+#define VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
+#define VLV_PCS01_DW12(ch)		_VLV_PCS((ch), 0, 12)
+#define VLV_PCS23_DW12(ch)		_VLV_PCS((ch), 1, 12)
 #define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
 #define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
 #define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
 #define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
 #define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
-#define VLV_PCS_DW12_GRP(ch) _PORT(ch, _VLV_PCS_DW12_CH0_GRP, _VLV_PCS_DW12_CH1_GRP)
 
-#define _VLV_PCS_DW14_CH0_GRP		0x8238
-#define _VLV_PCS_DW14_CH1_GRP		0x8438
-#define VLV_PCS_DW14_GRP(ch) _PORT(ch, _VLV_PCS_DW14_CH0_GRP, _VLV_PCS_DW14_CH1_GRP)
+#define VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
+#define VLV_PCS01_DW14(ch)		_VLV_PCS((ch), 0, 14)
+#define VLV_PCS23_DW14(ch)		_VLV_PCS((ch), 1, 14)
 
-#define VLV_PCS_DW17_BCAST		0xc044
+#define VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
+#define VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
+#define VLV_PCS01_DW17(ch)		_VLV_PCS((ch), 0, 17)
+#define VLV_PCS23_DW17(ch)		_VLV_PCS((ch), 1, 17)
 
-#define _VLV_PCS_DW23_CH0_GRP		0x825c
-#define _VLV_PCS_DW23_CH1_GRP		0x845c
-#define VLV_PCS_DW23_GRP(ch) _PORT(ch, _VLV_PCS_DW23_CH0_GRP, _VLV_PCS_DW23_CH1_GRP)
+#define VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
+#define VLV_PCS01_DW23(ch)		_VLV_PCS((ch), 0, 23)
+#define VLV_PCS23_DW23(ch)		_VLV_PCS((ch), 1, 23)
 
-#define _VLV_TX_DW2_CH0_GRP		0x8288
-#define _VLV_TX_DW2_CH1_GRP		0x8488
+#define VLV_TX_DW2_GRP(ch)		_VLV_TX_GRP((ch), 2)
+#define VLV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
 #define   DPIO_SWING_MARGIN000_SHIFT	16
 #define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
 #define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
-#define VLV_TX_DW2_GRP(ch) _PORT(ch, _VLV_TX_DW2_CH0_GRP, _VLV_TX_DW2_CH1_GRP)
 
-#define _VLV_TX_DW3_CH0_GRP		0x828c
-#define _VLV_TX_DW3_CH1_GRP		0x848c
+#define VLV_TX_DW3_GRP(ch)		_VLV_TX_GRP((ch), 3)
+#define VLV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
 /* The following bit for CHV phy */
 #define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
 #define   DPIO_SWING_MARGIN101_SHIFT	16
 #define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
-#define VLV_TX_DW3_GRP(ch) _PORT(ch, _VLV_TX_DW3_CH0_GRP, _VLV_TX_DW3_CH1_GRP)
 
-#define _VLV_TX_DW4_CH0_GRP		0x8290
-#define _VLV_TX_DW4_CH1_GRP		0x8490
+#define VLV_TX_DW4_GRP(ch)		_VLV_TX_GRP((ch), 4)
+#define VLV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
 #define   DPIO_SWING_DEEMPH9P5_SHIFT	24
 #define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
 #define   DPIO_SWING_DEEMPH6P0_SHIFT	16
 #define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
-#define VLV_TX_DW4_GRP(ch) _PORT(ch, _VLV_TX_DW4_CH0_GRP, _VLV_TX_DW4_CH1_GRP)
 
-#define _VLV_TX3_DW4_CH0		0x690
-#define _VLV_TX3_DW4_CH1		0x2a90
-#define VLV_TX3_DW4(ch) _PORT(ch, _VLV_TX3_DW4_CH0, _VLV_TX3_DW4_CH1)
-
-#define _VLV_TX_DW5_CH0_GRP		0x8294
-#define _VLV_TX_DW5_CH1_GRP		0x8494
+#define VLV_TX_DW5_GRP(ch)		_VLV_TX_GRP((ch), 5)
+#define VLV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
 #define   DPIO_TX_OCALINIT_EN		(1 << 31)
-#define VLV_TX_DW5_GRP(ch) _PORT(ch, _VLV_TX_DW5_CH0_GRP, _VLV_TX_DW5_CH1_GRP)
 
-#define _VLV_TX_DW11_CH0_GRP		0x82ac
-#define _VLV_TX_DW11_CH1_GRP		0x84ac
-#define VLV_TX_DW11_GRP(ch) _PORT(ch, _VLV_TX_DW11_CH0_GRP, _VLV_TX_DW11_CH1_GRP)
+#define VLV_TX_DW11_GRP(ch)		_VLV_TX_GRP((ch), 11)
+#define VLV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
 
-#define _VLV_TX_DW14_CH0_GRP		0x82b8
-#define _VLV_TX_DW14_CH1_GRP		0x84b8
-#define VLV_TX_DW14_GRP(ch) _PORT(ch, _VLV_TX_DW14_CH0_GRP, _VLV_TX_DW14_CH1_GRP)
+#define VLV_TX_DW14_GRP(ch)		_VLV_TX_GRP((ch), 14)
+#define VLV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
 
 /* CHV dpPhy registers */
-#define _CHV_PLL_DW0_CH0		0x8000
-#define _CHV_PLL_DW0_CH1		0x8180
-#define CHV_PLL_DW0(ch) _PIPE(ch, _CHV_PLL_DW0_CH0, _CHV_PLL_DW0_CH1)
+#define CHV_PLL_DW0(ch)			_CHV_PLL((ch), 0)
 
-#define _CHV_PLL_DW1_CH0		0x8004
-#define _CHV_PLL_DW1_CH1		0x8184
+#define CHV_PLL_DW1(ch)			_CHV_PLL((ch), 1)
 #define   DPIO_CHV_N_DIV_SHIFT		8
 #define   DPIO_CHV_M1_DIV_BY_2		(0 << 0)
-#define CHV_PLL_DW1(ch) _PIPE(ch, _CHV_PLL_DW1_CH0, _CHV_PLL_DW1_CH1)
 
-#define _CHV_PLL_DW2_CH0		0x8008
-#define _CHV_PLL_DW2_CH1		0x8188
-#define CHV_PLL_DW2(ch) _PIPE(ch, _CHV_PLL_DW2_CH0, _CHV_PLL_DW2_CH1)
+#define CHV_PLL_DW2(ch)			_CHV_PLL((ch), 2)
 
-#define _CHV_PLL_DW3_CH0		0x800c
-#define _CHV_PLL_DW3_CH1		0x818c
+#define CHV_PLL_DW3(ch)			_CHV_PLL((ch), 3)
 #define  DPIO_CHV_FRAC_DIV_EN		(1 << 16)
 #define  DPIO_CHV_FIRST_MOD		(0 << 8)
 #define  DPIO_CHV_SECOND_MOD		(1 << 8)
 #define  DPIO_CHV_FEEDFWD_GAIN_SHIFT	0
 #define  DPIO_CHV_FEEDFWD_GAIN_MASK		(0xF << 0)
-#define CHV_PLL_DW3(ch) _PIPE(ch, _CHV_PLL_DW3_CH0, _CHV_PLL_DW3_CH1)
 
-#define _CHV_PLL_DW6_CH0		0x8018
-#define _CHV_PLL_DW6_CH1		0x8198
+#define CHV_PLL_DW6(ch)			_CHV_PLL((ch), 6)
 #define   DPIO_CHV_GAIN_CTRL_SHIFT	16
 #define	  DPIO_CHV_INT_COEFF_SHIFT	8
 #define   DPIO_CHV_PROP_COEFF_SHIFT	0
-#define CHV_PLL_DW6(ch) _PIPE(ch, _CHV_PLL_DW6_CH0, _CHV_PLL_DW6_CH1)
 
-#define _CHV_PLL_DW8_CH0		0x8020
-#define _CHV_PLL_DW8_CH1		0x81A0
+#define CHV_PLL_DW8(ch)			_CHV_PLL((ch), 8)
 #define   DPIO_CHV_TDC_TARGET_CNT_SHIFT 0
 #define   DPIO_CHV_TDC_TARGET_CNT_MASK  (0x3FF << 0)
-#define CHV_PLL_DW8(ch) _PIPE(ch, _CHV_PLL_DW8_CH0, _CHV_PLL_DW8_CH1)
 
-#define _CHV_PLL_DW9_CH0		0x8024
-#define _CHV_PLL_DW9_CH1		0x81A4
+#define CHV_PLL_DW9(ch)			_CHV_PLL((ch), 9)
 #define  DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT		1 /* 3 bits */
 #define  DPIO_CHV_INT_LOCK_THRESHOLD_MASK		(7 << 1)
 #define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fine  */
-#define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
 
-#define CHV_CMN_DW0_CH0			0x8100
+#define CHV_CMN_DW0_CH0			_CHV_CMN(0, 0)
 #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
 #define   DPIO_ALLDL_POWERDOWN			(1 << 1)
 #define   DPIO_ANYDL_POWERDOWN			(1 << 0)
 
-#define CHV_CMN_DW5_CH0			0x8114
+#define CHV_CMN_DW5_CH0			_CHV_CMN(0, 5)
 #define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
 #define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
 #define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
@@ -475,18 +401,18 @@
 #define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
 #define   CHV_BUFLEFTENA1_MASK		(3 << 22)
 
-#define CHV_CMN_DW13_CH0		0x8134
-#define CHV_CMN_DW0_CH1			0x8080
+#define CHV_CMN_DW13_CH0		_CHV_CMN(0, 13)
+#define CHV_CMN_DW0_CH1			_CHV_CMN(1, 0)
 #define   DPIO_CHV_S1_DIV_SHIFT		21
 #define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
 #define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
 #define   DPIO_CHV_K_DIV_SHIFT		4
 #define   DPIO_PLL_FREQLOCK		(1 << 1)
 #define   DPIO_PLL_LOCK			(1 << 0)
-#define CHV_CMN_DW13(ch) _PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
+#define CHV_CMN_DW13(ch)		_PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
 
-#define CHV_CMN_DW14_CH0		0x8138
-#define CHV_CMN_DW1_CH1			0x8084
+#define CHV_CMN_DW14_CH0		_CHV_CMN(0, 14)
+#define CHV_CMN_DW1_CH1			_CHV_CMN(1, 1)
 #define   DPIO_AFC_RECAL		(1 << 14)
 #define   DPIO_DCLKP_EN			(1 << 13)
 #define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
@@ -497,17 +423,17 @@
 #define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
-#define CHV_CMN_DW14(ch) _PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
+#define CHV_CMN_DW14(ch)		_PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
 
-#define CHV_CMN_DW19_CH0		0x814c
-#define CHV_CMN_DW6_CH1		0x8098
+#define CHV_CMN_DW19_CH0		_CHV_CMN(0, 19)
+#define CHV_CMN_DW6_CH1			_CHV_CMN(1, 6)
 #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
 #define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
 #define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
-#define CHV_CMN_DW19(ch) _PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
+#define CHV_CMN_DW19(ch)		_PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
 
-#define CHV_CMN_DW28			0x8170
+#define CHV_CMN_DW28			_CHV_CMN(0, 28)
 #define   DPIO_CL1POWERDOWNEN		(1 << 23)
 #define   DPIO_DYNPWRDOWNEN_CH0		(1 << 22)
 #define   DPIO_SUS_CLK_CONFIG_ON		(0 << 0)
@@ -515,27 +441,26 @@
 #define   DPIO_SUS_CLK_CONFIG_GATE		(2 << 0)
 #define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	(3 << 0)
 
-#define CHV_CMN_DW30			0x8178
+#define CHV_CMN_DW30			_CHV_CMN(0, 30)
 #define   DPIO_CL2_LDOFUSE_PWRENB	(1 << 6)
 #define   DPIO_LRC_BYPASS		(1 << 3)
 
-#define _TXLANE(ch, lane, offset) ((ch ? 0x2400 : 0) + \
-					(lane) * 0x200 + (offset))
+#define CHV_TX_DW0(ch, lane)		_VLV_TX((ch), (lane), 0)
+#define CHV_TX_DW1(ch, lane)		_VLV_TX((ch), (lane), 1)
+#define CHV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
+#define CHV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
+#define CHV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
+#define CHV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
+#define CHV_TX_DW6(ch, lane)		_VLV_TX((ch), (lane), 6)
+#define CHV_TX_DW7(ch, lane)		_VLV_TX((ch), (lane), 7)
+#define CHV_TX_DW8(ch, lane)		_VLV_TX((ch), (lane), 8)
+#define CHV_TX_DW9(ch, lane)		_VLV_TX((ch), (lane), 9)
+#define CHV_TX_DW10(ch, lane)		_VLV_TX((ch), (lane), 10)
 
-#define CHV_TX_DW0(ch, lane) _TXLANE(ch, lane, 0x80)
-#define CHV_TX_DW1(ch, lane) _TXLANE(ch, lane, 0x84)
-#define CHV_TX_DW2(ch, lane) _TXLANE(ch, lane, 0x88)
-#define CHV_TX_DW3(ch, lane) _TXLANE(ch, lane, 0x8c)
-#define CHV_TX_DW4(ch, lane) _TXLANE(ch, lane, 0x90)
-#define CHV_TX_DW5(ch, lane) _TXLANE(ch, lane, 0x94)
-#define CHV_TX_DW6(ch, lane) _TXLANE(ch, lane, 0x98)
-#define CHV_TX_DW7(ch, lane) _TXLANE(ch, lane, 0x9c)
-#define CHV_TX_DW8(ch, lane) _TXLANE(ch, lane, 0xa0)
-#define CHV_TX_DW9(ch, lane) _TXLANE(ch, lane, 0xa4)
-#define CHV_TX_DW10(ch, lane) _TXLANE(ch, lane, 0xa8)
-#define CHV_TX_DW11(ch, lane) _TXLANE(ch, lane, 0xac)
+#define CHV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
 #define   DPIO_FRC_LATENCY_SHFIT	8
-#define CHV_TX_DW14(ch, lane) _TXLANE(ch, lane, 0xb8)
+
+#define CHV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
 #define   DPIO_UPAR_SHIFT		30
 
 #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
-- 
2.43.2

