Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B0148A710
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A794112216;
	Tue, 11 Jan 2022 05:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CBBE1121DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kza/KDRRNh2rycjX3r5JczORyTiBrWS27CT+x/B/NJw=;
 b=IK8JejgPjceOBBBSmzQLBTxEdVgjRS7nZmBwmFwPV7KWAoFwNPtBfP2g
 wpU6/o1JE/lRMPGSjdD+2hgXVPBC64xvkyJXlej5WV5jRQJ87LBUczeL0
 C5HenGnZULXjUbNADSu9XVIqfL60nAG6st07irGM7ym1zOq2puxb/hGeM
 Et/0NnuMq9BaFBQ+HdZCJnpz9EHsC+H4v7qo+Hv5XBht+euGw+i3skUdf
 OZoDxH1Dlkp6pUR836BU30P0ERck+Jp0LcRdz+GSeaDEb1/qvNKGesteN
 2uqIBBdrn5Z+NwJnZGaL8TlPlxZZkk9WCzv9+H5L7k8R4+Becv1bnfey+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358344"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358344"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399167"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:57 -0800
Message-Id: <20220111051600.3429104-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/11] drm/i915: Move SNPS PHY registers to
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

These registers are only needed in a couple files and on specific
platforms; let's keep them separate from the general register pool.

v2:
 - Don't forget to include i915_reg_defs.h (Jani)
 - Ensure include guard matches header name (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
 .../drm/i915/display/intel_snps_phy_regs.h    | 75 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 67 -----------------
 3 files changed, 76 insertions(+), 67 deletions(-)
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
index 000000000000..0543465aaf14
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
@@ -0,0 +1,75 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_SNPS_PHY_REGS__
+#define __INTEL_SNPS_PHY_REGS__
+
+#include "i915_reg_defs.h"
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
+#endif /* __INTEL_SNPS_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b504d67c2752..71fefd04d71b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1883,73 +1883,6 @@
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

