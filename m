Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3636625A80
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA1E10E807;
	Fri, 11 Nov 2022 12:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C92C10E17C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668169895; x=1699705895;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ohMYvf8/orb1me+I/f9JxIkJRkUToDv9PM0Iv1yIGoM=;
 b=CXphqr7IacpFDk/uNs3fmpIGdmQPbcXC6hz+G+wiHjapkBaj+UzisFBd
 gZcuH/6DTT6KcM7dUGEpSiiePK/xKdjjdOtZ2E2PDtirtPF+EYS5xBrla
 pN4RBJJksPzgZH/Qmzn/qbIpbfoPj76AnHUEi0riBWtCZlR1QZjUNCnKe
 5gJNlmUjuVTD66F9N4BeS/c9HrwmVGYZaQGlgV4Dsu1J5t4TwfzNYqw75
 74+60TRL5H8aPbqqN+Jbf+B95qCjLxxPKvN7OuebjZpn25pBM9BE1dPGv
 p9KM+rUnxp9fOeYqbCHoYnTHTCzT7EWrnK6N/EK3eDsJIinLlwXAHMNqz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883364"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883364"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="632023118"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632023118"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 04:31:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 14:31:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 14:31:20 +0200
Message-Id: <20221111123120.7759-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Add device name to display
 tracepoints
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

Include dev_name() in the tracpoints so one can filter based on
the device.

Example:
echo 'dev=="0000:00:02.0"' > events/i915/intel_cpu_fifo_underrun/filter

v2: Reduce the magic macros, rebase

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 161 ++++++++++++------
 1 file changed, 107 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 7ba1c0c22a4b..725aba3fa531 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -18,11 +18,15 @@
 #include "intel_crtc.h"
 #include "intel_display_types.h"
 
+#define __dev_name_i915(i915) dev_name((i915)->drm.dev)
+#define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
+
 TRACE_EVENT(intel_pipe_enable,
 	    TP_PROTO(struct intel_crtc *crtc),
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __array(u32, frame, 3)
 			     __array(u32, scanline, 3)
 			     __field(enum pipe, pipe)
@@ -30,6 +34,7 @@ TRACE_EVENT(intel_pipe_enable,
 	    TP_fast_assign(
 			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 			   struct intel_crtc *it__;
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   for_each_intel_crtc(&dev_priv->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
@@ -37,8 +42,8 @@ TRACE_EVENT(intel_pipe_enable,
 			   __entry->pipe = crtc->pipe;
 			   ),
 
-	    TP_printk("pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
+	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
@@ -49,6 +54,7 @@ TRACE_EVENT(intel_pipe_disable,
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __array(u32, frame, 3)
 			     __array(u32, scanline, 3)
 			     __field(enum pipe, pipe)
@@ -57,6 +63,7 @@ TRACE_EVENT(intel_pipe_disable,
 	    TP_fast_assign(
 			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 			   struct intel_crtc *it__;
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   for_each_intel_crtc(&dev_priv->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
@@ -64,8 +71,8 @@ TRACE_EVENT(intel_pipe_disable,
 			   __entry->pipe = crtc->pipe;
 			   ),
 
-	    TP_printk("pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
+	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
@@ -76,6 +83,7 @@ TRACE_EVENT(intel_pipe_crc,
 	    TP_ARGS(crtc, crcs),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -83,16 +91,19 @@ TRACE_EVENT(intel_pipe_crc,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
-		      __entry->crcs[0], __entry->crcs[1], __entry->crcs[2],
-		      __entry->crcs[3], __entry->crcs[4])
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
+		      __entry->crcs[0], __entry->crcs[1],
+		      __entry->crcs[2], __entry->crcs[3],
+		      __entry->crcs[4])
 );
 
 TRACE_EVENT(intel_cpu_fifo_underrun,
@@ -100,6 +111,7 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 	    TP_ARGS(dev_priv, pipe),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_i915(dev_priv))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -107,13 +119,14 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 
 	    TP_fast_assign(
 			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -122,6 +135,7 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 	    TP_ARGS(dev_priv, pch_transcoder),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_i915(dev_priv))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -130,13 +144,14 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 	    TP_fast_assign(
 			   enum pipe pipe = pch_transcoder;
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   __assign_str(dev, __dev_name_i915(dev_priv));
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pch transcoder %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe),
+	    TP_printk("dev %s, pch transcoder %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -145,6 +160,7 @@ TRACE_EVENT(intel_memory_cxsr,
 	    TP_ARGS(dev_priv, old, new),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_i915(dev_priv))
 			     __array(u32, frame, 3)
 			     __array(u32, scanline, 3)
 			     __field(bool, old)
@@ -153,6 +169,7 @@ TRACE_EVENT(intel_memory_cxsr,
 
 	    TP_fast_assign(
 			   struct intel_crtc *crtc;
+			   __assign_str(dev, __dev_name_i915(dev_priv));
 			   for_each_intel_crtc(&dev_priv->drm, crtc) {
 				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
 				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
@@ -161,8 +178,8 @@ TRACE_EVENT(intel_memory_cxsr,
 			   __entry->new = new;
 			   ),
 
-	    TP_printk("%s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      str_on_off(__entry->old), str_on_off(__entry->new),
+	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
@@ -173,6 +190,7 @@ TRACE_EVENT(g4x_wm,
 	    TP_ARGS(crtc, wm),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -191,6 +209,7 @@ TRACE_EVENT(g4x_wm,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -208,8 +227,9 @@ TRACE_EVENT(g4x_wm,
 			   __entry->fbc = wm->fbc_en;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline,
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
 		      __entry->primary, __entry->sprite, __entry->cursor,
 		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
 		      str_yes_no(__entry->hpll), __entry->hpll_plane, __entry->hpll_cursor, __entry->hpll_fbc,
@@ -221,6 +241,7 @@ TRACE_EVENT(vlv_wm,
 	    TP_ARGS(crtc, wm),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -235,6 +256,7 @@ TRACE_EVENT(vlv_wm,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -248,9 +270,10 @@ TRACE_EVENT(vlv_wm,
 			   __entry->sr_cursor = wm->sr.cursor;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline, __entry->level, __entry->cxsr,
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
+		      __entry->level, __entry->cxsr,
 		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->cursor,
 		      __entry->sr_plane, __entry->sr_cursor)
 );
@@ -260,6 +283,7 @@ TRACE_EVENT(vlv_fifo_size,
 	    TP_ARGS(crtc, sprite0_start, sprite1_start, fifo_size),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -269,6 +293,7 @@ TRACE_EVENT(vlv_fifo_size,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -277,10 +302,10 @@ TRACE_EVENT(vlv_fifo_size,
 			   __entry->fifo_size = fifo_size;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u, %d/%d/%d",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline, __entry->sprite0_start,
-		      __entry->sprite1_start, __entry->fifo_size)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, %d/%d/%d",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
+		      __entry->sprite0_start, __entry->sprite1_start, __entry->fifo_size)
 );
 
 TRACE_EVENT(intel_plane_update_noarm,
@@ -288,6 +313,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -297,6 +323,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
@@ -305,8 +332,8 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
@@ -317,6 +344,7 @@ TRACE_EVENT(intel_plane_update_arm,
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -326,6 +354,7 @@ TRACE_EVENT(intel_plane_update_arm,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
@@ -334,8 +363,8 @@ TRACE_EVENT(intel_plane_update_arm,
 			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
@@ -346,6 +375,7 @@ TRACE_EVENT(intel_plane_disable_arm,
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -353,14 +383,15 @@ TRACE_EVENT(intel_plane_disable_arm,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -369,6 +400,7 @@ TRACE_EVENT(intel_fbc_activate,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
@@ -378,14 +410,15 @@ TRACE_EVENT(intel_fbc_activate,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -394,6 +427,7 @@ TRACE_EVENT(intel_fbc_deactivate,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
@@ -403,14 +437,15 @@ TRACE_EVENT(intel_fbc_deactivate,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -419,6 +454,7 @@ TRACE_EVENT(intel_fbc_nuke,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
@@ -428,14 +464,15 @@ TRACE_EVENT(intel_fbc_nuke,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(dev, __dev_name_kms(plane));
 			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __get_str(name),
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -444,20 +481,22 @@ TRACE_EVENT(intel_crtc_vblank_work_start,
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_crtc_vblank_work_end,
@@ -465,20 +504,22 @@ TRACE_EVENT(intel_crtc_vblank_work_end,
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_pipe_update_start,
@@ -486,6 +527,7 @@ TRACE_EVENT(intel_pipe_update_start,
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -494,6 +536,7 @@ TRACE_EVENT(intel_pipe_update_start,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
@@ -501,9 +544,10 @@ TRACE_EVENT(intel_pipe_update_start,
 			   __entry->max = crtc->debug.max_vbl;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline, __entry->min, __entry->max)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
+		      __entry->min, __entry->max)
 );
 
 TRACE_EVENT(intel_pipe_update_vblank_evaded,
@@ -511,6 +555,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 	    TP_ARGS(crtc),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -519,6 +564,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = crtc->debug.start_vbl_count;
 			   __entry->scanline = crtc->debug.scanline_start;
@@ -526,9 +572,10 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 			   __entry->max = crtc->debug.max_vbl;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		       __entry->scanline, __entry->min, __entry->max)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline,
+		      __entry->min, __entry->max)
 );
 
 TRACE_EVENT(intel_pipe_update_end,
@@ -536,20 +583,22 @@ TRACE_EVENT(intel_pipe_update_end,
 	    TP_ARGS(crtc, frame, scanline_end),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_kms(crtc));
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = frame;
 			   __entry->scanline = scanline_end;
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame,
-		      __entry->scanline)
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_frontbuffer_invalidate,
@@ -558,17 +607,19 @@ TRACE_EVENT(intel_frontbuffer_invalidate,
 	    TP_ARGS(i915, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_i915(i915))
 			     __field(unsigned int, frontbuffer_bits)
 			     __field(unsigned int, origin)
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_i915(i915));
 			   __entry->frontbuffer_bits = frontbuffer_bits;
 			   __entry->origin = origin;
 			   ),
 
-	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
-		      __entry->frontbuffer_bits, __entry->origin)
+	    TP_printk("dev %s, frontbuffer_bits=0x%08x, origin=%u",
+		      __get_str(dev), __entry->frontbuffer_bits, __entry->origin)
 );
 
 TRACE_EVENT(intel_frontbuffer_flush,
@@ -577,17 +628,19 @@ TRACE_EVENT(intel_frontbuffer_flush,
 	    TP_ARGS(i915, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_i915(i915))
 			     __field(unsigned int, frontbuffer_bits)
 			     __field(unsigned int, origin)
 			     ),
 
 	    TP_fast_assign(
+			   __assign_str(dev, __dev_name_i915(i915));
 			   __entry->frontbuffer_bits = frontbuffer_bits;
 			   __entry->origin = origin;
 			   ),
 
-	    TP_printk("frontbuffer_bits=0x%08x, origin=%u",
-		      __entry->frontbuffer_bits, __entry->origin)
+	    TP_printk("dev %s, frontbuffer_bits=0x%08x, origin=%u",
+		      __get_str(dev), __entry->frontbuffer_bits, __entry->origin)
 );
 
 #endif /* __INTEL_DISPLAY_TRACE_H__ */
-- 
2.37.4

