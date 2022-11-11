Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED5625A7F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A9710E18B;
	Fri, 11 Nov 2022 12:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE3F10E170
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668169889; x=1699705889;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AWBj6SldDNOSJUJuaZX+3uLv5396cAW1IAX3dFfiAso=;
 b=i7zzBAJCKt/uNG4RPmS4JPQbTNC5uueaTq+OnR7XsnJLZRK6J8ppSUXu
 rvNGUjfDwVP6p3KAauJUaQSrGruOzsE6TMOP47AS8xTi9LbMx6nzseYpJ
 khs37e24dE/GAI2z9+69hkbn1lfJ5GUhyV4YOBjOsOtJOfJ1o1ZyTLo1F
 WMRO5ilOY1dnft3Yv/PHP1Ut2oeBEjmq0uH1eWD5D4tF2LjsEyFO+18fI
 hKj7Yx0KSWY9eha2wjGQY4YELe4qnsD7dYZLYMbwnEQ15faVKcSUJV5j0
 HAuRLLvSxnz8DonOWIlJmQ3Q9NNRxP0LSrGqY61eYcIDJWW74xgNRCvwL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883346"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883346"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:31:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="632023100"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632023100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 04:31:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 14:31:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 14:31:18 +0200
Message-Id: <20221111123120.7759-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Print plane name in fbc
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

Print the name of the plane in the fbc tracepoints. As the
pipe<->plane assignment can vary on old hw it's probably
more helpful to see both the plane and the pipe names together.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 21 +++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 1a3955bcb77f..096168ae8e2a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -369,6 +369,7 @@ TRACE_EVENT(intel_fbc_activate,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -377,13 +378,15 @@ TRACE_EVENT(intel_fbc_activate,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_fbc_deactivate,
@@ -391,6 +394,7 @@ TRACE_EVENT(intel_fbc_deactivate,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -399,13 +403,15 @@ TRACE_EVENT(intel_fbc_deactivate,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_fbc_nuke,
@@ -413,6 +419,7 @@ TRACE_EVENT(intel_fbc_nuke,
 	    TP_ARGS(plane),
 
 	    TP_STRUCT__entry(
+			     __string(name, plane->base.name)
 			     __field(enum pipe, pipe)
 			     __field(u32, frame)
 			     __field(u32, scanline)
@@ -421,13 +428,15 @@ TRACE_EVENT(intel_fbc_nuke,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
 									 plane->pipe);
+			   __assign_str(name, plane->base.name)
 			   __entry->pipe = crtc->pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
-	    TP_printk("pipe %c, frame=%u, scanline=%u",
-		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
+	    TP_printk("pipe %c, plane %s, frame=%u, scanline=%u",
+		      pipe_name(__entry->pipe), __get_str(name),
+		      __entry->frame, __entry->scanline)
 );
 
 TRACE_EVENT(intel_crtc_vblank_work_start,
-- 
2.37.4

