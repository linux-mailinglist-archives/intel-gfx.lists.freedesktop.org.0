Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2339A0BF8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1895F10E713;
	Wed, 16 Oct 2024 13:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L2xgGFdX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373F310E70F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729086794; x=1760622794;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rBoqyKzbFTvFHPXIxjGrrmumTIuzCqH5EYYNMZHb/3Q=;
 b=L2xgGFdX8CuiVRsoQEeXVz2lVHhMCTMQ2g4OOSYF39uTnPPRgx7p9QhS
 Z/9243043cjy+gR7gOYVU/6oaHk+mQfSyv7HynmwX4YmepLlJ24Rc/DT8
 WXXkZZsN+u7k/KtqkR9wMbSNIuPRny68P3Z4YB21uLIL9uhRc+l0VYW+D
 PoaWHKNPLW8yoUfWHsuB6WqbVClcGLKCg/pHptscxavvCecZvAPnc6kkE
 iISD9ctyUQ2gHV2aiyUMwktOE05kPbxBCQQZTOaGq1FBVy1MkQcF61LSh
 a2E4cJ77pJX3ENDq/jk3jWdT4f92eXjE+ht2xnlLdoZYr5IHdoOIOsqwR g==;
X-CSE-ConnectionGUID: sg1wUpjLTkyqpO+87Sz28w==
X-CSE-MsgGUID: jl1En9bPQGelTnqrEXNwAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46008627"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46008627"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:14 -0700
X-CSE-ConnectionGUID: mYKZbvMkRoWBvKpYluJqig==
X-CSE-MsgGUID: e0FbkOSIRXSX4mE9fxttvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78124089"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:13 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 4/5] drm/i915/display: Do not use ids from enum pipe in
 TP_printk()
Date: Wed, 16 Oct 2024 10:52:30 -0300
Message-ID: <20241016135300.21428-5-gustavo.sousa@intel.com>
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

v2:
  - Statically assert that PIPE_A == _TRACE_PIPE_A. (MattR)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 33 ++++++++++++++-----
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 717c144e9a65..eec9aeddad96 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -23,6 +23,21 @@
 #define __dev_name_display(display) dev_name((display)->drm->dev)
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
+/*
+ * Paranoid sanity check that at least the enumeration starts at the
+ * same value as _TRACE_PIPE_A.
+ */
+static_assert(PIPE_A == _TRACE_PIPE_A);
+
 TRACE_EVENT(intel_pipe_enable,
 	    TP_PROTO(struct intel_crtc *crtc),
 	    TP_ARGS(crtc),
@@ -50,9 +65,9 @@ TRACE_EVENT(intel_pipe_enable,
 
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
@@ -83,9 +98,9 @@ TRACE_EVENT(intel_pipe_disable,
 
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
@@ -217,9 +232,9 @@ TRACE_EVENT(intel_memory_cxsr,
 
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
2.46.1

