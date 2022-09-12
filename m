Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACDF5B5EA3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD9D910E0C1;
	Mon, 12 Sep 2022 16:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4304510E60C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001738; x=1694537738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1tC6xY7WFIvV6epUZ/tSGl7pLHwy6Akc9CcL/gNH3L0=;
 b=hgjPk7bRNgP/FxUfT+Mt/I+TGBVvzd+zu3H1+oduavVOOwXjn8+0xGhc
 h+zZ5GbDJhekxUtCwsQBVlcBVrkLYexj+Sq0CafiwqtZ0hBaOlO3eYua6
 YquNHWqUZo+w6UIr13t0omkN6WhxPIcPm6NkZVQLg6I9OekMhy3XTgb+b
 KRGkRHMa8egbMIlOHhxOURStLp1Zuo151oT95SDGldGUrhuriP/qGEVQP
 8lFEoknLGAfUHKupFjGYaTWd+r4Yu7UZD+Xk0MKjSGng3up8f3RTzKnxk
 tNu1FugNd2fTuFuQ4Qn7qZ7Bfr+xNpd52wzFDMsz62SkwNRaVhnuD8uav Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="359642392"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="359642392"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="567241865"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:36 +0300
Message-Id: <00334f69f3357bdd216c726b683479219ecf3667.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/15] drm/i915: split out
 intel_display_reg_defs.h
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

Split out the display register helper macros to a separate file. For
now, include it from i915_reg.h, but note that there are already files
that don't need i915_reg.h, such as intel_audio.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
 .../drm/i915/display/intel_backlight_regs.h   |  2 +-
 .../drm/i915/display/intel_display_reg_defs.h | 53 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
 .../gpu/drm/i915/display/intel_tc_phy_regs.h  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 42 +--------------
 drivers/gpu/drm/i915/i915_reg_defs.h          |  2 -
 11 files changed, 62 insertions(+), 50 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h

diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index f78f28b8dd94..d4845ac65acc 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -6,7 +6,7 @@
 #ifndef __ICL_DSI_REGS_H__
 #define __ICL_DSI_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 /* Gen11 DSI */
 #define _MMIO_DSI(tc, dsi0, dsi1)	_MMIO_TRANS((tc) - TRANSCODER_DSI_0, \
diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
index d1e5844e3484..21919f9da5fc 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_AUDIO_REGS_H__
 #define __INTEL_AUDIO_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define G4X_AUD_VID_DID			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x62020)
 #define   INTEL_AUDIO_DEVCL		0x808629FB
diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
index 50c1210f6d5d..344eb8096bd2 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_BACKLIGHT_REGS_H__
 #define __INTEL_BACKLIGHT_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
 #define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
new file mode 100644
index 000000000000..02605418ff08
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
@@ -0,0 +1,53 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DISPLAY_REG_DEFS_H__
+#define __INTEL_DISPLAY_REG_DEFS_H__
+
+#include "i915_reg_defs.h"
+
+#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
+
+#define VLV_DISPLAY_BASE		0x180000
+
+/*
+ * Named helper wrappers around _PICK_EVEN() and _PICK().
+ */
+#define _PIPE(pipe, a, b)		_PICK_EVEN(pipe, a, b)
+#define _PLANE(plane, a, b)		_PICK_EVEN(plane, a, b)
+#define _TRANS(tran, a, b)		_PICK_EVEN(tran, a, b)
+#define _PORT(port, a, b)		_PICK_EVEN(port, a, b)
+#define _PLL(pll, a, b)			_PICK_EVEN(pll, a, b)
+#define _PHY(phy, a, b)			_PICK_EVEN(phy, a, b)
+
+#define _MMIO_PIPE(pipe, a, b)		_MMIO(_PIPE(pipe, a, b))
+#define _MMIO_PLANE(plane, a, b)	_MMIO(_PLANE(plane, a, b))
+#define _MMIO_TRANS(tran, a, b)		_MMIO(_TRANS(tran, a, b))
+#define _MMIO_PORT(port, a, b)		_MMIO(_PORT(port, a, b))
+#define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
+#define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
+
+#define _PHY3(phy, ...)			_PICK(phy, __VA_ARGS__)
+
+#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
+#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
+#define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
+#define _MMIO_PLL3(pll, ...)		_MMIO(_PICK(pll, __VA_ARGS__))
+
+/*
+ * Device info offset array based helpers for groups of registers with unevenly
+ * spaced base offsets.
+ */
+#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.pipe_offsets[(pipe)] - \
+					      INTEL_INFO(dev_priv)->display.pipe_offsets[PIPE_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
+					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
+					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
+					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
+
+#endif /* __INTEL_DISPLAY_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
index 2a3733e8966c..8023c85c7fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_HDCP_REGS_H__
 #define __INTEL_HDCP_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 /* HDCP Key Registers */
 #define HDCP_KEY_CONF			_MMIO(0x66c00)
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
index 0543465aaf14..a04d692169d4 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_SNPS_PHY_REGS__
 #define __INTEL_SNPS_PHY_REGS__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define _SNPS_PHY_A_BASE			0x168000
 #define _SNPS_PHY_B_BASE			0x169000
diff --git a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
index 5a545086f959..a742149d4eef 100644
--- a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_TC_PHY_REGS__
 #define __INTEL_TC_PHY_REGS__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
 	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index e065b8f2ee08..abbe427e462e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -6,7 +6,7 @@
 #ifndef __VLV_DSI_REGS_H__
 #define __VLV_DSI_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define VLV_MIPI_BASE			VLV_DISPLAY_BASE
 #define BXT_MIPI_BASE			0x60000
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 2275ee47da95..1c13eabf05af 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -7,6 +7,7 @@
 #define __INTEL_GT_REGS__
 
 #include "i915_reg_defs.h"
+#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
 
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 03ff6039b27f..eaa9897e4762 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -26,6 +26,7 @@
 #define _I915_REG_H_
 
 #include "i915_reg_defs.h"
+#include "display/intel_display_reg_defs.h"
 
 /**
  * DOC: The i915 register macro definition style guide
@@ -115,47 +116,6 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-#define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
-
-/*
- * Named helper wrappers around _PICK_EVEN() and _PICK().
- */
-#define _PIPE(pipe, a, b)		_PICK_EVEN(pipe, a, b)
-#define _PLANE(plane, a, b)		_PICK_EVEN(plane, a, b)
-#define _TRANS(tran, a, b)		_PICK_EVEN(tran, a, b)
-#define _PORT(port, a, b)		_PICK_EVEN(port, a, b)
-#define _PLL(pll, a, b)			_PICK_EVEN(pll, a, b)
-#define _PHY(phy, a, b)			_PICK_EVEN(phy, a, b)
-
-#define _MMIO_PIPE(pipe, a, b)		_MMIO(_PIPE(pipe, a, b))
-#define _MMIO_PLANE(plane, a, b)	_MMIO(_PLANE(plane, a, b))
-#define _MMIO_TRANS(tran, a, b)		_MMIO(_TRANS(tran, a, b))
-#define _MMIO_PORT(port, a, b)		_MMIO(_PORT(port, a, b))
-#define _MMIO_PLL(pll, a, b)		_MMIO(_PLL(pll, a, b))
-#define _MMIO_PHY(phy, a, b)		_MMIO(_PHY(phy, a, b))
-
-#define _PHY3(phy, ...)			_PICK(phy, __VA_ARGS__)
-
-#define _MMIO_PIPE3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
-#define _MMIO_PORT3(pipe, a, b, c)	_MMIO(_PICK(pipe, a, b, c))
-#define _MMIO_PHY3(phy, a, b, c)	_MMIO(_PHY3(phy, a, b, c))
-#define _MMIO_PLL3(pll, ...)		_MMIO(_PICK(pll, __VA_ARGS__))
-
-
-/*
- * Device info offset array based helpers for groups of registers with unevenly
- * spaced base offsets.
- */
-#define _MMIO_PIPE2(pipe, reg)		_MMIO(INTEL_INFO(dev_priv)->display.pipe_offsets[(pipe)] - \
-					      INTEL_INFO(dev_priv)->display.pipe_offsets[PIPE_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _MMIO_TRANS2(tran, reg)		_MMIO(INTEL_INFO(dev_priv)->display.trans_offsets[(tran)] - \
-					      INTEL_INFO(dev_priv)->display.trans_offsets[TRANSCODER_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-#define _MMIO_CURSOR2(pipe, reg)	_MMIO(INTEL_INFO(dev_priv)->display.cursor_offsets[(pipe)] - \
-					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
-					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 344e5006650e..1564f2c72c2a 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -149,6 +149,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 	return !i915_mmio_reg_equal(reg, INVALID_MMIO_REG);
 }
 
-#define VLV_DISPLAY_BASE		0x180000
-
 #endif /* __I915_REG_DEFS__ */
-- 
2.34.1

