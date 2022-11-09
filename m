Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE91622F45
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0523610E5EF;
	Wed,  9 Nov 2022 15:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A069410E5ED
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668008605; x=1699544605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9OOmTM60N/BFu2zGs0+s97N8dCsTLXzZ2UW59J0GD4=;
 b=RcI1WJlZ9ke97aFhmcvmF7lfQLowyMlGn4zj68T8P8Hu2ie+OkmR7R0N
 oQZml9OrfkKj1fgUjYw+Z39hGQ3CUIzkRG6AaRC7KaelateHLMC4TYUVm
 U8g17LzpAhvK+T5e6SebWiAnEr+mF6+uKAKqaKkNHU/q3iKXzaMao/58w
 So2WdsTarQWUodlx+JeKGsl+KIyZwVOaxLNlvLawfWIVLswfImOp7+FyI
 oTS40ECn8tXgRrkXxdWOyJsGb2VxHrpt3hPuZnT3OHYw69nM2t/V/IVkJ
 U/qXdIsjSl5OgHPAs3BLCqohebMt7BnMjdMmFG2vEd2V5WmNztEwd98Uw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="309720999"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="309720999"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="742438662"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="742438662"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 17:35:21 +0200
Message-Id: <3af47193ff5219b6d2cfe353b752ec4bb44de4f1.1668008071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
References: <cover.1668008071.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: split out
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
Cc: Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out the display register helper macros to a separate file. For
now, include it from i915_reg.h, but note that there are already files
that don't need i915_reg.h, such as intel_audio.c.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
 .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
 .../drm/i915/display/intel_backlight_regs.h   |  2 +-
 .../drm/i915/display/intel_display_reg_defs.h | 53 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
 .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
 .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
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
index 4f432c2eb543..616e7b1275c4 100644
--- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_AUDIO_REGS_H__
 #define __INTEL_AUDIO_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
 #define   G4X_ELD_VALID			REG_BIT(14)
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
diff --git a/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
index 07978f8d5fb7..0e8248bce52d 100644
--- a/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_MG_PHY_REGS__
 #define __INTEL_MG_PHY_REGS__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define MG_PHY_PORT_LN(ln, tc_port, ln0p1, ln0p2, ln1p1) \
 	_MMIO(_PORT(tc_port, ln0p1, ln0p2) + (ln) * ((ln1p1) - (ln0p1)))
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
index 8aa06b0327e5..accf22ec57a2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -7,6 +7,7 @@
 #define __INTEL_GT_REGS__
 
 #include "i915_reg_defs.h"
+#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
 
 #define MCR_REG(offset)	((const i915_mcr_reg_t){ .reg = (offset) })
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7c478514eaf1..8b08126f8b11 100644
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
index aad447ba3e22..be43580a6979 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -148,6 +148,4 @@ typedef struct {
 #define i915_mmio_reg_equal(a, b) (i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b))
 #define i915_mmio_reg_valid(r) (!i915_mmio_reg_equal(r, INVALID_MMIO_REG))
 
-#define VLV_DISPLAY_BASE		0x180000
-
 #endif /* __I915_REG_DEFS__ */
-- 
2.34.1

