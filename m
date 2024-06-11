Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C3F903D74
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C4110E636;
	Tue, 11 Jun 2024 13:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HP3hPsGl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9A010E636
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112835; x=1749648835;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WQYkclLhKZC0ApA5hx8UDZd7OgGJ470In1k9LHsB8jo=;
 b=HP3hPsGlGZhD6GSvwpvYiW1Hox6HxlTIaCs51bAUHgOPJEEne/k3Fomf
 bryKPTZ2JIghoZh7/sJReA0gte1K0Ks+40+xDRFqImX7jF/OAwCu4nHKp
 yILfXm0SLrfi0nw1FlhIKMrUNWB7o/uD1ZV1BJZOm7VfCslk/wGmuMpXl
 3Dle+SNV2oTEtDUCoS2n9n5gsysQ488BvvcWx1Mk83DVdOHgyHVKSzQQ1
 tlczjb7iLIaV9T+gVlMCu0yBmmS5HkFDu9Z3Y8Lz+UjUiPso5YHTjpqXM
 wHYZbZyjHrXG5It/UcCaW6JnZ8T71MgbOfFSB1CBELPx4L1rYAlQ4O5P6 A==;
X-CSE-ConnectionGUID: EjQ1CYMhTmypBf2VXKmMMg==
X-CSE-MsgGUID: Z2+3/JThR4q7Ww1oqEZtDg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018235"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018235"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:33:55 -0700
X-CSE-ConnectionGUID: H8WAZLvDRTO8ukVad3wW4w==
X-CSE-MsgGUID: q9lDGWZBS4uM9ktQY5hlaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421375"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915: Add flip done tracepoint
Date: Tue, 11 Jun 2024 16:33:36 +0300
Message-ID: <20240611133344.30673-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

Add a tracepoint to see exactly when async flips complete.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  1 +
 .../drm/i915/display/intel_display_trace.h    | 23 +++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 82e1369e5d76..cf886b9edeb8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -346,6 +346,7 @@ static void flip_done_handler(struct drm_i915_private *i915,
 	spin_lock(&i915->drm.event_lock);
 
 	if (crtc->flip_done_event) {
+		trace_intel_crtc_flip_done(crtc);
 		drm_crtc_send_vblank_event(&crtc->base, crtc->flip_done_event);
 		crtc->flip_done_event = NULL;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 34c223ace5ea..c734ef1fba3c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -78,6 +78,29 @@ TRACE_EVENT(intel_pipe_disable,
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
 );
 
+TRACE_EVENT(intel_crtc_flip_done,
+	    TP_PROTO(struct intel_crtc *crtc),
+	    TP_ARGS(crtc),
+
+	    TP_STRUCT__entry(
+			     __string(dev, __dev_name_kms(crtc))
+			     __field(enum pipe, pipe)
+			     __field(u32, frame)
+			     __field(u32, scanline)
+			     ),
+
+	    TP_fast_assign(
+			   __assign_str(dev);
+			   __entry->pipe = crtc->pipe;
+			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
+			   __entry->scanline = intel_get_crtc_scanline(crtc);
+			   ),
+
+	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
+		      __get_str(dev), pipe_name(__entry->pipe),
+		      __entry->frame, __entry->scanline)
+);
+
 TRACE_EVENT(intel_pipe_crc,
 	    TP_PROTO(struct intel_crtc *crtc, const u32 *crcs),
 	    TP_ARGS(crtc, crcs),
-- 
2.44.2

