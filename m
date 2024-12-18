Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D79D9F6C72
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 18:39:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FCB10EC1F;
	Wed, 18 Dec 2024 17:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THYK/sz+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C6910EC1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 17:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734543568; x=1766079568;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lif2WOy/WIH0XRJBwulXxnzNIp+Ps7e9jySEb7K+JJo=;
 b=THYK/sz+iYO+qMrRBfdj0L4pooF5GrnyQGEYTBEaFJFUmB2N/mmJLVVW
 tjbgQ6mCM4Y5vnBoGH/p3ZaRrqwufR1qskX3cwTqmJC8PVv7buLrrHmag
 JV4j/sRUYD8iI7gLa7uxOcxnGhMEyC5YySv1H3ieovQKdWevdXq8rT417
 o+NeLRBo8WrP9Mge/+vADI4a77Dok1i7Bi470H7BAxE9qMwKXctWhfh46
 bXnMn2K5FIf0E4SugTn2XuSq11BgbJsMBr4KxTlmept9hcS3c7KiZl7Ce
 mOQ4DAnRF2zJWs9LEi8lwpDFDlGGM8dLR0PzLcmb7mPijv29lZ2e6WSE4 Q==;
X-CSE-ConnectionGUID: CZUGsTuxQz+na8QOpxPrng==
X-CSE-MsgGUID: GRmcuCwLRIGbDCpb0B7feQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="22619249"
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="22619249"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 09:36:59 -0800
X-CSE-ConnectionGUID: Ois04raGTTGhv57qHeIRbQ==
X-CSE-MsgGUID: n+UJomlOSNun45A/ZGYdFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,245,1728975600"; d="scan'208";a="98165382"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Dec 2024 09:36:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2024 19:36:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Drop the extra "plane" from tracpoints
Date: Wed, 18 Dec 2024 19:36:48 +0200
Message-ID: <20241218173650.19782-3-ville.syrjala@linux.intel.com>
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

Out plane names already include the "plane" part (or
"primary","sprite","cursor" in some cases). Don't duplicate
that in the tracpoints as that leadst to weird stuff like
"plane plane 1A".

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 338b9f7b20b8..6a9963701423 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -397,7 +397,7 @@ TRACE_EVENT(intel_plane_async_flip,
 			   __entry->async_flip = async_flip;
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, async_flip=%s",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, async_flip=%s",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline, str_yes_no(__entry->async_flip))
 );
@@ -426,7 +426,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
@@ -457,7 +457,7 @@ TRACE_EVENT(intel_plane_update_arm,
 			   memcpy(__entry->dst, &plane->base.state->dst, sizeof(__entry->dst));
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
@@ -484,7 +484,7 @@ TRACE_EVENT(intel_plane_disable_arm,
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
@@ -512,7 +512,7 @@ TRACE_EVENT(intel_fbc_activate,
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
@@ -540,7 +540,7 @@ TRACE_EVENT(intel_fbc_deactivate,
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
@@ -568,7 +568,7 @@ TRACE_EVENT(intel_fbc_nuke,
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
-- 
2.45.2

