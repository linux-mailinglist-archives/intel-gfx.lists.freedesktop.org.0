Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC4B9A0BF9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AB510E712;
	Wed, 16 Oct 2024 13:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hxQuM0ur";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EECC10E70F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729086795; x=1760622795;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xoNlPWxYwBIkAreYFbr4lSqLcJYhY/XfUes8bH8jcUI=;
 b=hxQuM0url7IG3b+LN75K0Ms99K7YWIc7i4TWsHMqeT5romlljtiZzZTs
 0RllyXsxu78u2kPlUJtSJ9Tu7C6xbKAQYCMkGTiVEV0kGNaKTBcMFKqvv
 bsuQwT5qWa4rXsJM3MJhikojALvOn9WPJwYfsNuc6QS3ayglYI1OWVB6Z
 H94hGnKPdnfdC4K7hq4qrklRP+2cQw5MesOPfkgSS2GnQSwM1cEuRs8+z
 Jz9iqGlF8giVM1/NIDfNIYjI56scjJCdCJY6tDR2m5K1OcziPl17Oh9fh
 NfR0Pw1LO8O1VXIgkgGtg1ptlU1kZG5SvFEE0cguQ+T6hbYeO4SyHSDi1 w==;
X-CSE-ConnectionGUID: kQ4lUr2RSx+SaWbSCkLVYA==
X-CSE-MsgGUID: qt72TPzdRISuDSAmOvNBpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46008628"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46008628"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:15 -0700
X-CSE-ConnectionGUID: fU0AB5UJQzq+ufwetFVjfQ==
X-CSE-MsgGUID: J+TcxXWuQN6REhXZyuqYvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78124090"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:14 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
Date: Wed, 16 Oct 2024 10:52:31 -0300
Message-ID: <20241016135300.21428-6-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241016135300.21428-1-gustavo.sousa@intel.com>
References: <20241016135300.21428-1-gustavo.sousa@intel.com>
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

Tracepoints that display frame and scanline counters for all pipes were
added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
tracepoints"). At that time, we only had pipes A, B and C. Now that we
can also have pipe D, the TP_printk() calls are missing it.

As a quick and dirty fix for that, let's define two common macros to be
used for the format and values respectively, and also ensure we raise a
build bug if more pipes are added to enum pipe.

In the future, we should probably have a way of printing information for
available pipes only.

Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index eec9aeddad96..9bd8f1e505b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -31,6 +31,29 @@
 #define _TRACE_PIPE_A	0
 #define _TRACE_PIPE_B	1
 #define _TRACE_PIPE_C	2
+#define _TRACE_PIPE_D	3
+
+/*
+ * FIXME: Several TP_printk() calls below display frame and scanline numbers for
+ * all possible pipes (regardless of whether they are available) and that is
+ * done with a constant format string. A better approach would be to generate
+ * that info dynamically based on available pipes, but, while we do not have
+ * that implemented yet, let's assert that the constant format string indeed
+ * covers all possible pipes.
+ */
+static_assert(I915_MAX_PIPES - 1 == _TRACE_PIPE_D);
+
+#define _PIPES_FRAME_AND_SCANLINE_FMT		\
+	"pipe A: frame=%u, scanline=%u"		\
+	", pipe B: frame=%u, scanline=%u"	\
+	", pipe C: frame=%u, scanline=%u"	\
+	", pipe D: frame=%u, scanline=%u"
+
+#define _PIPES_FRAME_AND_SCANLINE_VALUES					\
+	__entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]		\
+	, __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B]	\
+	, __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C]	\
+	, __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_D]
 
 /*
  * Paranoid sanity check that at least the enumeration starts at the
@@ -63,11 +86,8 @@ TRACE_EVENT(intel_pipe_enable,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   ),
 
-	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      __get_str(dev), __entry->pipe_name,
-		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
-		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
-		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
+	    TP_printk("dev %s, pipe %c enable, " _PIPES_FRAME_AND_SCANLINE_FMT,
+		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
 );
 
 TRACE_EVENT(intel_pipe_disable,
@@ -96,11 +116,8 @@ TRACE_EVENT(intel_pipe_disable,
 			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   ),
 
-	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      __get_str(dev), __entry->pipe_name,
-		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
-		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
-		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
+	    TP_printk("dev %s, pipe %c disable, " _PIPES_FRAME_AND_SCANLINE_FMT,
+		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
 );
 
 TRACE_EVENT(intel_crtc_flip_done,
@@ -230,11 +247,9 @@ TRACE_EVENT(intel_memory_cxsr,
 			   __entry->new = new;
 			   ),
 
-	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
+	    TP_printk("dev %s, cxsr %s->%s, " _PIPES_FRAME_AND_SCANLINE_FMT,
 		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
-		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
-		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
-		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
+		      _PIPES_FRAME_AND_SCANLINE_VALUES)
 );
 
 TRACE_EVENT(g4x_wm,
-- 
2.46.1

