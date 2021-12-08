Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B8E46D8AA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 17:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F2673DD8;
	Wed,  8 Dec 2021 16:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4279573DD8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 16:40:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298659340"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="298659340"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:39:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="679943009"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:39:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20211208160321.ihbm6lxz4dijo43l@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1638961423.git.jani.nikula@intel.com>
 <7862ad764fbd0748d903c76bc632d3d277874e5b.1638961423.git.jani.nikula@intel.com>
 <20211208160321.ihbm6lxz4dijo43l@ldmartin-desk2>
Date: Wed, 08 Dec 2021 18:39:55 +0200
Message-ID: <87bl1r3vac.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/trace: split out display
 trace to a separate file
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Dec 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Dec 08, 2021 at 01:05:17PM +0200, Jani Nikula wrote:
>>Add display/intel_display_trace.[ch] for defining display
>>tracepoints. The main goal is to reduce cross-includes between gem and
>>display. It would be possible split up tracing even further, but that
>>would lead to more boilerplate.
>>
>>We end up having to include intel_crtc.h in a few places because it was
>>pulled in implicitly via intel_de.h -> i915_trace.h -> intel_crtc.h, and
>>that's no longer the case.
>>
>>There should be no changes to tracepoints.
>>
>>v3:
>>- Rebase
>>
>>v2:
>>- Define TRACE_INCLUDE_PATH relative to define_trace.h (Chris)
>>- Remove useless comments (Ville)
>>
>>Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>
> only thing I noticed in the code move is that we lost the comments about
> grouping the tracepoints. Was this intentional? Example:

Yeah, specifically requested by Ville (see v2 changelog above).

BR,
Jani.


>
> 	/* watermark/fifo updates */
> 	...
> 	/* plane updates */
> 	...
> 	etc
>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
> Lucas De Marchi
>
>
>
>
>>---
>> drivers/gpu/drm/i915/Makefile                 |   1 +
>> drivers/gpu/drm/i915/display/g4x_dp.c         |   1 +
>> drivers/gpu/drm/i915/display/g4x_hdmi.c       |   1 +
>> .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
>> drivers/gpu/drm/i915/display/intel_audio.c    |   1 +
>> drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
>> drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +-
>> .../drm/i915/display/intel_display_trace.c    |   9 +
>> .../drm/i915/display/intel_display_trace.h    | 587 ++++++++++++++++++
>> drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
>> drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>> drivers/gpu/drm/i915/display/intel_fdi.c      |   1 +
>> .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>> .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
>> drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
>> drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
>> drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
>> drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
>> drivers/gpu/drm/i915/i915_driver.c            |   1 -
>> drivers/gpu/drm/i915/i915_irq.c               |   2 +-
>> drivers/gpu/drm/i915/i915_trace.h             | 573 -----------------
>> drivers/gpu/drm/i915/intel_pm.c               |   2 +-
>> 22 files changed, 621 insertions(+), 590 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.c
>> create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.h
>>
>>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>>index 3b5857da4123..6ddd2d2bbaaf 100644
>>--- a/drivers/gpu/drm/i915/Makefile
>>+++ b/drivers/gpu/drm/i915/Makefile
>>@@ -259,6 +259,7 @@ i915-y +=3D \
>> 	display/intel_crt.o \
>> 	display/intel_ddi.o \
>> 	display/intel_ddi_buf_trans.o \
>>+	display/intel_display_trace.o \
>> 	display/intel_dp.o \
>> 	display/intel_dp_aux.o \
>> 	display/intel_dp_aux_backlight.o \
>>diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
>>index dc41868d01ef..f37677df6ebf 100644
>>--- a/drivers/gpu/drm/i915/display/g4x_dp.c
>>+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>>@@ -9,6 +9,7 @@
>> #include "intel_audio.h"
>> #include "intel_backlight.h"
>> #include "intel_connector.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_dp.h"
>>diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
>>index f5b4dd5b4275..06e00b1eaa7c 100644
>>--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
>>+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>>@@ -8,6 +8,7 @@
>> #include "g4x_hdmi.h"
>> #include "intel_audio.h"
>> #include "intel_connector.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_dpio_phy.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
>>index 27b8f99dd099..89005628cc3a 100644
>>--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>>@@ -35,15 +35,16 @@
>> #include <drm/drm_fourcc.h>
>> #include <drm/drm_plane_helper.h>
>>
>>-#include "i915_trace.h"
>>+#include "gt/intel_rps.h"
>>+
>> #include "intel_atomic_plane.h"
>> #include "intel_cdclk.h"
>>+#include "intel_display_trace.h"
>> #include "intel_display_types.h"
>> #include "intel_fb.h"
>> #include "intel_fb_pin.h"
>> #include "intel_pm.h"
>> #include "intel_sprite.h"
>>-#include "gt/intel_rps.h"
>>
>> static void intel_plane_state_reset(struct intel_plane_state *plane_stat=
e,
>> 				    struct intel_plane *plane)
>>diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
>>index 03c3111ebdf0..991170c803e1 100644
>>--- a/drivers/gpu/drm/i915/display/intel_audio.c
>>+++ b/drivers/gpu/drm/i915/display/intel_audio.c
>>@@ -31,6 +31,7 @@
>> #include "intel_atomic.h"
>> #include "intel_audio.h"
>> #include "intel_cdclk.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_lpe_audio.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
>>index a5569f21811c..639a64733f61 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>@@ -27,6 +27,7 @@
>> #include "intel_audio.h"
>> #include "intel_bw.h"
>> #include "intel_cdclk.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_pcode.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
>>index 43554b591904..6930fbedc97d 100644
>>--- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>@@ -12,8 +12,8 @@
>> #include <drm/drm_plane_helper.h>
>> #include <drm/drm_vblank_work.h>
>>
>>-#include "i915_trace.h"
>> #include "i915_vgpu.h"
>>+#include "i9xx_plane.h"
>> #include "icl_dsi.h"
>> #include "intel_atomic.h"
>> #include "intel_atomic_plane.h"
>>@@ -21,13 +21,13 @@
>> #include "intel_crtc.h"
>> #include "intel_cursor.h"
>> #include "intel_display_debugfs.h"
>>+#include "intel_display_trace.h"
>> #include "intel_display_types.h"
>> #include "intel_dsi.h"
>> #include "intel_pipe_crc.h"
>> #include "intel_psr.h"
>> #include "intel_sprite.h"
>> #include "intel_vrr.h"
>>-#include "i9xx_plane.h"
>> #include "skl_universal_plane.h"
>>
>> static void assert_vblank_disabled(struct drm_crtc *crtc)
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.c b/drivers=
/gpu/drm/i915/display/intel_display_trace.c
>>new file mode 100644
>>index 000000000000..737979ada869
>>--- /dev/null
>>+++ b/drivers/gpu/drm/i915/display/intel_display_trace.c
>>@@ -0,0 +1,9 @@
>>+// SPDX-License-Identifier: GPL-2.0
>>+/*
>>+ * Copyright =C2=A9 2021 Intel Corporation
>>+ */
>>+
>>+#ifndef __CHECKER__
>>+#define CREATE_TRACE_POINTS
>>+#include "intel_display_trace.h"
>>+#endif
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers=
/gpu/drm/i915/display/intel_display_trace.h
>>new file mode 100644
>>index 000000000000..4043e1276383
>>--- /dev/null
>>+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>>@@ -0,0 +1,587 @@
>>+/* SPDX-License-Identifier: GPL-2.0 */
>>+/*
>>+ * Copyright =C2=A9 2021 Intel Corporation
>>+ */
>>+
>>+#undef TRACE_SYSTEM
>>+#define TRACE_SYSTEM i915
>>+
>>+#if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_RE=
AD)
>>+#define __INTEL_DISPLAY_TRACE_H__
>>+
>>+#include <linux/types.h>
>>+#include <linux/tracepoint.h>
>>+
>>+#include "i915_drv.h"
>>+#include "intel_crtc.h"
>>+#include "intel_display_types.h"
>>+
>>+TRACE_EVENT(intel_pipe_enable,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __array(u32, frame, 3)
>>+			     __array(u32, scanline, 3)
>>+			     __field(enum pipe, pipe)
>>+			     ),
>>+	    TP_fast_assign(
>>+			   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>+			   struct intel_crtc *it__;
>>+			   for_each_intel_crtc(&dev_priv->drm, it__) {
>>+				   __entry->frame[it__->pipe] =3D intel_crtc_get_vblank_counter(it__=
);
>>+				   __entry->scanline[it__->pipe] =3D intel_get_crtc_scanline(it__);
>>+			   }
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c enable, pipe A: frame=3D%u, scanline=3D%u, pipe =
B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe),
>>+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>+);
>>+
>>+TRACE_EVENT(intel_pipe_disable,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __array(u32, frame, 3)
>>+			     __array(u32, scanline, 3)
>>+			     __field(enum pipe, pipe)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>+			   struct intel_crtc *it__;
>>+			   for_each_intel_crtc(&dev_priv->drm, it__) {
>>+				   __entry->frame[it__->pipe] =3D intel_crtc_get_vblank_counter(it__=
);
>>+				   __entry->scanline[it__->pipe] =3D intel_get_crtc_scanline(it__);
>>+			   }
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c disable, pipe A: frame=3D%u, scanline=3D%u, pipe=
 B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe),
>>+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>+);
>>+
>>+TRACE_EVENT(intel_pipe_crc,
>>+	    TP_PROTO(struct intel_crtc *crtc, const u32 *crcs),
>>+	    TP_ARGS(crtc, crcs),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __array(u32, crcs, 5)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u crc=3D%08x %08x %08x =
%08x %08x",
>>+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
>>+		      __entry->crcs[0], __entry->crcs[1], __entry->crcs[2],
>>+		      __entry->crcs[3], __entry->crcs[4])
>>+);
>>+
>>+TRACE_EVENT(intel_cpu_fifo_underrun,
>>+	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pipe),
>>+	    TP_ARGS(dev_priv, pipe),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			    struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
>>+			   __entry->pipe =3D pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe),
>>+		      __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_pch_fifo_underrun,
>>+	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pch_transcode=
r),
>>+	    TP_ARGS(dev_priv, pch_transcoder),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   enum pipe pipe =3D pch_transcoder;
>>+			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
>>+			   __entry->pipe =3D pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pch transcoder %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe),
>>+		      __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_memory_cxsr,
>>+	    TP_PROTO(struct drm_i915_private *dev_priv, bool old, bool new),
>>+	    TP_ARGS(dev_priv, old, new),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __array(u32, frame, 3)
>>+			     __array(u32, scanline, 3)
>>+			     __field(bool, old)
>>+			     __field(bool, new)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   struct intel_crtc *crtc;
>>+			   for_each_intel_crtc(&dev_priv->drm, crtc) {
>>+				   __entry->frame[crtc->pipe] =3D intel_crtc_get_vblank_counter(crtc=
);
>>+				   __entry->scanline[crtc->pipe] =3D intel_get_crtc_scanline(crtc);
>>+			   }
>>+			   __entry->old =3D old;
>>+			   __entry->new =3D new;
>>+			   ),
>>+
>>+	    TP_printk("%s->%s, pipe A: frame=3D%u, scanline=3D%u, pipe B: frame=
=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>+		      onoff(__entry->old), onoff(__entry->new),
>>+		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>+		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>+		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>+);
>>+
>>+TRACE_EVENT(g4x_wm,
>>+	    TP_PROTO(struct intel_crtc *crtc, const struct g4x_wm_values *wm),
>>+	    TP_ARGS(crtc, wm),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __field(u16, primary)
>>+			     __field(u16, sprite)
>>+			     __field(u16, cursor)
>>+			     __field(u16, sr_plane)
>>+			     __field(u16, sr_cursor)
>>+			     __field(u16, sr_fbc)
>>+			     __field(u16, hpll_plane)
>>+			     __field(u16, hpll_cursor)
>>+			     __field(u16, hpll_fbc)
>>+			     __field(bool, cxsr)
>>+			     __field(bool, hpll)
>>+			     __field(bool, fbc)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   __entry->primary =3D wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
>>+			   __entry->sprite =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
>>+			   __entry->cursor =3D wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
>>+			   __entry->sr_plane =3D wm->sr.plane;
>>+			   __entry->sr_cursor =3D wm->sr.cursor;
>>+			   __entry->sr_fbc =3D wm->sr.fbc;
>>+			   __entry->hpll_plane =3D wm->hpll.plane;
>>+			   __entry->hpll_cursor =3D wm->hpll.cursor;
>>+			   __entry->hpll_fbc =3D wm->hpll.fbc;
>>+			   __entry->cxsr =3D wm->cxsr;
>>+			   __entry->hpll =3D wm->hpll_en;
>>+			   __entry->fbc =3D wm->fbc_en;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, wm %d/%d/%d, sr %s/%=
d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
>>+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
>>+		      __entry->primary, __entry->sprite, __entry->cursor,
>>+		      yesno(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __e=
ntry->sr_fbc,
>>+		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor,=
 __entry->hpll_fbc,
>>+		      yesno(__entry->fbc))
>>+);
>>+
>>+TRACE_EVENT(vlv_wm,
>>+	    TP_PROTO(struct intel_crtc *crtc, const struct vlv_wm_values *wm),
>>+	    TP_ARGS(crtc, wm),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __field(u32, level)
>>+			     __field(u32, cxsr)
>>+			     __field(u32, primary)
>>+			     __field(u32, sprite0)
>>+			     __field(u32, sprite1)
>>+			     __field(u32, cursor)
>>+			     __field(u32, sr_plane)
>>+			     __field(u32, sr_cursor)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   __entry->level =3D wm->level;
>>+			   __entry->cxsr =3D wm->cxsr;
>>+			   __entry->primary =3D wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
>>+			   __entry->sprite0 =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
>>+			   __entry->sprite1 =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE1];
>>+			   __entry->cursor =3D wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
>>+			   __entry->sr_plane =3D wm->sr.plane;
>>+			   __entry->sr_cursor =3D wm->sr.cursor;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, level=3D%d, cxsr=3D%=
d, wm %d/%d/%d/%d, sr %d/%d",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		      __entry->scanline, __entry->level, __entry->cxsr,
>>+		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->c=
ursor,
>>+		      __entry->sr_plane, __entry->sr_cursor)
>>+);
>>+
>>+TRACE_EVENT(vlv_fifo_size,
>>+	    TP_PROTO(struct intel_crtc *crtc, u32 sprite0_start, u32 sprite1_st=
art, u32 fifo_size),
>>+	    TP_ARGS(crtc, sprite0_start, sprite1_start, fifo_size),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __field(u32, sprite0_start)
>>+			     __field(u32, sprite1_start)
>>+			     __field(u32, fifo_size)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   __entry->sprite0_start =3D sprite0_start;
>>+			   __entry->sprite1_start =3D sprite1_start;
>>+			   __entry->fifo_size =3D fifo_size;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, %d/%d/%d",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		      __entry->scanline, __entry->sprite0_start,
>>+		      __entry->sprite1_start, __entry->fifo_size)
>>+);
>>+
>>+TRACE_EVENT(intel_plane_update_noarm,
>>+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>+	    TP_ARGS(plane, crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __array(int, src, 4)
>>+			     __array(int, dst, 4)
>>+			     __string(name, plane->name)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __assign_str(name, plane->name);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
>>+			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u, " DRM_RECT=
_FP_FMT " -> " DRM_RECT_FMT,
>>+		      pipe_name(__entry->pipe), __get_str(name),
>>+		      __entry->frame, __entry->scanline,
>>+		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>>+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
>>+);
>>+
>>+TRACE_EVENT(intel_plane_update_arm,
>>+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>+	    TP_ARGS(plane, crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __array(int, src, 4)
>>+			     __array(int, dst, 4)
>>+			     __string(name, plane->name)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __assign_str(name, plane->name);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
>>+			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u, " DRM_RECT=
_FP_FMT " -> " DRM_RECT_FMT,
>>+		      pipe_name(__entry->pipe), __get_str(name),
>>+		      __entry->frame, __entry->scanline,
>>+		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>>+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
>>+);
>>+
>>+TRACE_EVENT(intel_plane_disable_arm,
>>+	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>+	    TP_ARGS(plane, crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __string(name, plane->name)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __assign_str(name, plane->name);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __get_str(name),
>>+		      __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_fbc_activate,
>>+	    TP_PROTO(struct intel_plane *plane),
>>+	    TP_ARGS(plane),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>+									 plane->pipe);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_fbc_deactivate,
>>+	    TP_PROTO(struct intel_plane *plane),
>>+	    TP_ARGS(plane),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>+									 plane->pipe);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_fbc_nuke,
>>+	    TP_PROTO(struct intel_plane *plane),
>>+	    TP_ARGS(plane),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>+									 plane->pipe);
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_crtc_vblank_work_start,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		       __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_crtc_vblank_work_end,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		       __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_pipe_update_start,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __field(u32, min)
>>+			     __field(u32, max)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>+			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>+			   __entry->min =3D crtc->debug.min_vbl;
>>+			   __entry->max =3D crtc->debug.max_vbl;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, min=3D%u, max=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		       __entry->scanline, __entry->min, __entry->max)
>>+);
>>+
>>+TRACE_EVENT(intel_pipe_update_vblank_evaded,
>>+	    TP_PROTO(struct intel_crtc *crtc),
>>+	    TP_ARGS(crtc),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     __field(u32, min)
>>+			     __field(u32, max)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D crtc->debug.start_vbl_count;
>>+			   __entry->scanline =3D crtc->debug.scanline_start;
>>+			   __entry->min =3D crtc->debug.min_vbl;
>>+			   __entry->max =3D crtc->debug.max_vbl;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, min=3D%u, max=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		       __entry->scanline, __entry->min, __entry->max)
>>+);
>>+
>>+TRACE_EVENT(intel_pipe_update_end,
>>+	    TP_PROTO(struct intel_crtc *crtc, u32 frame, int scanline_end),
>>+	    TP_ARGS(crtc, frame, scanline_end),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(enum pipe, pipe)
>>+			     __field(u32, frame)
>>+			     __field(u32, scanline)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->pipe =3D crtc->pipe;
>>+			   __entry->frame =3D frame;
>>+			   __entry->scanline =3D scanline_end;
>>+			   ),
>>+
>>+	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>+		      pipe_name(__entry->pipe), __entry->frame,
>>+		      __entry->scanline)
>>+);
>>+
>>+TRACE_EVENT(intel_frontbuffer_invalidate,
>>+	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
>>+	    TP_ARGS(frontbuffer_bits, origin),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(unsigned int, frontbuffer_bits)
>>+			     __field(unsigned int, origin)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->frontbuffer_bits =3D frontbuffer_bits;
>>+			   __entry->origin =3D origin;
>>+			   ),
>>+
>>+	    TP_printk("frontbuffer_bits=3D0x%08x, origin=3D%u",
>>+		      __entry->frontbuffer_bits, __entry->origin)
>>+);
>>+
>>+TRACE_EVENT(intel_frontbuffer_flush,
>>+	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
>>+	    TP_ARGS(frontbuffer_bits, origin),
>>+
>>+	    TP_STRUCT__entry(
>>+			     __field(unsigned int, frontbuffer_bits)
>>+			     __field(unsigned int, origin)
>>+			     ),
>>+
>>+	    TP_fast_assign(
>>+			   __entry->frontbuffer_bits =3D frontbuffer_bits;
>>+			   __entry->origin =3D origin;
>>+			   ),
>>+
>>+	    TP_printk("frontbuffer_bits=3D0x%08x, origin=3D%u",
>>+		      __entry->frontbuffer_bits, __entry->origin)
>>+);
>>+
>>+#endif /* __INTEL_DISPLAY_TRACE_H__ */
>>+
>>+/* This part must be outside protection */
>>+#undef TRACE_INCLUDE_PATH
>>+#undef TRACE_INCLUDE_FILE
>>+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/display
>>+#define TRACE_INCLUDE_FILE intel_display_trace
>>+#include <trace/define_trace.h>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
>>index a24831acb7da..b5e2508db1cf 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>@@ -47,6 +47,7 @@
>> #include "intel_audio.h"
>> #include "intel_backlight.h"
>> #include "intel_connector.h"
>>+#include "intel_crtc.h"
>> #include "intel_ddi.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
>>index 6efbef7a1fc0..8be01b93015f 100644
>>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>@@ -41,10 +41,10 @@
>> #include <drm/drm_fourcc.h>
>>
>> #include "i915_drv.h"
>>-#include "i915_trace.h"
>> #include "i915_vgpu.h"
>> #include "intel_cdclk.h"
>> #include "intel_de.h"
>>+#include "intel_display_trace.h"
>> #include "intel_display_types.h"
>> #include "intel_fbc.h"
>> #include "intel_frontbuffer.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i=
915/display/intel_fdi.c
>>index be77be626420..3d6e22923601 100644
>>--- a/drivers/gpu/drm/i915/display/intel_fdi.c
>>+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>>@@ -4,6 +4,7 @@
>>  */
>>
>> #include "intel_atomic.h"
>>+#include "intel_crtc.h"
>> #include "intel_ddi.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers=
/gpu/drm/i915/display/intel_fifo_underrun.c
>>index 76045ce84739..d636d21fa9ce 100644
>>--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>@@ -26,8 +26,8 @@
>>  */
>>
>> #include "i915_drv.h"
>>-#include "i915_trace.h"
>> #include "intel_de.h"
>>+#include "intel_display_trace.h"
>> #include "intel_display_types.h"
>> #include "intel_fbc.h"
>> #include "intel_fifo_underrun.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/g=
pu/drm/i915/display/intel_frontbuffer.c
>>index 0492446cd04a..791248f812aa 100644
>>--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>@@ -55,14 +55,13 @@
>>  * cancelled as soon as busyness is detected.
>>  */
>>
>>-#include "display/intel_dp.h"
>>-
>> #include "i915_drv.h"
>>-#include "i915_trace.h"
>>+#include "intel_display_trace.h"
>> #include "intel_display_types.h"
>>+#include "intel_dp.h"
>>+#include "intel_drrs.h"
>> #include "intel_fbc.h"
>> #include "intel_frontbuffer.h"
>>-#include "intel_drrs.h"
>> #include "intel_psr.h"
>>
>> /**
>>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
>>index 926f5cdc65fd..2357a1301f48 100644
>>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>>@@ -40,15 +40,15 @@
>> #include <drm/drm_rect.h>
>>
>> #include "i915_drv.h"
>>-#include "i915_trace.h"
>> #include "i915_vgpu.h"
>>+#include "i9xx_plane.h"
>> #include "intel_atomic_plane.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_fb.h"
>> #include "intel_frontbuffer.h"
>> #include "intel_sprite.h"
>>-#include "i9xx_plane.h"
>> #include "intel_vrr.h"
>>
>> int intel_plane_check_src_coordinates(struct intel_plane_state *plane_st=
ate)
>>diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
>>index fc77947dc3d5..8a39989b87ad 100644
>>--- a/drivers/gpu/drm/i915/display/intel_tv.c
>>+++ b/drivers/gpu/drm/i915/display/intel_tv.c
>>@@ -36,6 +36,7 @@
>>
>> #include "i915_drv.h"
>> #include "intel_connector.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_hotplug.h"
>>diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
>>index c6851b0e0bed..1cc4170e6ec8 100644
>>--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>@@ -6,12 +6,14 @@
>>  *         Manasi Navare <manasi.d.navare@intel.com>
>>  */
>> #include <linux/limits.h>
>>+
>> #include "i915_drv.h"
>>+#include "intel_crtc.h"
>> #include "intel_de.h"
>> #include "intel_display_types.h"
>> #include "intel_dsi.h"
>>-#include "intel_vdsc.h"
>> #include "intel_qp_tables.h"
>>+#include "intel_vdsc.h"
>>
>> enum ROW_INDEX_BPP {
>> 	ROW_INDEX_6BPP =3D 0,
>>diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
>>index 390d541f64ea..bafb902269de 100644
>>--- a/drivers/gpu/drm/i915/i915_debugfs.c
>>+++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>@@ -48,7 +48,6 @@
>> #include "i915_debugfs_params.h"
>> #include "i915_irq.h"
>> #include "i915_scheduler.h"
>>-#include "i915_trace.h"
>> #include "intel_pm.h"
>>
>> static inline struct drm_i915_private *node_to_i915(struct drm_info_node=
 *node)
>>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
>>index bbc99fc5888f..e9125f14b3d1 100644
>>--- a/drivers/gpu/drm/i915/i915_driver.c
>>+++ b/drivers/gpu/drm/i915/i915_driver.c
>>@@ -82,7 +82,6 @@
>> #include "i915_suspend.h"
>> #include "i915_switcheroo.h"
>> #include "i915_sysfs.h"
>>-#include "i915_trace.h"
>> #include "i915_vgpu.h"
>> #include "intel_dram.h"
>> #include "intel_gvt.h"
>>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
>>index d0be94456bd8..5b98fb0532b5 100644
>>--- a/drivers/gpu/drm/i915/i915_irq.c
>>+++ b/drivers/gpu/drm/i915/i915_irq.c
>>@@ -35,6 +35,7 @@
>> #include <drm/drm_drv.h>
>>
>> #include "display/intel_de.h"
>>+#include "display/intel_display_trace.h"
>> #include "display/intel_display_types.h"
>> #include "display/intel_fifo_underrun.h"
>> #include "display/intel_hotplug.h"
>>@@ -49,7 +50,6 @@
>>
>> #include "i915_drv.h"
>> #include "i915_irq.h"
>>-#include "i915_trace.h"
>> #include "intel_pm.h"
>>
>> /**
>>diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i91=
5_trace.h
>>index a07bed5333cc..37b5c9e9d260 100644
>>--- a/drivers/gpu/drm/i915/i915_trace.h
>>+++ b/drivers/gpu/drm/i915/i915_trace.h
>>@@ -12,584 +12,11 @@
>>
>> #include <drm/drm_drv.h>
>>
>>-#include "display/intel_crtc.h"
>>-#include "display/intel_display_types.h"
>> #include "gt/intel_engine.h"
>>
>> #include "i915_drv.h"
>> #include "i915_irq.h"
>>
>>-/* watermark/fifo updates */
>>-
>>-TRACE_EVENT(intel_pipe_enable,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __array(u32, frame, 3)
>>-			     __array(u32, scanline, 3)
>>-			     __field(enum pipe, pipe)
>>-			     ),
>>-	    TP_fast_assign(
>>-			   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>-			   struct intel_crtc *it__;
>>-			   for_each_intel_crtc(&dev_priv->drm, it__) {
>>-				   __entry->frame[it__->pipe] =3D intel_crtc_get_vblank_counter(it__=
);
>>-				   __entry->scanline[it__->pipe] =3D intel_get_crtc_scanline(it__);
>>-			   }
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c enable, pipe A: frame=3D%u, scanline=3D%u, pipe =
B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe),
>>-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>-);
>>-
>>-TRACE_EVENT(intel_pipe_disable,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __array(u32, frame, 3)
>>-			     __array(u32, scanline, 3)
>>-			     __field(enum pipe, pipe)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>-			   struct intel_crtc *it__;
>>-			   for_each_intel_crtc(&dev_priv->drm, it__) {
>>-				   __entry->frame[it__->pipe] =3D intel_crtc_get_vblank_counter(it__=
);
>>-				   __entry->scanline[it__->pipe] =3D intel_get_crtc_scanline(it__);
>>-			   }
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c disable, pipe A: frame=3D%u, scanline=3D%u, pipe=
 B: frame=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe),
>>-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>-);
>>-
>>-TRACE_EVENT(intel_pipe_crc,
>>-	    TP_PROTO(struct intel_crtc *crtc, const u32 *crcs),
>>-	    TP_ARGS(crtc, crcs),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __array(u32, crcs, 5)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u crc=3D%08x %08x %08x =
%08x %08x",
>>-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
>>-		      __entry->crcs[0], __entry->crcs[1], __entry->crcs[2],
>>-		      __entry->crcs[3], __entry->crcs[4])
>>-);
>>-
>>-TRACE_EVENT(intel_cpu_fifo_underrun,
>>-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pipe),
>>-	    TP_ARGS(dev_priv, pipe),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			    struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
>>-			   __entry->pipe =3D pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe),
>>-		      __entry->frame, __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_pch_fifo_underrun,
>>-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pch_transcode=
r),
>>-	    TP_ARGS(dev_priv, pch_transcoder),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   enum pipe pipe =3D pch_transcoder;
>>-			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
>>-			   __entry->pipe =3D pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pch transcoder %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe),
>>-		      __entry->frame, __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_memory_cxsr,
>>-	    TP_PROTO(struct drm_i915_private *dev_priv, bool old, bool new),
>>-	    TP_ARGS(dev_priv, old, new),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __array(u32, frame, 3)
>>-			     __array(u32, scanline, 3)
>>-			     __field(bool, old)
>>-			     __field(bool, new)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   struct intel_crtc *crtc;
>>-			   for_each_intel_crtc(&dev_priv->drm, crtc) {
>>-				   __entry->frame[crtc->pipe] =3D intel_crtc_get_vblank_counter(crtc=
);
>>-				   __entry->scanline[crtc->pipe] =3D intel_get_crtc_scanline(crtc);
>>-			   }
>>-			   __entry->old =3D old;
>>-			   __entry->new =3D new;
>>-			   ),
>>-
>>-	    TP_printk("%s->%s, pipe A: frame=3D%u, scanline=3D%u, pipe B: frame=
=3D%u, scanline=3D%u, pipe C: frame=3D%u, scanline=3D%u",
>>-		      onoff(__entry->old), onoff(__entry->new),
>>-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
>>-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
>>-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
>>-);
>>-
>>-TRACE_EVENT(g4x_wm,
>>-	    TP_PROTO(struct intel_crtc *crtc, const struct g4x_wm_values *wm),
>>-	    TP_ARGS(crtc, wm),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __field(u16, primary)
>>-			     __field(u16, sprite)
>>-			     __field(u16, cursor)
>>-			     __field(u16, sr_plane)
>>-			     __field(u16, sr_cursor)
>>-			     __field(u16, sr_fbc)
>>-			     __field(u16, hpll_plane)
>>-			     __field(u16, hpll_cursor)
>>-			     __field(u16, hpll_fbc)
>>-			     __field(bool, cxsr)
>>-			     __field(bool, hpll)
>>-			     __field(bool, fbc)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   __entry->primary =3D wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
>>-			   __entry->sprite =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
>>-			   __entry->cursor =3D wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
>>-			   __entry->sr_plane =3D wm->sr.plane;
>>-			   __entry->sr_cursor =3D wm->sr.cursor;
>>-			   __entry->sr_fbc =3D wm->sr.fbc;
>>-			   __entry->hpll_plane =3D wm->hpll.plane;
>>-			   __entry->hpll_cursor =3D wm->hpll.cursor;
>>-			   __entry->hpll_fbc =3D wm->hpll.fbc;
>>-			   __entry->cxsr =3D wm->cxsr;
>>-			   __entry->hpll =3D wm->hpll_en;
>>-			   __entry->fbc =3D wm->fbc_en;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, wm %d/%d/%d, sr %s/%=
d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
>>-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
>>-		      __entry->primary, __entry->sprite, __entry->cursor,
>>-		      yesno(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __e=
ntry->sr_fbc,
>>-		      yesno(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor,=
 __entry->hpll_fbc,
>>-		      yesno(__entry->fbc))
>>-);
>>-
>>-TRACE_EVENT(vlv_wm,
>>-	    TP_PROTO(struct intel_crtc *crtc, const struct vlv_wm_values *wm),
>>-	    TP_ARGS(crtc, wm),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __field(u32, level)
>>-			     __field(u32, cxsr)
>>-			     __field(u32, primary)
>>-			     __field(u32, sprite0)
>>-			     __field(u32, sprite1)
>>-			     __field(u32, cursor)
>>-			     __field(u32, sr_plane)
>>-			     __field(u32, sr_cursor)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   __entry->level =3D wm->level;
>>-			   __entry->cxsr =3D wm->cxsr;
>>-			   __entry->primary =3D wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
>>-			   __entry->sprite0 =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE0];
>>-			   __entry->sprite1 =3D wm->pipe[crtc->pipe].plane[PLANE_SPRITE1];
>>-			   __entry->cursor =3D wm->pipe[crtc->pipe].plane[PLANE_CURSOR];
>>-			   __entry->sr_plane =3D wm->sr.plane;
>>-			   __entry->sr_cursor =3D wm->sr.cursor;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, level=3D%d, cxsr=3D%=
d, wm %d/%d/%d/%d, sr %d/%d",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		      __entry->scanline, __entry->level, __entry->cxsr,
>>-		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->c=
ursor,
>>-		      __entry->sr_plane, __entry->sr_cursor)
>>-);
>>-
>>-TRACE_EVENT(vlv_fifo_size,
>>-	    TP_PROTO(struct intel_crtc *crtc, u32 sprite0_start, u32 sprite1_st=
art, u32 fifo_size),
>>-	    TP_ARGS(crtc, sprite0_start, sprite1_start, fifo_size),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __field(u32, sprite0_start)
>>-			     __field(u32, sprite1_start)
>>-			     __field(u32, fifo_size)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   __entry->sprite0_start =3D sprite0_start;
>>-			   __entry->sprite1_start =3D sprite1_start;
>>-			   __entry->fifo_size =3D fifo_size;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, %d/%d/%d",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		      __entry->scanline, __entry->sprite0_start,
>>-		      __entry->sprite1_start, __entry->fifo_size)
>>-);
>>-
>>-/* plane updates */
>>-
>>-TRACE_EVENT(intel_plane_update_noarm,
>>-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>-	    TP_ARGS(plane, crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __array(int, src, 4)
>>-			     __array(int, dst, 4)
>>-			     __string(name, plane->name)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __assign_str(name, plane->name);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
>>-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u, " DRM_RECT=
_FP_FMT " -> " DRM_RECT_FMT,
>>-		      pipe_name(__entry->pipe), __get_str(name),
>>-		      __entry->frame, __entry->scanline,
>>-		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>>-		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
>>-);
>>-
>>-TRACE_EVENT(intel_plane_update_arm,
>>-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>-	    TP_ARGS(plane, crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __array(int, src, 4)
>>-			     __array(int, dst, 4)
>>-			     __string(name, plane->name)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __assign_str(name, plane->name);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
>>-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u, " DRM_RECT=
_FP_FMT " -> " DRM_RECT_FMT,
>>-		      pipe_name(__entry->pipe), __get_str(name),
>>-		      __entry->frame, __entry->scanline,
>>-		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
>>-		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
>>-);
>>-
>>-TRACE_EVENT(intel_plane_disable_arm,
>>-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
>>-	    TP_ARGS(plane, crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __string(name, plane->name)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __assign_str(name, plane->name);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, plane %s, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __get_str(name),
>>-		      __entry->frame, __entry->scanline)
>>-);
>>-
>>-/* fbc */
>>-
>>-TRACE_EVENT(intel_fbc_activate,
>>-	    TP_PROTO(struct intel_plane *plane),
>>-	    TP_ARGS(plane),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>-									 plane->pipe);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_fbc_deactivate,
>>-	    TP_PROTO(struct intel_plane *plane),
>>-	    TP_ARGS(plane),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>-									 plane->pipe);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_fbc_nuke,
>>-	    TP_PROTO(struct intel_plane *plane),
>>-	    TP_ARGS(plane),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(plane->bas=
e.dev),
>>-									 plane->pipe);
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
>>-);
>>-
>>-/* pipe updates */
>>-
>>-TRACE_EVENT(intel_crtc_vblank_work_start,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		       __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_crtc_vblank_work_end,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		       __entry->scanline)
>>-);
>>-
>>-TRACE_EVENT(intel_pipe_update_start,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __field(u32, min)
>>-			     __field(u32, max)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
>>-			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
>>-			   __entry->min =3D crtc->debug.min_vbl;
>>-			   __entry->max =3D crtc->debug.max_vbl;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, min=3D%u, max=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		       __entry->scanline, __entry->min, __entry->max)
>>-);
>>-
>>-TRACE_EVENT(intel_pipe_update_vblank_evaded,
>>-	    TP_PROTO(struct intel_crtc *crtc),
>>-	    TP_ARGS(crtc),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     __field(u32, min)
>>-			     __field(u32, max)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D crtc->debug.start_vbl_count;
>>-			   __entry->scanline =3D crtc->debug.scanline_start;
>>-			   __entry->min =3D crtc->debug.min_vbl;
>>-			   __entry->max =3D crtc->debug.max_vbl;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u, min=3D%u, max=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		       __entry->scanline, __entry->min, __entry->max)
>>-);
>>-
>>-TRACE_EVENT(intel_pipe_update_end,
>>-	    TP_PROTO(struct intel_crtc *crtc, u32 frame, int scanline_end),
>>-	    TP_ARGS(crtc, frame, scanline_end),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(enum pipe, pipe)
>>-			     __field(u32, frame)
>>-			     __field(u32, scanline)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->pipe =3D crtc->pipe;
>>-			   __entry->frame =3D frame;
>>-			   __entry->scanline =3D scanline_end;
>>-			   ),
>>-
>>-	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
>>-		      pipe_name(__entry->pipe), __entry->frame,
>>-		      __entry->scanline)
>>-);
>>-
>>-/* frontbuffer tracking */
>>-
>>-TRACE_EVENT(intel_frontbuffer_invalidate,
>>-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
>>-	    TP_ARGS(frontbuffer_bits, origin),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(unsigned int, frontbuffer_bits)
>>-			     __field(unsigned int, origin)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->frontbuffer_bits =3D frontbuffer_bits;
>>-			   __entry->origin =3D origin;
>>-			   ),
>>-
>>-	    TP_printk("frontbuffer_bits=3D0x%08x, origin=3D%u",
>>-		      __entry->frontbuffer_bits, __entry->origin)
>>-);
>>-
>>-TRACE_EVENT(intel_frontbuffer_flush,
>>-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
>>-	    TP_ARGS(frontbuffer_bits, origin),
>>-
>>-	    TP_STRUCT__entry(
>>-			     __field(unsigned int, frontbuffer_bits)
>>-			     __field(unsigned int, origin)
>>-			     ),
>>-
>>-	    TP_fast_assign(
>>-			   __entry->frontbuffer_bits =3D frontbuffer_bits;
>>-			   __entry->origin =3D origin;
>>-			   ),
>>-
>>-	    TP_printk("frontbuffer_bits=3D0x%08x, origin=3D%u",
>>-		      __entry->frontbuffer_bits, __entry->origin)
>>-);
>>-
>> /* object tracking */
>>
>> TRACE_EVENT(i915_gem_object_create,
>>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
>>index fe3787425780..abad48e1690e 100644
>>--- a/drivers/gpu/drm/i915/intel_pm.c
>>+++ b/drivers/gpu/drm/i915/intel_pm.c
>>@@ -36,6 +36,7 @@
>> #include "display/intel_atomic_plane.h"
>> #include "display/intel_bw.h"
>> #include "display/intel_de.h"
>>+#include "display/intel_display_trace.h"
>> #include "display/intel_display_types.h"
>> #include "display/intel_fb.h"
>> #include "display/intel_fbc.h"
>>@@ -47,7 +48,6 @@
>> #include "i915_drv.h"
>> #include "i915_fixed.h"
>> #include "i915_irq.h"
>>-#include "i915_trace.h"
>> #include "intel_pcode.h"
>> #include "intel_pm.h"
>> #include "vlv_sideband.h"
>>--=20
>>2.30.2
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
