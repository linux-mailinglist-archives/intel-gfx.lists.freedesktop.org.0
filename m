Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F63D8AC72F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CCC1128C9;
	Mon, 22 Apr 2024 08:35:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B49ugcwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6C11128CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774944; x=1745310944;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LqShy+PufeOJWINLXmDx5DpgxavqYveCf4x99qE+oWU=;
 b=B49ugcwGrBLbV+GRtmRUuNumVUwqV/ZS6uwzRArkJVkBhCVkVHdkGpfe
 AEWo3oPPaTCi3mubwMbsglEd4GSU06y1qSBkRUWmqXKmrqTDyGcFKwNBc
 Nb/k1eGfeFey8snclXpVZFry5wGkFNNge0e35rw3hH1EGRnG8ysEbrzDN
 IkGGHhB5iuReZVAaLlgtxJfQYf75ZP9ETJbjnGaGdCetb5DQ7IHvLRs9z
 kHRq7nM+FhxpARW+FVvKw4Zz5E4ZroE1Q/slw+C4px5632Rzoc2Dc93wJ
 MbAOYPFA4ZCSx09nf0OHRqjo8IjjIwfg/D4PYOsSbxwND2bxJdpb8TGDE A==;
X-CSE-ConnectionGUID: hG5NEnStSOm3kLMIkB5+Pg==
X-CSE-MsgGUID: 57r10jP5THeUL7aUPVXPfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453515"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453515"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:38 -0700
X-CSE-ConnectionGUID: EJ7ZHghZRHycAd5gqHa6qQ==
X-CSE-MsgGUID: kYjvDzrCRCOY3SYpHo7LAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915/dpio: Extract vlv_dpio_phy_regs.h
Date: Mon, 22 Apr 2024 11:34:57 +0300
Message-ID: <20240422083457.23815-15-ville.syrjala@linux.intel.com>
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

Pull the VLV/CHV DPIO PHY sideband registers to their own file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 .../i915/display/intel_display_power_well.c   |   1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   1 +
 drivers/gpu/drm/i915/display/intel_dpll.c     |   1 +
 .../gpu/drm/i915/display/vlv_dpio_phy_regs.h  | 309 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 298 -----------------
 6 files changed, 313 insertions(+), 298 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 96ed1490fec7..59f989207c74 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -120,6 +120,7 @@
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
+#include "vlv_dpio_phy_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e4ba6efc90e6..83f616097a29 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -27,6 +27,7 @@
 #include "intel_tc.h"
 #include "intel_vga.h"
 #include "skl_watermark.h"
+#include "vlv_dpio_phy_regs.h"
 #include "vlv_sideband.h"
 #include "vlv_sideband_reg.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 11875d18a8fc..d20e4e9cf7f7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -30,6 +30,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
+#include "vlv_dpio_phy_regs.h"
 #include "vlv_sideband.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c2ee95993a96..a981f45facb3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -20,6 +20,7 @@
 #include "intel_panel.h"
 #include "intel_pps.h"
 #include "intel_snps_phy.h"
+#include "vlv_dpio_phy_regs.h"
 #include "vlv_sideband.h"
 
 struct intel_dpll_funcs {
diff --git a/drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h b/drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h
new file mode 100644
index 000000000000..477506f0b2cc
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_dpio_phy_regs.h
@@ -0,0 +1,309 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __VLV_DPIO_PHY_REGS_H__
+#define __VLV_DPIO_PHY_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
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
+/*
+ * Per pipe/PLL DPIO regs
+ */
+#define VLV_PLL_DW3(ch)			_VLV_PLL((ch), 3)
+#define   DPIO_S1_DIV_MASK		REG_GENMASK(30, 28)
+#define   DPIO_S1_DIV(s1)		REG_FIELD_PREP(DPIO_S1_DIV_MASK, (s1))
+#define   DPIO_S1_DIV_DAC		0 /* 10, DAC 25-225M rate */
+#define   DPIO_S1_DIV_HDMIDP		1 /* 5, DAC 225-400M rate */
+#define   DPIO_S1_DIV_LVDS1		2 /* 14 */
+#define   DPIO_S1_DIV_LVDS2		3 /* 7 */
+#define   DPIO_K_DIV_MASK		REG_GENMASK(27, 24)
+#define   DPIO_K_DIV(k)			REG_FIELD_PREP(DPIO_K_DIV_MASK, (k))
+#define   DPIO_P1_DIV_MASK		REG_GENMASK(23, 21)
+#define   DPIO_P1_DIV(p1)		REG_FIELD_PREP(DPIO_P1_DIV_MASK, (p1))
+#define   DPIO_P2_DIV_MASK		REG_GENMASK(20, 16)
+#define   DPIO_P2_DIV(p2)		REG_FIELD_PREP(DPIO_P2_DIV_MASK, (p2))
+#define   DPIO_N_DIV_MASK		REG_GENMASK(15, 12)
+#define   DPIO_N_DIV(n)			REG_FIELD_PREP(DPIO_N_DIV_MASK, (n))
+#define   DPIO_ENABLE_CALIBRATION	REG_BIT(11)
+#define   DPIO_M1_DIV_MASK		REG_GENMASK(10, 8)
+#define   DPIO_M1_DIV(m1)		REG_FIELD_PREP(DPIO_M1_DIV_MASK, (m1))
+#define   DPIO_M2_DIV_MASK		REG_GENMASK(7, 0)
+#define   DPIO_M2_DIV(m2)		REG_FIELD_PREP(DPIO_M2_DIV_MASK, (m2))
+
+#define VLV_PLL_DW5(ch)			_VLV_PLL((ch), 5)
+#define   DPIO_REFSEL_OVERRIDE		REG_BIT(27)
+#define   DPIO_PLL_MODESEL_MASK		REG_GENMASK(26, 24)
+#define   DPIO_BIAS_CURRENT_CTL_MASK	REG_GENMASK(22, 20) /* always 0x7 */
+#define   DPIO_PLL_REFCLK_SEL_MASK	REG_GENMASK(17, 16)
+#define   DPIO_DRIVER_CTL_MASK		REG_GENMASK(15, 12) /* always set to 0x8 */
+#define   DPIO_CLK_BIAS_CTL_MASK	REG_GENMASK(11, 8) /* always set to 0x5 */
+
+#define VLV_PLL_DW7(ch)			_VLV_PLL((ch), 7)
+
+#define VLV_PLL_DW16(ch)		_VLV_PLL((ch), 16)
+
+#define VLV_PLL_DW17(ch)		_VLV_PLL((ch), 17)
+
+#define VLV_PLL_DW18(ch)		_VLV_PLL((ch), 18)
+
+#define VLV_PLL_DW19(ch)		_VLV_PLL((ch), 19)
+
+#define VLV_REF_DW11			_VLV_REF(11)
+
+#define VLV_CMN_DW0			_VLV_CMN(0)
+
+/*
+ * Per DDI channel DPIO regs
+ */
+#define VLV_PCS_DW0_GRP(ch)		_VLV_PCS_GRP((ch), 0)
+#define VLV_PCS01_DW0(ch)		_VLV_PCS((ch), 0, 0)
+#define VLV_PCS23_DW0(ch)		_VLV_PCS((ch), 1, 0)
+#define   DPIO_PCS_TX_LANE2_RESET	REG_BIT(16)
+#define   DPIO_PCS_TX_LANE1_RESET	REG_BIT(7)
+#define   DPIO_LEFT_TXFIFO_RST_MASTER2	REG_BIT(4)
+#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	REG_BIT(3)
+
+#define VLV_PCS_DW1_GRP(ch)		 _VLV_PCS_GRP((ch), 1)
+#define VLV_PCS01_DW1(ch) _VLV_PCS((ch), 0, 1)
+#define VLV_PCS23_DW1(ch) _VLV_PCS((ch), 1, 1)
+#define   CHV_PCS_REQ_SOFTRESET_EN		REG_BIT(23)
+#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN		REG_BIT(22)
+#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN	REG_BIT(21)
+#define   DPIO_PCS_CLK_DATAWIDTH_MASK		REG_GENMASK(7, 6)
+#define   DPIO_PCS_CLK_DATAWIDTH_8_10		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 1)
+#define   DPIO_PCS_CLK_DATAWIDTH_16_20		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 2)
+#define   DPIO_PCS_CLK_DATAWIDTH_32_40		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 3)
+#define   DPIO_PCS_CLK_SOFT_RESET		REG_BIT(5)
+
+#define VLV_PCS_DW8_GRP(ch)		_VLV_PCS_GRP((ch), 8)
+#define VLV_PCS01_DW8(ch)		_VLV_PCS((ch), 0, 8)
+#define VLV_PCS23_DW8(ch)		_VLV_PCS((ch), 1, 8)
+#define   DPIO_PCS_USEDCLKCHANNEL		REG_BIT(21)
+#define   DPIO_PCS_USEDCLKCHANNEL_OVRRIDE	REG_BIT(20)
+
+#define	VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
+#define VLV_PCS01_DW9(ch)		_VLV_PCS((ch), 0, 9)
+#define VLV_PCS23_DW9(ch)		_VLV_PCS((ch), 1, 9)
+#define   DPIO_PCS_TX2MARGIN_MASK	REG_GENMASK(15, 13)
+#define   DPIO_PCS_TX2MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 0)
+#define   DPIO_PCS_TX2MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 1)
+#define   DPIO_PCS_TX1MARGIN_MASK	REG_GENMASK(12, 10)
+#define   DPIO_PCS_TX1MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 0)
+#define   DPIO_PCS_TX1MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 1)
+
+#define	VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
+#define VLV_PCS01_DW10(ch)		_VLV_PCS((ch), 0, 10)
+#define VLV_PCS23_DW10(ch)		_VLV_PCS((ch), 1, 10)
+#define   DPIO_PCS_SWING_CALC_TX1_TX3	REG_BIT(31)
+#define   DPIO_PCS_SWING_CALC_TX0_TX2	REG_BIT(30)
+#define   DPIO_PCS_TX2DEEMP_MASK	REG_GENMASK(27, 24)
+#define   DPIO_PCS_TX2DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 0)
+#define   DPIO_PCS_TX2DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 2)
+#define   DPIO_PCS_TX1DEEMP_MASK	REG_GENMASK(19, 16)
+#define   DPIO_PCS_TX1DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 0)
+#define   DPIO_PCS_TX1DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 2)
+
+#define	VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
+#define VLV_PCS01_DW11(ch)		_VLV_PCS((ch), 0, 11)
+#define VLV_PCS23_DW11(ch)		_VLV_PCS((ch), 1, 11)
+#define   DPIO_TX2_STAGGER_MASK_MASK	REG_GENMASK(28, 24)
+#define   DPIO_TX2_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MASK_MASK, (x))
+#define   DPIO_LANEDESKEW_STRAP_OVRD	REG_BIT(3)
+#define   DPIO_LEFT_TXFIFO_RST_MASTER	REG_BIT(1)
+#define   DPIO_RIGHT_TXFIFO_RST_MASTER	REG_BIT(0)
+
+#define	VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
+#define VLV_PCS01_DW12(ch)		_VLV_PCS((ch), 0, 12)
+#define VLV_PCS23_DW12(ch)		_VLV_PCS((ch), 1, 12)
+#define   DPIO_TX2_STAGGER_MULT_MASK	REG_GENMASK(22, 20)
+#define   DPIO_TX2_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MULT_MASK, (x))
+#define   DPIO_TX1_STAGGER_MULT_MASK	REG_GENMASK(20, 16)
+#define   DPIO_TX1_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MULT_MASK, (x))
+#define   DPIO_TX1_STAGGER_MASK_MASK	REG_GENMASK(12, 8)
+#define   DPIO_TX1_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MASK_MASK, (x))
+#define   DPIO_LANESTAGGER_STRAP_OVRD	REG_BIT(6)
+#define   DPIO_LANESTAGGER_STRAP_MASK	REG_GENMASK(4, 0)
+#define   DPIO_LANESTAGGER_STRAP(x)	REG_FIELD_PREP(DPIO_LANESTAGGER_STRAP_MASK, (x))
+
+#define	VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
+#define VLV_PCS01_DW14(ch)		_VLV_PCS((ch), 0, 14)
+#define VLV_PCS23_DW14(ch)		_VLV_PCS((ch), 1, 14)
+
+#define	VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
+#define	VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
+#define VLV_PCS01_DW17(ch)		_VLV_PCS((ch), 0, 17)
+#define VLV_PCS23_DW17(ch)		_VLV_PCS((ch), 1, 17)
+
+#define	VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
+#define VLV_PCS01_DW23(ch)		_VLV_PCS((ch), 0, 23)
+#define VLV_PCS23_DW23(ch)		_VLV_PCS((ch), 1, 23)
+
+#define VLV_TX_DW2_GRP(ch)		_VLV_TX_GRP((ch), 2)
+#define VLV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
+#define   DPIO_SWING_MARGIN000_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_MARGIN000(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN000_MASK, (x))
+#define   DPIO_UNIQ_TRANS_SCALE_MASK	REG_GENMASK(15, 8)
+#define   DPIO_UNIQ_TRANS_SCALE(x)	REG_FIELD_PREP(DPIO_UNIQ_TRANS_SCALE_MASK, (x))
+
+#define VLV_TX_DW3_GRP(ch)		_VLV_TX_GRP((ch), 3)
+#define VLV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
+/* The following bit for CHV phy */
+#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	REG_BIT(27)
+#define   DPIO_SWING_MARGIN101_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_MARGIN101(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN101_MASK, (x))
+
+#define VLV_TX_DW4_GRP(ch)		_VLV_TX_GRP((ch), 4)
+#define VLV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
+#define   DPIO_SWING_DEEMPH9P5_MASK	REG_GENMASK(31, 24)
+#define   DPIO_SWING_DEEMPH9P5(x)	REG_FIELD_PREP(DPIO_SWING_DEEMPH9P5_MASK, (x))
+#define   DPIO_SWING_DEEMPH6P0_MASK	REG_GENMASK(23, 16)
+#define   DPIO_SWING_DEEMPH6P0_SHIFT	REG_FIELD_PREP(DPIO_SWING_DEEMPH6P0_MASK, (x))
+
+#define VLV_TX_DW5_GRP(ch)		_VLV_TX_GRP((ch), 5)
+#define VLV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
+#define   DPIO_TX_OCALINIT_EN		REG_BIT(31)
+
+#define VLV_TX_DW11_GRP(ch)		_VLV_TX_GRP((ch), 11)
+#define VLV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
+
+#define VLV_TX_DW14_GRP(ch)		_VLV_TX_GRP((ch), 14)
+#define VLV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
+
+/* CHV dpPhy registers */
+#define CHV_PLL_DW0(ch)			_CHV_PLL((ch), 0)
+#define   DPIO_CHV_M2_DIV_MASK		REG_GENMASK(7, 0)
+#define   DPIO_CHV_M2_DIV(m2)		REG_FIELD_PREP(DPIO_CHV_M2_DIV_MASK, (m2))
+
+#define CHV_PLL_DW1(ch)			_CHV_PLL((ch), 1)
+#define   DPIO_CHV_N_DIV_MASK		REG_GENMASK(11, 8)
+#define   DPIO_CHV_N_DIV(n)		REG_FIELD_PREP(DPIO_CHV_N_DIV_MASK, (n))
+#define   DPIO_CHV_M1_DIV_MASK		REG_GENMASK(2, 0)
+#define   DPIO_CHV_M1_DIV(m1)		REG_FIELD_PREP(DPIO_CHV_M1_DIV_MASK, (m1))
+#define   DPIO_CHV_M1_DIV_BY_2		0
+
+#define CHV_PLL_DW2(ch)			_CHV_PLL((ch), 2)
+#define   DPIO_CHV_M2_FRAC_DIV_MASK	REG_GENMASK(21, 0)
+#define   DPIO_CHV_M2_FRAC_DIV(m2_frac)	REG_FIELD_PREP(DPIO_CHV_M2_FRAC_DIV_MASK, (m2_frac))
+
+#define CHV_PLL_DW3(ch)			_CHV_PLL((ch), 3)
+#define   DPIO_CHV_FRAC_DIV_EN		REG_BIT(16)
+#define   DPIO_CHV_SECOND_MOD		REG_BIT(8)
+#define   DPIO_CHV_FEEDFWD_GAIN_MASK	REG_GENMASK(3, 0)
+#define   DPIO_CHV_FEEDFWD_GAIN(x)	REG_FIELD_PREP(DPIO_CHV_FEEDFWD_GAIN_MASK, (x))
+
+#define CHV_PLL_DW6(ch)			_CHV_PLL((ch), 6)
+#define   DPIO_CHV_GAIN_CTRL_MASK	REG_GENMASK(18, 16)
+#define   DPIO_CHV_GAIN_CTRL(x)		REG_FIELD_PREP(DPIO_CHV_GAIN_CTRL_MASK, (x))
+#define   DPIO_CHV_INT_COEFF_MASK	REG_GENMASK(12, 8)
+#define   DPIO_CHV_INT_COEFF(x)		REG_FIELD_PREP(DPIO_CHV_INT_COEFF_MASK, (x))
+#define   DPIO_CHV_PROP_COEFF_MASK	REG_GENMASK(3, 0)
+#define   DPIO_CHV_PROP_COEFF(x)	REG_FIELD_PREP(DPIO_CHV_PROP_COEFF_MASK, (x))
+
+#define CHV_PLL_DW8(ch)			_CHV_PLL((ch), 8)
+#define   DPIO_CHV_TDC_TARGET_CNT_MASK	REG_GENMASK(9, 0)
+#define   DPIO_CHV_TDC_TARGET_CNT(x)	REG_FIELD_PREP(DPIO_CHV_TDC_TARGET_CNT_MASK, (x))
+
+#define CHV_PLL_DW9(ch)			_CHV_PLL((ch), 9)
+#define   DPIO_CHV_INT_LOCK_THRESHOLD_MASK		REG_GENMASK(3, 1)
+#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))
+#define   DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	REG_BIT(0) /* 1: coarse & 0 : fine  */
+
+#define CHV_CMN_DW0_CH0			_CHV_CMN(0, 0)
+#define   DPIO_ALLDL_POWERDOWN_CH0	REG_BIT(19)
+#define   DPIO_ANYDL_POWERDOWN_CH0	REG_BIT(18)
+#define   DPIO_ALLDL_POWERDOWN		BIT(1)
+#define   DPIO_ANYDL_POWERDOWN		BIT(0)
+
+#define CHV_CMN_DW5_CH0			_CHV_CMN(0, 5)
+#define   CHV_BUFRIGHTENA1_MASK		REG_GENMASK(21, 20)
+#define   CHV_BUFRIGHTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 0)
+#define   CHV_BUFRIGHTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 1)
+#define   CHV_BUFRIGHTENA1_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 3)
+#define   CHV_BUFLEFTENA1_MASK		REG_GENMASK(23, 22)
+#define   CHV_BUFLEFTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 0)
+#define   CHV_BUFLEFTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 1)
+#define   CHV_BUFLEFTENA1_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 3)
+
+#define CHV_CMN_DW13_CH0		_CHV_CMN(0, 13)
+#define CHV_CMN_DW0_CH1			_CHV_CMN(1, 0)
+#define   DPIO_CHV_S1_DIV_MASK		REG_GENMASK(23, 21)
+#define   DPIO_CHV_S1_DIV(s1)		REG_FIELD_PREP(DPIO_CHV_S1_DIV_MASK, (s1))
+#define   DPIO_CHV_P1_DIV_MASK		REG_GENMASK(15, 13)
+#define   DPIO_CHV_P1_DIV(p1)		REG_FIELD_PREP(DPIO_CHV_P1_DIV_MASK, (p1))
+#define   DPIO_CHV_P2_DIV_MASK		REG_GENMASK(12, 8)
+#define   DPIO_CHV_P2_DIV(p2)		REG_FIELD_PREP(DPIO_CHV_P2_DIV_MASK, (p2))
+#define   DPIO_CHV_K_DIV_MASK		REG_GENMASK(7, 4)
+#define   DPIO_CHV_K_DIV(k)		REG_FIELD_PREP(DPIO_CHV_K_DIV_MASK, (k))
+#define   DPIO_PLL_FREQLOCK		REG_BIT(1)
+#define   DPIO_PLL_LOCK			REG_BIT(0)
+#define CHV_CMN_DW13(ch)		_PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
+
+#define CHV_CMN_DW14_CH0		_CHV_CMN(0, 14)
+#define CHV_CMN_DW1_CH1			_CHV_CMN(1, 1)
+#define   DPIO_AFC_RECAL		REG_BIT(14)
+#define   DPIO_DCLKP_EN			REG_BIT(13)
+#define   CHV_BUFLEFTENA2_MASK		REG_GENMASK(18, 17) /* CL2 DW1 only */
+#define   CHV_BUFLEFTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 0)
+#define   CHV_BUFLEFTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 1)
+#define   CHV_BUFLEFTENA2_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 3)
+#define   CHV_BUFRIGHTENA2_MASK		REG_GENMASK(20, 19) /* CL2 DW1 only */
+#define   CHV_BUFRIGHTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 0)
+#define   CHV_BUFRIGHTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 1)
+#define   CHV_BUFRIGHTENA2_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 3)
+#define CHV_CMN_DW14(ch)		_PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
+
+#define CHV_CMN_DW19_CH0		_CHV_CMN(0, 19)
+#define CHV_CMN_DW6_CH1			_CHV_CMN(1, 6)
+#define   DPIO_ALLDL_POWERDOWN_CH1	REG_BIT(30) /* CL2 DW6 only */
+#define   DPIO_ANYDL_POWERDOWN_CH1	REG_BIT(29) /* CL2 DW6 only */
+#define   DPIO_DYNPWRDOWNEN_CH1		REG_BIT(28) /* CL2 DW6 only */
+#define   CHV_CMN_USEDCLKCHANNEL	REG_BIT(13)
+#define CHV_CMN_DW19(ch)		_PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
+
+#define CHV_CMN_DW28			_CHV_CMN(0, 28)
+#define   DPIO_CL1POWERDOWNEN			REG_BIT(23)
+#define   DPIO_DYNPWRDOWNEN_CH0			REG_BIT(22)
+#define   DPIO_SUS_CLK_CONFIG_MASK		REG_GENMASK(1, 0)
+#define   DPIO_SUS_CLK_CONFIG_ON		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 0)
+#define   DPIO_SUS_CLK_CONFIG_CLKREQ		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 1)
+#define   DPIO_SUS_CLK_CONFIG_GATE		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 2)
+#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 3)
+
+#define CHV_CMN_DW30			_CHV_CMN(0, 30)
+#define   DPIO_CL2_LDOFUSE_PWRENB	REG_BIT(6)
+#define   DPIO_LRC_BYPASS		REG_BIT(3)
+
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
+
+#define CHV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
+#define   DPIO_FRC_LATENCY_MASK		REG_GENMASK(10, 8)
+#define   DPIO_FRC_LATENCY(x)		REG_FIELD_PREP(DPIO_FRC_LATENCY_MASK, (x))
+
+#define CHV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
+#define   DPIO_UPAR			REG_BIT(30)
+
+#endif /* __VLV_DPIO_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a2313658ecae..481ae5529ba2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -195,304 +195,6 @@
 #define  DPIO_SFR_BYPASS		(1 << 1)
 #define  DPIO_CMNRST			(1 << 0)
 
-#define _VLV_CMN(dw) (0x8100 + (dw) * 4)
-#define _CHV_CMN(cl, dw) (0x8100 - (cl) * 0x80 + (dw) * 4)
-#define _VLV_PLL(ch, dw) (0x8000 + (ch) * 0x20 + (dw) * 4) /* dw 0-7,16-23 */
-#define _CHV_PLL(ch, dw) (0x8000 + (ch) * 0x180 + (dw) * 4)
-#define _VLV_REF(dw) (0x80a0 + ((dw) - 8) * 4) /* dw 8-15 */
-#define _VLV_PCS(ch, spline, dw) (0x200 + (ch) * 0x2400 + (spline) * 0x200 + (dw) * 4)
-#define _VLV_PCS_GRP(ch, dw) (0x8200 + (ch) * 0x200 + (dw) * 4)
-#define _VLV_PCS_BCAST(dw) (0xc000 + (dw) * 4)
-#define _VLV_TX(ch, lane, dw) (0x80 + (ch) * 0x2400 + (lane) * 0x200 + (dw) * 4)
-#define _VLV_TX_GRP(ch, dw) (0x8280 + (ch) * 0x200 + (dw) * 4)
-#define _VLV_TX_BCAST(dw) (0xc080 + (dw) * 4)
-
-/*
- * Per pipe/PLL DPIO regs
- */
-#define VLV_PLL_DW3(ch)			_VLV_PLL((ch), 3)
-#define   DPIO_S1_DIV_MASK		REG_GENMASK(30, 28)
-#define   DPIO_S1_DIV(s1)		REG_FIELD_PREP(DPIO_S1_DIV_MASK, (s1))
-#define   DPIO_S1_DIV_DAC		0 /* 10, DAC 25-225M rate */
-#define   DPIO_S1_DIV_HDMIDP		1 /* 5, DAC 225-400M rate */
-#define   DPIO_S1_DIV_LVDS1		2 /* 14 */
-#define   DPIO_S1_DIV_LVDS2		3 /* 7 */
-#define   DPIO_K_DIV_MASK		REG_GENMASK(27, 24)
-#define   DPIO_K_DIV(k)			REG_FIELD_PREP(DPIO_K_DIV_MASK, (k))
-#define   DPIO_P1_DIV_MASK		REG_GENMASK(23, 21)
-#define   DPIO_P1_DIV(p1)		REG_FIELD_PREP(DPIO_P1_DIV_MASK, (p1))
-#define   DPIO_P2_DIV_MASK		REG_GENMASK(20, 16)
-#define   DPIO_P2_DIV(p2)		REG_FIELD_PREP(DPIO_P2_DIV_MASK, (p2))
-#define   DPIO_N_DIV_MASK		REG_GENMASK(15, 12)
-#define   DPIO_N_DIV(n)			REG_FIELD_PREP(DPIO_N_DIV_MASK, (n))
-#define   DPIO_ENABLE_CALIBRATION	REG_BIT(11)
-#define   DPIO_M1_DIV_MASK		REG_GENMASK(10, 8)
-#define   DPIO_M1_DIV(m1)		REG_FIELD_PREP(DPIO_M1_DIV_MASK, (m1))
-#define   DPIO_M2_DIV_MASK		REG_GENMASK(7, 0)
-#define   DPIO_M2_DIV(m2)		REG_FIELD_PREP(DPIO_M2_DIV_MASK, (m2))
-
-#define VLV_PLL_DW5(ch)			_VLV_PLL((ch), 5)
-#define   DPIO_REFSEL_OVERRIDE		REG_BIT(27)
-#define   DPIO_PLL_MODESEL_MASK		REG_GENMASK(26, 24)
-#define   DPIO_BIAS_CURRENT_CTL_MASK	REG_GENMASK(22, 20) /* always 0x7 */
-#define   DPIO_PLL_REFCLK_SEL_MASK	REG_GENMASK(17, 16)
-#define   DPIO_DRIVER_CTL_MASK		REG_GENMASK(15, 12) /* always set to 0x8 */
-#define   DPIO_CLK_BIAS_CTL_MASK	REG_GENMASK(11, 8) /* always set to 0x5 */
-
-#define VLV_PLL_DW7(ch)			_VLV_PLL((ch), 7)
-
-#define VLV_PLL_DW16(ch)		_VLV_PLL((ch), 16)
-
-#define VLV_PLL_DW17(ch)		_VLV_PLL((ch), 17)
-
-#define VLV_PLL_DW18(ch)		_VLV_PLL((ch), 18)
-
-#define VLV_PLL_DW19(ch)		_VLV_PLL((ch), 19)
-
-#define VLV_REF_DW11			_VLV_REF(11)
-
-#define VLV_CMN_DW0			_VLV_CMN(0)
-
-/*
- * Per DDI channel DPIO regs
- */
-#define VLV_PCS_DW0_GRP(ch)		_VLV_PCS_GRP((ch), 0)
-#define VLV_PCS01_DW0(ch)		_VLV_PCS((ch), 0, 0)
-#define VLV_PCS23_DW0(ch)		_VLV_PCS((ch), 1, 0)
-#define   DPIO_PCS_TX_LANE2_RESET	REG_BIT(16)
-#define   DPIO_PCS_TX_LANE1_RESET	REG_BIT(7)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER2	REG_BIT(4)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER2	REG_BIT(3)
-
-#define VLV_PCS_DW1_GRP(ch)		 _VLV_PCS_GRP((ch), 1)
-#define VLV_PCS01_DW1(ch) _VLV_PCS((ch), 0, 1)
-#define VLV_PCS23_DW1(ch) _VLV_PCS((ch), 1, 1)
-#define   CHV_PCS_REQ_SOFTRESET_EN		REG_BIT(23)
-#define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN		REG_BIT(22)
-#define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN	REG_BIT(21)
-#define   DPIO_PCS_CLK_DATAWIDTH_MASK		REG_GENMASK(7, 6)
-#define   DPIO_PCS_CLK_DATAWIDTH_8_10		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 1)
-#define   DPIO_PCS_CLK_DATAWIDTH_16_20		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 2)
-#define   DPIO_PCS_CLK_DATAWIDTH_32_40		REG_FIELD_PREP(DPIO_PCS_CLK_DATAWIDTH_MASK, 3)
-#define   DPIO_PCS_CLK_SOFT_RESET		REG_BIT(5)
-
-#define VLV_PCS_DW8_GRP(ch)		_VLV_PCS_GRP((ch), 8)
-#define VLV_PCS01_DW8(ch)		_VLV_PCS((ch), 0, 8)
-#define VLV_PCS23_DW8(ch)		_VLV_PCS((ch), 1, 8)
-#define   DPIO_PCS_USEDCLKCHANNEL		REG_BIT(21)
-#define   DPIO_PCS_USEDCLKCHANNEL_OVRRIDE	REG_BIT(20)
-
-#define	VLV_PCS_DW9_GRP(ch)		_VLV_PCS_GRP((ch), 9)
-#define VLV_PCS01_DW9(ch)		_VLV_PCS((ch), 0, 9)
-#define VLV_PCS23_DW9(ch)		_VLV_PCS((ch), 1, 9)
-#define   DPIO_PCS_TX2MARGIN_MASK	REG_GENMASK(15, 13)
-#define   DPIO_PCS_TX2MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 0)
-#define   DPIO_PCS_TX2MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX2MARGIN_MASK, 1)
-#define   DPIO_PCS_TX1MARGIN_MASK	REG_GENMASK(12, 10)
-#define   DPIO_PCS_TX1MARGIN_000	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 0)
-#define   DPIO_PCS_TX1MARGIN_101	REG_FIELD_PREP(DPIO_PCS_TX1MARGIN_MASK, 1)
-
-#define	VLV_PCS_DW10_GRP(ch)		_VLV_PCS_GRP((ch), 10)
-#define VLV_PCS01_DW10(ch)		_VLV_PCS((ch), 0, 10)
-#define VLV_PCS23_DW10(ch)		_VLV_PCS((ch), 1, 10)
-#define   DPIO_PCS_SWING_CALC_TX1_TX3	REG_BIT(31)
-#define   DPIO_PCS_SWING_CALC_TX0_TX2	REG_BIT(30)
-#define   DPIO_PCS_TX2DEEMP_MASK	REG_GENMASK(27, 24)
-#define   DPIO_PCS_TX2DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 0)
-#define   DPIO_PCS_TX2DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX2DEEMP_MASK, 2)
-#define   DPIO_PCS_TX1DEEMP_MASK	REG_GENMASK(19, 16)
-#define   DPIO_PCS_TX1DEEMP_9P5		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 0)
-#define   DPIO_PCS_TX1DEEMP_6P0		REG_FIELD_PREP(DPIO_PCS_TX1DEEMP_MASK, 2)
-
-#define	VLV_PCS_DW11_GRP(ch)		_VLV_PCS_GRP((ch), 11)
-#define VLV_PCS01_DW11(ch)		_VLV_PCS((ch), 0, 11)
-#define VLV_PCS23_DW11(ch)		_VLV_PCS((ch), 1, 11)
-#define   DPIO_TX2_STAGGER_MASK_MASK	REG_GENMASK(28, 24)
-#define   DPIO_TX2_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MASK_MASK, (x))
-#define   DPIO_LANEDESKEW_STRAP_OVRD	REG_BIT(3)
-#define   DPIO_LEFT_TXFIFO_RST_MASTER	REG_BIT(1)
-#define   DPIO_RIGHT_TXFIFO_RST_MASTER	REG_BIT(0)
-
-#define	VLV_PCS_DW12_GRP(ch)		_VLV_PCS_GRP((ch), 12)
-#define VLV_PCS01_DW12(ch)		_VLV_PCS((ch), 0, 12)
-#define VLV_PCS23_DW12(ch)		_VLV_PCS((ch), 1, 12)
-#define   DPIO_TX2_STAGGER_MULT_MASK	REG_GENMASK(22, 20)
-#define   DPIO_TX2_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX2_STAGGER_MULT_MASK, (x))
-#define   DPIO_TX1_STAGGER_MULT_MASK	REG_GENMASK(20, 16)
-#define   DPIO_TX1_STAGGER_MULT(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MULT_MASK, (x))
-#define   DPIO_TX1_STAGGER_MASK_MASK	REG_GENMASK(12, 8)
-#define   DPIO_TX1_STAGGER_MASK(x)	REG_FIELD_PREP(DPIO_TX1_STAGGER_MASK_MASK, (x))
-#define   DPIO_LANESTAGGER_STRAP_OVRD	REG_BIT(6)
-#define   DPIO_LANESTAGGER_STRAP_MASK	REG_GENMASK(4, 0)
-#define   DPIO_LANESTAGGER_STRAP(x)	REG_FIELD_PREP(DPIO_LANESTAGGER_STRAP_MASK, (x))
-
-#define	VLV_PCS_DW14_GRP(ch)		_VLV_PCS_GRP((ch), 14)
-#define VLV_PCS01_DW14(ch)		_VLV_PCS((ch), 0, 14)
-#define VLV_PCS23_DW14(ch)		_VLV_PCS((ch), 1, 14)
-
-#define	VLV_PCS_DW17_BCAST		_VLV_PCS_BCAST(17)
-#define	VLV_PCS_DW17_GRP(ch)		_VLV_PCS_GRP((ch), 17)
-#define VLV_PCS01_DW17(ch)		_VLV_PCS((ch), 0, 17)
-#define VLV_PCS23_DW17(ch)		_VLV_PCS((ch), 1, 17)
-
-#define	VLV_PCS_DW23_GRP(ch)		_VLV_PCS_GRP((ch), 23)
-#define VLV_PCS01_DW23(ch)		_VLV_PCS((ch), 0, 23)
-#define VLV_PCS23_DW23(ch)		_VLV_PCS((ch), 1, 23)
-
-#define VLV_TX_DW2_GRP(ch)		_VLV_TX_GRP((ch), 2)
-#define VLV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
-#define   DPIO_SWING_MARGIN000_MASK	REG_GENMASK(23, 16)
-#define   DPIO_SWING_MARGIN000(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN000_MASK, (x))
-#define   DPIO_UNIQ_TRANS_SCALE_MASK	REG_GENMASK(15, 8)
-#define   DPIO_UNIQ_TRANS_SCALE(x)	REG_FIELD_PREP(DPIO_UNIQ_TRANS_SCALE_MASK, (x))
-
-#define VLV_TX_DW3_GRP(ch)		_VLV_TX_GRP((ch), 3)
-#define VLV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
-/* The following bit for CHV phy */
-#define   DPIO_TX_UNIQ_TRANS_SCALE_EN	REG_BIT(27)
-#define   DPIO_SWING_MARGIN101_MASK	REG_GENMASK(23, 16)
-#define   DPIO_SWING_MARGIN101(x)	REG_FIELD_PREP(DPIO_SWING_MARGIN101_MASK, (x))
-
-#define VLV_TX_DW4_GRP(ch)		_VLV_TX_GRP((ch), 4)
-#define VLV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
-#define   DPIO_SWING_DEEMPH9P5_MASK	REG_GENMASK(31, 24)
-#define   DPIO_SWING_DEEMPH9P5(x)	REG_FIELD_PREP(DPIO_SWING_DEEMPH9P5_MASK, (x))
-#define   DPIO_SWING_DEEMPH6P0_MASK	REG_GENMASK(23, 16)
-#define   DPIO_SWING_DEEMPH6P0_SHIFT	REG_FIELD_PREP(DPIO_SWING_DEEMPH6P0_MASK, (x))
-
-#define VLV_TX_DW5_GRP(ch)		_VLV_TX_GRP((ch), 5)
-#define VLV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
-#define   DPIO_TX_OCALINIT_EN		REG_BIT(31)
-
-#define VLV_TX_DW11_GRP(ch)		_VLV_TX_GRP((ch), 11)
-#define VLV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
-
-#define VLV_TX_DW14_GRP(ch)		_VLV_TX_GRP((ch), 14)
-#define VLV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
-
-/* CHV dpPhy registers */
-#define CHV_PLL_DW0(ch)			_CHV_PLL((ch), 0)
-#define   DPIO_CHV_M2_DIV_MASK		REG_GENMASK(7, 0)
-#define   DPIO_CHV_M2_DIV(m2)		REG_FIELD_PREP(DPIO_CHV_M2_DIV_MASK, (m2))
-
-#define CHV_PLL_DW1(ch)			_CHV_PLL((ch), 1)
-#define   DPIO_CHV_N_DIV_MASK		REG_GENMASK(11, 8)
-#define   DPIO_CHV_N_DIV(n)		REG_FIELD_PREP(DPIO_CHV_N_DIV_MASK, (n))
-#define   DPIO_CHV_M1_DIV_MASK		REG_GENMASK(2, 0)
-#define   DPIO_CHV_M1_DIV(m1)		REG_FIELD_PREP(DPIO_CHV_M1_DIV_MASK, (m1))
-#define   DPIO_CHV_M1_DIV_BY_2		0
-
-#define CHV_PLL_DW2(ch)			_CHV_PLL((ch), 2)
-#define   DPIO_CHV_M2_FRAC_DIV_MASK	REG_GENMASK(21, 0)
-#define   DPIO_CHV_M2_FRAC_DIV(m2_frac)	REG_FIELD_PREP(DPIO_CHV_M2_FRAC_DIV_MASK, (m2_frac))
-
-#define CHV_PLL_DW3(ch)			_CHV_PLL((ch), 3)
-#define   DPIO_CHV_FRAC_DIV_EN		REG_BIT(16)
-#define   DPIO_CHV_SECOND_MOD		REG_BIT(8)
-#define   DPIO_CHV_FEEDFWD_GAIN_MASK	REG_GENMASK(3, 0)
-#define   DPIO_CHV_FEEDFWD_GAIN(x)	REG_FIELD_PREP(DPIO_CHV_FEEDFWD_GAIN_MASK, (x))
-
-#define CHV_PLL_DW6(ch)			_CHV_PLL((ch), 6)
-#define   DPIO_CHV_GAIN_CTRL_MASK	REG_GENMASK(18, 16)
-#define   DPIO_CHV_GAIN_CTRL(x)		REG_FIELD_PREP(DPIO_CHV_GAIN_CTRL_MASK, (x))
-#define   DPIO_CHV_INT_COEFF_MASK	REG_GENMASK(12, 8)
-#define   DPIO_CHV_INT_COEFF(x)		REG_FIELD_PREP(DPIO_CHV_INT_COEFF_MASK, (x))
-#define   DPIO_CHV_PROP_COEFF_MASK	REG_GENMASK(3, 0)
-#define   DPIO_CHV_PROP_COEFF(x)	REG_FIELD_PREP(DPIO_CHV_PROP_COEFF_MASK, (x))
-
-#define CHV_PLL_DW8(ch)			_CHV_PLL((ch), 8)
-#define   DPIO_CHV_TDC_TARGET_CNT_MASK	REG_GENMASK(9, 0)
-#define   DPIO_CHV_TDC_TARGET_CNT(x)	REG_FIELD_PREP(DPIO_CHV_TDC_TARGET_CNT_MASK, (x))
-
-#define CHV_PLL_DW9(ch)			_CHV_PLL((ch), 9)
-#define   DPIO_CHV_INT_LOCK_THRESHOLD_MASK		REG_GENMASK(3, 1)
-#define   DPIO_CHV_INT_LOCK_THRESHOLD(x)		REG_FIELD_PREP(DPIO_CHV_INT_LOCK_THRESHOLD_MASK, (x))
-#define   DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	REG_BIT(0) /* 1: coarse & 0 : fine  */
-
-#define CHV_CMN_DW0_CH0			_CHV_CMN(0, 0)
-#define   DPIO_ALLDL_POWERDOWN_CH0	REG_BIT(19)
-#define   DPIO_ANYDL_POWERDOWN_CH0	REG_BIT(18)
-#define   DPIO_ALLDL_POWERDOWN		BIT(1)
-#define   DPIO_ANYDL_POWERDOWN		BIT(0)
-
-#define CHV_CMN_DW5_CH0			_CHV_CMN(0, 5)
-#define   CHV_BUFRIGHTENA1_MASK		REG_GENMASK(21, 20)
-#define   CHV_BUFRIGHTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 0)
-#define   CHV_BUFRIGHTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 1)
-#define   CHV_BUFRIGHTENA1_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA1_MASK, 3)
-#define   CHV_BUFLEFTENA1_MASK		REG_GENMASK(23, 22)
-#define   CHV_BUFLEFTENA1_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 0)
-#define   CHV_BUFLEFTENA1_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 1)
-#define   CHV_BUFLEFTENA1_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA1_MASK, 3)
-
-#define CHV_CMN_DW13_CH0		_CHV_CMN(0, 13)
-#define CHV_CMN_DW0_CH1			_CHV_CMN(1, 0)
-#define   DPIO_CHV_S1_DIV_MASK		REG_GENMASK(23, 21)
-#define   DPIO_CHV_S1_DIV(s1)		REG_FIELD_PREP(DPIO_CHV_S1_DIV_MASK, (s1))
-#define   DPIO_CHV_P1_DIV_MASK		REG_GENMASK(15, 13)
-#define   DPIO_CHV_P1_DIV(p1)		REG_FIELD_PREP(DPIO_CHV_P1_DIV_MASK, (p1))
-#define   DPIO_CHV_P2_DIV_MASK		REG_GENMASK(12, 8)
-#define   DPIO_CHV_P2_DIV(p2)		REG_FIELD_PREP(DPIO_CHV_P2_DIV_MASK, (p2))
-#define   DPIO_CHV_K_DIV_MASK		REG_GENMASK(7, 4)
-#define   DPIO_CHV_K_DIV(k)		REG_FIELD_PREP(DPIO_CHV_K_DIV_MASK, (k))
-#define   DPIO_PLL_FREQLOCK		REG_BIT(1)
-#define   DPIO_PLL_LOCK			REG_BIT(0)
-#define CHV_CMN_DW13(ch)		_PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
-
-#define CHV_CMN_DW14_CH0		_CHV_CMN(0, 14)
-#define CHV_CMN_DW1_CH1			_CHV_CMN(1, 1)
-#define   DPIO_AFC_RECAL		REG_BIT(14)
-#define   DPIO_DCLKP_EN			REG_BIT(13)
-#define   CHV_BUFLEFTENA2_MASK		REG_GENMASK(18, 17) /* CL2 DW1 only */
-#define   CHV_BUFLEFTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 0)
-#define   CHV_BUFLEFTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 1)
-#define   CHV_BUFLEFTENA2_FORCE		REG_FIELD_PREP(CHV_BUFLEFTENA2_MASK, 3)
-#define   CHV_BUFRIGHTENA2_MASK		REG_GENMASK(20, 19) /* CL2 DW1 only */
-#define   CHV_BUFRIGHTENA2_DISABLE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 0)
-#define   CHV_BUFRIGHTENA2_NORMAL	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 1)
-#define   CHV_BUFRIGHTENA2_FORCE	REG_FIELD_PREP(CHV_BUFRIGHTENA2_MASK, 3)
-#define CHV_CMN_DW14(ch)		_PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
-
-#define CHV_CMN_DW19_CH0		_CHV_CMN(0, 19)
-#define CHV_CMN_DW6_CH1			_CHV_CMN(1, 6)
-#define   DPIO_ALLDL_POWERDOWN_CH1	REG_BIT(30) /* CL2 DW6 only */
-#define   DPIO_ANYDL_POWERDOWN_CH1	REG_BIT(29) /* CL2 DW6 only */
-#define   DPIO_DYNPWRDOWNEN_CH1		REG_BIT(28) /* CL2 DW6 only */
-#define   CHV_CMN_USEDCLKCHANNEL	REG_BIT(13)
-#define CHV_CMN_DW19(ch)		_PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
-
-#define CHV_CMN_DW28			_CHV_CMN(0, 28)
-#define   DPIO_CL1POWERDOWNEN			REG_BIT(23)
-#define   DPIO_DYNPWRDOWNEN_CH0			REG_BIT(22)
-#define   DPIO_SUS_CLK_CONFIG_MASK		REG_GENMASK(1, 0)
-#define   DPIO_SUS_CLK_CONFIG_ON		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 0)
-#define   DPIO_SUS_CLK_CONFIG_CLKREQ		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 1)
-#define   DPIO_SUS_CLK_CONFIG_GATE		REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 2)
-#define   DPIO_SUS_CLK_CONFIG_GATE_CLKREQ	REG_FIELD_PREP(DPIO_SUS_CLK_CONFIG_MASK, 3)
-
-#define CHV_CMN_DW30			_CHV_CMN(0, 30)
-#define   DPIO_CL2_LDOFUSE_PWRENB	REG_BIT(6)
-#define   DPIO_LRC_BYPASS		REG_BIT(3)
-
-#define CHV_TX_DW0(ch, lane)		_VLV_TX((ch), (lane), 0)
-#define CHV_TX_DW1(ch, lane)		_VLV_TX((ch), (lane), 1)
-#define CHV_TX_DW2(ch, lane)		_VLV_TX((ch), (lane), 2)
-#define CHV_TX_DW3(ch, lane)		_VLV_TX((ch), (lane), 3)
-#define CHV_TX_DW4(ch, lane)		_VLV_TX((ch), (lane), 4)
-#define CHV_TX_DW5(ch, lane)		_VLV_TX((ch), (lane), 5)
-#define CHV_TX_DW6(ch, lane)		_VLV_TX((ch), (lane), 6)
-#define CHV_TX_DW7(ch, lane)		_VLV_TX((ch), (lane), 7)
-#define CHV_TX_DW8(ch, lane)		_VLV_TX((ch), (lane), 8)
-#define CHV_TX_DW9(ch, lane)		_VLV_TX((ch), (lane), 9)
-#define CHV_TX_DW10(ch, lane)		_VLV_TX((ch), (lane), 10)
-
-#define CHV_TX_DW11(ch, lane)		_VLV_TX((ch), (lane), 11)
-#define   DPIO_FRC_LATENCY_MASK		REG_GENMASK(10, 8)
-#define   DPIO_FRC_LATENCY(x)		REG_FIELD_PREP(DPIO_FRC_LATENCY_MASK, (x))
-
-#define CHV_TX_DW14(ch, lane)		_VLV_TX((ch), (lane), 14)
-#define   DPIO_UPAR			REG_BIT(30)
-
 #define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
 #define  MIPIO_RST_CTRL				(1 << 2)
 
-- 
2.43.2

