Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC48948A716
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A05112DA7;
	Tue, 11 Jan 2022 05:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1404112216
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xjBoqMC0R753IfriI9GS0M9h7iGAeDmkYPrSJ0Ky1mw=;
 b=at0zLfeA4mo5NONEWm9GVYz5rdzuQEtYoibtqdBL6aJdo/PP3UzInMD+
 tj1nu4sM3Tuey6iuYZ/hcpdo8Un2r4eazLGjM6YrmPneGEX95ocYWAvn/
 78DVN18QzioWFQWOMZs4C97c6WyT8xe9Dq9++6oXZ7y5m6uREIZ5fK1wQ
 WmWW3grYIPWKps0aFmtbzlJ+FQUFZMIqYlS/e1XUdXPrNYZU5nwnKiu/S
 GBk9F7YzjYg+6anTTQHWmL0h7HEHnKfa7Fj5o4WSixK+zq5AVxjHnqJph
 vDBeBQDRRNfmQMBJO8Q7tksuwhpFix4p2fHAMFwZOc+o8txlGzk5fLyUX w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358348"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358348"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399174"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:59 -0800
Message-Id: <20220111051600.3429104-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/11] drm/i915: Move TC PHY registers to
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

Registers representing the MG/DKL TC PHYs (including the TC DPLLs which
exist inside the PHY) are only needed in a couple files and on specific
platforms; let's keep them separate from the general register pool.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/intel_tc.c       |   1 +
 .../gpu/drm/i915/display/intel_tc_phy_regs.h  | 344 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 333 -----------------
 5 files changed, 347 insertions(+), 333 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_tc_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 766a8dbe095d..6ee0f77b7927 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -57,6 +57,7 @@
 #include "intel_snps_phy.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
+#include "intel_tc_phy_regs.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index fc8fda77483a..3f7357123a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -28,6 +28,7 @@
 #include "intel_dpll_mgr.h"
 #include "intel_pch_refclk.h"
 #include "intel_tc.h"
+#include "intel_tc_phy_regs.h"
 
 /**
  * DOC: Display PLLs
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 40faa18947c9..4eefe7b0bb26 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -8,6 +8,7 @@
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
 #include "intel_tc.h"
+#include "intel_tc_phy_regs.h"
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
new file mode 100644
index 000000000000..87b74c3c35a7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
@@ -0,0 +1,344 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_TC_PHY_REGS__
+#define __INTEL_TC_PHY_REGS__
+
+#include "i915_reg_defs.h"
+
+#define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
+	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))
+
+#define MG_TX_LINK_PARAMS_TX1LN0_PORT1		0x16812C
+#define MG_TX_LINK_PARAMS_TX1LN1_PORT1		0x16852C
+#define MG_TX_LINK_PARAMS_TX1LN0_PORT2		0x16912C
+#define MG_TX_LINK_PARAMS_TX1LN1_PORT2		0x16952C
+#define MG_TX_LINK_PARAMS_TX1LN0_PORT3		0x16A12C
+#define MG_TX_LINK_PARAMS_TX1LN1_PORT3		0x16A52C
+#define MG_TX_LINK_PARAMS_TX1LN0_PORT4		0x16B12C
+#define MG_TX_LINK_PARAMS_TX1LN1_PORT4		0x16B52C
+#define MG_TX1_LINK_PARAMS(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX1LN0_PORT1, \
+		       MG_TX_LINK_PARAMS_TX1LN0_PORT2, \
+		       MG_TX_LINK_PARAMS_TX1LN1_PORT1)
+
+#define MG_TX_LINK_PARAMS_TX2LN0_PORT1		0x1680AC
+#define MG_TX_LINK_PARAMS_TX2LN1_PORT1		0x1684AC
+#define MG_TX_LINK_PARAMS_TX2LN0_PORT2		0x1690AC
+#define MG_TX_LINK_PARAMS_TX2LN1_PORT2		0x1694AC
+#define MG_TX_LINK_PARAMS_TX2LN0_PORT3		0x16A0AC
+#define MG_TX_LINK_PARAMS_TX2LN1_PORT3		0x16A4AC
+#define MG_TX_LINK_PARAMS_TX2LN0_PORT4		0x16B0AC
+#define MG_TX_LINK_PARAMS_TX2LN1_PORT4		0x16B4AC
+#define MG_TX2_LINK_PARAMS(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX2LN0_PORT1, \
+		       MG_TX_LINK_PARAMS_TX2LN0_PORT2, \
+		       MG_TX_LINK_PARAMS_TX2LN1_PORT1)
+#define   CRI_USE_FS32			(1 << 5)
+
+#define MG_TX_PISO_READLOAD_TX1LN0_PORT1		0x16814C
+#define MG_TX_PISO_READLOAD_TX1LN1_PORT1		0x16854C
+#define MG_TX_PISO_READLOAD_TX1LN0_PORT2		0x16914C
+#define MG_TX_PISO_READLOAD_TX1LN1_PORT2		0x16954C
+#define MG_TX_PISO_READLOAD_TX1LN0_PORT3		0x16A14C
+#define MG_TX_PISO_READLOAD_TX1LN1_PORT3		0x16A54C
+#define MG_TX_PISO_READLOAD_TX1LN0_PORT4		0x16B14C
+#define MG_TX_PISO_READLOAD_TX1LN1_PORT4		0x16B54C
+#define MG_TX1_PISO_READLOAD(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX1LN0_PORT1, \
+		       MG_TX_PISO_READLOAD_TX1LN0_PORT2, \
+		       MG_TX_PISO_READLOAD_TX1LN1_PORT1)
+
+#define MG_TX_PISO_READLOAD_TX2LN0_PORT1		0x1680CC
+#define MG_TX_PISO_READLOAD_TX2LN1_PORT1		0x1684CC
+#define MG_TX_PISO_READLOAD_TX2LN0_PORT2		0x1690CC
+#define MG_TX_PISO_READLOAD_TX2LN1_PORT2		0x1694CC
+#define MG_TX_PISO_READLOAD_TX2LN0_PORT3		0x16A0CC
+#define MG_TX_PISO_READLOAD_TX2LN1_PORT3		0x16A4CC
+#define MG_TX_PISO_READLOAD_TX2LN0_PORT4		0x16B0CC
+#define MG_TX_PISO_READLOAD_TX2LN1_PORT4		0x16B4CC
+#define MG_TX2_PISO_READLOAD(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX2LN0_PORT1, \
+		       MG_TX_PISO_READLOAD_TX2LN0_PORT2, \
+		       MG_TX_PISO_READLOAD_TX2LN1_PORT1)
+#define   CRI_CALCINIT					(1 << 1)
+
+#define MG_TX_SWINGCTRL_TX1LN0_PORT1		0x168148
+#define MG_TX_SWINGCTRL_TX1LN1_PORT1		0x168548
+#define MG_TX_SWINGCTRL_TX1LN0_PORT2		0x169148
+#define MG_TX_SWINGCTRL_TX1LN1_PORT2		0x169548
+#define MG_TX_SWINGCTRL_TX1LN0_PORT3		0x16A148
+#define MG_TX_SWINGCTRL_TX1LN1_PORT3		0x16A548
+#define MG_TX_SWINGCTRL_TX1LN0_PORT4		0x16B148
+#define MG_TX_SWINGCTRL_TX1LN1_PORT4		0x16B548
+#define MG_TX1_SWINGCTRL(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX1LN0_PORT1, \
+		       MG_TX_SWINGCTRL_TX1LN0_PORT2, \
+		       MG_TX_SWINGCTRL_TX1LN1_PORT1)
+
+#define MG_TX_SWINGCTRL_TX2LN0_PORT1		0x1680C8
+#define MG_TX_SWINGCTRL_TX2LN1_PORT1		0x1684C8
+#define MG_TX_SWINGCTRL_TX2LN0_PORT2		0x1690C8
+#define MG_TX_SWINGCTRL_TX2LN1_PORT2		0x1694C8
+#define MG_TX_SWINGCTRL_TX2LN0_PORT3		0x16A0C8
+#define MG_TX_SWINGCTRL_TX2LN1_PORT3		0x16A4C8
+#define MG_TX_SWINGCTRL_TX2LN0_PORT4		0x16B0C8
+#define MG_TX_SWINGCTRL_TX2LN1_PORT4		0x16B4C8
+#define MG_TX2_SWINGCTRL(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX2LN0_PORT1, \
+		       MG_TX_SWINGCTRL_TX2LN0_PORT2, \
+		       MG_TX_SWINGCTRL_TX2LN1_PORT1)
+#define   CRI_TXDEEMPH_OVERRIDE_17_12(x)		((x) << 0)
+#define   CRI_TXDEEMPH_OVERRIDE_17_12_MASK		(0x3F << 0)
+
+#define MG_TX_DRVCTRL_TX1LN0_TXPORT1			0x168144
+#define MG_TX_DRVCTRL_TX1LN1_TXPORT1			0x168544
+#define MG_TX_DRVCTRL_TX1LN0_TXPORT2			0x169144
+#define MG_TX_DRVCTRL_TX1LN1_TXPORT2			0x169544
+#define MG_TX_DRVCTRL_TX1LN0_TXPORT3			0x16A144
+#define MG_TX_DRVCTRL_TX1LN1_TXPORT3			0x16A544
+#define MG_TX_DRVCTRL_TX1LN0_TXPORT4			0x16B144
+#define MG_TX_DRVCTRL_TX1LN1_TXPORT4			0x16B544
+#define MG_TX1_DRVCTRL(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX1LN0_TXPORT1, \
+		       MG_TX_DRVCTRL_TX1LN0_TXPORT2, \
+		       MG_TX_DRVCTRL_TX1LN1_TXPORT1)
+
+#define MG_TX_DRVCTRL_TX2LN0_PORT1			0x1680C4
+#define MG_TX_DRVCTRL_TX2LN1_PORT1			0x1684C4
+#define MG_TX_DRVCTRL_TX2LN0_PORT2			0x1690C4
+#define MG_TX_DRVCTRL_TX2LN1_PORT2			0x1694C4
+#define MG_TX_DRVCTRL_TX2LN0_PORT3			0x16A0C4
+#define MG_TX_DRVCTRL_TX2LN1_PORT3			0x16A4C4
+#define MG_TX_DRVCTRL_TX2LN0_PORT4			0x16B0C4
+#define MG_TX_DRVCTRL_TX2LN1_PORT4			0x16B4C4
+#define MG_TX2_DRVCTRL(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX2LN0_PORT1, \
+		       MG_TX_DRVCTRL_TX2LN0_PORT2, \
+		       MG_TX_DRVCTRL_TX2LN1_PORT1)
+#define   CRI_TXDEEMPH_OVERRIDE_11_6(x)			((x) << 24)
+#define   CRI_TXDEEMPH_OVERRIDE_11_6_MASK		(0x3F << 24)
+#define   CRI_TXDEEMPH_OVERRIDE_EN			(1 << 22)
+#define   CRI_TXDEEMPH_OVERRIDE_5_0(x)			((x) << 16)
+#define   CRI_TXDEEMPH_OVERRIDE_5_0_MASK		(0x3F << 16)
+#define   CRI_LOADGEN_SEL(x)				((x) << 12)
+#define   CRI_LOADGEN_SEL_MASK				(0x3 << 12)
+
+#define MG_CLKHUB_LN0_PORT1			0x16839C
+#define MG_CLKHUB_LN1_PORT1			0x16879C
+#define MG_CLKHUB_LN0_PORT2			0x16939C
+#define MG_CLKHUB_LN1_PORT2			0x16979C
+#define MG_CLKHUB_LN0_PORT3			0x16A39C
+#define MG_CLKHUB_LN1_PORT3			0x16A79C
+#define MG_CLKHUB_LN0_PORT4			0x16B39C
+#define MG_CLKHUB_LN1_PORT4			0x16B79C
+#define MG_CLKHUB(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_CLKHUB_LN0_PORT1, \
+		       MG_CLKHUB_LN0_PORT2, \
+		       MG_CLKHUB_LN1_PORT1)
+#define   CFG_LOW_RATE_LKREN_EN				(1 << 11)
+
+#define MG_TX_DCC_TX1LN0_PORT1			0x168110
+#define MG_TX_DCC_TX1LN1_PORT1			0x168510
+#define MG_TX_DCC_TX1LN0_PORT2			0x169110
+#define MG_TX_DCC_TX1LN1_PORT2			0x169510
+#define MG_TX_DCC_TX1LN0_PORT3			0x16A110
+#define MG_TX_DCC_TX1LN1_PORT3			0x16A510
+#define MG_TX_DCC_TX1LN0_PORT4			0x16B110
+#define MG_TX_DCC_TX1LN1_PORT4			0x16B510
+#define MG_TX1_DCC(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX1LN0_PORT1, \
+		       MG_TX_DCC_TX1LN0_PORT2, \
+		       MG_TX_DCC_TX1LN1_PORT1)
+#define MG_TX_DCC_TX2LN0_PORT1			0x168090
+#define MG_TX_DCC_TX2LN1_PORT1			0x168490
+#define MG_TX_DCC_TX2LN0_PORT2			0x169090
+#define MG_TX_DCC_TX2LN1_PORT2			0x169490
+#define MG_TX_DCC_TX2LN0_PORT3			0x16A090
+#define MG_TX_DCC_TX2LN1_PORT3			0x16A490
+#define MG_TX_DCC_TX2LN0_PORT4			0x16B090
+#define MG_TX_DCC_TX2LN1_PORT4			0x16B490
+#define MG_TX2_DCC(ln, tc_port) \
+	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX2LN0_PORT1, \
+		       MG_TX_DCC_TX2LN0_PORT2, \
+		       MG_TX_DCC_TX2LN1_PORT1)
+#define   CFG_AMI_CK_DIV_OVERRIDE_VAL(x)	((x) << 25)
+#define   CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK	(0x3 << 25)
+#define   CFG_AMI_CK_DIV_OVERRIDE_EN		(1 << 24)
+
+#define MG_DP_MODE_LN0_ACU_PORT1			0x1683A0
+#define MG_DP_MODE_LN1_ACU_PORT1			0x1687A0
+#define MG_DP_MODE_LN0_ACU_PORT2			0x1693A0
+#define MG_DP_MODE_LN1_ACU_PORT2			0x1697A0
+#define MG_DP_MODE_LN0_ACU_PORT3			0x16A3A0
+#define MG_DP_MODE_LN1_ACU_PORT3			0x16A7A0
+#define MG_DP_MODE_LN0_ACU_PORT4			0x16B3A0
+#define MG_DP_MODE_LN1_ACU_PORT4			0x16B7A0
+#define MG_DP_MODE(ln, tc_port)	\
+	MG_PHY_PORT_LN(ln, tc_port, MG_DP_MODE_LN0_ACU_PORT1, \
+		       MG_DP_MODE_LN0_ACU_PORT2, \
+		       MG_DP_MODE_LN1_ACU_PORT1)
+#define   MG_DP_MODE_CFG_DP_X2_MODE			(1 << 7)
+#define   MG_DP_MODE_CFG_DP_X1_MODE			(1 << 6)
+
+#define FIA1_BASE			0x163000
+#define FIA2_BASE			0x16E000
+#define FIA3_BASE			0x16F000
+#define _FIA(fia)			_PICK((fia), FIA1_BASE, FIA2_BASE, FIA3_BASE)
+#define _MMIO_FIA(fia, off)		_MMIO(_FIA(fia) + (off))
+
+/* ICL PHY DFLEX registers */
+#define PORT_TX_DFLEXDPMLE1(fia)		_MMIO_FIA((fia),  0x008C0)
+#define   DFLEXDPMLE1_DPMLETC_MASK(idx)		(0xf << (4 * (idx)))
+#define   DFLEXDPMLE1_DPMLETC_ML0(idx)		(1 << (4 * (idx)))
+#define   DFLEXDPMLE1_DPMLETC_ML1_0(idx)	(3 << (4 * (idx)))
+#define   DFLEXDPMLE1_DPMLETC_ML3(idx)		(8 << (4 * (idx)))
+#define   DFLEXDPMLE1_DPMLETC_ML3_2(idx)	(12 << (4 * (idx)))
+#define   DFLEXDPMLE1_DPMLETC_ML3_0(idx)	(15 << (4 * (idx)))
+
+#define _MG_REFCLKIN_CTL_PORT1				0x16892C
+#define _MG_REFCLKIN_CTL_PORT2				0x16992C
+#define _MG_REFCLKIN_CTL_PORT3				0x16A92C
+#define _MG_REFCLKIN_CTL_PORT4				0x16B92C
+#define   MG_REFCLKIN_CTL_OD_2_MUX(x)			((x) << 8)
+#define   MG_REFCLKIN_CTL_OD_2_MUX_MASK			(0x7 << 8)
+#define MG_REFCLKIN_CTL(tc_port) _MMIO_PORT((tc_port), \
+					    _MG_REFCLKIN_CTL_PORT1, \
+					    _MG_REFCLKIN_CTL_PORT2)
+
+#define _MG_CLKTOP2_CORECLKCTL1_PORT1			0x1688D8
+#define _MG_CLKTOP2_CORECLKCTL1_PORT2			0x1698D8
+#define _MG_CLKTOP2_CORECLKCTL1_PORT3			0x16A8D8
+#define _MG_CLKTOP2_CORECLKCTL1_PORT4			0x16B8D8
+#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO(x)		((x) << 16)
+#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO_MASK	(0xff << 16)
+#define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(x)		((x) << 8)
+#define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK	(0xff << 8)
+#define MG_CLKTOP2_CORECLKCTL1(tc_port) _MMIO_PORT((tc_port), \
+						   _MG_CLKTOP2_CORECLKCTL1_PORT1, \
+						   _MG_CLKTOP2_CORECLKCTL1_PORT2)
+
+#define _MG_CLKTOP2_HSCLKCTL_PORT1			0x1688D4
+#define _MG_CLKTOP2_HSCLKCTL_PORT2			0x1698D4
+#define _MG_CLKTOP2_HSCLKCTL_PORT3			0x16A8D4
+#define _MG_CLKTOP2_HSCLKCTL_PORT4			0x16B8D4
+#define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(x)		((x) << 16)
+#define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK	(0x1 << 16)
+#define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(x)	((x) << 14)
+#define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK	(0x3 << 14)
+#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK		(0x3 << 12)
+#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2		(0 << 12)
+#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3		(1 << 12)
+#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5		(2 << 12)
+#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7		(3 << 12)
+#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(x)		((x) << 8)
+#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT		8
+#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK		(0xf << 8)
+#define MG_CLKTOP2_HSCLKCTL(tc_port) _MMIO_PORT((tc_port), \
+						_MG_CLKTOP2_HSCLKCTL_PORT1, \
+						_MG_CLKTOP2_HSCLKCTL_PORT2)
+
+#define _MG_PLL_DIV0_PORT1				0x168A00
+#define _MG_PLL_DIV0_PORT2				0x169A00
+#define _MG_PLL_DIV0_PORT3				0x16AA00
+#define _MG_PLL_DIV0_PORT4				0x16BA00
+#define   MG_PLL_DIV0_FRACNEN_H				(1 << 30)
+#define   MG_PLL_DIV0_FBDIV_FRAC_MASK			(0x3fffff << 8)
+#define   MG_PLL_DIV0_FBDIV_FRAC_SHIFT			8
+#define   MG_PLL_DIV0_FBDIV_FRAC(x)			((x) << 8)
+#define   MG_PLL_DIV0_FBDIV_INT_MASK			(0xff << 0)
+#define   MG_PLL_DIV0_FBDIV_INT(x)			((x) << 0)
+#define MG_PLL_DIV0(tc_port) _MMIO_PORT((tc_port), _MG_PLL_DIV0_PORT1, \
+					_MG_PLL_DIV0_PORT2)
+
+#define _MG_PLL_DIV1_PORT1				0x168A04
+#define _MG_PLL_DIV1_PORT2				0x169A04
+#define _MG_PLL_DIV1_PORT3				0x16AA04
+#define _MG_PLL_DIV1_PORT4				0x16BA04
+#define   MG_PLL_DIV1_IREF_NDIVRATIO(x)			((x) << 16)
+#define   MG_PLL_DIV1_DITHER_DIV_1			(0 << 12)
+#define   MG_PLL_DIV1_DITHER_DIV_2			(1 << 12)
+#define   MG_PLL_DIV1_DITHER_DIV_4			(2 << 12)
+#define   MG_PLL_DIV1_DITHER_DIV_8			(3 << 12)
+#define   MG_PLL_DIV1_NDIVRATIO(x)			((x) << 4)
+#define   MG_PLL_DIV1_FBPREDIV_MASK			(0xf << 0)
+#define   MG_PLL_DIV1_FBPREDIV(x)			((x) << 0)
+#define MG_PLL_DIV1(tc_port) _MMIO_PORT((tc_port), _MG_PLL_DIV1_PORT1, \
+					_MG_PLL_DIV1_PORT2)
+
+#define _MG_PLL_LF_PORT1				0x168A08
+#define _MG_PLL_LF_PORT2				0x169A08
+#define _MG_PLL_LF_PORT3				0x16AA08
+#define _MG_PLL_LF_PORT4				0x16BA08
+#define   MG_PLL_LF_TDCTARGETCNT(x)			((x) << 24)
+#define   MG_PLL_LF_AFCCNTSEL_256			(0 << 20)
+#define   MG_PLL_LF_AFCCNTSEL_512			(1 << 20)
+#define   MG_PLL_LF_GAINCTRL(x)				((x) << 16)
+#define   MG_PLL_LF_INT_COEFF(x)			((x) << 8)
+#define   MG_PLL_LF_PROP_COEFF(x)			((x) << 0)
+#define MG_PLL_LF(tc_port) _MMIO_PORT((tc_port), _MG_PLL_LF_PORT1, \
+				      _MG_PLL_LF_PORT2)
+
+#define _MG_PLL_FRAC_LOCK_PORT1				0x168A0C
+#define _MG_PLL_FRAC_LOCK_PORT2				0x169A0C
+#define _MG_PLL_FRAC_LOCK_PORT3				0x16AA0C
+#define _MG_PLL_FRAC_LOCK_PORT4				0x16BA0C
+#define   MG_PLL_FRAC_LOCK_TRUELOCK_CRIT_32		(1 << 18)
+#define   MG_PLL_FRAC_LOCK_EARLYLOCK_CRIT_32		(1 << 16)
+#define   MG_PLL_FRAC_LOCK_LOCKTHRESH(x)		((x) << 11)
+#define   MG_PLL_FRAC_LOCK_DCODITHEREN			(1 << 10)
+#define   MG_PLL_FRAC_LOCK_FEEDFWRDCAL_EN		(1 << 8)
+#define   MG_PLL_FRAC_LOCK_FEEDFWRDGAIN(x)		((x) << 0)
+#define MG_PLL_FRAC_LOCK(tc_port) _MMIO_PORT((tc_port), \
+					     _MG_PLL_FRAC_LOCK_PORT1, \
+					     _MG_PLL_FRAC_LOCK_PORT2)
+
+#define _MG_PLL_SSC_PORT1				0x168A10
+#define _MG_PLL_SSC_PORT2				0x169A10
+#define _MG_PLL_SSC_PORT3				0x16AA10
+#define _MG_PLL_SSC_PORT4				0x16BA10
+#define   MG_PLL_SSC_EN					(1 << 28)
+#define   MG_PLL_SSC_TYPE(x)				((x) << 26)
+#define   MG_PLL_SSC_STEPLENGTH(x)			((x) << 16)
+#define   MG_PLL_SSC_STEPNUM(x)				((x) << 10)
+#define   MG_PLL_SSC_FLLEN				(1 << 9)
+#define   MG_PLL_SSC_STEPSIZE(x)			((x) << 0)
+#define MG_PLL_SSC(tc_port) _MMIO_PORT((tc_port), _MG_PLL_SSC_PORT1, \
+				       _MG_PLL_SSC_PORT2)
+
+#define _MG_PLL_BIAS_PORT1				0x168A14
+#define _MG_PLL_BIAS_PORT2				0x169A14
+#define _MG_PLL_BIAS_PORT3				0x16AA14
+#define _MG_PLL_BIAS_PORT4				0x16BA14
+#define   MG_PLL_BIAS_BIAS_GB_SEL(x)			((x) << 30)
+#define   MG_PLL_BIAS_BIAS_GB_SEL_MASK			(0x3 << 30)
+#define   MG_PLL_BIAS_INIT_DCOAMP(x)			((x) << 24)
+#define   MG_PLL_BIAS_INIT_DCOAMP_MASK			(0x3f << 24)
+#define   MG_PLL_BIAS_BIAS_BONUS(x)			((x) << 16)
+#define   MG_PLL_BIAS_BIAS_BONUS_MASK			(0xff << 16)
+#define   MG_PLL_BIAS_BIASCAL_EN			(1 << 15)
+#define   MG_PLL_BIAS_CTRIM(x)				((x) << 8)
+#define   MG_PLL_BIAS_CTRIM_MASK			(0x1f << 8)
+#define   MG_PLL_BIAS_VREF_RDAC(x)			((x) << 5)
+#define   MG_PLL_BIAS_VREF_RDAC_MASK			(0x7 << 5)
+#define   MG_PLL_BIAS_IREFTRIM(x)			((x) << 0)
+#define   MG_PLL_BIAS_IREFTRIM_MASK			(0x1f << 0)
+#define MG_PLL_BIAS(tc_port) _MMIO_PORT((tc_port), _MG_PLL_BIAS_PORT1, \
+					_MG_PLL_BIAS_PORT2)
+
+#define _MG_PLL_TDC_COLDST_BIAS_PORT1			0x168A18
+#define _MG_PLL_TDC_COLDST_BIAS_PORT2			0x169A18
+#define _MG_PLL_TDC_COLDST_BIAS_PORT3			0x16AA18
+#define _MG_PLL_TDC_COLDST_BIAS_PORT4			0x16BA18
+#define   MG_PLL_TDC_COLDST_IREFINT_EN			(1 << 27)
+#define   MG_PLL_TDC_COLDST_REFBIAS_START_PULSE_W(x)	((x) << 17)
+#define   MG_PLL_TDC_COLDST_COLDSTART			(1 << 16)
+#define   MG_PLL_TDC_TDCOVCCORR_EN			(1 << 2)
+#define   MG_PLL_TDC_TDCSEL(x)				((x) << 0)
+#define MG_PLL_TDC_COLDST_BIAS(tc_port) _MMIO_PORT((tc_port), \
+						   _MG_PLL_TDC_COLDST_BIAS_PORT1, \
+						   _MG_PLL_TDC_COLDST_BIAS_PORT2)
+
+#endif /* __INTEL_TC_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7646982be30b..2f28888cc651 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1554,181 +1554,6 @@
 #define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
 #define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
 
-#define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
-	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))
-
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT1		0x16812C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT1		0x16852C
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT2		0x16912C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT2		0x16952C
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT3		0x16A12C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT3		0x16A52C
-#define MG_TX_LINK_PARAMS_TX1LN0_PORT4		0x16B12C
-#define MG_TX_LINK_PARAMS_TX1LN1_PORT4		0x16B52C
-#define MG_TX1_LINK_PARAMS(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX1LN0_PORT1, \
-				    MG_TX_LINK_PARAMS_TX1LN0_PORT2, \
-				    MG_TX_LINK_PARAMS_TX1LN1_PORT1)
-
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT1		0x1680AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT1		0x1684AC
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT2		0x1690AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT2		0x1694AC
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT3		0x16A0AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT3		0x16A4AC
-#define MG_TX_LINK_PARAMS_TX2LN0_PORT4		0x16B0AC
-#define MG_TX_LINK_PARAMS_TX2LN1_PORT4		0x16B4AC
-#define MG_TX2_LINK_PARAMS(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX2LN0_PORT1, \
-				    MG_TX_LINK_PARAMS_TX2LN0_PORT2, \
-				    MG_TX_LINK_PARAMS_TX2LN1_PORT1)
-#define   CRI_USE_FS32			(1 << 5)
-
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT1		0x16814C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT1		0x16854C
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT2		0x16914C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT2		0x16954C
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT3		0x16A14C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT3		0x16A54C
-#define MG_TX_PISO_READLOAD_TX1LN0_PORT4		0x16B14C
-#define MG_TX_PISO_READLOAD_TX1LN1_PORT4		0x16B54C
-#define MG_TX1_PISO_READLOAD(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX1LN0_PORT1, \
-				    MG_TX_PISO_READLOAD_TX1LN0_PORT2, \
-				    MG_TX_PISO_READLOAD_TX1LN1_PORT1)
-
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT1		0x1680CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT1		0x1684CC
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT2		0x1690CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT2		0x1694CC
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT3		0x16A0CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT3		0x16A4CC
-#define MG_TX_PISO_READLOAD_TX2LN0_PORT4		0x16B0CC
-#define MG_TX_PISO_READLOAD_TX2LN1_PORT4		0x16B4CC
-#define MG_TX2_PISO_READLOAD(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX2LN0_PORT1, \
-				    MG_TX_PISO_READLOAD_TX2LN0_PORT2, \
-				    MG_TX_PISO_READLOAD_TX2LN1_PORT1)
-#define   CRI_CALCINIT					(1 << 1)
-
-#define MG_TX_SWINGCTRL_TX1LN0_PORT1		0x168148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT1		0x168548
-#define MG_TX_SWINGCTRL_TX1LN0_PORT2		0x169148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT2		0x169548
-#define MG_TX_SWINGCTRL_TX1LN0_PORT3		0x16A148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT3		0x16A548
-#define MG_TX_SWINGCTRL_TX1LN0_PORT4		0x16B148
-#define MG_TX_SWINGCTRL_TX1LN1_PORT4		0x16B548
-#define MG_TX1_SWINGCTRL(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX1LN0_PORT1, \
-				    MG_TX_SWINGCTRL_TX1LN0_PORT2, \
-				    MG_TX_SWINGCTRL_TX1LN1_PORT1)
-
-#define MG_TX_SWINGCTRL_TX2LN0_PORT1		0x1680C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT1		0x1684C8
-#define MG_TX_SWINGCTRL_TX2LN0_PORT2		0x1690C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT2		0x1694C8
-#define MG_TX_SWINGCTRL_TX2LN0_PORT3		0x16A0C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT3		0x16A4C8
-#define MG_TX_SWINGCTRL_TX2LN0_PORT4		0x16B0C8
-#define MG_TX_SWINGCTRL_TX2LN1_PORT4		0x16B4C8
-#define MG_TX2_SWINGCTRL(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX2LN0_PORT1, \
-				    MG_TX_SWINGCTRL_TX2LN0_PORT2, \
-				    MG_TX_SWINGCTRL_TX2LN1_PORT1)
-#define   CRI_TXDEEMPH_OVERRIDE_17_12(x)		((x) << 0)
-#define   CRI_TXDEEMPH_OVERRIDE_17_12_MASK		(0x3F << 0)
-
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT1			0x168144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT1			0x168544
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT2			0x169144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT2			0x169544
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT3			0x16A144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT3			0x16A544
-#define MG_TX_DRVCTRL_TX1LN0_TXPORT4			0x16B144
-#define MG_TX_DRVCTRL_TX1LN1_TXPORT4			0x16B544
-#define MG_TX1_DRVCTRL(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX1LN0_TXPORT1, \
-				    MG_TX_DRVCTRL_TX1LN0_TXPORT2, \
-				    MG_TX_DRVCTRL_TX1LN1_TXPORT1)
-
-#define MG_TX_DRVCTRL_TX2LN0_PORT1			0x1680C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT1			0x1684C4
-#define MG_TX_DRVCTRL_TX2LN0_PORT2			0x1690C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT2			0x1694C4
-#define MG_TX_DRVCTRL_TX2LN0_PORT3			0x16A0C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT3			0x16A4C4
-#define MG_TX_DRVCTRL_TX2LN0_PORT4			0x16B0C4
-#define MG_TX_DRVCTRL_TX2LN1_PORT4			0x16B4C4
-#define MG_TX2_DRVCTRL(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX2LN0_PORT1, \
-				    MG_TX_DRVCTRL_TX2LN0_PORT2, \
-				    MG_TX_DRVCTRL_TX2LN1_PORT1)
-#define   CRI_TXDEEMPH_OVERRIDE_11_6(x)			((x) << 24)
-#define   CRI_TXDEEMPH_OVERRIDE_11_6_MASK		(0x3F << 24)
-#define   CRI_TXDEEMPH_OVERRIDE_EN			(1 << 22)
-#define   CRI_TXDEEMPH_OVERRIDE_5_0(x)			((x) << 16)
-#define   CRI_TXDEEMPH_OVERRIDE_5_0_MASK		(0x3F << 16)
-#define   CRI_LOADGEN_SEL(x)				((x) << 12)
-#define   CRI_LOADGEN_SEL_MASK				(0x3 << 12)
-
-#define MG_CLKHUB_LN0_PORT1			0x16839C
-#define MG_CLKHUB_LN1_PORT1			0x16879C
-#define MG_CLKHUB_LN0_PORT2			0x16939C
-#define MG_CLKHUB_LN1_PORT2			0x16979C
-#define MG_CLKHUB_LN0_PORT3			0x16A39C
-#define MG_CLKHUB_LN1_PORT3			0x16A79C
-#define MG_CLKHUB_LN0_PORT4			0x16B39C
-#define MG_CLKHUB_LN1_PORT4			0x16B79C
-#define MG_CLKHUB(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_CLKHUB_LN0_PORT1, \
-				    MG_CLKHUB_LN0_PORT2, \
-				    MG_CLKHUB_LN1_PORT1)
-#define   CFG_LOW_RATE_LKREN_EN				(1 << 11)
-
-#define MG_TX_DCC_TX1LN0_PORT1			0x168110
-#define MG_TX_DCC_TX1LN1_PORT1			0x168510
-#define MG_TX_DCC_TX1LN0_PORT2			0x169110
-#define MG_TX_DCC_TX1LN1_PORT2			0x169510
-#define MG_TX_DCC_TX1LN0_PORT3			0x16A110
-#define MG_TX_DCC_TX1LN1_PORT3			0x16A510
-#define MG_TX_DCC_TX1LN0_PORT4			0x16B110
-#define MG_TX_DCC_TX1LN1_PORT4			0x16B510
-#define MG_TX1_DCC(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX1LN0_PORT1, \
-				    MG_TX_DCC_TX1LN0_PORT2, \
-				    MG_TX_DCC_TX1LN1_PORT1)
-#define MG_TX_DCC_TX2LN0_PORT1			0x168090
-#define MG_TX_DCC_TX2LN1_PORT1			0x168490
-#define MG_TX_DCC_TX2LN0_PORT2			0x169090
-#define MG_TX_DCC_TX2LN1_PORT2			0x169490
-#define MG_TX_DCC_TX2LN0_PORT3			0x16A090
-#define MG_TX_DCC_TX2LN1_PORT3			0x16A490
-#define MG_TX_DCC_TX2LN0_PORT4			0x16B090
-#define MG_TX_DCC_TX2LN1_PORT4			0x16B490
-#define MG_TX2_DCC(ln, tc_port) \
-	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX2LN0_PORT1, \
-				    MG_TX_DCC_TX2LN0_PORT2, \
-				    MG_TX_DCC_TX2LN1_PORT1)
-#define   CFG_AMI_CK_DIV_OVERRIDE_VAL(x)	((x) << 25)
-#define   CFG_AMI_CK_DIV_OVERRIDE_VAL_MASK	(0x3 << 25)
-#define   CFG_AMI_CK_DIV_OVERRIDE_EN		(1 << 24)
-
-#define MG_DP_MODE_LN0_ACU_PORT1			0x1683A0
-#define MG_DP_MODE_LN1_ACU_PORT1			0x1687A0
-#define MG_DP_MODE_LN0_ACU_PORT2			0x1693A0
-#define MG_DP_MODE_LN1_ACU_PORT2			0x1697A0
-#define MG_DP_MODE_LN0_ACU_PORT3			0x16A3A0
-#define MG_DP_MODE_LN1_ACU_PORT3			0x16A7A0
-#define MG_DP_MODE_LN0_ACU_PORT4			0x16B3A0
-#define MG_DP_MODE_LN1_ACU_PORT4			0x16B7A0
-#define MG_DP_MODE(ln, tc_port)	\
-	MG_PHY_PORT_LN(ln, tc_port, MG_DP_MODE_LN0_ACU_PORT1, \
-				    MG_DP_MODE_LN0_ACU_PORT2, \
-				    MG_DP_MODE_LN1_ACU_PORT1)
-#define   MG_DP_MODE_CFG_DP_X2_MODE			(1 << 7)
-#define   MG_DP_MODE_CFG_DP_X1_MODE			(1 << 6)
-
 /* The spec defines this only for BXT PHY0, but lets assume that this
  * would exist for PHY1 too if it had a second channel.
  */
@@ -1737,21 +1562,6 @@
 #define BXT_PORT_CL2CM_DW6(phy)		_BXT_PHY((phy), _PORT_CL2CM_DW6_BC)
 #define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
 
-#define FIA1_BASE			0x163000
-#define FIA2_BASE			0x16E000
-#define FIA3_BASE			0x16F000
-#define _FIA(fia)			_PICK((fia), FIA1_BASE, FIA2_BASE, FIA3_BASE)
-#define _MMIO_FIA(fia, off)		_MMIO(_FIA(fia) + (off))
-
-/* ICL PHY DFLEX registers */
-#define PORT_TX_DFLEXDPMLE1(fia)		_MMIO_FIA((fia),  0x008C0)
-#define   DFLEXDPMLE1_DPMLETC_MASK(idx)		(0xf << (4 * (idx)))
-#define   DFLEXDPMLE1_DPMLETC_ML0(idx)		(1 << (4 * (idx)))
-#define   DFLEXDPMLE1_DPMLETC_ML1_0(idx)	(3 << (4 * (idx)))
-#define   DFLEXDPMLE1_DPMLETC_ML3(idx)		(8 << (4 * (idx)))
-#define   DFLEXDPMLE1_DPMLETC_ML3_2(idx)	(12 << (4 * (idx)))
-#define   DFLEXDPMLE1_DPMLETC_ML3_0(idx)	(15 << (4 * (idx)))
-
 /* BXT PHY Ref registers */
 #define _PORT_REF_DW3_A			0x16218C
 #define _PORT_REF_DW3_BC		0x6C18C
@@ -10076,149 +9886,6 @@ enum skl_power_gate {
 							    PORTTC1_PLL_ENABLE, \
 							    PORTTC2_PLL_ENABLE)
 
-#define _MG_REFCLKIN_CTL_PORT1				0x16892C
-#define _MG_REFCLKIN_CTL_PORT2				0x16992C
-#define _MG_REFCLKIN_CTL_PORT3				0x16A92C
-#define _MG_REFCLKIN_CTL_PORT4				0x16B92C
-#define   MG_REFCLKIN_CTL_OD_2_MUX(x)			((x) << 8)
-#define   MG_REFCLKIN_CTL_OD_2_MUX_MASK			(0x7 << 8)
-#define MG_REFCLKIN_CTL(tc_port) _MMIO_PORT((tc_port), \
-					    _MG_REFCLKIN_CTL_PORT1, \
-					    _MG_REFCLKIN_CTL_PORT2)
-
-#define _MG_CLKTOP2_CORECLKCTL1_PORT1			0x1688D8
-#define _MG_CLKTOP2_CORECLKCTL1_PORT2			0x1698D8
-#define _MG_CLKTOP2_CORECLKCTL1_PORT3			0x16A8D8
-#define _MG_CLKTOP2_CORECLKCTL1_PORT4			0x16B8D8
-#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO(x)		((x) << 16)
-#define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO_MASK	(0xff << 16)
-#define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(x)		((x) << 8)
-#define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK	(0xff << 8)
-#define MG_CLKTOP2_CORECLKCTL1(tc_port) _MMIO_PORT((tc_port), \
-						   _MG_CLKTOP2_CORECLKCTL1_PORT1, \
-						   _MG_CLKTOP2_CORECLKCTL1_PORT2)
-
-#define _MG_CLKTOP2_HSCLKCTL_PORT1			0x1688D4
-#define _MG_CLKTOP2_HSCLKCTL_PORT2			0x1698D4
-#define _MG_CLKTOP2_HSCLKCTL_PORT3			0x16A8D4
-#define _MG_CLKTOP2_HSCLKCTL_PORT4			0x16B8D4
-#define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(x)		((x) << 16)
-#define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK	(0x1 << 16)
-#define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(x)	((x) << 14)
-#define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK	(0x3 << 14)
-#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK		(0x3 << 12)
-#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2		(0 << 12)
-#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3		(1 << 12)
-#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5		(2 << 12)
-#define   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7		(3 << 12)
-#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(x)		((x) << 8)
-#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT		8
-#define   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK		(0xf << 8)
-#define MG_CLKTOP2_HSCLKCTL(tc_port) _MMIO_PORT((tc_port), \
-						_MG_CLKTOP2_HSCLKCTL_PORT1, \
-						_MG_CLKTOP2_HSCLKCTL_PORT2)
-
-#define _MG_PLL_DIV0_PORT1				0x168A00
-#define _MG_PLL_DIV0_PORT2				0x169A00
-#define _MG_PLL_DIV0_PORT3				0x16AA00
-#define _MG_PLL_DIV0_PORT4				0x16BA00
-#define   MG_PLL_DIV0_FRACNEN_H				(1 << 30)
-#define   MG_PLL_DIV0_FBDIV_FRAC_MASK			(0x3fffff << 8)
-#define   MG_PLL_DIV0_FBDIV_FRAC_SHIFT			8
-#define   MG_PLL_DIV0_FBDIV_FRAC(x)			((x) << 8)
-#define   MG_PLL_DIV0_FBDIV_INT_MASK			(0xff << 0)
-#define   MG_PLL_DIV0_FBDIV_INT(x)			((x) << 0)
-#define MG_PLL_DIV0(tc_port) _MMIO_PORT((tc_port), _MG_PLL_DIV0_PORT1, \
-					_MG_PLL_DIV0_PORT2)
-
-#define _MG_PLL_DIV1_PORT1				0x168A04
-#define _MG_PLL_DIV1_PORT2				0x169A04
-#define _MG_PLL_DIV1_PORT3				0x16AA04
-#define _MG_PLL_DIV1_PORT4				0x16BA04
-#define   MG_PLL_DIV1_IREF_NDIVRATIO(x)			((x) << 16)
-#define   MG_PLL_DIV1_DITHER_DIV_1			(0 << 12)
-#define   MG_PLL_DIV1_DITHER_DIV_2			(1 << 12)
-#define   MG_PLL_DIV1_DITHER_DIV_4			(2 << 12)
-#define   MG_PLL_DIV1_DITHER_DIV_8			(3 << 12)
-#define   MG_PLL_DIV1_NDIVRATIO(x)			((x) << 4)
-#define   MG_PLL_DIV1_FBPREDIV_MASK			(0xf << 0)
-#define   MG_PLL_DIV1_FBPREDIV(x)			((x) << 0)
-#define MG_PLL_DIV1(tc_port) _MMIO_PORT((tc_port), _MG_PLL_DIV1_PORT1, \
-					_MG_PLL_DIV1_PORT2)
-
-#define _MG_PLL_LF_PORT1				0x168A08
-#define _MG_PLL_LF_PORT2				0x169A08
-#define _MG_PLL_LF_PORT3				0x16AA08
-#define _MG_PLL_LF_PORT4				0x16BA08
-#define   MG_PLL_LF_TDCTARGETCNT(x)			((x) << 24)
-#define   MG_PLL_LF_AFCCNTSEL_256			(0 << 20)
-#define   MG_PLL_LF_AFCCNTSEL_512			(1 << 20)
-#define   MG_PLL_LF_GAINCTRL(x)				((x) << 16)
-#define   MG_PLL_LF_INT_COEFF(x)			((x) << 8)
-#define   MG_PLL_LF_PROP_COEFF(x)			((x) << 0)
-#define MG_PLL_LF(tc_port) _MMIO_PORT((tc_port), _MG_PLL_LF_PORT1, \
-				      _MG_PLL_LF_PORT2)
-
-#define _MG_PLL_FRAC_LOCK_PORT1				0x168A0C
-#define _MG_PLL_FRAC_LOCK_PORT2				0x169A0C
-#define _MG_PLL_FRAC_LOCK_PORT3				0x16AA0C
-#define _MG_PLL_FRAC_LOCK_PORT4				0x16BA0C
-#define   MG_PLL_FRAC_LOCK_TRUELOCK_CRIT_32		(1 << 18)
-#define   MG_PLL_FRAC_LOCK_EARLYLOCK_CRIT_32		(1 << 16)
-#define   MG_PLL_FRAC_LOCK_LOCKTHRESH(x)		((x) << 11)
-#define   MG_PLL_FRAC_LOCK_DCODITHEREN			(1 << 10)
-#define   MG_PLL_FRAC_LOCK_FEEDFWRDCAL_EN		(1 << 8)
-#define   MG_PLL_FRAC_LOCK_FEEDFWRDGAIN(x)		((x) << 0)
-#define MG_PLL_FRAC_LOCK(tc_port) _MMIO_PORT((tc_port), \
-					     _MG_PLL_FRAC_LOCK_PORT1, \
-					     _MG_PLL_FRAC_LOCK_PORT2)
-
-#define _MG_PLL_SSC_PORT1				0x168A10
-#define _MG_PLL_SSC_PORT2				0x169A10
-#define _MG_PLL_SSC_PORT3				0x16AA10
-#define _MG_PLL_SSC_PORT4				0x16BA10
-#define   MG_PLL_SSC_EN					(1 << 28)
-#define   MG_PLL_SSC_TYPE(x)				((x) << 26)
-#define   MG_PLL_SSC_STEPLENGTH(x)			((x) << 16)
-#define   MG_PLL_SSC_STEPNUM(x)				((x) << 10)
-#define   MG_PLL_SSC_FLLEN				(1 << 9)
-#define   MG_PLL_SSC_STEPSIZE(x)			((x) << 0)
-#define MG_PLL_SSC(tc_port) _MMIO_PORT((tc_port), _MG_PLL_SSC_PORT1, \
-				       _MG_PLL_SSC_PORT2)
-
-#define _MG_PLL_BIAS_PORT1				0x168A14
-#define _MG_PLL_BIAS_PORT2				0x169A14
-#define _MG_PLL_BIAS_PORT3				0x16AA14
-#define _MG_PLL_BIAS_PORT4				0x16BA14
-#define   MG_PLL_BIAS_BIAS_GB_SEL(x)			((x) << 30)
-#define   MG_PLL_BIAS_BIAS_GB_SEL_MASK			(0x3 << 30)
-#define   MG_PLL_BIAS_INIT_DCOAMP(x)			((x) << 24)
-#define   MG_PLL_BIAS_INIT_DCOAMP_MASK			(0x3f << 24)
-#define   MG_PLL_BIAS_BIAS_BONUS(x)			((x) << 16)
-#define   MG_PLL_BIAS_BIAS_BONUS_MASK			(0xff << 16)
-#define   MG_PLL_BIAS_BIASCAL_EN			(1 << 15)
-#define   MG_PLL_BIAS_CTRIM(x)				((x) << 8)
-#define   MG_PLL_BIAS_CTRIM_MASK			(0x1f << 8)
-#define   MG_PLL_BIAS_VREF_RDAC(x)			((x) << 5)
-#define   MG_PLL_BIAS_VREF_RDAC_MASK			(0x7 << 5)
-#define   MG_PLL_BIAS_IREFTRIM(x)			((x) << 0)
-#define   MG_PLL_BIAS_IREFTRIM_MASK			(0x1f << 0)
-#define MG_PLL_BIAS(tc_port) _MMIO_PORT((tc_port), _MG_PLL_BIAS_PORT1, \
-					_MG_PLL_BIAS_PORT2)
-
-#define _MG_PLL_TDC_COLDST_BIAS_PORT1			0x168A18
-#define _MG_PLL_TDC_COLDST_BIAS_PORT2			0x169A18
-#define _MG_PLL_TDC_COLDST_BIAS_PORT3			0x16AA18
-#define _MG_PLL_TDC_COLDST_BIAS_PORT4			0x16BA18
-#define   MG_PLL_TDC_COLDST_IREFINT_EN			(1 << 27)
-#define   MG_PLL_TDC_COLDST_REFBIAS_START_PULSE_W(x)	((x) << 17)
-#define   MG_PLL_TDC_COLDST_COLDSTART			(1 << 16)
-#define   MG_PLL_TDC_TDCOVCCORR_EN			(1 << 2)
-#define   MG_PLL_TDC_TDCSEL(x)				((x) << 0)
-#define MG_PLL_TDC_COLDST_BIAS(tc_port) _MMIO_PORT((tc_port), \
-						   _MG_PLL_TDC_COLDST_BIAS_PORT1, \
-						   _MG_PLL_TDC_COLDST_BIAS_PORT2)
-
 #define _ICL_DPLL0_CFGCR0		0x164000
 #define _ICL_DPLL1_CFGCR0		0x164080
 #define ICL_DPLL_CFGCR0(pll)		_MMIO_PLL(pll, _ICL_DPLL0_CFGCR0, \
-- 
2.34.1

