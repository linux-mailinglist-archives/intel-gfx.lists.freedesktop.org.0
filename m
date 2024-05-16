Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB2C8C7809
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A78310ED2E;
	Thu, 16 May 2024 13:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GK0n16dE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8F9910ED2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715867810; x=1747403810;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jyizNYVZs/r3w6Vn9FvRQalJqjUXxWD9DT5MwQv7pCw=;
 b=GK0n16dE7SdF1r3Xesr42eK4c4Rsk4Z+2FmMWIteQGxqw4IM9Hz0GE7e
 UmcZx/L2c6xu9gWmnhp17g+78rUVtBZzQBDdzadxg/1SUYo/Fxl6/7ZFB
 HosX5JYDyN+GhLpQoH/qJHZnJ6+Ww0caxz658XltGN9mxb5j3HnZI364E
 HbpxNMIU3AFSEYDWbosTtrdAbQE6avgn0XZEUgETXTGqqK9WzKsYo6wdB
 o/2HeT2f+Fef0xu8k+YU2um0hRiWlpGb2TjlpILjRq6JUZiXaC+egYeUE
 y7SKphdeK5Q1THX3MLn1ftT/mw8HB8G+abxeaM2V9rreglUukC5OI0em8 g==;
X-CSE-ConnectionGUID: 8A8/aTwNSZ2Hr4S5NR/kjw==
X-CSE-MsgGUID: SpRU8bQfQMeYzKwq9RmRqQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="37357205"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="37357205"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:56:50 -0700
X-CSE-ConnectionGUID: LT07LYPQT0y7zHGKRYKH3Q==
X-CSE-MsgGUID: OBbdxvVITlCImgzkUe+0pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31435171"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 May 2024 06:56:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 May 2024 16:56:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 09/13] drm/i915: Extract i9xx_plane_regs.h
Date: Thu, 16 May 2024 16:56:18 +0300
Message-ID: <20240516135622.3498-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
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

Relocate all pre-skl primary plane register definitions
into their own declutter i915_reg.h.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.wang.linux@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  1 +
 .../gpu/drm/i915/display/i9xx_plane_regs.h    | 98 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 87 +---------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 13 files changed, 110 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane_regs.h

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ea4d8ba55ad8..1f05f9184cb2 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -10,6 +10,7 @@
 
 #include "i915_reg.h"
 #include "i9xx_plane.h"
+#include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
new file mode 100644
index 000000000000..0bf2cd42bce7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -0,0 +1,98 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __I9XX_PLANE_REGS_H__
+#define __I9XX_PLANE_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define _DSPAADDR_VLV				0x7017C /* vlv/chv */
+#define _DSPACNTR				0x70180
+#define   DISP_ENABLE			REG_BIT(31)
+#define   DISP_PIPE_GAMMA_ENABLE	REG_BIT(30)
+#define   DISP_FORMAT_MASK		REG_GENMASK(29, 26)
+#define   DISP_FORMAT_8BPP		REG_FIELD_PREP(DISP_FORMAT_MASK, 2)
+#define   DISP_FORMAT_BGRA555		REG_FIELD_PREP(DISP_FORMAT_MASK, 3)
+#define   DISP_FORMAT_BGRX555		REG_FIELD_PREP(DISP_FORMAT_MASK, 4)
+#define   DISP_FORMAT_BGRX565		REG_FIELD_PREP(DISP_FORMAT_MASK, 5)
+#define   DISP_FORMAT_BGRX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 6)
+#define   DISP_FORMAT_BGRA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 7)
+#define   DISP_FORMAT_RGBX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 8)
+#define   DISP_FORMAT_RGBA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 9)
+#define   DISP_FORMAT_BGRX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 10)
+#define   DISP_FORMAT_BGRA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 11)
+#define   DISP_FORMAT_RGBX161616	REG_FIELD_PREP(DISP_FORMAT_MASK, 12)
+#define   DISP_FORMAT_RGBX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 14)
+#define   DISP_FORMAT_RGBA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 15)
+#define   DISP_STEREO_ENABLE		REG_BIT(25)
+#define   DISP_PIPE_CSC_ENABLE		REG_BIT(24) /* ilk+ */
+#define   DISP_PIPE_SEL_MASK		REG_GENMASK(25, 24)
+#define   DISP_PIPE_SEL(pipe)		REG_FIELD_PREP(DISP_PIPE_SEL_MASK, (pipe))
+#define   DISP_SRC_KEY_ENABLE		REG_BIT(22)
+#define   DISP_LINE_DOUBLE		REG_BIT(20)
+#define   DISP_STEREO_POLARITY_SECOND	REG_BIT(18)
+#define   DISP_ALPHA_PREMULTIPLY	REG_BIT(16) /* CHV pipe B */
+#define   DISP_ROTATE_180		REG_BIT(15)
+#define   DISP_TRICKLE_FEED_DISABLE	REG_BIT(14) /* g4x+ */
+#define   DISP_TILED			REG_BIT(10)
+#define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
+#define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
+#define _DSPAADDR				0x70184
+#define _DSPASTRIDE				0x70188
+#define _DSPAPOS				0x7018C /* reserved */
+#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
+#define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
+#define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
+#define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
+#define _DSPASIZE				0x70190
+#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
+#define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
+#define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
+#define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
+#define _DSPASURF				0x7019C /* 965+ only */
+#define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
+#define _DSPATILEOFF				0x701A4 /* 965+ only */
+#define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
+#define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
+#define _DSPAOFFSET				0x701A4 /* HSW */
+#define _DSPASURFLIVE				0x701AC
+#define _DSPAGAMC				0x701E0
+
+#define DSPADDR_VLV(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
+#define DSPCNTR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
+#define DSPADDR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
+#define DSPSTRIDE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
+#define DSPPOS(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
+#define DSPSIZE(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
+#define DSPSURF(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
+#define DSPTILEOFF(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
+#define DSPLINOFF(plane)	DSPADDR(plane)
+#define DSPOFFSET(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
+#define DSPSURFLIVE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
+#define DSPGAMC(plane, i)	_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
+
+/* CHV pipe B primary plane */
+#define _PRIMPOS_A		0x60a08
+#define   PRIM_POS_Y_MASK	REG_GENMASK(31, 16)
+#define   PRIM_POS_Y(y)		REG_FIELD_PREP(PRIM_POS_Y_MASK, (y))
+#define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
+#define   PRIM_POS_X(x)		REG_FIELD_PREP(PRIM_POS_X_MASK, (x))
+#define _PRIMSIZE_A		0x60a0c
+#define   PRIM_HEIGHT_MASK	REG_GENMASK(31, 16)
+#define   PRIM_HEIGHT(h)	REG_FIELD_PREP(PRIM_HEIGHT_MASK, (h))
+#define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
+#define   PRIM_WIDTH(w)		REG_FIELD_PREP(PRIM_WIDTH_MASK, (w))
+#define _PRIMCNSTALPHA_A	0x60a10
+#define   PRIM_CONST_ALPHA_ENABLE	REG_BIT(31)
+#define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
+#define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
+
+#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
+#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
+#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
+
+#endif /* __I9XX_PLANE_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 27224ecdc94c..a2a827070c33 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -40,6 +40,7 @@
 
 #include "i915_config.h"
 #include "i915_reg.h"
+#include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_rps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index d23163dc64d4..82b155708422 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -22,7 +22,7 @@
  *
  */
 
-#include "i915_reg.h"
+#include "i9xx_plane_regs.h"
 #include "intel_color.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ee2df655b0ab..1e8e2fd52cf6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -54,6 +54,7 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "i9xx_plane.h"
+#include "i9xx_plane_regs.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 50dd8eb9012e..680d7fc39503 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -48,6 +48,7 @@
 #include "i915_utils.h"
 #include "i915_vgpu.h"
 #include "i915_vma.h"
+#include "i9xx_plane_regs.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
 #include "intel_display_device.h"
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 4be8cb65fb7e..2c315caf2414 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -49,6 +49,7 @@
 #include "i915_pvinfo.h"
 #include "trace.h"
 
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
 #include "display/intel_sprite_regs.h"
 #include "gem/i915_gem_context.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 73ea8be0f80b..dafa13ac826b 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -37,6 +37,7 @@
 #include "gvt.h"
 
 #include "display/bxt_dpio_phy_regs.h"
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index e78de423a6c7..521dee39e5fb 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -40,6 +40,7 @@
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
 
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/skl_universal_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6f633035618e..27ef6dfee641 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -42,6 +42,7 @@
 #include "i915_pvinfo.h"
 #include "intel_mchbar_regs.h"
 #include "display/bxt_dpio_phy_regs.h"
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f5e8833cc37e..29f69ad8f704 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2260,75 +2260,7 @@
 #define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
 #define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
-/* Display A control */
-#define _DSPAADDR_VLV				0x7017C /* vlv/chv */
-#define _DSPACNTR				0x70180
-#define   DISP_ENABLE			REG_BIT(31)
-#define   DISP_PIPE_GAMMA_ENABLE	REG_BIT(30)
-#define   DISP_FORMAT_MASK		REG_GENMASK(29, 26)
-#define   DISP_FORMAT_8BPP		REG_FIELD_PREP(DISP_FORMAT_MASK, 2)
-#define   DISP_FORMAT_BGRA555		REG_FIELD_PREP(DISP_FORMAT_MASK, 3)
-#define   DISP_FORMAT_BGRX555		REG_FIELD_PREP(DISP_FORMAT_MASK, 4)
-#define   DISP_FORMAT_BGRX565		REG_FIELD_PREP(DISP_FORMAT_MASK, 5)
-#define   DISP_FORMAT_BGRX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 6)
-#define   DISP_FORMAT_BGRA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 7)
-#define   DISP_FORMAT_RGBX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 8)
-#define   DISP_FORMAT_RGBA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 9)
-#define   DISP_FORMAT_BGRX101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 10)
-#define   DISP_FORMAT_BGRA101010	REG_FIELD_PREP(DISP_FORMAT_MASK, 11)
-#define   DISP_FORMAT_RGBX161616	REG_FIELD_PREP(DISP_FORMAT_MASK, 12)
-#define   DISP_FORMAT_RGBX888		REG_FIELD_PREP(DISP_FORMAT_MASK, 14)
-#define   DISP_FORMAT_RGBA888		REG_FIELD_PREP(DISP_FORMAT_MASK, 15)
-#define   DISP_STEREO_ENABLE		REG_BIT(25)
-#define   DISP_PIPE_CSC_ENABLE		REG_BIT(24) /* ilk+ */
-#define   DISP_PIPE_SEL_MASK		REG_GENMASK(25, 24)
-#define   DISP_PIPE_SEL(pipe)		REG_FIELD_PREP(DISP_PIPE_SEL_MASK, (pipe))
-#define   DISP_SRC_KEY_ENABLE		REG_BIT(22)
-#define   DISP_LINE_DOUBLE		REG_BIT(20)
-#define   DISP_STEREO_POLARITY_SECOND	REG_BIT(18)
-#define   DISP_ALPHA_PREMULTIPLY	REG_BIT(16) /* CHV pipe B */
-#define   DISP_ROTATE_180		REG_BIT(15)
-#define   DISP_TRICKLE_FEED_DISABLE	REG_BIT(14) /* g4x+ */
-#define   DISP_TILED			REG_BIT(10)
-#define   DISP_ASYNC_FLIP		REG_BIT(9) /* g4x+ */
-#define   DISP_MIRROR			REG_BIT(8) /* CHV pipe B */
-#define _DSPAADDR				0x70184
-#define _DSPASTRIDE				0x70188
-#define _DSPAPOS				0x7018C /* reserved */
-#define   DISP_POS_Y_MASK		REG_GENMASK(31, 16)
-#define   DISP_POS_Y(y)			REG_FIELD_PREP(DISP_POS_Y_MASK, (y))
-#define   DISP_POS_X_MASK		REG_GENMASK(15, 0)
-#define   DISP_POS_X(x)			REG_FIELD_PREP(DISP_POS_X_MASK, (x))
-#define _DSPASIZE				0x70190
-#define   DISP_HEIGHT_MASK		REG_GENMASK(31, 16)
-#define   DISP_HEIGHT(h)		REG_FIELD_PREP(DISP_HEIGHT_MASK, (h))
-#define   DISP_WIDTH_MASK		REG_GENMASK(15, 0)
-#define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
-#define _DSPASURF				0x7019C /* 965+ only */
-#define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
-#define _DSPATILEOFF				0x701A4 /* 965+ only */
-#define   DISP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
-#define   DISP_OFFSET_Y(y)		REG_FIELD_PREP(DISP_OFFSET_Y_MASK, (y))
-#define   DISP_OFFSET_X_MASK		REG_GENMASK(15, 0)
-#define   DISP_OFFSET_X(x)		REG_FIELD_PREP(DISP_OFFSET_X_MASK, (x))
-#define _DSPAOFFSET				0x701A4 /* HSW */
-#define _DSPASURFLIVE				0x701AC
-#define _DSPAGAMC				0x701E0
-
-#define DSPADDR_VLV(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
-#define DSPCNTR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
-#define DSPADDR(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR)
-#define DSPSTRIDE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
-#define DSPPOS(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
-#define DSPSIZE(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASIZE)
-#define DSPSURF(plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
-#define DSPTILEOFF(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPATILEOFF)
-#define DSPLINOFF(plane)	DSPADDR(plane)
-#define DSPOFFSET(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
-#define DSPSURFLIVE(plane)	_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
-#define DSPGAMC(plane, i)	_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
-
-/* CHV pipe B blender and primary plane */
+/* CHV pipe B blender */
 #define _CHV_BLEND_A		0x60a00
 #define   CHV_BLEND_MASK	REG_GENMASK(31, 30)
 #define   CHV_BLEND_LEGACY	REG_FIELD_PREP(CHV_BLEND_MASK, 0)
@@ -2338,26 +2270,9 @@
 #define   CHV_CANVAS_RED_MASK	REG_GENMASK(29, 20)
 #define   CHV_CANVAS_GREEN_MASK	REG_GENMASK(19, 10)
 #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
-#define _PRIMPOS_A		0x60a08
-#define   PRIM_POS_Y_MASK	REG_GENMASK(31, 16)
-#define   PRIM_POS_Y(y)		REG_FIELD_PREP(PRIM_POS_Y_MASK, (y))
-#define   PRIM_POS_X_MASK	REG_GENMASK(15, 0)
-#define   PRIM_POS_X(x)		REG_FIELD_PREP(PRIM_POS_X_MASK, (x))
-#define _PRIMSIZE_A		0x60a0c
-#define   PRIM_HEIGHT_MASK	REG_GENMASK(31, 16)
-#define   PRIM_HEIGHT(h)	REG_FIELD_PREP(PRIM_HEIGHT_MASK, (h))
-#define   PRIM_WIDTH_MASK	REG_GENMASK(15, 0)
-#define   PRIM_WIDTH(w)		REG_FIELD_PREP(PRIM_WIDTH_MASK, (w))
-#define _PRIMCNSTALPHA_A	0x60a10
-#define   PRIM_CONST_ALPHA_ENABLE	REG_BIT(31)
-#define   PRIM_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
-#define   PRIM_CONST_ALPHA(alpha)	REG_FIELD_PREP(PRIM_CONST_ALPHA_MASK, (alpha))
 
 #define CHV_BLEND(pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
 #define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
-#define PRIMPOS(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMPOS_A)
-#define PRIMSIZE(plane)		_MMIO_TRANS2(dev_priv, plane, _PRIMSIZE_A)
-#define PRIMCNSTALPHA(plane)	_MMIO_TRANS2(dev_priv, plane, _PRIMCNSTALPHA_A)
 
 /* Display/Sprite base address macros */
 #define DISP_BASEADDR_MASK	(0xfffff000)
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 1dc5281b2ade..5c5685ebd49e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -25,6 +25,7 @@
  *
  */
 
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_de.h"
 #include "display/intel_display.h"
 #include "display/intel_display_trace.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index b485976976db..2375292292b6 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -4,6 +4,7 @@
  */
 
 #include "display/bxt_dpio_phy_regs.h"
+#include "display/i9xx_plane_regs.h"
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_color_regs.h"
-- 
2.44.1

