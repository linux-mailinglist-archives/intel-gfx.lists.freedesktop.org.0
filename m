Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FD66BD0D8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:29:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24A810E19D;
	Thu, 16 Mar 2023 13:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC09A10E19F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678973386; x=1710509386;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XXKv3wXGz52+HSShcbAfg7eeOrcslFGImwISl9PY+Zg=;
 b=G0TL4ykclE4IraEQesLbv4HtojXKD32OoCjeQJbs24fF0KYeQBO9rFo0
 HErPqczXUmQwxYkCmsgKxC4F2yQUKK3h9dwKRp3W+jPbHnZ3YxE4Jt0HK
 6TKypPhnyTH0uSXe6AkxGwNuR9OKHBLcs9Wxe+JVPI1Xo43R0P1mBLEFV
 Utp0JcAvgHGoaTK6/WAqpzh74l00jd2zYEi+J7zvLnLcgMtFXx88xPjxw
 xHTLIUuEOj8+Qo2bOGB02LYsuw+y8l0DzyE0zfWqu/vG8qiSUM7CdPzXY
 miBWwbQQiycyWA6RfUT0bYeheO3tNZym5ltqxvUQpn1CbVw4AB3BKlkbi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="338004148"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="338004148"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="710113472"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710113472"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:30 +0200
Message-Id: <80d66ee6d7e56153a0ab25640ac2dad239b1ef6e.1678973282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/pps: split out PPS regs to a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up i915_reg.h by splitting out PPS regs to
display/intel_pps_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
 drivers/gpu/drm/i915/display/intel_pps_regs.h | 78 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 67 ----------------
 7 files changed, 83 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index f86060195987..dedfc837b727 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -19,6 +19,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 2cbc1292ab38..695b0d69a4cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -46,6 +46,7 @@
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
 #include "intel_gmbus_regs.h"
+#include "intel_pps_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_regs.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index a504b3a7fbd5..0de44b3631cd 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -51,6 +51,7 @@
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
+#include "intel_pps_regs.h"
 
 /* Private structure for the integrated LVDS support */
 struct intel_lvds_pps {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 24b5b12f7732..7f9926672a6a 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -15,6 +15,7 @@
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_pps.h"
+#include "intel_pps_regs.h"
 #include "intel_quirks.h"
 
 static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_pps_regs.h b/drivers/gpu/drm/i915/display/intel_pps_regs.h
new file mode 100644
index 000000000000..60edd2a27100
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pps_regs.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_PPS_REGS_H__
+#define __INTEL_PPS_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* Panel power sequencing */
+#define PPS_BASE			0x61200
+#define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
+#define PCH_PPS_BASE			0xC7200
+
+#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->display.pps.mmio_base -	\
+					      PPS_BASE + (reg) +	\
+					      (pps_idx) * 0x100)
+
+#define _PP_STATUS			0x61200
+#define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
+#define   PP_ON				REG_BIT(31)
+/*
+ * Indicates that all dependencies of the panel are on:
+ *
+ * - PLL enabled
+ * - pipe enabled
+ * - LVDS/DVOB/DVOC on
+ */
+#define   PP_READY			REG_BIT(30)
+#define   PP_SEQUENCE_MASK		REG_GENMASK(29, 28)
+#define   PP_SEQUENCE_NONE		REG_FIELD_PREP(PP_SEQUENCE_MASK, 0)
+#define   PP_SEQUENCE_POWER_UP		REG_FIELD_PREP(PP_SEQUENCE_MASK, 1)
+#define   PP_SEQUENCE_POWER_DOWN	REG_FIELD_PREP(PP_SEQUENCE_MASK, 2)
+#define   PP_CYCLE_DELAY_ACTIVE		REG_BIT(27)
+#define   PP_SEQUENCE_STATE_MASK	REG_GENMASK(3, 0)
+#define   PP_SEQUENCE_STATE_OFF_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x0)
+#define   PP_SEQUENCE_STATE_OFF_S0_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x1)
+#define   PP_SEQUENCE_STATE_OFF_S0_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x2)
+#define   PP_SEQUENCE_STATE_OFF_S0_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x3)
+#define   PP_SEQUENCE_STATE_ON_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x8)
+#define   PP_SEQUENCE_STATE_ON_S1_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x9)
+#define   PP_SEQUENCE_STATE_ON_S1_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xa)
+#define   PP_SEQUENCE_STATE_ON_S1_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xb)
+#define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
+
+#define _PP_CONTROL			0x61204
+#define PP_CONTROL(pps_idx)		_MMIO_PPS(pps_idx, _PP_CONTROL)
+#define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
+#define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
+#define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
+#define  EDP_FORCE_VDD			REG_BIT(3)
+#define  EDP_BLC_ENABLE			REG_BIT(2)
+#define  PANEL_POWER_RESET		REG_BIT(1)
+#define  PANEL_POWER_ON			REG_BIT(0)
+
+#define _PP_ON_DELAYS			0x61208
+#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_ON_DELAYS)
+#define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
+#define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
+#define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
+#define  PANEL_PORT_SELECT_DPC		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 2)
+#define  PANEL_PORT_SELECT_DPD		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 3)
+#define  PANEL_PORT_SELECT_VLV(port)	REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, port)
+#define  PANEL_POWER_UP_DELAY_MASK	REG_GENMASK(28, 16)
+#define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
+
+#define _PP_OFF_DELAYS			0x6120C
+#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_OFF_DELAYS)
+#define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
+#define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
+
+#define _PP_DIVISOR			0x61210
+#define PP_DIVISOR(pps_idx)		_MMIO_PPS(pps_idx, _PP_DIVISOR)
+#define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
+#define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
+
+#endif /* __INTEL_PPS_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 3c8e0d198c4f..d670abd2e6f9 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -45,6 +45,7 @@
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fbc.h"
+#include "display/intel_pps_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9db6b3f06a74..744d3bc92390 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2556,73 +2556,6 @@
 #define   VIDEO_DIP_ENABLE_GMP_HSW	(1 << 4)
 #define   VIDEO_DIP_ENABLE_SPD_HSW	(1 << 0)
 
-/* Panel power sequencing */
-#define PPS_BASE			0x61200
-#define VLV_PPS_BASE			(VLV_DISPLAY_BASE + PPS_BASE)
-#define PCH_PPS_BASE			0xC7200
-
-#define _MMIO_PPS(pps_idx, reg)		_MMIO(dev_priv->display.pps.mmio_base -	\
-					      PPS_BASE + (reg) +	\
-					      (pps_idx) * 0x100)
-
-#define _PP_STATUS			0x61200
-#define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
-#define   PP_ON				REG_BIT(31)
-/*
- * Indicates that all dependencies of the panel are on:
- *
- * - PLL enabled
- * - pipe enabled
- * - LVDS/DVOB/DVOC on
- */
-#define   PP_READY			REG_BIT(30)
-#define   PP_SEQUENCE_MASK		REG_GENMASK(29, 28)
-#define   PP_SEQUENCE_NONE		REG_FIELD_PREP(PP_SEQUENCE_MASK, 0)
-#define   PP_SEQUENCE_POWER_UP		REG_FIELD_PREP(PP_SEQUENCE_MASK, 1)
-#define   PP_SEQUENCE_POWER_DOWN	REG_FIELD_PREP(PP_SEQUENCE_MASK, 2)
-#define   PP_CYCLE_DELAY_ACTIVE		REG_BIT(27)
-#define   PP_SEQUENCE_STATE_MASK	REG_GENMASK(3, 0)
-#define   PP_SEQUENCE_STATE_OFF_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x0)
-#define   PP_SEQUENCE_STATE_OFF_S0_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x1)
-#define   PP_SEQUENCE_STATE_OFF_S0_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x2)
-#define   PP_SEQUENCE_STATE_OFF_S0_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x3)
-#define   PP_SEQUENCE_STATE_ON_IDLE	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x8)
-#define   PP_SEQUENCE_STATE_ON_S1_1	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0x9)
-#define   PP_SEQUENCE_STATE_ON_S1_2	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xa)
-#define   PP_SEQUENCE_STATE_ON_S1_3	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xb)
-#define   PP_SEQUENCE_STATE_RESET	REG_FIELD_PREP(PP_SEQUENCE_STATE_MASK, 0xf)
-
-#define _PP_CONTROL			0x61204
-#define PP_CONTROL(pps_idx)		_MMIO_PPS(pps_idx, _PP_CONTROL)
-#define  PANEL_UNLOCK_MASK		REG_GENMASK(31, 16)
-#define  PANEL_UNLOCK_REGS		REG_FIELD_PREP(PANEL_UNLOCK_MASK, 0xabcd)
-#define  BXT_POWER_CYCLE_DELAY_MASK	REG_GENMASK(8, 4)
-#define  EDP_FORCE_VDD			REG_BIT(3)
-#define  EDP_BLC_ENABLE			REG_BIT(2)
-#define  PANEL_POWER_RESET		REG_BIT(1)
-#define  PANEL_POWER_ON			REG_BIT(0)
-
-#define _PP_ON_DELAYS			0x61208
-#define PP_ON_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_ON_DELAYS)
-#define  PANEL_PORT_SELECT_MASK		REG_GENMASK(31, 30)
-#define  PANEL_PORT_SELECT_LVDS		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 0)
-#define  PANEL_PORT_SELECT_DPA		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 1)
-#define  PANEL_PORT_SELECT_DPC		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 2)
-#define  PANEL_PORT_SELECT_DPD		REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, 3)
-#define  PANEL_PORT_SELECT_VLV(port)	REG_FIELD_PREP(PANEL_PORT_SELECT_MASK, port)
-#define  PANEL_POWER_UP_DELAY_MASK	REG_GENMASK(28, 16)
-#define  PANEL_LIGHT_ON_DELAY_MASK	REG_GENMASK(12, 0)
-
-#define _PP_OFF_DELAYS			0x6120C
-#define PP_OFF_DELAYS(pps_idx)		_MMIO_PPS(pps_idx, _PP_OFF_DELAYS)
-#define  PANEL_POWER_DOWN_DELAY_MASK	REG_GENMASK(28, 16)
-#define  PANEL_LIGHT_OFF_DELAY_MASK	REG_GENMASK(12, 0)
-
-#define _PP_DIVISOR			0x61210
-#define PP_DIVISOR(pps_idx)		_MMIO_PPS(pps_idx, _PP_DIVISOR)
-#define  PP_REFERENCE_DIVIDER_MASK	REG_GENMASK(31, 8)
-#define  PANEL_POWER_CYCLE_DELAY_MASK	REG_GENMASK(4, 0)
-
 /* Panel fitting */
 #define PFIT_CONTROL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
 #define   PFIT_ENABLE		(1 << 31)
-- 
2.39.2

