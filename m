Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6507BCB9228
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA5510E8ED;
	Fri, 12 Dec 2025 15:29:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ai9ZCnjk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F387610E8E8;
 Fri, 12 Dec 2025 15:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553377; x=1797089377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0sHHNGtGnRu+cBJ9qL/zoapsaSKBYZx4UPG3v8deeXY=;
 b=Ai9ZCnjklSPaXw5Hbif8HRI7ZsqhEDLVt0z96qX6q6HYVswF8XYWyxZ8
 UC4hfJz6GgOYLs+dL3G2WjM5w2QWjdtAfpf7lJlv5iI9MhF9xwL0ViyKy
 EeaUL6SoFQ3N3dugB3v+fK5hd3cwYfMwpcZqglTzJZ5qkzW9grnqrWs5x
 gGbZLPlyxdc9elIM28ZPIBBnCce8KLqPQUEUjBEUBQXrrW2OsJZzByi6q
 B+4vAvpRISee/92+Sm/OF+/0e17aH1Tf5SdFxA8mU7rRbKyoUH+Er6B57
 kyCu5U4I28n/XZ1v08SzuOkh2IgVI6BvKCroKc6m44S3sjoLm/c5FgblQ g==;
X-CSE-ConnectionGUID: +1hKVE38QSOnZWtIdIY40g==
X-CSE-MsgGUID: 1WY01pQZR3uDjZslkQl9aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71402566"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71402566"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:37 -0800
X-CSE-ConnectionGUID: KeKxWI5IS42KW0d0ePhYZA==
X-CSE-MsgGUID: ECdQ6L/bQBahFZDP6f39Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="228171880"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:35 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 12/13] drm/i915/dsb: Add tracepoints for DSB commit
Date: Fri, 12 Dec 2025 17:28:46 +0200
Message-ID: <20251212152847.13679-13-ville.syrjala@linux.intel.com>
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

Currently DSB based commits don't leave any breadcrumbs via
tracepoints. Add new intel_dsb_commit and intel_dsb_done
tracepoints that at least indicates when the DSB does something.

We might want to improve this later somehow to have a slightly
better idea what the DSB might end up doing. But at least this
now shows that *something* is happening on the hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 51 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.c      |  5 ++
 2 files changed, 56 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 27ebc32cb61a..f76c8432e155 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -22,6 +22,7 @@
 #include "intel_display_core.h"
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
+#include "intel_dsb.h"
 #include "intel_vblank.h"
 
 #define __dev_name_display(display) dev_name((display)->drm->dev)
@@ -681,6 +682,56 @@ TRACE_EVENT(intel_fbc_nuke,
 		      __entry->frame, __entry->scanline)
 );
 
+TRACE_EVENT(intel_dsb_commit,
+	    TP_PROTO(struct intel_crtc *crtc, enum intel_dsb_id dsb_id),
+	    TP_ARGS(crtc, dsb_id),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(u32, dsb_id)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->dsb_id = dsb_id;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, DSB %d, frame=%u, scanline=%u",
+		      __get_str(dev), __entry->pipe_name, __entry->dsb_id,
+		      __entry->frame, __entry->scanline)
+);
+
+TRACE_EVENT(intel_dsb_done,
+	    TP_PROTO(struct intel_crtc *crtc, enum intel_dsb_id dsb_id),
+	    TP_ARGS(crtc, dsb_id),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(char, pipe_name)
+			     __field(u32, dsb_id)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe_name = pipe_name(crtc->pipe);
+			   __entry->dsb_id = dsb_id;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, DSB %d, frame=%u, scanline=%u",
+		      __get_str(dev), __entry->pipe_name, __entry->dsb_id,
+		      __entry->frame, __entry->scanline)
+);
+
 TRACE_EVENT(intel_crtc_vblank_work_start,
 	    TP_PROTO(struct intel_crtc *crtc),
 	    TP_ARGS(crtc),
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ab176cb4e4bd..f1ad3b0630c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -13,6 +13,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
+#include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
 #include "intel_dsb_buffer.h"
@@ -872,6 +873,8 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_head(dsb));
 
+	trace_intel_dsb_commit(crtc, dsb->id);
+
 	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
 			  intel_dsb_tail(dsb));
 }
@@ -1014,6 +1017,8 @@ void intel_dsb_irq_handler(struct intel_display *display,
 		spin_lock(&display->drm->event_lock);
 
 		if (crtc->dsb_event) {
+			trace_intel_dsb_done(crtc, dsb_id);
+
 			/*
 			 * Update vblank counter/timestamp in case it
 			 * hasn't been done yet for this frame.
-- 
2.51.2

