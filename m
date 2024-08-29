Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5823796529B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 00:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7921310E794;
	Thu, 29 Aug 2024 22:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MA2Nvhx4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469D710E793
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 22:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724969039; x=1756505039;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F/VsEPr5TUhmI29RNPz3gd37UnbKPkyO0rwRaKFSLuM=;
 b=MA2Nvhx4zsFyB4VPBkul1+BWh/KP6pkdoQuJMCCrves1g1OGYnzW+cCR
 wLqRyITCp/d181LKp9zXLKGWS2zKAoXkM94WeI/KMA3fJzpXyLcK5OdB9
 H6RydE8lamRwZnfw1oXUV4qfLj9huNXXxpQAbpb4PnZvvZ7p4+CuwlXoR
 pt6nDiZ5mU13u2Pvz21xD0T/uNtxD1uAz9eRUtXyXQBq8TxhiMOhglUMe
 BcHr6NKqNuZUSc2C6LiCJMXq8iRSwg+DbHdxgO0so/ctIm30adRkqrXFJ
 BefkleM2o8ykbtPfL/kY150jRS7ZnHJUP9L8cqMWkZ/e5VlakxSX3ZAJ+ Q==;
X-CSE-ConnectionGUID: NZAdOR/lQimAalm9vuNoHA==
X-CSE-MsgGUID: /IXLy676Svi+0GvDwg2oTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27356226"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27356226"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:48 -0700
X-CSE-ConnectionGUID: WEO9roTrQXWFbfDeYPiisg==
X-CSE-MsgGUID: FHREiHmkS3i81GPyHogFtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="68541487"
Received: from djiang5-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:47 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/display: Cover all possible pipes in TP_printk()
Date: Thu, 29 Aug 2024 19:00:47 -0300
Message-ID: <20240829220106.80449-5-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829220106.80449-1-gustavo.sousa@intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
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

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
 1 file changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 759b985c84a9..2ce66dffdfa5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -30,6 +30,29 @@
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
 
 TRACE_EVENT(intel_pipe_enable,
 	    TP_PROTO(struct intel_crtc *crtc),
@@ -52,11 +75,8 @@ TRACE_EVENT(intel_pipe_enable,
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
@@ -81,11 +101,8 @@ TRACE_EVENT(intel_pipe_disable,
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
@@ -211,11 +228,9 @@ TRACE_EVENT(intel_memory_cxsr,
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
2.46.0

