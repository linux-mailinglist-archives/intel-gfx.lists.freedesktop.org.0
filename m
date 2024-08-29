Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A5D96529D
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 00:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F6510E797;
	Thu, 29 Aug 2024 22:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="al+v5gVY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34C510E766
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 22:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724969038; x=1756505038;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+FX3SaOnyBnwZfaIejpKnx9BcjJNcW0bkz/n+wbneeg=;
 b=al+v5gVYFsw2JOpZAVmhbLyT6WKsTl9+lQFnoxivsA6aLNNTbdvVBwKc
 cEw6kYryBb7vLWJQ3MWHYyXxY+/xJv8MSn13YXpgrbRMvUSBTE+CPSj9Q
 9tI0mq6fUFO62IUcd6PGzxZwLTrwJmBB4gWpBEJA76hN/7ok/3xWL2xzc
 F2JviaZpMNEqlcJTmhS0D8yHM92aisPxpEU+r/g0Geai76X3pnCqw/bpF
 zyvlksSMAmZ2uINjYTBIHH+mttPT5axxIalZC9ucSNK1YBzhfiPmyepAU
 rgm/7GCSypx0jvLNFBa7zLN7rnWQIeNzs5hVBdDXN4shRNqepeYhna1uW Q==;
X-CSE-ConnectionGUID: +qLoJzjjSP67EyH7c5l8pQ==
X-CSE-MsgGUID: w09QTwuXQHKpKywc8qYMZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27356221"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27356221"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:47 -0700
X-CSE-ConnectionGUID: oC9+6GeMT9K6KPABs3GIBg==
X-CSE-MsgGUID: S2QBnhDIRAOH5Gimey94VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="68541479"
Received: from djiang5-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:46 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/display: Do not use ids from enum pipe in
 TP_printk()
Date: Thu, 29 Aug 2024 19:00:46 -0300
Message-ID: <20240829220106.80449-4-gustavo.sousa@intel.com>
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

Because much of kernel tracepoints is implemented at the C preprocessor
level, C identifiers used in TP_printk() are saved verbatim in the event
format, even when they represent compile-time constant values.

As an example, we can look at the format for the intel_pipe_enable
event:

    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_enable/format | grep '^print fmt'
    print fmt: "dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u", __get_str(dev), REC->pipe_name, REC->frame[PIPE_A], REC->scanline[PIPE_A], REC->frame[PIPE_B], REC->scanline[PIPE_B], REC->frame[PIPE_C], REC->scanline[PIPE_C]

We see that PIPE_A, PIPE_B and PIPE_C are pasted directly in the format.
Because tools that interact with kernel tracepoints don't know about
those ids, they'll endup failing to parse the format or produce
corrupted output.

For example, we can see below that trace-cmd repeats PIPE_A's
frame/scanline counts for all pipes (probably because it evaluates
unknown ids as zero):

   $ trace-cmd report -F intel_pipe_enable | tail -n5
        testdisplay-8616  [000] 22048.276758: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=861, scanline=480, pipe B: frame=861, scanline=480, pipe C: frame=861, scanline=480
        testdisplay-8616  [001] 22048.490287: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=867, scanline=480, pipe B: frame=867, scanline=480, pipe C: frame=867, scanline=480
        testdisplay-8616  [003] 22048.700181: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=872, scanline=400, pipe B: frame=872, scanline=400, pipe C: frame=872, scanline=400
        testdisplay-8616  [002] 22049.054220: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=881, scanline=2170, pipe B: frame=881, scanline=2170, pipe C: frame=881, scanline=2170
        testdisplay-8616  [002] 22049.166851: intel_pipe_enable:    dev 0000:00:02.0, pipe B enable, pipe A: frame=887, scanline=1632, pipe B: frame=887, scanline=1632, pipe C: frame=887, scanline=1632

, while in fact we have different values for each pipe, which can be
confirmed with the raw view of the events:

    $ trace-cmd report -R -F intel_pipe_enable | tail -n5
         testdisplay-8616  [000] 22048.276758: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[5d, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
         testdisplay-8616  [001] 22048.490287: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[63, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
         testdisplay-8616  [003] 22048.700181: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[68, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[90, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
         testdisplay-8616  [002] 22049.054220: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[71, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[7a, 08, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
         testdisplay-8616  [002] 22049.166851: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[77, 03, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[60, 06, 00, 00, 39, 04, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=B

To fix that, we need a fix that looks more like a hack: use macros that
result to integer constants instead of enum pipe values. This fixes the
issue, but could break if, for whatever unlikely reason, the underlying
values in the enum are changed.

In the future, we should find a better way to handle this, but for now,
the hack took care of the job:

    $ trace-cmd report -F intel_pipe_enable | tail -n5
         testdisplay-9224  [003] 24324.455375: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1103, scanline=480, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
         testdisplay-9224  [002] 24324.669845: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1109, scanline=480, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
         testdisplay-9224  [003] 24324.900105: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1115, scanline=31, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
         testdisplay-9224  [002] 24325.256408: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1124, scanline=2171, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
         testdisplay-9224  [003] 24325.380789: intel_pipe_enable:    dev 0000:00:02.0, pipe B enable, pipe A: frame=1131, scanline=979, pipe B: frame=1, scanline=1082, pipe C: frame=0, scanline=0

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 27 ++++++++++++-------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index ec2ab6fb743d..759b985c84a9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -22,6 +22,15 @@
 #define __dev_name_i915(i915) dev_name((i915)->drm.dev)
 #define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
 
+/*
+ * Using identifiers from enum pipe in TP_printk() will confuse tools that
+ * parse /sys/kernel/debug/tracing/{xe,i915}/<event>/format. So we use CPP
+ * macros instead.
+ */
+#define _TRACE_PIPE_A	0
+#define _TRACE_PIPE_B	1
+#define _TRACE_PIPE_C	2
+
 TRACE_EVENT(intel_pipe_enable,
 	    TP_PROTO(struct intel_crtc *crtc),
 	    TP_ARGS(crtc),
@@ -45,9 +54,9 @@ TRACE_EVENT(intel_pipe_enable,
 
 	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name,
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
+		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
+		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
 );
 
 TRACE_EVENT(intel_pipe_disable,
@@ -74,9 +83,9 @@ TRACE_EVENT(intel_pipe_disable,
 
 	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
 		      __get_str(dev), __entry->pipe_name,
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
+		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
+		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
 );
 
 TRACE_EVENT(intel_crtc_flip_done,
@@ -204,9 +213,9 @@ TRACE_EVENT(intel_memory_cxsr,
 
 	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
 		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
-		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
-		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
-		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
+		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
+		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
+		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
 );
 
 TRACE_EVENT(g4x_wm,
-- 
2.46.0

