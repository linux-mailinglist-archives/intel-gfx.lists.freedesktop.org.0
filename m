Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEA0CB922B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB61710E8E3;
	Fri, 12 Dec 2025 15:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDETK8io";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A420510E8E3;
 Fri, 12 Dec 2025 15:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553381; x=1797089381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=72uN//VvKu9JUkILMd8hKgyteWFIIYSh1zu5vbRaOyI=;
 b=JDETK8ioMis3OYrdFEMDzw8fXQE1PWSYm9K5m3TduXkhVMm+/L9C8KgU
 gJpKP8V5h2mFWoCWpLPmkJkXiVjzWR7AfUrpMOjI61umlrZyuAFCWB+md
 uLJSBP7XnKVhOrdVhYw5q7BjtLbUqtDx36R66Ge750wuoem412O+sGY4n
 rVw2WhEspfA0PvOF693FFOLrR59hiUcQyqxlXkBM1dEeg2C8eeUav7EOZ
 6c5ZVZgn4yvP1L+AUoQXeqtcnEbEVeLWPeDRnMwXPgJIul11iUbJLcAzU
 69OXlO9/FRTXnlL2FnJDbktFk9/xTiwvWdDPl7HWWsxOBCpl5K6vK7eVT A==;
X-CSE-ConnectionGUID: xK4IFNv2TBGyvJsr34fCzw==
X-CSE-MsgGUID: sPtvbBVxQpOMxyceQCkBvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71402572"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71402572"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:40 -0800
X-CSE-ConnectionGUID: /XcoyAwnQ7OmfVGBEzK2MQ==
X-CSE-MsgGUID: TN8T8VStQLy6fbNZN0wC3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="228171906"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:39 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/13] drm/i915/dsb: Add tracepoints for flip queue
Date: Fri, 12 Dec 2025 17:28:47 +0200
Message-ID: <20251212152847.13679-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently flip queue based commits don't leave any breadcrumbs
via tracepoints. Add new intel_flipq_add and intel_flipq_done
tracepoints that at least indicates when we something happens
via the flip queeu.

We might want to improve this later somehow to have a slightly
better idea what the flip queue might end up doing. But at least
this now shows that *something* is going on.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 60 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.c      |  3 +
 drivers/gpu/drm/i915/display/intel_flipq.c    |  7 ++-
 3 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index f76c8432e155..a2d1bc83c715 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -23,6 +23,7 @@
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
+#include "intel_flipq.h"
 #include "intel_vblank.h"
 
 #define __dev_name_display(display) dev_name((display)->drm->dev)
@@ -732,6 +733,65 @@ TRACE_EVENT(intel_dsb_done,
 		      __entry->frame, __entry->scanline)
 );
 
+TRACE_EVENT(intel_flipq_add,
+	    TP_PROTO(struct intel_crtc *crtc,
+		     enum intel_flipq_id flipq_id,
+		     enum intel_dsb_id dsb_id,
+		     u32 pts, u32 curr_pts),
+	    TP_ARGS(crtc, flipq_id, dsb_id, pts, curr_pts),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(u32, flipq_id)
+			     __field(u32, dsb_id)
+			     __field(u32, pts)
+			     __field(u32, curr_pts)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->flipq_id = flipq_id;
+			   __entry->dsb_id = dsb_id;
+			   __entry->pts = pts;
+			   __entry->curr_pts = curr_pts;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, FQ %d, DSB %d, PTS %u, current PTS %u, frame=%u, scanline=%u",
+		      __get_str(dev), __entry->pipe_name,
+		      __entry->flipq_id, __entry->dsb_id,
+		      __entry->pts, __entry->curr_pts,
+		      __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_flipq_done,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), __entry->pipe_name,
+		      __entry->frame, __entry->scanline)
+);
+
 TRACE_EVENT(intel_crtc_vblank_work_start,
 	    TP_PROTO(struct intel_crtc *crtc),
 	    TP_ARGS(crtc),
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2fb6fec6dc99..4cfa3920fbad 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -35,6 +35,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dmc.h"
@@ -1699,6 +1700,8 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 			spin_lock(&display->drm->event_lock);
 
 			if (crtc->flipq_event) {
+				trace_intel_flipq_done(crtc);
+
 				/*
 				 * Update vblank counter/timestamp in case it
 				 * hasn't been done yet for this frame.
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index a07b3ec4242c..2a0d947184a3 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -10,6 +10,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dmc.h"
@@ -429,11 +430,13 @@ void intel_flipq_add(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_flipq *flipq = &crtc->flipq[flipq_id];
+	unsigned int curr_pts;
 
 	if (!assert_flipq_has_room(crtc, flipq_id))
 		return;
 
-	pts += intel_de_read(display, PIPEDMC_FPQ_TS(crtc->pipe));
+	curr_pts = intel_de_read(display, PIPEDMC_FPQ_TS(crtc->pipe));
+	pts += curr_pts;
 
 	intel_flipq_preempt(crtc, true);
 
@@ -445,6 +448,8 @@ void intel_flipq_add(struct intel_crtc *crtc,
 	flipq->tail = (flipq->tail + 1) % intel_flipq_size_entries(flipq->flipq_id);
 	intel_flipq_write_tail(crtc);
 
+	trace_intel_flipq_add(crtc, flipq_id, dsb_id, pts, curr_pts);
+
 	intel_flipq_preempt(crtc, false);
 
 	intel_flipq_sw_dmc_wake(crtc);
-- 
2.51.2

