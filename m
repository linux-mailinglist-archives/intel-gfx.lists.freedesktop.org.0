Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 508DD488155
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jan 2022 05:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACCC11361F;
	Sat,  8 Jan 2022 04:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F226113604
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jan 2022 04:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641616862; x=1673152862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ENbcNmajWe+c4r5B0hGJRLDeNy1/Y+XNdwcZgwXY2Lc=;
 b=W0+cP2+9lu1KOW8LQOVYTq7WlrbErNo/12qZ9omEHxFln5IwoEKxDpc1
 RzvREB8GDBMhoao0MMZlgVCgy9yWSP7XtLDY5Lc035ZGPD3qzeMC9J/vT
 KtlwH+43ZsYK84xcm+HERWHQSkgnxlYDExTXmepxRy9o43YUJ4966/bFD
 A3jnB7PeSWLO7Kkom9nOLllxn/FePxS6zAn3+epMjNLb/utjqOVuxcSDN
 YzTBxXy76WrVt8EB/gHs+3xk2yzzkbxR1RG0Dh+t5mPEoJBkEFFl0/B8u
 R+Xpy/IyYH/AbI39ifnpZsvv7kXgAHN3BEw8IhnHXG2FyZZ3canyi2Alj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240533989"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240533989"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="668975728"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 20:41:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 20:40:55 -0800
Message-Id: <20220108044055.3123418-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220108044055.3123418-1-matthew.d.roper@intel.com>
References: <20220108044055.3123418-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: Move SNPS PHY registers to
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

These registers are only needed in a couple files and on specific
platforms; let's keep them separate from the general register pool.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 .../drm/i915/display/intel_snps_phy_regs.h    | 73 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 67 -----------------
 3 files changed, 74 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_snps_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 09f405e4d363..718bfdbae9c8 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -10,6 +10,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_snps_phy.h"
+#include "intel_snps_phy_regs.h"
 
 /**
  * DOC: Synopsis PHY support
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
new file mode 100644
index 000000000000..484d3d204012
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_SNPS_REGS__
+#define __INTEL_SNPS_REGS__
+
+#define _SNPS_PHY_A_BASE			0x168000
+#define _SNPS_PHY_B_BASE			0x169000
+#define _SNPS_PHY(phy)				_PHY(phy, \
+						     _SNPS_PHY_A_BASE, \
+						     _SNPS_PHY_B_BASE)
+#define _SNPS2(phy, reg)			(_SNPS_PHY(phy) - \
+						 _SNPS_PHY_A_BASE + (reg))
+#define _MMIO_SNPS(phy, reg)			_MMIO(_SNPS2(phy, reg))
+#define _MMIO_SNPS_LN(ln, phy, reg)		_MMIO(_SNPS2(phy, \
+							     (reg) + (ln) * 0x10))
+
+#define SNPS_PHY_MPLLB_CP(phy)			_MMIO_SNPS(phy, 0x168000)
+#define   SNPS_PHY_MPLLB_CP_INT			REG_GENMASK(31, 25)
+#define   SNPS_PHY_MPLLB_CP_INT_GS		REG_GENMASK(23, 17)
+#define   SNPS_PHY_MPLLB_CP_PROP		REG_GENMASK(15, 9)
+#define   SNPS_PHY_MPLLB_CP_PROP_GS		REG_GENMASK(7, 1)
+
+#define SNPS_PHY_MPLLB_DIV(phy)			_MMIO_SNPS(phy, 0x168004)
+#define   SNPS_PHY_MPLLB_FORCE_EN		REG_BIT(31)
+#define   SNPS_PHY_MPLLB_DIV_CLK_EN		REG_BIT(30)
+#define   SNPS_PHY_MPLLB_DIV5_CLK_EN		REG_BIT(29)
+#define   SNPS_PHY_MPLLB_V2I			REG_GENMASK(27, 26)
+#define   SNPS_PHY_MPLLB_FREQ_VCO		REG_GENMASK(25, 24)
+#define   SNPS_PHY_MPLLB_DIV_MULTIPLIER		REG_GENMASK(23, 16)
+#define   SNPS_PHY_MPLLB_PMIX_EN		REG_BIT(10)
+#define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
+#define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
+#define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
+#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
+
+#define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
+#define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
+#define   SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN	REG_BIT(30)
+#define   SNPS_PHY_MPLLB_FRACN_DEN		REG_GENMASK(15, 0)
+
+#define SNPS_PHY_MPLLB_FRACN2(phy)		_MMIO_SNPS(phy, 0x16800C)
+#define   SNPS_PHY_MPLLB_FRACN_REM		REG_GENMASK(31, 16)
+#define   SNPS_PHY_MPLLB_FRACN_QUOT		REG_GENMASK(15, 0)
+
+#define SNPS_PHY_MPLLB_SSCEN(phy)		_MMIO_SNPS(phy, 0x168014)
+#define   SNPS_PHY_MPLLB_SSC_EN			REG_BIT(31)
+#define   SNPS_PHY_MPLLB_SSC_UP_SPREAD		REG_BIT(30)
+#define   SNPS_PHY_MPLLB_SSC_PEAK		REG_GENMASK(29, 10)
+
+#define SNPS_PHY_MPLLB_SSCSTEP(phy)		_MMIO_SNPS(phy, 0x168018)
+#define   SNPS_PHY_MPLLB_SSC_STEPSIZE		REG_GENMASK(31, 11)
+
+#define SNPS_PHY_MPLLB_DIV2(phy)		_MMIO_SNPS(phy, 0x16801C)
+#define   SNPS_PHY_MPLLB_HDMI_PIXEL_CLK_DIV	REG_GENMASK(19, 18)
+#define   SNPS_PHY_MPLLB_HDMI_DIV		REG_GENMASK(17, 15)
+#define   SNPS_PHY_MPLLB_REF_CLK_DIV		REG_GENMASK(14, 12)
+#define   SNPS_PHY_MPLLB_MULTIPLIER		REG_GENMASK(11, 0)
+
+#define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy, 0x168188)
+#define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31, 27)
+
+#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy, 0x168200)
+#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR	REG_GENMASK(31, 30)
+
+#define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln, phy, 0x168300)
+#define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23, 18)
+#define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15, 10)
+#define   SNPS_PHY_TX_EQ_PRE			REG_GENMASK(7, 2)
+
+#endif /* __INTEL_SNPS_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8ead30b47c69..5be5d0c28445 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2132,73 +2132,6 @@
 #define   MG_DP_MODE_CFG_DP_X2_MODE			(1 << 7)
 #define   MG_DP_MODE_CFG_DP_X1_MODE			(1 << 6)
 
-/*
- * DG2 SNPS PHY registers (TC1 = PHY_E)
- */
-#define _SNPS_PHY_A_BASE			0x168000
-#define _SNPS_PHY_B_BASE			0x169000
-#define _SNPS_PHY(phy)				_PHY(phy, \
-						     _SNPS_PHY_A_BASE, \
-						     _SNPS_PHY_B_BASE)
-#define _SNPS2(phy, reg)			(_SNPS_PHY(phy) - \
-						 _SNPS_PHY_A_BASE + (reg))
-#define _MMIO_SNPS(phy, reg)			_MMIO(_SNPS2(phy, reg))
-#define _MMIO_SNPS_LN(ln, phy, reg)		_MMIO(_SNPS2(phy, \
-							     (reg) + (ln) * 0x10))
-
-#define SNPS_PHY_MPLLB_CP(phy)			_MMIO_SNPS(phy, 0x168000)
-#define   SNPS_PHY_MPLLB_CP_INT			REG_GENMASK(31, 25)
-#define   SNPS_PHY_MPLLB_CP_INT_GS		REG_GENMASK(23, 17)
-#define   SNPS_PHY_MPLLB_CP_PROP		REG_GENMASK(15, 9)
-#define   SNPS_PHY_MPLLB_CP_PROP_GS		REG_GENMASK(7, 1)
-
-#define SNPS_PHY_MPLLB_DIV(phy)			_MMIO_SNPS(phy, 0x168004)
-#define   SNPS_PHY_MPLLB_FORCE_EN		REG_BIT(31)
-#define   SNPS_PHY_MPLLB_DIV_CLK_EN		REG_BIT(30)
-#define   SNPS_PHY_MPLLB_DIV5_CLK_EN		REG_BIT(29)
-#define   SNPS_PHY_MPLLB_V2I			REG_GENMASK(27, 26)
-#define   SNPS_PHY_MPLLB_FREQ_VCO		REG_GENMASK(25, 24)
-#define   SNPS_PHY_MPLLB_DIV_MULTIPLIER		REG_GENMASK(23, 16)
-#define   SNPS_PHY_MPLLB_PMIX_EN		REG_BIT(10)
-#define   SNPS_PHY_MPLLB_DP2_MODE		REG_BIT(9)
-#define   SNPS_PHY_MPLLB_WORD_DIV2_EN		REG_BIT(8)
-#define   SNPS_PHY_MPLLB_TX_CLK_DIV		REG_GENMASK(7, 5)
-#define   SNPS_PHY_MPLLB_SHIM_DIV32_CLK_SEL	REG_BIT(0)
-
-#define SNPS_PHY_MPLLB_FRACN1(phy)		_MMIO_SNPS(phy, 0x168008)
-#define   SNPS_PHY_MPLLB_FRACN_EN		REG_BIT(31)
-#define   SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN	REG_BIT(30)
-#define   SNPS_PHY_MPLLB_FRACN_DEN		REG_GENMASK(15, 0)
-
-#define SNPS_PHY_MPLLB_FRACN2(phy)		_MMIO_SNPS(phy, 0x16800C)
-#define   SNPS_PHY_MPLLB_FRACN_REM		REG_GENMASK(31, 16)
-#define   SNPS_PHY_MPLLB_FRACN_QUOT		REG_GENMASK(15, 0)
-
-#define SNPS_PHY_MPLLB_SSCEN(phy)		_MMIO_SNPS(phy, 0x168014)
-#define   SNPS_PHY_MPLLB_SSC_EN			REG_BIT(31)
-#define   SNPS_PHY_MPLLB_SSC_UP_SPREAD		REG_BIT(30)
-#define   SNPS_PHY_MPLLB_SSC_PEAK		REG_GENMASK(29, 10)
-
-#define SNPS_PHY_MPLLB_SSCSTEP(phy)		_MMIO_SNPS(phy, 0x168018)
-#define   SNPS_PHY_MPLLB_SSC_STEPSIZE		REG_GENMASK(31, 11)
-
-#define SNPS_PHY_MPLLB_DIV2(phy)		_MMIO_SNPS(phy, 0x16801C)
-#define   SNPS_PHY_MPLLB_HDMI_PIXEL_CLK_DIV	REG_GENMASK(19, 18)
-#define   SNPS_PHY_MPLLB_HDMI_DIV		REG_GENMASK(17, 15)
-#define   SNPS_PHY_MPLLB_REF_CLK_DIV		REG_GENMASK(14, 12)
-#define   SNPS_PHY_MPLLB_MULTIPLIER		REG_GENMASK(11, 0)
-
-#define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy, 0x168188)
-#define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31, 27)
-
-#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy, 0x168200)
-#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR	REG_GENMASK(31, 30)
-
-#define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln, phy, 0x168300)
-#define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23, 18)
-#define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15, 10)
-#define   SNPS_PHY_TX_EQ_PRE			REG_GENMASK(7, 2)
-
 /* The spec defines this only for BXT PHY0, but lets assume that this
  * would exist for PHY1 too if it had a second channel.
  */
-- 
2.34.1

