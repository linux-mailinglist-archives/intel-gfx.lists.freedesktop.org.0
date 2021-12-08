Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEA546D18F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 12:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1903772D5A;
	Wed,  8 Dec 2021 11:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64D7C72D66
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 11:05:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="261884096"
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="261884096"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 03:05:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="462725791"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 03:05:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 13:05:17 +0200
Message-Id: <7862ad764fbd0748d903c76bc632d3d277874e5b.1638961423.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638961423.git.jani.nikula@intel.com>
References: <cover.1638961423.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/trace: split out display trace
 to a separate file
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

Add display/intel_display_trace.[ch] for defining display
tracepoints. The main goal is to reduce cross-includes between gem and
display. It would be possible split up tracing even further, but that
would lead to more boilerplate.

We end up having to include intel_crtc.h in a few places because it was
pulled in implicitly via intel_de.h -> i915_trace.h -> intel_crtc.h, and
that's no longer the case.

There should be no changes to tracepoints.

v3:
- Rebase

v2:
- Define TRACE_INCLUDE_PATH relative to define_trace.h (Chris)
- Remove useless comments (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |   1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +-
 .../drm/i915/display/intel_display_trace.c    |   9 +
 .../drm/i915/display/intel_display_trace.h    | 587 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   1 +
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
 drivers/gpu/drm/i915/i915_driver.c            |   1 -
 drivers/gpu/drm/i915/i915_irq.c               |   2 +-
 drivers/gpu/drm/i915/i915_trace.h             | 573 -----------------
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 22 files changed, 621 insertions(+), 590 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3b5857da4123..6ddd2d2bbaaf 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -259,6 +259,7 @@ i915-y += \
 	display/intel_crt.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
+	display/intel_display_trace.o \
 	display/intel_dp.o \
 	display/intel_dp_aux.o \
 	display/intel_dp_aux_backlight.o \
diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index dc41868d01ef..f37677df6ebf 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -9,6 +9,7 @@
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index f5b4dd5b4275..06e00b1eaa7c 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -8,6 +8,7 @@
 #include "g4x_hdmi.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 27b8f99dd099..89005628cc3a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -35,15 +35,16 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 
-#include "i915_trace.h"
+#include "gt/intel_rps.h"
+
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_pm.h"
 #include "intel_sprite.h"
-#include "gt/intel_rps.h"
 
 static void intel_plane_state_reset(struct intel_plane_state *plane_state,
 				    struct intel_plane *plane)
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 03c3111ebdf0..991170c803e1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -31,6 +31,7 @@
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_cdclk.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_lpe_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a5569f21811c..639a64733f61 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -27,6 +27,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 43554b591904..6930fbedc97d 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -12,8 +12,8 @@
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_vblank_work.h>
 
-#include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "i9xx_plane.h"
 #include "icl_dsi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
@@ -21,13 +21,13 @@
 #include "intel_crtc.h"
 #include "intel_cursor.h"
 #include "intel_display_debugfs.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_pipe_crc.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
 #include "intel_vrr.h"
-#include "i9xx_plane.h"
 #include "skl_universal_plane.h"
 
 static void assert_vblank_disabled(struct drm_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.c b/drivers/gpu/drm/i915/display/intel_display_trace.c
new file mode 100644
index 000000000000..737979ada869
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.c
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef __CHECKER__
+#define CREATE_TRACE_POINTS
+#include "intel_display_trace.h"
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
new file mode 100644
index 000000000000..4043e1276383
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -0,0 +1,587 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM i915
+
+#if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
+#define __INTEL_DISPLAY_TRACE_H__
+
+#include <linux/types.h>
+#include <linux/tracepoint.h>
+
+#include "i915_drv.h"
+#include "intel_crtc.h"
+#include "intel_display_types.h"
+
+TRACE_EVENT(intel_pipe_enable,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __array(u32, frame, 3)
+			     __array(u32, scanline, 3)
+			     __field(enum pipe, pipe)
+			     ),
+	    TP_fast_assign(
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
+				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
+			   }
+			   __entry->pipe = crtc->pipe;
+			   ),
+
+	    TP_printk("pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe),
+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+);
+
+TRACE_EVENT(intel_pipe_disable,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __array(u32, frame, 3)
+			     __array(u32, scanline, 3)
+			     __field(enum pipe, pipe)
+			     ),
+
+	    TP_fast_assign(
+			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+			   struct intel_crtc *it__;
+			   for_each_intel_crtc(&dev_priv->drm, it__) {
+				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
+				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
+			   }
+			   __entry->pipe = crtc->pipe;
+			   ),
+
+	    TP_printk("pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe),
+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+);
+
+TRACE_EVENT(intel_pipe_crc,
+	    TP_PROTO(struct intel_crtc *crtc, const u32 *crcs),
+	    TP_ARGS(crtc, crcs),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __array(u32, crcs, 5)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
+		      __entry->crcs[0], __entry->crcs[1], __entry->crcs[2],
+		      __entry->crcs[3], __entry->crcs[4])
+);
+
+TRACE_EVENT(intel_cpu_fifo_underrun,
+	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pipe),
+	    TP_ARGS(dev_priv, pipe),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   __entry->pipe = pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_pch_fifo_underrun,
+	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pch_transcoder),
+	    TP_ARGS(dev_priv, pch_transcoder),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   enum pipe pipe = pch_transcoder;
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   __entry->pipe = pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pch transcoder %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_memory_cxsr,
+	    TP_PROTO(struct drm_i915_private *dev_priv, bool old, bool new),
+	    TP_ARGS(dev_priv, old, new),
+
+	    TP_STRUCT__entry(
+			     __array(u32, frame, 3)
+			     __array(u32, scanline, 3)
+			     __field(bool, old)
+			     __field(bool, new)
+			     ),
+
+	    TP_fast_assign(
+			   struct intel_crtc *crtc;
+			   for_each_intel_crtc(&dev_priv->drm, crtc) {
+				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
+				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
+			   }
+			   __entry->old = old;
+			   __entry->new = new;
+			   ),
+
+	    TP_printk("%s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      onoff(__entry->old), onoff(__entry->new),
+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+);
+
+TRACE_EVENT(g4x_wm,
+	    TP_PROTO(struct intel_crtc *crtc, const struct g4x_wm_values *wm),
+	    TP_ARGS(crtc, wm),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u16, primary)
+			     __field(u16, sprite)
+			     __field(u16, cursor)
+			     __field(u16, sr_plane)
+			     __field(u16, sr_cursor)
+			     __field(u16, sr_fbc)
+			     __field(u16, hpll_plane)
+			     __field(u16, hpll_cursor)
+			     __field(u16, hpll_fbc)
+			     __field(bool, cxsr)
+			     __field(bool, hpll)
+			     __field(bool, fbc)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
+			   __entry->sprite = wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
+			   __entry->cursor = wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
+			   __entry->sr_plane = wm->sr.plane;
+			   __entry->sr_cursor = wm->sr.cursor;
+			   __entry->sr_fbc = wm->sr.fbc;
+			   __entry->hpll_plane = wm->hpll.plane;
+			   __entry->hpll_cursor = wm->hpll.cursor;
+			   __entry->hpll_fbc = wm->hpll.fbc;
+			   __entry->cxsr = wm->cxsr;
+			   __entry->hpll = wm->hpll_en;
+			   __entry->fbc = wm->fbc_en;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
+		      __entry->primary, __entry->sprite, __entry->cursor,
+		      yesno(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
+		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,
+		      yesno(__entry->fbc))
+);
+
+TRACE_EVENT(vlv_wm,
+	    TP_PROTO(struct intel_crtc *crtc, const struct vlv_wm_values *wm),
+	    TP_ARGS(crtc, wm),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u32, level)
+			     __field(u32, cxsr)
+			     __field(u32, primary)
+			     __field(u32, sprite0)
+			     __field(u32, sprite1)
+			     __field(u32, cursor)
+			     __field(u32, sr_plane)
+			     __field(u32, sr_cursor)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->level = wm->level;
+			   __entry->cxsr = wm->cxsr;
+			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
+			   __entry->sprite0 = wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
+			   __entry->sprite1 = wm->pipe[crtc->pipe].plane[PLANE_SPRITE1];
+			   __entry->cursor = wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
+			   __entry->sr_plane = wm->sr.plane;
+			   __entry->sr_cursor = wm->sr.cursor;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
+		      pipe_name(__entry->pipe), __entry->frame,
+		      __entry->scanline, __entry->level, __entry->cxsr,
+		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->cursor,
+		      __entry->sr_plane, __entry->sr_cursor)
+);
+
+TRACE_EVENT(vlv_fifo_size,
+	    TP_PROTO(struct intel_crtc *crtc, u32 sprite0_start, u32 sprite1_start, u32 fifo_size),
+	    TP_ARGS(crtc, sprite0_start, sprite1_start, fifo_size),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u32, sprite0_start)
+			     __field(u32, sprite1_start)
+			     __field(u32, fifo_size)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->sprite0_start = sprite0_start;
+			   __entry->sprite1_start = sprite1_start;
+			   __entry->fifo_size = fifo_size;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u, %d/%d/%d",
+		      pipe_name(__entry->pipe), __entry->frame,
+		      __entry->scanline, __entry->sprite0_start,
+		      __entry->sprite1_start, __entry->fifo_size)
+);
+
+TRACE_EVENT(intel_plane_update_noarm,
+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_ARGS(plane, crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __array(int, src, 4)
+			     __array(int, dst, 4)
+			     __string(name, plane->name)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(name, plane->name);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
+			   ),
+
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline,
+		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
+);
+
+TRACE_EVENT(intel_plane_update_arm,
+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_ARGS(plane, crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __array(int, src, 4)
+			     __array(int, dst, 4)
+			     __string(name, plane->name)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(name, plane->name);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
+			   ),
+
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline,
+		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
+);
+
+TRACE_EVENT(intel_plane_disable_arm,
+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_ARGS(plane, crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __string(name, plane->name)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(name, plane->name);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_fbc_activate,
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+									 plane->pipe);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_fbc_deactivate,
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+									 plane->pipe);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_fbc_nuke,
+	    TP_PROTO(struct intel_plane *plane),
+	    TP_ARGS(plane),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+									 plane->pipe);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_crtc_vblank_work_start,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame,
+		       __entry->scanline)
+);
+
+TRACE_EVENT(intel_crtc_vblank_work_end,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame,
+		       __entry->scanline)
+);
+
+TRACE_EVENT(intel_pipe_update_start,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u32, min)
+			     __field(u32, max)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->min = crtc->debug.min_vbl;
+			   __entry->max = crtc->debug.max_vbl;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
+		      pipe_name(__entry->pipe), __entry->frame,
+		       __entry->scanline, __entry->min, __entry->max)
+);
+
+TRACE_EVENT(intel_pipe_update_vblank_evaded,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     __field(u32, min)
+			     __field(u32, max)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = crtc->debug.start_vbl_count;
+			   __entry->scanline = crtc->debug.scanline_start;
+			   __entry->min = crtc->debug.min_vbl;
+			   __entry->max = crtc->debug.max_vbl;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
+		      pipe_name(__entry->pipe), __entry->frame,
+		       __entry->scanline, __entry->min, __entry->max)
+);
+
+TRACE_EVENT(intel_pipe_update_end,
+	    TP_PROTO(struct intel_crtc *crtc, u32 frame, int scanline_end),
+	    TP_ARGS(crtc, frame, scanline_end),
+
+	    TP_STRUCT__entry(
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = frame;
+			   __entry->scanline = scanline_end;
+			   ),
+
+	    TP_printk("pipe %c, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __entry->frame,
+		      __entry->scanline)
+);
+
+TRACE_EVENT(intel_frontbuffer_invalidate,
+	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
+	    TP_ARGS(frontbuffer_bits, origin),
+
+	    TP_STRUCT__entry(
+			     __field(unsigned int, frontbuffer_bits)
+			     __field(unsigned int, origin)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->frontbuffer_bits = frontbuffer_bits;
+			   __entry->origin = origin;
+			   ),
+
+	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
+		      __entry->frontbuffer_bits, __entry->origin)
+);
+
+TRACE_EVENT(intel_frontbuffer_flush,
+	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
+	    TP_ARGS(frontbuffer_bits, origin),
+
+	    TP_STRUCT__entry(
+			     __field(unsigned int, frontbuffer_bits)
+			     __field(unsigned int, origin)
+			     ),
+
+	    TP_fast_assign(
+			   __entry->frontbuffer_bits = frontbuffer_bits;
+			   __entry->origin = origin;
+			   ),
+
+	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
+		      __entry->frontbuffer_bits, __entry->origin)
+);
+
+#endif /* __INTEL_DISPLAY_TRACE_H__ */
+
+/* This part must be outside protection */
+#undef TRACE_INCLUDE_PATH
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
+#define TRACE_INCLUDE_FILE intel_display_trace
+#include <trace/define_trace.h>
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a24831acb7da..b5e2508db1cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -47,6 +47,7 @@
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 6efbef7a1fc0..8be01b93015f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -41,10 +41,10 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
-#include "i915_trace.h"
 #include "i915_vgpu.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index be77be626420..3d6e22923601 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -4,6 +4,7 @@
  */
 
 #include "intel_atomic.h"
+#include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 76045ce84739..d636d21fa9ce 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -26,8 +26,8 @@
  */
 
 #include "i915_drv.h"
-#include "i915_trace.h"
 #include "intel_de.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
 #include "intel_fifo_underrun.h"
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 0492446cd04a..791248f812aa 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -55,14 +55,13 @@
  * cancelled as soon as busyness is detected.
  */
 
-#include "display/intel_dp.h"
-
 #include "i915_drv.h"
-#include "i915_trace.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
+#include "intel_drrs.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
-#include "intel_drrs.h"
 #include "intel_psr.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 926f5cdc65fd..2357a1301f48 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -40,15 +40,15 @@
 #include <drm/drm_rect.h>
 
 #include "i915_drv.h"
-#include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "i9xx_plane.h"
 #include "intel_atomic_plane.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_sprite.h"
-#include "i9xx_plane.h"
 #include "intel_vrr.h"
 
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index fc77947dc3d5..8a39989b87ad 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -36,6 +36,7 @@
 
 #include "i915_drv.h"
 #include "intel_connector.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index c6851b0e0bed..1cc4170e6ec8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -6,12 +6,14 @@
  *         Manasi Navare <manasi.d.navare@intel.com>
  */
 #include <linux/limits.h>
+
 #include "i915_drv.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
-#include "intel_vdsc.h"
 #include "intel_qp_tables.h"
+#include "intel_vdsc.h"
 
 enum ROW_INDEX_BPP {
 	ROW_INDEX_6BPP = 0,
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 390d541f64ea..bafb902269de 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -48,7 +48,6 @@
 #include "i915_debugfs_params.h"
 #include "i915_irq.h"
 #include "i915_scheduler.h"
-#include "i915_trace.h"
 #include "intel_pm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index bbc99fc5888f..e9125f14b3d1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -82,7 +82,6 @@
 #include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
-#include "i915_trace.h"
 #include "i915_vgpu.h"
 #include "intel_dram.h"
 #include "intel_gvt.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d0be94456bd8..5b98fb0532b5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -35,6 +35,7 @@
 #include <drm/drm_drv.h>
 
 #include "display/intel_de.h"
+#include "display/intel_display_trace.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fifo_underrun.h"
 #include "display/intel_hotplug.h"
@@ -49,7 +50,6 @@
 
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "i915_trace.h"
 #include "intel_pm.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index a07bed5333cc..37b5c9e9d260 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -12,584 +12,11 @@
 
 #include <drm/drm_drv.h>
 
-#include "display/intel_crtc.h"
-#include "display/intel_display_types.h"
 #include "gt/intel_engine.h"
 
 #include "i915_drv.h"
 #include "i915_irq.h"
 
-/* watermark/fifo updates */
-
-TRACE_EVENT(intel_pipe_enable,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
-			     __field(enum pipe, pipe)
-			     ),
-	    TP_fast_assign(
-			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-			   struct intel_crtc *it__;
-			   for_each_intel_crtc(&dev_priv->drm, it__) {
-				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
-				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
-			   }
-			   __entry->pipe = crtc->pipe;
-			   ),
-
-	    TP_printk("pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
-);
-
-TRACE_EVENT(intel_pipe_disable,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
-			     __field(enum pipe, pipe)
-			     ),
-
-	    TP_fast_assign(
-			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-			   struct intel_crtc *it__;
-			   for_each_intel_crtc(&dev_priv->drm, it__) {
-				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
-				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
-			   }
-			   __entry->pipe = crtc->pipe;
-			   ),
-
-	    TP_printk("pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
-);
-
-TRACE_EVENT(intel_pipe_crc,
-	    TP_PROTO(struct intel_crtc *crtc, const u32 *crcs),
-	    TP_ARGS(crtc, crcs),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __array(u32, crcs, 5)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
-		      __entry->crcs[0], __entry->crcs[1], __entry->crcs[2],
-		      __entry->crcs[3], __entry->crcs[4])
-);
-
-TRACE_EVENT(intel_cpu_fifo_underrun,
-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pipe),
-	    TP_ARGS(dev_priv, pipe),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
-			   __entry->pipe = pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
-		      __entry->frame, __entry->scanline)
-);
-
-TRACE_EVENT(intel_pch_fifo_underrun,
-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pch_transcoder),
-	    TP_ARGS(dev_priv, pch_transcoder),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   enum pipe pipe = pch_transcoder;
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
-			   __entry->pipe = pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pch transcoder %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
-		      __entry->frame, __entry->scanline)
-);
-
-TRACE_EVENT(intel_memory_cxsr,
-	    TP_PROTO(struct drm_i915_private *dev_priv, bool old, bool new),
-	    TP_ARGS(dev_priv, old, new),
-
-	    TP_STRUCT__entry(
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
-			     __field(bool, old)
-			     __field(bool, new)
-			     ),
-
-	    TP_fast_assign(
-			   struct intel_crtc *crtc;
-			   for_each_intel_crtc(&dev_priv->drm, crtc) {
-				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
-				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
-			   }
-			   __entry->old = old;
-			   __entry->new = new;
-			   ),
-
-	    TP_printk("%s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      onoff(__entry->old), onoff(__entry->new),
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
-);
-
-TRACE_EVENT(g4x_wm,
-	    TP_PROTO(struct intel_crtc *crtc, const struct g4x_wm_values *wm),
-	    TP_ARGS(crtc, wm),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __field(u16, primary)
-			     __field(u16, sprite)
-			     __field(u16, cursor)
-			     __field(u16, sr_plane)
-			     __field(u16, sr_cursor)
-			     __field(u16, sr_fbc)
-			     __field(u16, hpll_plane)
-			     __field(u16, hpll_cursor)
-			     __field(u16, hpll_fbc)
-			     __field(bool, cxsr)
-			     __field(bool, hpll)
-			     __field(bool, fbc)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
-			   __entry->sprite = wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
-			   __entry->cursor = wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
-			   __entry->sr_plane = wm->sr.plane;
-			   __entry->sr_cursor = wm->sr.cursor;
-			   __entry->sr_fbc = wm->sr.fbc;
-			   __entry->hpll_plane = wm->hpll.plane;
-			   __entry->hpll_cursor = wm->hpll.cursor;
-			   __entry->hpll_fbc = wm->hpll.fbc;
-			   __entry->cxsr = wm->cxsr;
-			   __entry->hpll = wm->hpll_en;
-			   __entry->fbc = wm->fbc_en;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
-		      __entry->primary, __entry->sprite, __entry->cursor,
-		      yesno(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
-		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,
-		      yesno(__entry->fbc))
-);
-
-TRACE_EVENT(vlv_wm,
-	    TP_PROTO(struct intel_crtc *crtc, const struct vlv_wm_values *wm),
-	    TP_ARGS(crtc, wm),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __field(u32, level)
-			     __field(u32, cxsr)
-			     __field(u32, primary)
-			     __field(u32, sprite0)
-			     __field(u32, sprite1)
-			     __field(u32, cursor)
-			     __field(u32, sr_plane)
-			     __field(u32, sr_cursor)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   __entry->level = wm->level;
-			   __entry->cxsr = wm->cxsr;
-			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
-			   __entry->sprite0 = wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
-			   __entry->sprite1 = wm->pipe[crtc->pipe].plane[PLANE_SPRITE1];
-			   __entry->cursor = wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
-			   __entry->sr_plane = wm->sr.plane;
-			   __entry->sr_cursor = wm->sr.cursor;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline, __entry->level, __entry->cxsr,
-		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->cursor,
-		      __entry->sr_plane, __entry->sr_cursor)
-);
-
-TRACE_EVENT(vlv_fifo_size,
-	    TP_PROTO(struct intel_crtc *crtc, u32 sprite0_start, u32 sprite1_start, u32 fifo_size),
-	    TP_ARGS(crtc, sprite0_start, sprite1_start, fifo_size),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __field(u32, sprite0_start)
-			     __field(u32, sprite1_start)
-			     __field(u32, fifo_size)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   __entry->sprite0_start = sprite0_start;
-			   __entry->sprite1_start = sprite1_start;
-			   __entry->fifo_size = fifo_size;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u, %d/%d/%d",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline, __entry->sprite0_start,
-		      __entry->sprite1_start, __entry->fifo_size)
-);
-
-/* plane updates */
-
-TRACE_EVENT(intel_plane_update_noarm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
-	    TP_ARGS(plane, crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __array(int, src, 4)
-			     __array(int, dst, 4)
-			     __string(name, plane->name)
-			     ),
-
-	    TP_fast_assign(
-			   __assign_str(name, plane->name);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
-			   ),
-
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      pipe_name(__entry->pipe), __get_str(name),
-		      __entry->frame, __entry->scanline,
-		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
-		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
-);
-
-TRACE_EVENT(intel_plane_update_arm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
-	    TP_ARGS(plane, crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __array(int, src, 4)
-			     __array(int, dst, 4)
-			     __string(name, plane->name)
-			     ),
-
-	    TP_fast_assign(
-			   __assign_str(name, plane->name);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
-			   ),
-
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      pipe_name(__entry->pipe), __get_str(name),
-		      __entry->frame, __entry->scanline,
-		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
-		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
-);
-
-TRACE_EVENT(intel_plane_disable_arm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
-	    TP_ARGS(plane, crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __string(name, plane->name)
-			     ),
-
-	    TP_fast_assign(
-			   __assign_str(name, plane->name);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __get_str(name),
-		      __entry->frame, __entry->scanline)
-);
-
-/* fbc */
-
-TRACE_EVENT(intel_fbc_activate,
-	    TP_PROTO(struct intel_plane *plane),
-	    TP_ARGS(plane),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
-									 plane->pipe);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
-);
-
-TRACE_EVENT(intel_fbc_deactivate,
-	    TP_PROTO(struct intel_plane *plane),
-	    TP_ARGS(plane),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
-									 plane->pipe);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
-);
-
-TRACE_EVENT(intel_fbc_nuke,
-	    TP_PROTO(struct intel_plane *plane),
-	    TP_ARGS(plane),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
-									 plane->pipe);
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
-);
-
-/* pipe updates */
-
-TRACE_EVENT(intel_crtc_vblank_work_start,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline)
-);
-
-TRACE_EVENT(intel_crtc_vblank_work_end,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline)
-);
-
-TRACE_EVENT(intel_pipe_update_start,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __field(u32, min)
-			     __field(u32, max)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
-			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   __entry->min = crtc->debug.min_vbl;
-			   __entry->max = crtc->debug.max_vbl;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline, __entry->min, __entry->max)
-);
-
-TRACE_EVENT(intel_pipe_update_vblank_evaded,
-	    TP_PROTO(struct intel_crtc *crtc),
-	    TP_ARGS(crtc),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     __field(u32, min)
-			     __field(u32, max)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = crtc->debug.start_vbl_count;
-			   __entry->scanline = crtc->debug.scanline_start;
-			   __entry->min = crtc->debug.min_vbl;
-			   __entry->max = crtc->debug.max_vbl;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline, __entry->min, __entry->max)
-);
-
-TRACE_EVENT(intel_pipe_update_end,
-	    TP_PROTO(struct intel_crtc *crtc, u32 frame, int scanline_end),
-	    TP_ARGS(crtc, frame, scanline_end),
-
-	    TP_STRUCT__entry(
-			     __field(enum pipe, pipe)
-			     __field(u32, frame)
-			     __field(u32, scanline)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->pipe = crtc->pipe;
-			   __entry->frame = frame;
-			   __entry->scanline = scanline_end;
-			   ),
-
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline)
-);
-
-/* frontbuffer tracking */
-
-TRACE_EVENT(intel_frontbuffer_invalidate,
-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(frontbuffer_bits, origin),
-
-	    TP_STRUCT__entry(
-			     __field(unsigned int, frontbuffer_bits)
-			     __field(unsigned int, origin)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->frontbuffer_bits = frontbuffer_bits;
-			   __entry->origin = origin;
-			   ),
-
-	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
-		      __entry->frontbuffer_bits, __entry->origin)
-);
-
-TRACE_EVENT(intel_frontbuffer_flush,
-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(frontbuffer_bits, origin),
-
-	    TP_STRUCT__entry(
-			     __field(unsigned int, frontbuffer_bits)
-			     __field(unsigned int, origin)
-			     ),
-
-	    TP_fast_assign(
-			   __entry->frontbuffer_bits = frontbuffer_bits;
-			   __entry->origin = origin;
-			   ),
-
-	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
-		      __entry->frontbuffer_bits, __entry->origin)
-);
-
 /* object tracking */
 
 TRACE_EVENT(i915_gem_object_create,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index fe3787425780..abad48e1690e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -36,6 +36,7 @@
 #include "display/intel_atomic_plane.h"
 #include "display/intel_bw.h"
 #include "display/intel_de.h"
+#include "display/intel_display_trace.h"
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 #include "display/intel_fbc.h"
@@ -47,7 +48,6 @@
 #include "i915_drv.h"
 #include "i915_fixed.h"
 #include "i915_irq.h"
-#include "i915_trace.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "vlv_sideband.h"
-- 
2.30.2

