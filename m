Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F660A785A0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 02:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDAF10E699;
	Wed,  2 Apr 2025 00:22:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jplzjt6a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA7110E189;
 Wed,  2 Apr 2025 00:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743553361; x=1775089361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VqjTzIbFgz7QBudmGxszaRRNhQakhPnPBuBhL+2+PSE=;
 b=Jplzjt6a1JGh54V4k0zQaRczOYWbTrt8OQBleNRipewTF+Wo70w0sTuM
 w9dTT3kyRp6f7uR0hxT+7u9P5m3DIR/hpRxUPmcxDT9pTnnc+cnBH50Vx
 R0krGqzqK1Wbn9nUBLEPVkxSiGWuie34Ph+oN5r70B3Mu0R8iDaW19hE8
 xu5PW2jakubAQMurppleGPCpA9/LZc9OXGlqXQyW/0rCxecy0Lu0VDFzX
 05XpMeMJCbfVganpwM0Z7sml8bVPKPF3QPpvV0+CU3d651Zi1cNQdRDe8
 Ql5yoCBI2PkWD2WLqybSArlR9+MubmlT7tXKSoUwcCAVCtaC1MgZtygvi w==;
X-CSE-ConnectionGUID: r3IDU7MVTZiFbpqyIEhveA==
X-CSE-MsgGUID: /+3BORVISRKHqx75wB8oCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="45021973"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="45021973"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 17:22:41 -0700
X-CSE-ConnectionGUID: IYlAXcKQR2C1aiiS6unCkw==
X-CSE-MsgGUID: wwki6sfIRdqxKJrNPZAgiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131729607"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 17:22:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Apr 2025 03:22:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 9/9] drm/i915: Include plane ctl/surf registers in the plane
 update_arm() tracepoint
Date: Wed,  2 Apr 2025 03:22:09 +0300
Message-ID: <20250402002209.24987-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
References: <20250402002209.24987-1-ville.syrjala@linux.intel.com>
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

The plane fault tracepoints report the plane control and
surface register values. In order to correlate those against the
plane update tracepoints it might be helpful to also include that
information in the plane update tracepoints as well.

The one caveat here is that the precomputed ctl/surf values
that we include the tracepoint do not include the async flip
bit(s) (as those are handled in a more dynamic fashion), whereas
the ones read from the hardware in the plane fault tracepoint
include everything.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
 .../drm/i915/display/intel_display_trace.h    | 28 +++++++++++++------
 2 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 264a50b29c16..24bb7ddbb06a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -834,7 +834,7 @@ void intel_plane_async_flip(struct intel_dsb *dsb,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	trace_intel_plane_async_flip(plane, crtc, async_flip);
+	trace_intel_plane_async_flip(plane_state, crtc, async_flip);
 	plane->async_flip(dsb, plane, crtc_state, plane_state, async_flip);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index f0763d754eb7..91980567113d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -381,16 +381,19 @@ TRACE_EVENT(vlv_fifo_size,
 );
 
 TRACE_EVENT(intel_plane_async_flip,
-	    TP_PROTO(struct intel_plane *plane, struct intel_crtc *crtc, bool async_flip),
-	    TP_ARGS(plane, crtc, async_flip),
+	    TP_PROTO(const struct intel_plane_state *plane_state,
+		     struct intel_crtc *crtc, bool async_flip),
+	    TP_ARGS(plane_state, crtc, async_flip),
 
 	    TP_STRUCT__entry(
-			     __string(dev, __dev_name_kms(plane))
+			     __string(dev, __dev_name_drm(plane_state->uapi.plane))
 			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(bool, async_flip)
-			     __string(name, plane->base.name)
+			     __string(name, plane_state->uapi.plane->name)
+			     __field(u32, ctl)
+			     __field(u32, surf)
 			     ),
 
 	    TP_fast_assign(
@@ -400,11 +403,15 @@ TRACE_EVENT(intel_plane_async_flip,
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->async_flip = async_flip;
+			   __entry->ctl = plane_state->ctl;
+			   __entry->surf = plane_state->surf;
 			   ),
 
-	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, async_flip=%s",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, async_flip=%s, ctl=0x%x, surf=0x%x",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
-		      __entry->frame, __entry->scanline, str_yes_no(__entry->async_flip))
+		      __entry->frame, __entry->scanline,
+		      str_yes_no(__entry->async_flip),
+		      __entry->ctl, __entry->surf)
 );
 
 TRACE_EVENT(intel_plane_update_noarm,
@@ -453,6 +460,8 @@ TRACE_EVENT(intel_plane_update_arm,
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
 			     __string(name, plane_state->uapi.plane->name)
+			     __field(u32, ctl)
+			     __field(u32, surf)
 			     ),
 
 	    TP_fast_assign(
@@ -464,13 +473,16 @@ TRACE_EVENT(intel_plane_update_arm,
 			   __entry->format = plane_state->hw.fb->format->format;
 			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
 			   memcpy(__entry->dst, &plane_state->uapi.dst, sizeof(__entry->dst));
+			   __entry->ctl = plane_state->ctl;
+			   __entry->surf = plane_state->surf;
 			   ),
 
-	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT " ctl=0x%x, surf=0x%x",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline, &__entry->format,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
-		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
+		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst),
+		      __entry->ctl, __entry->surf)
 );
 
 TRACE_EVENT(intel_plane_disable_arm,
-- 
2.45.3

