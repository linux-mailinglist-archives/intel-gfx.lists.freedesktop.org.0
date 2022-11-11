Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AF9625A7D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372B410E170;
	Fri, 11 Nov 2022 12:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8137210E167
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668169886; x=1699705886;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PJ3QkKoVtC+alfvBwop7Aucl4YB4uyO9mL/h2P67TUc=;
 b=SCnAo5kpQjz/bcFvXE8sNp35m5EVKfNHE0wBhh8glEwxrtJRIabl9AKJ
 e7X3exJ3f0eOVdldEbiwb/z+dXpPItTKjzRzZCnW7vIaZ/BD08dMwqzkb
 gt8poYS23lewZz11crw/4a3p18Hgf4HVspx4zKSQBmHZVoR33pqo98Sjc
 wwNdocyZu6dfbkQpMfVzZi8SSBSzCM2NDgXYVW3N1U6ettkQ+MnpWrRr7
 /FRmCEM++zUar8n7kwIfkxzkWWMWYjKC+Ognvq/Y8MhnO22ylcoLpUhpK
 n2XcBurFzd1BnzbxiFIMf7EaqKFbck7cI2yFlAb0AzPAjwrNd7ay11Wc7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883334"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883334"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:31:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="632023095"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632023095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 04:31:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 14:31:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 14:31:17 +0200
Message-Id: <20221111123120.7759-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Pass intel_plane to plane
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

Pass intel_plane rather than drm_plane to the plane tracepoints.
Matches what we do eg. with the fbc tracepoints. Using the same
type for everything will help with digging out the device name
from the plane in the future.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  6 ++---
 .../drm/i915/display/intel_display_trace.h    | 26 +++++++++----------
 2 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index bcf0239b9533..10e1fc9d0698 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -757,7 +757,7 @@ void intel_plane_update_noarm(struct intel_plane *plane,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_plane_update_noarm(&plane->base, crtc);
+	trace_intel_plane_update_noarm(plane, crtc);
 
 	if (plane->update_noarm)
 		plane->update_noarm(plane, crtc_state, plane_state);
@@ -769,7 +769,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_plane_update_arm(&plane->base, crtc);
+	trace_intel_plane_update_arm(plane, crtc);
 
 	if (crtc_state->do_async_flip && plane->async_flip)
 		plane->async_flip(plane, crtc_state, plane_state, true);
@@ -782,7 +782,7 @@ void intel_plane_disable_arm(struct intel_plane *plane,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_plane_disable_arm(&plane->base, crtc);
+	trace_intel_plane_disable_arm(plane, crtc);
 	plane->disable_arm(plane, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 2dd5a4b7f5d8..1a3955bcb77f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -284,7 +284,7 @@ TRACE_EVENT(vlv_fifo_size,
 );
 
 TRACE_EVENT(intel_plane_update_noarm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
@@ -293,16 +293,16 @@ TRACE_EVENT(intel_plane_update_noarm,
 			     __field(u32, scanline)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
-			     __string(name, plane->name)
+			     __string(name, plane->base.name)
 			     ),
 
 	    TP_fast_assign(
-			   __assign_str(name, plane->name);
+			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
+			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
 	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
@@ -313,7 +313,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 );
 
 TRACE_EVENT(intel_plane_update_arm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
@@ -322,16 +322,16 @@ TRACE_EVENT(intel_plane_update_arm,
 			     __field(u32, scanline)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
-			     __string(name, plane->name)
+			     __string(name, plane->base.name)
 			     ),
 
 	    TP_fast_assign(
-			   __assign_str(name, plane->name);
+			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->state->dst, sizeof(__entry->dst));
+			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
 	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
@@ -342,18 +342,18 @@ TRACE_EVENT(intel_plane_update_arm,
 );
 
 TRACE_EVENT(intel_plane_disable_arm,
-	    TP_PROTO(struct drm_plane *plane, struct intel_crtc *crtc),
+	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
 	    TP_ARGS(plane, crtc),
 
 	    TP_STRUCT__entry(
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
-			     __string(name, plane->name)
+			     __string(name, plane->base.name)
 			     ),
 
 	    TP_fast_assign(
-			   __assign_str(name, plane->name);
+			   __assign_str(name, plane->base.name);
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-- 
2.37.4

