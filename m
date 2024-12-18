Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E354F9F6C77
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 18:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4E510EC37;
	Wed, 18 Dec 2024 17:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdiXz6rU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E14810EC37
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 17:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734543595; x=1766079595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=e2TB05ZH44548XkgvrQ34zvyOn98XMIO30mE0abuHnI=;
 b=PdiXz6rUbHH6j838MwnYp8jbhtC+XwqImrjc0Au0R42b9yPa3w87BMH6
 yze+kPD49etpuJBQNwKJ0mKBpJgSkyZANbVQoQQ4g7B0SoTbGzrf3nEz8
 lOLekkJxHU15dM0djQgCigemL1z2D3vmyX/3/wa2/qAZODSh7qH65nnYE
 lqjbXH37/yQk1/XURBOx/8kBk+4Xx+QVQ6vINGbrtxjXhrEEwcXbJuklX
 qLcDEYc0RWcsUTn+GQ8bxg0blrfIYZCvZxzYb8WFszGLcKf+Zcm9MCCM0
 KDMoJjIx2IV5sKVf7P17P9iiXO6q2MJEMjKWvUMLlblCuW4ztQ48nZK8+ g==;
X-CSE-ConnectionGUID: 2/VEHxzHS9OEkWYA6rsVoA==
X-CSE-MsgGUID: RQP7RAHwQ/uZFpPQvykcCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22619335"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22619335"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 09:37:05 -0800
X-CSE-ConnectionGUID: Lv0WD79+TnudORLD8ZYEqQ==
X-CSE-MsgGUID: DVWtTytRTA6CTBObmA1ukg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98165407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Dec 2024 09:37:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2024 19:37:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915: Include pixel format in plane tracpoints
Date: Wed, 18 Dec 2024 19:36:50 +0200
Message-ID: <20241218173650.19782-5-ville.syrjala@linux.intel.com>
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

Make debugging a bit easier by including the pixel format in
the plane tracpoints.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index f63ce022e2d4..bd07da0743f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -412,6 +412,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
+			     __field(u32, format)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
 			     __string(name, plane_state->uapi.plane->name)
@@ -423,13 +424,14 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->format = plane_state->hw.fb->format->format;
 			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
 			   memcpy(__entry->dst, &plane_state->uapi.dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
-		      __entry->frame, __entry->scanline,
+		      __entry->frame, __entry->scanline, &__entry->format,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
 );
@@ -443,6 +445,7 @@ TRACE_EVENT(intel_plane_update_arm,
 			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
+			     __field(u32, format)
 			     __array(int, src, 4)
 			     __array(int, dst, 4)
 			     __string(name, plane_state->uapi.plane->name)
@@ -454,13 +457,14 @@ TRACE_EVENT(intel_plane_update_arm,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   __entry->format = plane_state->hw.fb->format->format;
 			   memcpy(__entry->src, &plane_state->uapi.src, sizeof(__entry->src));
 			   memcpy(__entry->dst, &plane_state->uapi.dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
-		      __entry->frame, __entry->scanline,
+		      __entry->frame, __entry->scanline, &__entry->format,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
 );
-- 
2.45.2

