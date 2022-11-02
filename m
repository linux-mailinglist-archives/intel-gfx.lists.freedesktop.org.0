Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 324EC616098
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1398010E475;
	Wed,  2 Nov 2022 10:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1E910E466
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383764; x=1698919764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vGYhdCHimRHgft9L2LDFnglDHtkS1t4tUj/xz6ZI1TE=;
 b=QuPvOP2zdWqdB23MRXnQS0UwyGsuMv8JIbqhx0/b/TFCtb0KlE2ohStc
 f74GTbJimYwdRu/FieJMb/p+yTz9fOrsDGVP8i8Q+xAkh7k8vbM2BBT1b
 WJrHBJKcWkj0UUhjz2918v8Paj7l5Z/OxBuix6ia0UOP4CYKp5TWXmTR7
 F3L6Ksg71TuFHaCX6tR92iW/YAEOcB3iT6WyHdmJcWyIIb5dfmlCXS9r8
 CIbFL94j4lwv6TVQtskV1G7tTm3tc8oyj0dFXeaby0lUvqVEyd6Q01gEw
 97ADm1EC7eppZgsuwevDSmlD/4MsWRlEgmqBk4mhbaoMRQsO3fXnqCwcP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807747"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807747"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="809224776"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="809224776"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:22 +0200
Message-Id: <49ab36813c9dd34d22b9d2f407e2daf5fc132ae2.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 14/16] drm/i915: split out
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
index 70177d3f2e94..5051d8ac7ae9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -7,6 +7,7 @@
 #define __INTEL_GT_REGS__
 
 #include "i915_reg_defs.h"
+#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
 
 #define MCR_REG(offset)	((const i915_mcr_reg_t){ .reg = (offset) })
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7b56caeb950a..9e0094e0f4e2 100644
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

