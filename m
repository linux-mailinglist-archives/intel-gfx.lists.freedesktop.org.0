Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B66BF96BDCC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6300610E7BA;
	Wed,  4 Sep 2024 13:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JHGAMfsx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8FC10E7BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725455219; x=1756991219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6qDhDSazkIUOqCJJlSJshr+C++PUm2ZyUDiJB4myLP4=;
 b=JHGAMfsxiSfp2kiXNoASRiap4M2LbvzTCJQ+/gprbO7dHXCL6slOm7nN
 +F3BAK/y+onN/VS7CSy6Jjih7KbCflq+jyeX/Y01P3g+cq/c+GvmP4pRt
 Ps0r07sL4FEZ1HvH4MXvVMHkxpcA7NGL/svECBYwB748FiDqFJut/+zj1
 vbSofQG4/E+wpm+DoeS/gMs97uwqpuTT8B3V1KfREIpyghAH6eDr0PRKO
 Z+MO6dIrOuD4b78FlInAJB31J93faZWC7M8ui7/f9smcvIbr3Pl9zU0w8
 OlMW1cugrwJzOXXVqFlzJFlt9+OaIh7rDtR0ONuwODa/muoO+JNuqxA3V g==;
X-CSE-ConnectionGUID: 9RAAb7ePTpyyj+N8X6GwPQ==
X-CSE-MsgGUID: VF61aEP9QL6ij2ogpiA8dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28000714"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="28000714"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:06:58 -0700
X-CSE-ConnectionGUID: XQagn8vqRASAbLXklt5T+w==
X-CSE-MsgGUID: 8lm/KyzcTem8FgLrTizS7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65500462"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:06:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/display: convert intel_display_trace.h to struct
 intel_display
Date: Wed,  4 Sep 2024 16:06:33 +0300
Message-Id: <20240904130633.3831492-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240904130633.3831492-1-jani.nikula@intel.com>
References: <20240904130633.3831492-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_display_trace.h to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  3 +-
 .../drm/i915/display/intel_display_trace.h    | 44 +++++++++----------
 .../drm/i915/display/intel_fifo_underrun.c    | 15 ++++---
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  4 +-
 4 files changed, 35 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 9535e92dcbf4..c35f15bd818a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -136,6 +136,7 @@ static void chv_set_memory_pm5(struct drm_i915_private *dev_priv, bool enable)
 
 static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enable)
 {
+	struct intel_display *display = &dev_priv->display;
 	bool was_enabled;
 	u32 val;
 
@@ -177,7 +178,7 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
 		return false;
 	}
 
-	trace_intel_memory_cxsr(dev_priv, was_enabled, enable);
+	trace_intel_memory_cxsr(display, was_enabled, enable);
 
 	drm_dbg_kms(&dev_priv->drm, "memory self-refresh is %s (was %s)\n",
 		    str_enabled_disabled(enable),
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 7176eefaf505..fc28d34b5eef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -18,7 +18,7 @@
 #include "intel_display_types.h"
 #include "intel_vblank.h"
 
-#define __dev_name_i915(i915) dev_name((i915)->drm.dev)
+#define __dev_name_display(display) dev_name((display)->drm->dev)
 #define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
 
 TRACE_EVENT(intel_pipe_enable,
@@ -32,10 +32,10 @@ TRACE_EVENT(intel_pipe_enable,
 			     __field(enum pipe, pipe)
 			     ),
 	    TP_fast_assign(
-			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+			   struct intel_display *display = to_intel_display(crtc);
 			   struct intel_crtc *it__;
 			   __assign_str(dev);
-			   for_each_intel_crtc(&dev_priv->drm, it__) {
+			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
@@ -61,10 +61,10 @@ TRACE_EVENT(intel_pipe_disable,
 			     ),
 
 	    TP_fast_assign(
-			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+			   struct intel_display *display = to_intel_display(crtc);
 			   struct intel_crtc *it__;
 			   __assign_str(dev);
-			   for_each_intel_crtc(&dev_priv->drm, it__) {
+			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
@@ -130,18 +130,17 @@ TRACE_EVENT(intel_pipe_crc,
 );
 
 TRACE_EVENT(intel_cpu_fifo_underrun,
-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pipe),
-	    TP_ARGS(dev_priv, pipe),
+	    TP_PROTO(struct intel_display *display, enum pipe pipe),
+	    TP_ARGS(display, pipe),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_i915(dev_priv))
+			     __string(dev, __dev_name_display(display))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
-			   struct intel_display *display = &dev_priv->display;
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
 			   __entry->pipe = pipe;
@@ -155,18 +154,17 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 );
 
 TRACE_EVENT(intel_pch_fifo_underrun,
-	    TP_PROTO(struct drm_i915_private *dev_priv, enum pipe pch_transcoder),
-	    TP_ARGS(dev_priv, pch_transcoder),
+	    TP_PROTO(struct intel_display *display, enum pipe pch_transcoder),
+	    TP_ARGS(display, pch_transcoder),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_i915(dev_priv))
+			     __string(dev, __dev_name_display(display))
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
-			   struct intel_display *display = &dev_priv->display;
 			   enum pipe pipe = pch_transcoder;
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
@@ -181,11 +179,11 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 );
 
 TRACE_EVENT(intel_memory_cxsr,
-	    TP_PROTO(struct drm_i915_private *dev_priv, bool old, bool new),
-	    TP_ARGS(dev_priv, old, new),
+	    TP_PROTO(struct intel_display *display, bool old, bool new),
+	    TP_ARGS(display, old, new),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_i915(dev_priv))
+			     __string(dev, __dev_name_display(display))
 			     __array(u32, frame, 3)
 			     __array(u32, scanline, 3)
 			     __field(bool, old)
@@ -195,7 +193,7 @@ TRACE_EVENT(intel_memory_cxsr,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc;
 			   __assign_str(dev);
-			   for_each_intel_crtc(&dev_priv->drm, crtc) {
+			   for_each_intel_crtc(display->drm, crtc) {
 				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
 				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
 			   }
@@ -657,12 +655,12 @@ TRACE_EVENT(intel_pipe_update_end,
 );
 
 TRACE_EVENT(intel_frontbuffer_invalidate,
-	    TP_PROTO(struct drm_i915_private *i915,
+	    TP_PROTO(struct intel_display *display,
 		     unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(i915, frontbuffer_bits, origin),
+	    TP_ARGS(display, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_i915(i915))
+			     __string(dev, __dev_name_display(display))
 			     __field(unsigned int, frontbuffer_bits)
 			     __field(unsigned int, origin)
 			     ),
@@ -678,12 +676,12 @@ TRACE_EVENT(intel_frontbuffer_invalidate,
 );
 
 TRACE_EVENT(intel_frontbuffer_flush,
-	    TP_PROTO(struct drm_i915_private *i915,
+	    TP_PROTO(struct intel_display *display,
 		     unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(i915, frontbuffer_bits, origin),
+	    TP_ARGS(display, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_i915(i915))
+			     __string(dev, __dev_name_display(display))
 			     __field(unsigned int, frontbuffer_bits)
 			     __field(unsigned int, origin)
 			     ),
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 4ffbaf44c21b..745ce22afb89 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -95,6 +95,7 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
 
 static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	i915_reg_t reg = PIPESTAT(dev_priv, crtc->pipe);
 	u32 enable_mask;
@@ -108,7 +109,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
 	intel_de_posting_read(dev_priv, reg);
 
-	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
+	trace_intel_cpu_fifo_underrun(display, crtc->pipe);
 	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
 }
 
@@ -149,6 +150,7 @@ static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
 
 static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	u32 err_int = intel_de_read(dev_priv, GEN7_ERR_INT);
@@ -161,7 +163,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
 	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
 
-	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
+	trace_intel_cpu_fifo_underrun(display, pipe);
 	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
 }
 
@@ -237,6 +239,7 @@ static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
 
 static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pch_transcoder = crtc->pipe;
 	u32 serr_int = intel_de_read(dev_priv, SERR_INT);
@@ -250,7 +253,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 	intel_de_posting_read(dev_priv, SERR_INT);
 
-	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
+	trace_intel_pch_fifo_underrun(display, pch_transcoder);
 	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
 		pipe_name(pch_transcoder));
 }
@@ -432,7 +435,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
-		trace_intel_cpu_fifo_underrun(dev_priv, pipe);
+		trace_intel_cpu_fifo_underrun(display, pipe);
 
 		if (DISPLAY_VER(dev_priv) >= 11)
 			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun: %s%s%s%s\n",
@@ -460,9 +463,11 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pch_transcoder)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
 						  false)) {
-		trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
+		trace_intel_pch_fifo_underrun(display, pch_transcoder);
 		drm_err(&dev_priv->drm, "PCH transcoder %c FIFO underrun\n",
 			pipe_name(pch_transcoder));
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index af4576dee92a..56db1f172764 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -93,7 +93,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	if (!frontbuffer_bits)
 		return;
 
-	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
+	trace_intel_frontbuffer_flush(display, frontbuffer_bits, origin);
 
 	might_sleep();
 	intel_td_flush(i915);
@@ -183,7 +183,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 		spin_unlock(&i915->display.fb_tracking.lock);
 	}
 
-	trace_intel_frontbuffer_invalidate(i915, frontbuffer_bits, origin);
+	trace_intel_frontbuffer_invalidate(display, frontbuffer_bits, origin);
 
 	might_sleep();
 	intel_psr_invalidate(display, frontbuffer_bits, origin);
-- 
2.39.2

