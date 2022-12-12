Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F73B64A353
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FEB10E1EA;
	Mon, 12 Dec 2022 14:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A5B10E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855398; x=1702391398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=su/g+mg7BQqI7gAoszrwjy0o/7d0C9ExuRoj6qlR2D0=;
 b=lqkXBbxmuY+e9IBB3SVDz402k/4TjkAExZQKtZvjafJ1SKHpiCam+rUU
 Wi89jH7OnSFIvbhgPOAzoRkJm4q08R6lXNyJ7IQhDuPn/s16lH2CRC2Yf
 FIkzy8C7DY7xCgHKinExKrh3nRDS191VSjwIFyz9mmdk0chudufDgaUZg
 QMv3RC+s7QUjYP9JW9ltcvZWpONkXD6gYK3ecPqew9TOiClHiHcfka3vd
 fmObBa3RSxQvz+3PP7dDvVN+NtyezW9KR3B0hKyxKBU+Va6Sjue+Lc/p+
 vu1+c5WQbiCVqhIf3IvtFnVAWijbYY9Q0J+S/tolgpAS4AaWg4YhMAY6E w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558467"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558467"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511263"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511263"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:25 +0200
Message-Id: <71aa10a6274199165e0b218ae6331ce3739aceed.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/reg: split out vblank/scanline regs
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

Reduce clutter in i915_reg.h by splitting out the vblank/scanline
registers.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |  1 +
 .../gpu/drm/i915/display/intel_vblank_regs.h  | 42 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 35 ----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 8 files changed, 48 insertions(+), 35 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 7267ffc7f539..e7482fc9f726 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -49,6 +49,7 @@
 #include "intel_hotplug.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
+#include "intel_vblank_regs.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 729c39180469..b017c2d00a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -8,6 +8,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
+#include "intel_vblank_regs.h"
 
 /*
  * This timing diagram depicts the video signal in and
diff --git a/drivers/gpu/drm/i915/display/intel_vblank_regs.h b/drivers/gpu/drm/i915/display/intel_vblank_regs.h
new file mode 100644
index 000000000000..a851255ac2f1
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_vblank_regs.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_VBLANK_REGS_H__
+#define __INTEL_VBLANK_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define _PIPEADSL		0x70000
+#define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
+#define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
+#define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
+
+/*
+ * The two pipe frame counter registers are not synchronized, so reading a
+ * stable value is somewhat tricky. Use:
+ *
+ * u64 frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
+ */
+
+#define _PIPEAFRAMEHIGH          0x70040
+#define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
+#define   PIPE_FRAME_HIGH_MASK	0x0000ffff
+#define   PIPE_FRAME_HIGH_SHIFT	0
+
+#define _PIPEAFRAMEPIXEL	0x70044
+#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
+#define   PIPE_FRAME_LOW_MASK	0xff000000
+#define   PIPE_FRAME_LOW_SHIFT	24
+#define   PIPE_PIXEL_MASK	0x00ffffff
+#define   PIPE_PIXEL_SHIFT	0
+
+/* GM45+ just has to be different */
+#define _PIPEA_FRMCOUNT_G4X	0x70040
+#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FRMCOUNT_G4X)
+
+#define _PIPEA_FLIPCOUNT_G4X	0x70044
+#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FLIPCOUNT_G4X)
+
+#endif /* __INTEL_VBLANK_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 0ebf5fbf0e39..8a72c75943c6 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -38,6 +38,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "display/intel_vblank_regs.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index c033249e73f4..894c8497961f 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -37,6 +37,7 @@
 #include "gvt.h"
 
 #include "display/intel_dpio_phy.h"
+#include "display/intel_vblank_regs.h"
 
 static int get_edp_pipe(struct intel_vgpu *vgpu)
 {
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 735fc83e7026..efd613c2e068 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -45,6 +45,7 @@
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_fbc.h"
+#include "display/intel_vblank_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2b7a63754e4d..f3d9797ceb52 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3489,9 +3489,6 @@
 /* Display & cursor control */
 
 /* Pipe A */
-#define _PIPEADSL		0x70000
-#define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
-#define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
 #define _PIPEACONF		0x70008
 #define   PIPECONF_ENABLE			REG_BIT(31)
 #define   PIPECONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
@@ -3616,9 +3613,6 @@
 #define PIPE_DSI1_OFFSET	0x7b800
 
 #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
-#define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
-#define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
-#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
 #define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
 
 #define  _PIPEAGCMAX           0x70010
@@ -4034,35 +4028,6 @@
 #define  WM_LP_SPRITE_MASK	REG_GENMASK(10, 0)
 #define  WM_LP_SPRITE(x)	REG_FIELD_PREP(WM_LP_SPRITE_MASK, (x))
 
-/*
- * The two pipe frame counter registers are not synchronized, so
- * reading a stable value is somewhat tricky. The following code
- * should work:
- *
- *  do {
- *    high1 = ((INREG(PIPEAFRAMEHIGH) & PIPE_FRAME_HIGH_MASK) >>
- *             PIPE_FRAME_HIGH_SHIFT;
- *    low1 =  ((INREG(PIPEAFRAMEPIXEL) & PIPE_FRAME_LOW_MASK) >>
- *             PIPE_FRAME_LOW_SHIFT);
- *    high2 = ((INREG(PIPEAFRAMEHIGH) & PIPE_FRAME_HIGH_MASK) >>
- *             PIPE_FRAME_HIGH_SHIFT);
- *  } while (high1 != high2);
- *  frame = (high1 << 8) | low1;
- */
-#define _PIPEAFRAMEHIGH          0x70040
-#define   PIPE_FRAME_HIGH_MASK    0x0000ffff
-#define   PIPE_FRAME_HIGH_SHIFT   0
-#define _PIPEAFRAMEPIXEL         0x70044
-#define   PIPE_FRAME_LOW_MASK     0xff000000
-#define   PIPE_FRAME_LOW_SHIFT    24
-#define   PIPE_PIXEL_MASK         0x00ffffff
-#define   PIPE_PIXEL_SHIFT        0
-/* GM45+ just has to be different */
-#define _PIPEA_FRMCOUNT_G4X	0x70040
-#define _PIPEA_FLIPCOUNT_G4X	0x70044
-#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FRMCOUNT_G4X)
-#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FLIPCOUNT_G4X)
-
 /* Cursor A & B regs */
 #define _CURACNTR		0x70080
 /* Old style CUR*CNTR flags (desktop 8xx) */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ce6b3c3b636a..604cc7ea8dac 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -7,6 +7,7 @@
 #include "display/intel_backlight_regs.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_vblank_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 #include "gvt/gvt.h"
-- 
2.34.1

