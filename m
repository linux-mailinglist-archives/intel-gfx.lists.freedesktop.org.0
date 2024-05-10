Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1592E8C2793
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1301710ED9D;
	Fri, 10 May 2024 15:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxV59AIu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944E910ED8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354623; x=1746890623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XfspFG5zcO+dSwIHEM4zVBsQT/C2bGWqoTRNjap7DRQ=;
 b=NxV59AIuAF/PtDBERhOAWrkCY0sTNHoJEeZRSZ6Od1wVSFsapgncJdZU
 QJNR4lpM28zgRe83W+G2TlcMXaw6zJaMcMmjc4mZovMbBcVO+2Q9hc2Wt
 MrQIqy2UetNKhj6i8de/Q10+nd5lU4ZSPRyftU1hqCkMBKzqai+Iq+OLR
 rCyiHViKQVZcofLEoc+dVOnNqyGFDe+JRA2jiM+3zDDrEpUuTCtZp9/dl
 zZcISeD16rwlMQqm6zXz9DE/yd7ESfrHCKxS8HDaoa9lSUFIH7tABOU2j
 yQfbFcclvtG/mMbuBZOl3x6JDakFG+mtU8QCaYTB3Qs1EuuRyVEvrM7Wn A==;
X-CSE-ConnectionGUID: WdZ7bc5JRxOjZ2MTcXR5Fw==
X-CSE-MsgGUID: G7V+jkTnS/apBhr4Lcp92A==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468856"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468856"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:43 -0700
X-CSE-ConnectionGUID: rgxmihpNQXK1YEY61yDW3A==
X-CSE-MsgGUID: qHXd5pqGS7OcZqAb3aJr9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594895"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.wang.linux@gmail.com>
Subject: [PATCH 03/16] drm/i915: Extract intel_cursor_regs.h
Date: Fri, 10 May 2024 18:23:16 +0300
Message-ID: <20240510152329.24098-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
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

Move most cursor register definitions into their own file.
Declutters i915_reg.h a bit more.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
CC: Zhi Wang <zhi.wang.linux@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  1 +
 .../gpu/drm/i915/display/intel_cursor_regs.h  | 78 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 70 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 8 files changed, 84 insertions(+), 70 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_cursor_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2118b87ccb10..d2b459634732 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -14,6 +14,7 @@
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_cursor.h"
+#include "intel_cursor_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
new file mode 100644
index 000000000000..62f7fb5c3f10
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CURSOR_REGS_H__
+#define __INTEL_CURSOR_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define _CURACNTR		0x70080
+/* Old style CUR*CNTR flags (desktop 8xx) */
+#define   CURSOR_ENABLE			REG_BIT(31)
+#define   CURSOR_PIPE_GAMMA_ENABLE	REG_BIT(30)
+#define   CURSOR_STRIDE_MASK	REG_GENMASK(29, 28)
+#define   CURSOR_STRIDE(stride)	REG_FIELD_PREP(CURSOR_STRIDE_MASK, ffs(stride) - 9) /* 256,512,1k,2k */
+#define   CURSOR_FORMAT_MASK	REG_GENMASK(26, 24)
+#define   CURSOR_FORMAT_2C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 0)
+#define   CURSOR_FORMAT_3C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 1)
+#define   CURSOR_FORMAT_4C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 2)
+#define   CURSOR_FORMAT_ARGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 4)
+#define   CURSOR_FORMAT_XRGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 5)
+/* New style CUR*CNTR flags */
+#define   MCURSOR_ARB_SLOTS_MASK	REG_GENMASK(30, 28) /* icl+ */
+#define   MCURSOR_ARB_SLOTS(x)		REG_FIELD_PREP(MCURSOR_ARB_SLOTS_MASK, (x)) /* icl+ */
+#define   MCURSOR_PIPE_SEL_MASK		REG_GENMASK(29, 28)
+#define   MCURSOR_PIPE_SEL(pipe)	REG_FIELD_PREP(MCURSOR_PIPE_SEL_MASK, (pipe))
+#define   MCURSOR_PIPE_GAMMA_ENABLE	REG_BIT(26)
+#define   MCURSOR_PIPE_CSC_ENABLE	REG_BIT(24) /* ilk+ */
+#define   MCURSOR_ROTATE_180		REG_BIT(15)
+#define   MCURSOR_TRICKLE_FEED_DISABLE	REG_BIT(14)
+#define   MCURSOR_MODE_MASK		0x27
+#define   MCURSOR_MODE_DISABLE		0x00
+#define   MCURSOR_MODE_128_32B_AX	0x02
+#define   MCURSOR_MODE_256_32B_AX	0x03
+#define   MCURSOR_MODE_64_2B		0x04
+#define   MCURSOR_MODE_64_32B_AX	0x07
+#define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
+#define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
+#define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
+#define _CURABASE		0x70084
+#define _CURAPOS		0x70088
+#define _CURAPOS_ERLY_TPT	0x7008c
+#define   CURSOR_POS_Y_SIGN		REG_BIT(31)
+#define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
+#define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
+#define   CURSOR_POS_X_SIGN		REG_BIT(15)
+#define   CURSOR_POS_X_MASK		REG_GENMASK(14, 0)
+#define   CURSOR_POS_X(x)		REG_FIELD_PREP(CURSOR_POS_X_MASK, (x))
+#define _CURASIZE		0x700a0 /* 845/865 */
+#define   CURSOR_HEIGHT_MASK		REG_GENMASK(21, 12)
+#define   CURSOR_HEIGHT(h)		REG_FIELD_PREP(CURSOR_HEIGHT_MASK, (h))
+#define   CURSOR_WIDTH_MASK		REG_GENMASK(9, 0)
+#define   CURSOR_WIDTH(w)		REG_FIELD_PREP(CURSOR_WIDTH_MASK, (w))
+#define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
+#define   CUR_FBC_EN			REG_BIT(31)
+#define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
+#define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
+#define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
+#define _CURASURFLIVE		0x700ac /* g4x+ */
+#define _CURBCNTR		0x700c0
+#define _CURBBASE		0x700c4
+#define _CURBPOS		0x700c8
+
+#define _CURBCNTR_IVB		0x71080
+#define _CURBBASE_IVB		0x71084
+#define _CURBPOS_IVB		0x71088
+
+#define CURCNTR(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
+#define CURBASE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
+#define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
+#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
+#define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
+#define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
+#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
+#define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
+
+#endif /* __INTEL_CURSOR_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a2c331c696fe..839643c07566 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -65,6 +65,7 @@
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_cursor_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 595eb1b3b6c6..8cb12e7b157c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,6 +29,7 @@
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
+#include "intel_cursor_regs.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 2b7df7fcf369..527e0bb2b15e 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -37,6 +37,7 @@
 #include "gvt.h"
 
 #include "display/bxt_dpio_phy_regs.h"
+#include "display/intel_cursor_regs.h"
 #include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_sprite_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index dd6eb0ae003a..ac3ec9d1ef5f 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -40,6 +40,7 @@
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
 
+#include "display/intel_cursor_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/skl_universal_plane_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 08725dc7883e..52b029cd3981 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1762,8 +1762,6 @@
 #define PIPE_LINK_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_M_G4X, _PIPEB_LINK_M_G4X)
 #define PIPE_LINK_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_LINK_N_G4X, _PIPEB_LINK_N_G4X)
 
-/* Display & cursor control */
-
 /* Pipe A */
 #define _PIPEADSL		0x70000
 #define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
@@ -2266,74 +2264,6 @@
 #define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
 #define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
-/* Cursor A & B regs */
-#define _CURACNTR		0x70080
-/* Old style CUR*CNTR flags (desktop 8xx) */
-#define   CURSOR_ENABLE			REG_BIT(31)
-#define   CURSOR_PIPE_GAMMA_ENABLE	REG_BIT(30)
-#define   CURSOR_STRIDE_MASK	REG_GENMASK(29, 28)
-#define   CURSOR_STRIDE(stride)	REG_FIELD_PREP(CURSOR_STRIDE_MASK, ffs(stride) - 9) /* 256,512,1k,2k */
-#define   CURSOR_FORMAT_MASK	REG_GENMASK(26, 24)
-#define   CURSOR_FORMAT_2C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 0)
-#define   CURSOR_FORMAT_3C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 1)
-#define   CURSOR_FORMAT_4C	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 2)
-#define   CURSOR_FORMAT_ARGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 4)
-#define   CURSOR_FORMAT_XRGB	REG_FIELD_PREP(CURSOR_FORMAT_MASK, 5)
-/* New style CUR*CNTR flags */
-#define   MCURSOR_ARB_SLOTS_MASK	REG_GENMASK(30, 28) /* icl+ */
-#define   MCURSOR_ARB_SLOTS(x)		REG_FIELD_PREP(MCURSOR_ARB_SLOTS_MASK, (x)) /* icl+ */
-#define   MCURSOR_PIPE_SEL_MASK		REG_GENMASK(29, 28)
-#define   MCURSOR_PIPE_SEL(pipe)	REG_FIELD_PREP(MCURSOR_PIPE_SEL_MASK, (pipe))
-#define   MCURSOR_PIPE_GAMMA_ENABLE	REG_BIT(26)
-#define   MCURSOR_PIPE_CSC_ENABLE	REG_BIT(24) /* ilk+ */
-#define   MCURSOR_ROTATE_180		REG_BIT(15)
-#define   MCURSOR_TRICKLE_FEED_DISABLE	REG_BIT(14)
-#define   MCURSOR_MODE_MASK		0x27
-#define   MCURSOR_MODE_DISABLE		0x00
-#define   MCURSOR_MODE_128_32B_AX	0x02
-#define   MCURSOR_MODE_256_32B_AX	0x03
-#define   MCURSOR_MODE_64_2B		0x04
-#define   MCURSOR_MODE_64_32B_AX	0x07
-#define   MCURSOR_MODE_128_ARGB_AX	(0x20 | MCURSOR_MODE_128_32B_AX)
-#define   MCURSOR_MODE_256_ARGB_AX	(0x20 | MCURSOR_MODE_256_32B_AX)
-#define   MCURSOR_MODE_64_ARGB_AX	(0x20 | MCURSOR_MODE_64_32B_AX)
-#define _CURABASE		0x70084
-#define _CURAPOS		0x70088
-#define _CURAPOS_ERLY_TPT	0x7008c
-#define   CURSOR_POS_Y_SIGN		REG_BIT(31)
-#define   CURSOR_POS_Y_MASK		REG_GENMASK(30, 16)
-#define   CURSOR_POS_Y(y)		REG_FIELD_PREP(CURSOR_POS_Y_MASK, (y))
-#define   CURSOR_POS_X_SIGN		REG_BIT(15)
-#define   CURSOR_POS_X_MASK		REG_GENMASK(14, 0)
-#define   CURSOR_POS_X(x)		REG_FIELD_PREP(CURSOR_POS_X_MASK, (x))
-#define _CURASIZE		0x700a0 /* 845/865 */
-#define   CURSOR_HEIGHT_MASK		REG_GENMASK(21, 12)
-#define   CURSOR_HEIGHT(h)		REG_FIELD_PREP(CURSOR_HEIGHT_MASK, (h))
-#define   CURSOR_WIDTH_MASK		REG_GENMASK(9, 0)
-#define   CURSOR_WIDTH(w)		REG_FIELD_PREP(CURSOR_WIDTH_MASK, (w))
-#define _CUR_FBC_CTL_A		0x700a0 /* ivb+ */
-#define   CUR_FBC_EN			REG_BIT(31)
-#define   CUR_FBC_HEIGHT_MASK		REG_GENMASK(7, 0)
-#define   CUR_FBC_HEIGHT(h)		REG_FIELD_PREP(CUR_FBC_HEIGHT_MASK, (h))
-#define _CUR_CHICKEN_A		0x700a4 /* mtl+ */
-#define _CURASURFLIVE		0x700ac /* g4x+ */
-#define _CURBCNTR		0x700c0
-#define _CURBBASE		0x700c4
-#define _CURBPOS		0x700c8
-
-#define _CURBCNTR_IVB		0x71080
-#define _CURBBASE_IVB		0x71084
-#define _CURBPOS_IVB		0x71088
-
-#define CURCNTR(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
-#define CURBASE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
-#define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
-#define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
-#define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
-#define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
-#define CUR_CHICKEN(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_CHICKEN_A)
-#define CURSURFLIVE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASURFLIVE)
-
 /* Display A control */
 #define _DSPAADDR_VLV				0x7017C /* vlv/chv */
 #define _DSPACNTR				0x70180
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 178eba121881..3b79c1c84b79 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -7,6 +7,7 @@
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_color_regs.h"
+#include "display/intel_cursor_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
-- 
2.43.2

