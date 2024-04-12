Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C46D78A3195
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 16:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA4AD10F6B2;
	Fri, 12 Apr 2024 14:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oG+wr2ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DBFA10F6B0;
 Fri, 12 Apr 2024 14:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712933616; x=1744469616;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XlK66y3OCv0TwVLX624N97fZY1SaUAJggLO+Q5vaHq4=;
 b=oG+wr2tiKdevGMXEpukEY7UJeHrumzajJCI8TFL/lPLVA+3Q6UidNk/5
 ZZZLQzSqJ4OirW9pl8HwfxMULwziMkm2cHh9lU1oWpO8/hhUcAp4fy37J
 XOOXNHqdqTS9eZ6cLj7b1wDZdXZXDCo6RIK1Dt3kUD3SoDhOcQdgE06Nu
 N6tow2HAUJd4yZwP+FlXXzFJsllJd+zoL/YtzO3tbL1EtBEkV05M1ZIZA
 Jh3D9aQ1VfW7Vmz+QLHHjYeir1AWcdzV6DOkS4ZdvgdjYN5TZ9yVY4G7k
 aQmqD9T+wA35EjcXkx6xQ/Qcsc+DAjC63EwW99VixTGyYM6aer8WwY15j g==;
X-CSE-ConnectionGUID: 43axT/O6RTe2sbMmF0a45w==
X-CSE-MsgGUID: 0RM4MchQQSi5hI8MzUURoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19810933"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19810933"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:36 -0700
X-CSE-ConnectionGUID: sdh9mjfgRPCS3pSnibn7mQ==
X-CSE-MsgGUID: F+9kce2BTOyxaZR6vzV7MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21677595"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 6/6] drm/i915/display: split out bxt_phy_regs.h from i915_reg.h
Date: Fri, 12 Apr 2024 17:52:58 +0300
Message-Id: <87fd81f523c3a5517ddecdb88d9c688336f65b87.1712933479.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712933479.git.jani.nikula@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Clean up i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/bxt_phy_regs.h   | 292 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/gvt/mmio.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 283 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 10 files changed, 300 insertions(+), 283 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/bxt_phy_regs.h

diff --git a/drivers/gpu/drm/i915/display/bxt_phy_regs.h b/drivers/gpu/drm/i915/display/bxt_phy_regs.h
new file mode 100644
index 000000000000..73a3e545f5b6
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/bxt_phy_regs.h
@@ -0,0 +1,292 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __BXT_PHY_REGS__
+#define __BXT_PHY_REGS__
+
+#include "intel_display_reg_defs.h"
+
+/* BXT PHY registers */
+#define _BXT_PHY0_BASE			0x6C000
+#define _BXT_PHY1_BASE			0x162000
+#define _BXT_PHY2_BASE			0x163000
+#define BXT_PHY_BASE(phy)							\
+	 _PICK_EVEN_2RANGES(phy, 1,						\
+			    _BXT_PHY0_BASE, _BXT_PHY0_BASE,			\
+			    _BXT_PHY1_BASE, _BXT_PHY2_BASE)
+
+#define _BXT_PHY(phy, reg)						\
+	_MMIO(BXT_PHY_BASE(phy) - _BXT_PHY0_BASE + (reg))
+
+#define _BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
+	(BXT_PHY_BASE(phy) + _PIPE((ch), (reg_ch0) - _BXT_PHY0_BASE,	\
+					 (reg_ch1) - _BXT_PHY0_BASE))
+#define _MMIO_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
+	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1))
+
+#define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
+#define  MIPIO_RST_CTRL				(1 << 2)
+
+#define _BXT_PHY_CTL_DDI_A		0x64C00
+#define _BXT_PHY_CTL_DDI_B		0x64C10
+#define _BXT_PHY_CTL_DDI_C		0x64C20
+#define   BXT_PHY_CMNLANE_POWERDOWN_ACK	(1 << 10)
+#define   BXT_PHY_LANE_POWERDOWN_ACK	(1 << 9)
+#define   BXT_PHY_LANE_ENABLED		(1 << 8)
+#define BXT_PHY_CTL(port)		_MMIO_PORT(port, _BXT_PHY_CTL_DDI_A, \
+							 _BXT_PHY_CTL_DDI_B)
+
+#define _PHY_CTL_FAMILY_DDI		0x64C90
+#define _PHY_CTL_FAMILY_EDP		0x64C80
+#define _PHY_CTL_FAMILY_DDI_C		0x64CA0
+#define   COMMON_RESET_DIS		(1 << 31)
+#define BXT_PHY_CTL_FAMILY(phy)							\
+	 _MMIO(_PICK_EVEN_2RANGES(phy, 1,					\
+				  _PHY_CTL_FAMILY_DDI, _PHY_CTL_FAMILY_DDI,	\
+				  _PHY_CTL_FAMILY_EDP, _PHY_CTL_FAMILY_DDI_C))
+
+/* BXT PHY PLL registers */
+#define _PORT_PLL_A			0x46074
+#define _PORT_PLL_B			0x46078
+#define _PORT_PLL_C			0x4607c
+#define   PORT_PLL_ENABLE		REG_BIT(31)
+#define   PORT_PLL_LOCK			REG_BIT(30)
+#define   PORT_PLL_REF_SEL		REG_BIT(27)
+#define   PORT_PLL_POWER_ENABLE		REG_BIT(26)
+#define   PORT_PLL_POWER_STATE		REG_BIT(25)
+#define BXT_PORT_PLL_ENABLE(port)	_MMIO_PORT(port, _PORT_PLL_A, _PORT_PLL_B)
+
+#define _PORT_PLL_EBB_0_A		0x162034
+#define _PORT_PLL_EBB_0_B		0x6C034
+#define _PORT_PLL_EBB_0_C		0x6C340
+#define   PORT_PLL_P1_MASK		REG_GENMASK(15, 13)
+#define   PORT_PLL_P1(p1)		REG_FIELD_PREP(PORT_PLL_P1_MASK, (p1))
+#define   PORT_PLL_P2_MASK		REG_GENMASK(12, 8)
+#define   PORT_PLL_P2(p2)		REG_FIELD_PREP(PORT_PLL_P2_MASK, (p2))
+#define BXT_PORT_PLL_EBB_0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PLL_EBB_0_B, \
+							 _PORT_PLL_EBB_0_C)
+
+#define _PORT_PLL_EBB_4_A		0x162038
+#define _PORT_PLL_EBB_4_B		0x6C038
+#define _PORT_PLL_EBB_4_C		0x6C344
+#define   PORT_PLL_RECALIBRATE		REG_BIT(14)
+#define   PORT_PLL_10BIT_CLK_ENABLE	REG_BIT(13)
+#define BXT_PORT_PLL_EBB_4(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PLL_EBB_4_B, \
+							 _PORT_PLL_EBB_4_C)
+
+#define _PORT_PLL_0_A			0x162100
+#define _PORT_PLL_0_B			0x6C100
+#define _PORT_PLL_0_C			0x6C380
+/* PORT_PLL_0_A */
+#define   PORT_PLL_M2_INT_MASK		REG_GENMASK(7, 0)
+#define   PORT_PLL_M2_INT(m2_int)	REG_FIELD_PREP(PORT_PLL_M2_INT_MASK, (m2_int))
+/* PORT_PLL_1_A */
+#define   PORT_PLL_N_MASK		REG_GENMASK(11, 8)
+#define   PORT_PLL_N(n)			REG_FIELD_PREP(PORT_PLL_N_MASK, (n))
+/* PORT_PLL_2_A */
+#define   PORT_PLL_M2_FRAC_MASK		REG_GENMASK(21, 0)
+#define   PORT_PLL_M2_FRAC(m2_frac)	REG_FIELD_PREP(PORT_PLL_M2_FRAC_MASK, (m2_frac))
+/* PORT_PLL_3_A */
+#define   PORT_PLL_M2_FRAC_ENABLE	REG_BIT(16)
+/* PORT_PLL_6_A */
+#define   PORT_PLL_GAIN_CTL_MASK	REG_GENMASK(18, 16)
+#define   PORT_PLL_GAIN_CTL(x)		REG_FIELD_PREP(PORT_PLL_GAIN_CTL_MASK, (x))
+#define   PORT_PLL_INT_COEFF_MASK	REG_GENMASK(12, 8)
+#define   PORT_PLL_INT_COEFF(x)		REG_FIELD_PREP(PORT_PLL_INT_COEFF_MASK, (x))
+#define   PORT_PLL_PROP_COEFF_MASK	REG_GENMASK(3, 0)
+#define   PORT_PLL_PROP_COEFF(x)	REG_FIELD_PREP(PORT_PLL_PROP_COEFF_MASK, (x))
+/* PORT_PLL_8_A */
+#define   PORT_PLL_TARGET_CNT_MASK	REG_GENMASK(9, 0)
+#define   PORT_PLL_TARGET_CNT(x)	REG_FIELD_PREP(PORT_PLL_TARGET_CNT_MASK, (x))
+/* PORT_PLL_9_A */
+#define  PORT_PLL_LOCK_THRESHOLD_MASK	REG_GENMASK(3, 1)
+#define  PORT_PLL_LOCK_THRESHOLD(x)	REG_FIELD_PREP(PORT_PLL_LOCK_THRESHOLD_MASK, (x))
+/* PORT_PLL_10_A */
+#define  PORT_PLL_DCO_AMP_OVR_EN_H	REG_BIT(27)
+#define  PORT_PLL_DCO_AMP_MASK		REG_GENMASK(13, 10)
+#define  PORT_PLL_DCO_AMP(x)		REG_FIELD_PREP(PORT_PLL_DCO_AMP_MASK, (x))
+#define _PORT_PLL_BASE(phy, ch)		_BXT_PHY_CH(phy, ch, \
+						    _PORT_PLL_0_B, \
+						    _PORT_PLL_0_C)
+#define BXT_PORT_PLL(phy, ch, idx)	_MMIO(_PORT_PLL_BASE(phy, ch) + \
+					      (idx) * 4)
+
+/* BXT PHY common lane registers */
+#define _PORT_CL1CM_DW0_A		0x162000
+#define _PORT_CL1CM_DW0_BC		0x6C000
+#define   PHY_POWER_GOOD		(1 << 16)
+#define   PHY_RESERVED			(1 << 7)
+#define BXT_PORT_CL1CM_DW0(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW0_BC)
+
+#define _PORT_CL1CM_DW9_A		0x162024
+#define _PORT_CL1CM_DW9_BC		0x6C024
+#define   IREF0RC_OFFSET_SHIFT		8
+#define   IREF0RC_OFFSET_MASK		(0xFF << IREF0RC_OFFSET_SHIFT)
+#define BXT_PORT_CL1CM_DW9(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW9_BC)
+
+#define _PORT_CL1CM_DW10_A		0x162028
+#define _PORT_CL1CM_DW10_BC		0x6C028
+#define   IREF1RC_OFFSET_SHIFT		8
+#define   IREF1RC_OFFSET_MASK		(0xFF << IREF1RC_OFFSET_SHIFT)
+#define BXT_PORT_CL1CM_DW10(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW10_BC)
+
+#define _PORT_CL1CM_DW28_A		0x162070
+#define _PORT_CL1CM_DW28_BC		0x6C070
+#define   OCL1_POWER_DOWN_EN		(1 << 23)
+#define   DW28_OLDO_DYN_PWR_DOWN_EN	(1 << 22)
+#define   SUS_CLK_CONFIG		0x3
+#define BXT_PORT_CL1CM_DW28(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW28_BC)
+
+#define _PORT_CL1CM_DW30_A		0x162078
+#define _PORT_CL1CM_DW30_BC		0x6C078
+#define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
+#define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
+
+/* The spec defines this only for BXT PHY0, but lets assume that this
+ * would exist for PHY1 too if it had a second channel.
+ */
+#define _PORT_CL2CM_DW6_A		0x162358
+#define _PORT_CL2CM_DW6_BC		0x6C358
+#define BXT_PORT_CL2CM_DW6(phy)		_BXT_PHY((phy), _PORT_CL2CM_DW6_BC)
+#define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
+
+/* BXT PHY Ref registers */
+#define _PORT_REF_DW3_A			0x16218C
+#define _PORT_REF_DW3_BC		0x6C18C
+#define   GRC_DONE			(1 << 22)
+#define BXT_PORT_REF_DW3(phy)		_BXT_PHY((phy), _PORT_REF_DW3_BC)
+
+#define _PORT_REF_DW6_A			0x162198
+#define _PORT_REF_DW6_BC		0x6C198
+#define   GRC_CODE_SHIFT		24
+#define   GRC_CODE_MASK			(0xFF << GRC_CODE_SHIFT)
+#define   GRC_CODE_FAST_SHIFT		16
+#define   GRC_CODE_FAST_MASK		(0xFF << GRC_CODE_FAST_SHIFT)
+#define   GRC_CODE_SLOW_SHIFT		8
+#define   GRC_CODE_SLOW_MASK		(0xFF << GRC_CODE_SLOW_SHIFT)
+#define   GRC_CODE_NOM_MASK		0xFF
+#define BXT_PORT_REF_DW6(phy)		_BXT_PHY((phy), _PORT_REF_DW6_BC)
+
+#define _PORT_REF_DW8_A			0x1621A0
+#define _PORT_REF_DW8_BC		0x6C1A0
+#define   GRC_DIS			(1 << 15)
+#define   GRC_RDY_OVRD			(1 << 1)
+#define BXT_PORT_REF_DW8(phy)		_BXT_PHY((phy), _PORT_REF_DW8_BC)
+
+/* BXT PHY PCS registers */
+#define _PORT_PCS_DW10_LN01_A		0x162428
+#define _PORT_PCS_DW10_LN01_B		0x6C428
+#define _PORT_PCS_DW10_LN01_C		0x6C828
+#define _PORT_PCS_DW10_GRP_A		0x162C28
+#define _PORT_PCS_DW10_GRP_B		0x6CC28
+#define _PORT_PCS_DW10_GRP_C		0x6CE28
+#define BXT_PORT_PCS_DW10_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PCS_DW10_LN01_B, \
+							 _PORT_PCS_DW10_LN01_C)
+#define BXT_PORT_PCS_DW10_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PCS_DW10_GRP_B, \
+							 _PORT_PCS_DW10_GRP_C)
+
+#define   TX2_SWING_CALC_INIT		(1 << 31)
+#define   TX1_SWING_CALC_INIT		(1 << 30)
+
+#define _PORT_PCS_DW12_LN01_A		0x162430
+#define _PORT_PCS_DW12_LN01_B		0x6C430
+#define _PORT_PCS_DW12_LN01_C		0x6C830
+#define _PORT_PCS_DW12_LN23_A		0x162630
+#define _PORT_PCS_DW12_LN23_B		0x6C630
+#define _PORT_PCS_DW12_LN23_C		0x6CA30
+#define _PORT_PCS_DW12_GRP_A		0x162c30
+#define _PORT_PCS_DW12_GRP_B		0x6CC30
+#define _PORT_PCS_DW12_GRP_C		0x6CE30
+#define   LANESTAGGER_STRAP_OVRD	(1 << 6)
+#define   LANE_STAGGER_MASK		0x1F
+#define BXT_PORT_PCS_DW12_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PCS_DW12_LN01_B, \
+							 _PORT_PCS_DW12_LN01_C)
+#define BXT_PORT_PCS_DW12_LN23(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PCS_DW12_LN23_B, \
+							 _PORT_PCS_DW12_LN23_C)
+#define BXT_PORT_PCS_DW12_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_PCS_DW12_GRP_B, \
+							 _PORT_PCS_DW12_GRP_C)
+
+/* BXT PHY TX registers */
+#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
+					  ((lane) & 1) * 0x80)
+
+#define _PORT_TX_DW2_LN0_A		0x162508
+#define _PORT_TX_DW2_LN0_B		0x6C508
+#define _PORT_TX_DW2_LN0_C		0x6C908
+#define _PORT_TX_DW2_GRP_A		0x162D08
+#define _PORT_TX_DW2_GRP_B		0x6CD08
+#define _PORT_TX_DW2_GRP_C		0x6CF08
+#define BXT_PORT_TX_DW2_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW2_LN0_B, \
+							 _PORT_TX_DW2_LN0_C)
+#define BXT_PORT_TX_DW2_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW2_GRP_B, \
+							 _PORT_TX_DW2_GRP_C)
+#define   MARGIN_000_SHIFT		16
+#define   MARGIN_000			(0xFF << MARGIN_000_SHIFT)
+#define   UNIQ_TRANS_SCALE_SHIFT	8
+#define   UNIQ_TRANS_SCALE		(0xFF << UNIQ_TRANS_SCALE_SHIFT)
+
+#define _PORT_TX_DW3_LN0_A		0x16250C
+#define _PORT_TX_DW3_LN0_B		0x6C50C
+#define _PORT_TX_DW3_LN0_C		0x6C90C
+#define _PORT_TX_DW3_GRP_A		0x162D0C
+#define _PORT_TX_DW3_GRP_B		0x6CD0C
+#define _PORT_TX_DW3_GRP_C		0x6CF0C
+#define BXT_PORT_TX_DW3_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW3_LN0_B, \
+							 _PORT_TX_DW3_LN0_C)
+#define BXT_PORT_TX_DW3_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW3_GRP_B, \
+							 _PORT_TX_DW3_GRP_C)
+#define   SCALE_DCOMP_METHOD		(1 << 26)
+#define   UNIQUE_TRANGE_EN_METHOD	(1 << 27)
+
+#define _PORT_TX_DW4_LN0_A		0x162510
+#define _PORT_TX_DW4_LN0_B		0x6C510
+#define _PORT_TX_DW4_LN0_C		0x6C910
+#define _PORT_TX_DW4_GRP_A		0x162D10
+#define _PORT_TX_DW4_GRP_B		0x6CD10
+#define _PORT_TX_DW4_GRP_C		0x6CF10
+#define BXT_PORT_TX_DW4_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW4_LN0_B, \
+							 _PORT_TX_DW4_LN0_C)
+#define BXT_PORT_TX_DW4_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW4_GRP_B, \
+							 _PORT_TX_DW4_GRP_C)
+#define   DEEMPH_SHIFT			24
+#define   DE_EMPHASIS			(0xFF << DEEMPH_SHIFT)
+
+#define _PORT_TX_DW5_LN0_A		0x162514
+#define _PORT_TX_DW5_LN0_B		0x6C514
+#define _PORT_TX_DW5_LN0_C		0x6C914
+#define _PORT_TX_DW5_GRP_A		0x162D14
+#define _PORT_TX_DW5_GRP_B		0x6CD14
+#define _PORT_TX_DW5_GRP_C		0x6CF14
+#define BXT_PORT_TX_DW5_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW5_LN0_B, \
+							 _PORT_TX_DW5_LN0_C)
+#define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
+							 _PORT_TX_DW5_GRP_B, \
+							 _PORT_TX_DW5_GRP_C)
+#define   DCC_DELAY_RANGE_1		(1 << 9)
+#define   DCC_DELAY_RANGE_2		(1 << 8)
+
+#define _PORT_TX_DW14_LN0_A		0x162538
+#define _PORT_TX_DW14_LN0_B		0x6C538
+#define _PORT_TX_DW14_LN0_C		0x6C938
+#define   LATENCY_OPTIM_SHIFT		30
+#define   LATENCY_OPTIM			(1 << LATENCY_OPTIM_SHIFT)
+#define BXT_PORT_TX_DW14_LN(phy, ch, lane)				\
+	_MMIO(_BXT_PHY_CH(phy, ch, _PORT_TX_DW14_LN0_B,			\
+				   _PORT_TX_DW14_LN0_C) +		\
+	      _BXT_LANE_OFFSET(lane))
+
+#endif /* __BXT_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3255d4e375af..2ad6e221cf67 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -31,6 +31,7 @@
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_privacy_screen_consumer.h>
 
+#include "bxt_phy_regs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "icl_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 8d99e00ea326..bf1897bec9ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -21,6 +21,7 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include "bxt_phy_regs.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9ff6c4cc2e4b..c0255b0b3279 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -24,6 +24,7 @@
 #include <linux/math.h>
 #include <linux/string_helpers.h>
 
+#include "bxt_phy_regs.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 63f4af601d15..27d9d15852fc 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -31,6 +31,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 
+#include "bxt_phy_regs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 498698482d59..c8ee15f4ea34 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -36,6 +36,7 @@
 #include "i915_reg.h"
 #include "gvt.h"
 
+#include "display/bxt_phy_regs.h"
 #include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_sprite_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 7d749995c7a7..daa83f0c1d5f 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -41,6 +41,7 @@
 #include "gvt.h"
 #include "i915_pvinfo.h"
 #include "intel_mchbar_regs.h"
+#include "display/bxt_phy_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index 5b5def6ddef7..1b75eda56c02 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -37,6 +37,7 @@
 #include "i915_reg.h"
 #include "gvt.h"
 
+#include "display/bxt_phy_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "gt/intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 86700c6caa27..f456153335c5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -195,289 +195,6 @@
 #define  DPIO_SFR_BYPASS		(1 << 1)
 #define  DPIO_CMNRST			(1 << 0)
 
-/* BXT PHY registers */
-#define _BXT_PHY0_BASE			0x6C000
-#define _BXT_PHY1_BASE			0x162000
-#define _BXT_PHY2_BASE			0x163000
-#define BXT_PHY_BASE(phy)							\
-	 _PICK_EVEN_2RANGES(phy, 1,						\
-			    _BXT_PHY0_BASE, _BXT_PHY0_BASE,			\
-			    _BXT_PHY1_BASE, _BXT_PHY2_BASE)
-
-#define _BXT_PHY(phy, reg)						\
-	_MMIO(BXT_PHY_BASE(phy) - _BXT_PHY0_BASE + (reg))
-
-#define _BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
-	(BXT_PHY_BASE(phy) + _PIPE((ch), (reg_ch0) - _BXT_PHY0_BASE,	\
-					 (reg_ch1) - _BXT_PHY0_BASE))
-#define _MMIO_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1)		\
-	_MMIO(_BXT_PHY_CH(phy, ch, reg_ch0, reg_ch1))
-
-#define BXT_P_CR_GT_DISP_PWRON		_MMIO(0x138090)
-#define  MIPIO_RST_CTRL				(1 << 2)
-
-#define _BXT_PHY_CTL_DDI_A		0x64C00
-#define _BXT_PHY_CTL_DDI_B		0x64C10
-#define _BXT_PHY_CTL_DDI_C		0x64C20
-#define   BXT_PHY_CMNLANE_POWERDOWN_ACK	(1 << 10)
-#define   BXT_PHY_LANE_POWERDOWN_ACK	(1 << 9)
-#define   BXT_PHY_LANE_ENABLED		(1 << 8)
-#define BXT_PHY_CTL(port)		_MMIO_PORT(port, _BXT_PHY_CTL_DDI_A, \
-							 _BXT_PHY_CTL_DDI_B)
-
-#define _PHY_CTL_FAMILY_DDI		0x64C90
-#define _PHY_CTL_FAMILY_EDP		0x64C80
-#define _PHY_CTL_FAMILY_DDI_C		0x64CA0
-#define   COMMON_RESET_DIS		(1 << 31)
-#define BXT_PHY_CTL_FAMILY(phy)							\
-	 _MMIO(_PICK_EVEN_2RANGES(phy, 1,					\
-				  _PHY_CTL_FAMILY_DDI, _PHY_CTL_FAMILY_DDI,	\
-				  _PHY_CTL_FAMILY_EDP, _PHY_CTL_FAMILY_DDI_C))
-
-/* BXT PHY PLL registers */
-#define _PORT_PLL_A			0x46074
-#define _PORT_PLL_B			0x46078
-#define _PORT_PLL_C			0x4607c
-#define   PORT_PLL_ENABLE		REG_BIT(31)
-#define   PORT_PLL_LOCK			REG_BIT(30)
-#define   PORT_PLL_REF_SEL		REG_BIT(27)
-#define   PORT_PLL_POWER_ENABLE		REG_BIT(26)
-#define   PORT_PLL_POWER_STATE		REG_BIT(25)
-#define BXT_PORT_PLL_ENABLE(port)	_MMIO_PORT(port, _PORT_PLL_A, _PORT_PLL_B)
-
-#define _PORT_PLL_EBB_0_A		0x162034
-#define _PORT_PLL_EBB_0_B		0x6C034
-#define _PORT_PLL_EBB_0_C		0x6C340
-#define   PORT_PLL_P1_MASK		REG_GENMASK(15, 13)
-#define   PORT_PLL_P1(p1)		REG_FIELD_PREP(PORT_PLL_P1_MASK, (p1))
-#define   PORT_PLL_P2_MASK		REG_GENMASK(12, 8)
-#define   PORT_PLL_P2(p2)		REG_FIELD_PREP(PORT_PLL_P2_MASK, (p2))
-#define BXT_PORT_PLL_EBB_0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PLL_EBB_0_B, \
-							 _PORT_PLL_EBB_0_C)
-
-#define _PORT_PLL_EBB_4_A		0x162038
-#define _PORT_PLL_EBB_4_B		0x6C038
-#define _PORT_PLL_EBB_4_C		0x6C344
-#define   PORT_PLL_RECALIBRATE		REG_BIT(14)
-#define   PORT_PLL_10BIT_CLK_ENABLE	REG_BIT(13)
-#define BXT_PORT_PLL_EBB_4(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PLL_EBB_4_B, \
-							 _PORT_PLL_EBB_4_C)
-
-#define _PORT_PLL_0_A			0x162100
-#define _PORT_PLL_0_B			0x6C100
-#define _PORT_PLL_0_C			0x6C380
-/* PORT_PLL_0_A */
-#define   PORT_PLL_M2_INT_MASK		REG_GENMASK(7, 0)
-#define   PORT_PLL_M2_INT(m2_int)	REG_FIELD_PREP(PORT_PLL_M2_INT_MASK, (m2_int))
-/* PORT_PLL_1_A */
-#define   PORT_PLL_N_MASK		REG_GENMASK(11, 8)
-#define   PORT_PLL_N(n)			REG_FIELD_PREP(PORT_PLL_N_MASK, (n))
-/* PORT_PLL_2_A */
-#define   PORT_PLL_M2_FRAC_MASK		REG_GENMASK(21, 0)
-#define   PORT_PLL_M2_FRAC(m2_frac)	REG_FIELD_PREP(PORT_PLL_M2_FRAC_MASK, (m2_frac))
-/* PORT_PLL_3_A */
-#define   PORT_PLL_M2_FRAC_ENABLE	REG_BIT(16)
-/* PORT_PLL_6_A */
-#define   PORT_PLL_GAIN_CTL_MASK	REG_GENMASK(18, 16)
-#define   PORT_PLL_GAIN_CTL(x)		REG_FIELD_PREP(PORT_PLL_GAIN_CTL_MASK, (x))
-#define   PORT_PLL_INT_COEFF_MASK	REG_GENMASK(12, 8)
-#define   PORT_PLL_INT_COEFF(x)		REG_FIELD_PREP(PORT_PLL_INT_COEFF_MASK, (x))
-#define   PORT_PLL_PROP_COEFF_MASK	REG_GENMASK(3, 0)
-#define   PORT_PLL_PROP_COEFF(x)	REG_FIELD_PREP(PORT_PLL_PROP_COEFF_MASK, (x))
-/* PORT_PLL_8_A */
-#define   PORT_PLL_TARGET_CNT_MASK	REG_GENMASK(9, 0)
-#define   PORT_PLL_TARGET_CNT(x)	REG_FIELD_PREP(PORT_PLL_TARGET_CNT_MASK, (x))
-/* PORT_PLL_9_A */
-#define  PORT_PLL_LOCK_THRESHOLD_MASK	REG_GENMASK(3, 1)
-#define  PORT_PLL_LOCK_THRESHOLD(x)	REG_FIELD_PREP(PORT_PLL_LOCK_THRESHOLD_MASK, (x))
-/* PORT_PLL_10_A */
-#define  PORT_PLL_DCO_AMP_OVR_EN_H	REG_BIT(27)
-#define  PORT_PLL_DCO_AMP_MASK		REG_GENMASK(13, 10)
-#define  PORT_PLL_DCO_AMP(x)		REG_FIELD_PREP(PORT_PLL_DCO_AMP_MASK, (x))
-#define _PORT_PLL_BASE(phy, ch)		_BXT_PHY_CH(phy, ch, \
-						    _PORT_PLL_0_B, \
-						    _PORT_PLL_0_C)
-#define BXT_PORT_PLL(phy, ch, idx)	_MMIO(_PORT_PLL_BASE(phy, ch) + \
-					      (idx) * 4)
-
-/* BXT PHY common lane registers */
-#define _PORT_CL1CM_DW0_A		0x162000
-#define _PORT_CL1CM_DW0_BC		0x6C000
-#define   PHY_POWER_GOOD		(1 << 16)
-#define   PHY_RESERVED			(1 << 7)
-#define BXT_PORT_CL1CM_DW0(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW0_BC)
-
-#define _PORT_CL1CM_DW9_A		0x162024
-#define _PORT_CL1CM_DW9_BC		0x6C024
-#define   IREF0RC_OFFSET_SHIFT		8
-#define   IREF0RC_OFFSET_MASK		(0xFF << IREF0RC_OFFSET_SHIFT)
-#define BXT_PORT_CL1CM_DW9(phy)		_BXT_PHY((phy), _PORT_CL1CM_DW9_BC)
-
-#define _PORT_CL1CM_DW10_A		0x162028
-#define _PORT_CL1CM_DW10_BC		0x6C028
-#define   IREF1RC_OFFSET_SHIFT		8
-#define   IREF1RC_OFFSET_MASK		(0xFF << IREF1RC_OFFSET_SHIFT)
-#define BXT_PORT_CL1CM_DW10(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW10_BC)
-
-#define _PORT_CL1CM_DW28_A		0x162070
-#define _PORT_CL1CM_DW28_BC		0x6C070
-#define   OCL1_POWER_DOWN_EN		(1 << 23)
-#define   DW28_OLDO_DYN_PWR_DOWN_EN	(1 << 22)
-#define   SUS_CLK_CONFIG		0x3
-#define BXT_PORT_CL1CM_DW28(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW28_BC)
-
-#define _PORT_CL1CM_DW30_A		0x162078
-#define _PORT_CL1CM_DW30_BC		0x6C078
-#define   OCL2_LDOFUSE_PWR_DIS		(1 << 6)
-#define BXT_PORT_CL1CM_DW30(phy)	_BXT_PHY((phy), _PORT_CL1CM_DW30_BC)
-
-/* The spec defines this only for BXT PHY0, but lets assume that this
- * would exist for PHY1 too if it had a second channel.
- */
-#define _PORT_CL2CM_DW6_A		0x162358
-#define _PORT_CL2CM_DW6_BC		0x6C358
-#define BXT_PORT_CL2CM_DW6(phy)		_BXT_PHY((phy), _PORT_CL2CM_DW6_BC)
-#define   DW6_OLDO_DYN_PWR_DOWN_EN	(1 << 28)
-
-/* BXT PHY Ref registers */
-#define _PORT_REF_DW3_A			0x16218C
-#define _PORT_REF_DW3_BC		0x6C18C
-#define   GRC_DONE			(1 << 22)
-#define BXT_PORT_REF_DW3(phy)		_BXT_PHY((phy), _PORT_REF_DW3_BC)
-
-#define _PORT_REF_DW6_A			0x162198
-#define _PORT_REF_DW6_BC		0x6C198
-#define   GRC_CODE_SHIFT		24
-#define   GRC_CODE_MASK			(0xFF << GRC_CODE_SHIFT)
-#define   GRC_CODE_FAST_SHIFT		16
-#define   GRC_CODE_FAST_MASK		(0xFF << GRC_CODE_FAST_SHIFT)
-#define   GRC_CODE_SLOW_SHIFT		8
-#define   GRC_CODE_SLOW_MASK		(0xFF << GRC_CODE_SLOW_SHIFT)
-#define   GRC_CODE_NOM_MASK		0xFF
-#define BXT_PORT_REF_DW6(phy)		_BXT_PHY((phy), _PORT_REF_DW6_BC)
-
-#define _PORT_REF_DW8_A			0x1621A0
-#define _PORT_REF_DW8_BC		0x6C1A0
-#define   GRC_DIS			(1 << 15)
-#define   GRC_RDY_OVRD			(1 << 1)
-#define BXT_PORT_REF_DW8(phy)		_BXT_PHY((phy), _PORT_REF_DW8_BC)
-
-/* BXT PHY PCS registers */
-#define _PORT_PCS_DW10_LN01_A		0x162428
-#define _PORT_PCS_DW10_LN01_B		0x6C428
-#define _PORT_PCS_DW10_LN01_C		0x6C828
-#define _PORT_PCS_DW10_GRP_A		0x162C28
-#define _PORT_PCS_DW10_GRP_B		0x6CC28
-#define _PORT_PCS_DW10_GRP_C		0x6CE28
-#define BXT_PORT_PCS_DW10_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PCS_DW10_LN01_B, \
-							 _PORT_PCS_DW10_LN01_C)
-#define BXT_PORT_PCS_DW10_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PCS_DW10_GRP_B, \
-							 _PORT_PCS_DW10_GRP_C)
-
-#define   TX2_SWING_CALC_INIT		(1 << 31)
-#define   TX1_SWING_CALC_INIT		(1 << 30)
-
-#define _PORT_PCS_DW12_LN01_A		0x162430
-#define _PORT_PCS_DW12_LN01_B		0x6C430
-#define _PORT_PCS_DW12_LN01_C		0x6C830
-#define _PORT_PCS_DW12_LN23_A		0x162630
-#define _PORT_PCS_DW12_LN23_B		0x6C630
-#define _PORT_PCS_DW12_LN23_C		0x6CA30
-#define _PORT_PCS_DW12_GRP_A		0x162c30
-#define _PORT_PCS_DW12_GRP_B		0x6CC30
-#define _PORT_PCS_DW12_GRP_C		0x6CE30
-#define   LANESTAGGER_STRAP_OVRD	(1 << 6)
-#define   LANE_STAGGER_MASK		0x1F
-#define BXT_PORT_PCS_DW12_LN01(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PCS_DW12_LN01_B, \
-							 _PORT_PCS_DW12_LN01_C)
-#define BXT_PORT_PCS_DW12_LN23(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PCS_DW12_LN23_B, \
-							 _PORT_PCS_DW12_LN23_C)
-#define BXT_PORT_PCS_DW12_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_PCS_DW12_GRP_B, \
-							 _PORT_PCS_DW12_GRP_C)
-
-/* BXT PHY TX registers */
-#define _BXT_LANE_OFFSET(lane)           (((lane) >> 1) * 0x200 +	\
-					  ((lane) & 1) * 0x80)
-
-#define _PORT_TX_DW2_LN0_A		0x162508
-#define _PORT_TX_DW2_LN0_B		0x6C508
-#define _PORT_TX_DW2_LN0_C		0x6C908
-#define _PORT_TX_DW2_GRP_A		0x162D08
-#define _PORT_TX_DW2_GRP_B		0x6CD08
-#define _PORT_TX_DW2_GRP_C		0x6CF08
-#define BXT_PORT_TX_DW2_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW2_LN0_B, \
-							 _PORT_TX_DW2_LN0_C)
-#define BXT_PORT_TX_DW2_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW2_GRP_B, \
-							 _PORT_TX_DW2_GRP_C)
-#define   MARGIN_000_SHIFT		16
-#define   MARGIN_000			(0xFF << MARGIN_000_SHIFT)
-#define   UNIQ_TRANS_SCALE_SHIFT	8
-#define   UNIQ_TRANS_SCALE		(0xFF << UNIQ_TRANS_SCALE_SHIFT)
-
-#define _PORT_TX_DW3_LN0_A		0x16250C
-#define _PORT_TX_DW3_LN0_B		0x6C50C
-#define _PORT_TX_DW3_LN0_C		0x6C90C
-#define _PORT_TX_DW3_GRP_A		0x162D0C
-#define _PORT_TX_DW3_GRP_B		0x6CD0C
-#define _PORT_TX_DW3_GRP_C		0x6CF0C
-#define BXT_PORT_TX_DW3_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW3_LN0_B, \
-							 _PORT_TX_DW3_LN0_C)
-#define BXT_PORT_TX_DW3_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW3_GRP_B, \
-							 _PORT_TX_DW3_GRP_C)
-#define   SCALE_DCOMP_METHOD		(1 << 26)
-#define   UNIQUE_TRANGE_EN_METHOD	(1 << 27)
-
-#define _PORT_TX_DW4_LN0_A		0x162510
-#define _PORT_TX_DW4_LN0_B		0x6C510
-#define _PORT_TX_DW4_LN0_C		0x6C910
-#define _PORT_TX_DW4_GRP_A		0x162D10
-#define _PORT_TX_DW4_GRP_B		0x6CD10
-#define _PORT_TX_DW4_GRP_C		0x6CF10
-#define BXT_PORT_TX_DW4_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW4_LN0_B, \
-							 _PORT_TX_DW4_LN0_C)
-#define BXT_PORT_TX_DW4_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW4_GRP_B, \
-							 _PORT_TX_DW4_GRP_C)
-#define   DEEMPH_SHIFT			24
-#define   DE_EMPHASIS			(0xFF << DEEMPH_SHIFT)
-
-#define _PORT_TX_DW5_LN0_A		0x162514
-#define _PORT_TX_DW5_LN0_B		0x6C514
-#define _PORT_TX_DW5_LN0_C		0x6C914
-#define _PORT_TX_DW5_GRP_A		0x162D14
-#define _PORT_TX_DW5_GRP_B		0x6CD14
-#define _PORT_TX_DW5_GRP_C		0x6CF14
-#define BXT_PORT_TX_DW5_LN0(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW5_LN0_B, \
-							 _PORT_TX_DW5_LN0_C)
-#define BXT_PORT_TX_DW5_GRP(phy, ch)	_MMIO_BXT_PHY_CH(phy, ch, \
-							 _PORT_TX_DW5_GRP_B, \
-							 _PORT_TX_DW5_GRP_C)
-#define   DCC_DELAY_RANGE_1		(1 << 9)
-#define   DCC_DELAY_RANGE_2		(1 << 8)
-
-#define _PORT_TX_DW14_LN0_A		0x162538
-#define _PORT_TX_DW14_LN0_B		0x6C538
-#define _PORT_TX_DW14_LN0_C		0x6C938
-#define   LATENCY_OPTIM_SHIFT		30
-#define   LATENCY_OPTIM			(1 << LATENCY_OPTIM_SHIFT)
-#define BXT_PORT_TX_DW14_LN(phy, ch, lane)				\
-	_MMIO(_BXT_PHY_CH(phy, ch, _PORT_TX_DW14_LN0_B,			\
-				   _PORT_TX_DW14_LN0_C) +		\
-	      _BXT_LANE_OFFSET(lane))
-
 /* UAIMI scratch pad register 1 */
 #define UAIMI_SPR1			_MMIO(0x4F074)
 /* SKL VccIO mask */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 442ffc0c79fe..80e7a5aa584b 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include "display/bxt_phy_regs.h"
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_color_regs.h"
-- 
2.39.2

