Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D799F6C75
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 18:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 014D810EC2B;
	Wed, 18 Dec 2024 17:39:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IgK736Jl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CD810EC2B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 17:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734543583; x=1766079583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aAYwX3nxgLBvlI7XHDtpfaoGLzeF56sUAscEE2nj4RY=;
 b=IgK736JloUyNOJKbiE5YXmC9TRUxLQRu5oyEVcrehuZJQ9kfXITltLVW
 wAxllnZKs4Gajccwy/HCdENS1PbVBQbb7kBZlIC5P1GWctdrNwxnspIbw
 trHcut1zPOOixFsNEYKcyzUXQiqE60PVuWnmijG7aNGDSlXWbmJymP1z5
 SWDb+DefTq3V2tOeyDHjz8gvesoLrwwrwm1huEA6607IU+Cos1GrbCLFH
 1PJooEJa1UZp02q2RU3xO7U547a0qL0t0meDNmTPzsm55UpBfFT9B1exT
 ZUxclhFujT9EcMQx/EmRFOe2Duxq4k1uoGgYt1xCF5JBFq3dy2XHsiZzN g==;
X-CSE-ConnectionGUID: OrraDCNwSrmWd7/acReraQ==
X-CSE-MsgGUID: LzcOTArzRrmeenozkO6T9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22619291"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22619291"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 09:37:02 -0800
X-CSE-ConnectionGUID: PD+UhuDsQ1qkwIw6cELtwQ==
X-CSE-MsgGUID: GjW7G5jETP+4ysJ2yG2AyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98165397"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Dec 2024 09:37:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2024 19:36:59 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915: Pass the plane state explicitly to tracpoints
Date: Wed, 18 Dec 2024 19:36:49 +0200
Message-ID: <20241218173650.19782-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
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

Using the plane->state pointer in the tracepoints is incorrect
as technically a different state could already have been swapped
in (though in reality that is currently prevented by the stall
hacks in the commit machinery). But let's not leave such footguns
lying around when we can just pass in the correct state by hand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  4 +--
 .../drm/i915/display/intel_display_trace.h    | 25 ++++++++++---------
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 612e9b0ec14a..c6af77491069 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -767,7 +767,7 @@ void intel_plane_update_noarm(struct intel_dsb *dsb,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_plane_update_noarm(plane, crtc);
+	trace_intel_plane_update_noarm(plane_state, crtc);
 
 	if (plane->update_noarm)
 		plane->update_noarm(dsb, plane, crtc_state, plane_state);
@@ -797,7 +797,7 @@ void intel_plane_update_arm(struct intel_dsb *dsb,
 		return;
 	}
 
-	trace_intel_plane_update_arm(plane, crtc);
+	trace_intel_plane_update_arm(plane_state, crtc);
 	plane->update_arm(dsb, plane, crtc_state, plane_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 6a9963701423..f63ce022e2d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -21,6 +21,7 @@
 #include "intel_vblank.h"
 
 #define __dev_name_display(display) dev_name((display)->drm->dev)
+#define __dev_name_drm(obj) dev_name((obj)->dev->dev)
 #define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
 
 /*
@@ -403,17 +404,17 @@ TRACE_EVENT(intel_plane_async_flip,
 );
 
 TRACE_EVENT(intel_plane_update_noarm,
-	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
-	    TP_ARGS(plane, crtc),
+	    TP_PROTO(const struct intel_plane_state *plane_state, struct intel_crtc *crtc),
+	    TP_ARGS(plane_state, crtc),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_kms(plane))
+			     __string(dev, __dev_name_drm(plane_state->uapi.plane))
 			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
-			     __string(name, plane->base.name)
+			     __string(name, plane_state->uapi.plane->name)
 			     ),
 
 	    TP_fast_assign(
@@ -422,8 +423,8 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
+			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane_state->uapi.dst, sizeof(__entry->dst));
 			   ),
 
 	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
@@ -434,17 +435,17 @@ TRACE_EVENT(intel_plane_update_noarm,
 );
 
 TRACE_EVENT(intel_plane_update_arm,
-	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc),
-	    TP_ARGS(plane, crtc),
+	    TP_PROTO(const struct intel_plane_state *plane_state, struct intel_crtc *crtc),
+	    TP_ARGS(plane_state, crtc),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_kms(plane))
+			     __string(dev, __dev_name_drm(plane_state->uapi.plane))
 			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
-			     __string(name, plane->base.name)
+			     __string(name, plane_state->uapi.plane->name)
 			     ),
 
 	    TP_fast_assign(
@@ -453,8 +454,8 @@ TRACE_EVENT(intel_plane_update_arm,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
-			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
-			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
+			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
+			   memcpy(__entry->dst, &plane_state->uapi.dst, sizeof(__entry->dst));
 			   ),
 
 	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-- 
2.45.2

