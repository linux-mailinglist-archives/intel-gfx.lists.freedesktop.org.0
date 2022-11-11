Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FA0625A7E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 13:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D0110E17C;
	Fri, 11 Nov 2022 12:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1D910E17C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 12:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668169892; x=1699705892;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lc7AxmCx4LhFTt9Mxg0RRDW0Y35ul2wDSX79tGbW3gQ=;
 b=FZ3xqtJGvuXdp5nCFXJWS/+qT3H15Go9q3ewrPUGd5ujOA+QFLpYdnGh
 a5YQGcTHgjo5SnNOhFaptDGGHGRXCXy1GfVGaOVToJJ6K+pnkoKMbUyBb
 ueZkWN/2rrXzqtzz9A0Ba6w7BoT8/a/ZeDxnn5R2gP65eQvpMg3ENDmVn
 KPJRnKUfpJD09EyACBDakQjpj/EgqXtr7bnboIWNlxL/I4726FHPwyC6d
 jIw/2rGFOed26fh0295ePLWTqt2bMeH2W+SbDzH82sQDMzqVFvUNlIHTA
 MDvLnmQ4oP4LJBewXETJgFfxPTMgSqA1JliOw3EKTMaJ3Q8MPIt8oKVUh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397883356"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="397883356"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 04:31:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="632023109"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="632023109"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 11 Nov 2022 04:31:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Nov 2022 14:31:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Nov 2022 14:31:19 +0200
Message-Id: <20221111123120.7759-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Pass i915 to frontbuffer
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

Pass the device to the frontbuffer tracpoints. Will be used
later to include the device name in the tracpoints.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_frontbuffer.c   |  4 ++--
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 096168ae8e2a..7ba1c0c22a4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -553,8 +553,9 @@ TRACE_EVENT(intel_pipe_update_end,
 );
 
 TRACE_EVENT(intel_frontbuffer_invalidate,
-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(frontbuffer_bits, origin),
+	    TP_PROTO(struct drm_i915_private *i915,
+		     unsigned int frontbuffer_bits, unsigned int origin),
+	    TP_ARGS(i915, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
 			     __field(unsigned int, frontbuffer_bits)
@@ -571,8 +572,9 @@ TRACE_EVENT(intel_frontbuffer_invalidate,
 );
 
 TRACE_EVENT(intel_frontbuffer_flush,
-	    TP_PROTO(unsigned int frontbuffer_bits, unsigned int origin),
-	    TP_ARGS(frontbuffer_bits, origin),
+	    TP_PROTO(struct drm_i915_private *i915,
+		     unsigned int frontbuffer_bits, unsigned int origin),
+	    TP_ARGS(i915, frontbuffer_bits, origin),
 
 	    TP_STRUCT__entry(
 			     __field(unsigned int, frontbuffer_bits)
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d80e3e8a9b01..17a7aa8b28c2 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -88,7 +88,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	if (!frontbuffer_bits)
 		return;
 
-	trace_intel_frontbuffer_flush(frontbuffer_bits, origin);
+	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
 
 	might_sleep();
 	intel_drrs_flush(i915, frontbuffer_bits);
@@ -176,7 +176,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 		spin_unlock(&i915->display.fb_tracking.lock);
 	}
 
-	trace_intel_frontbuffer_invalidate(frontbuffer_bits, origin);
+	trace_intel_frontbuffer_invalidate(i915, frontbuffer_bits, origin);
 
 	might_sleep();
 	intel_psr_invalidate(i915, frontbuffer_bits, origin);
-- 
2.37.4

