Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDC497F0FF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E0610E478;
	Mon, 23 Sep 2024 19:03:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TdKLUIYG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B41910E47D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 19:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118220; x=1758654220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Ak7RRhj7S98HOmxJ1bMg+fBMnq9j62qR2I0jOWuqDk=;
 b=TdKLUIYGIMH6ZawUPcAbE8FjvnSe2mwzc1G4SmVXDZLaW4ABHYIlYQAv
 wqTlnW1qnrOCwH2Oz1mxFBKQO3tPdNPFmExG7gxoLZREeMHeA2eOWOD6v
 IOZcUrE14aMXJH/e6dcwb3JJnkjklmoeb8Q4bBP/jS5dt66fXgbr4yKxL
 pFG8GWl5gfptSay1xlkgWtYHP5M9iNhdl6RQINt72JuHf5GiFWY3EUEht
 eaLMDBYuEQ/4lEMz8vCIBozDGNzeP373Ekmpb/MczdB3S83vZkzdT+1yh
 qXOILGrNlYeDKvth2QHStew4LC+I+DmaAS+nIcQkT+6I886fqIhDwC2P4 Q==;
X-CSE-ConnectionGUID: kc5ppg2HQx6ONGrsNx8K+Q==
X-CSE-MsgGUID: wYznDRysRka+0p2GvVRPVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43601314"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="43601314"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:37 -0700
X-CSE-ConnectionGUID: OM6zKmJrTwGLSLpTz36Ipg==
X-CSE-MsgGUID: xOrSA5QBRpWbUdiiT8CBEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71997357"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.180])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:36 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 1/5] drm/i915/display: Fix out-of-bounds access in
 pipe-related tracepoints
Date: Mon, 23 Sep 2024 16:02:50 -0300
Message-ID: <20240923190324.83013-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240923190324.83013-1-gustavo.sousa@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
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

Some display trace events use array members to store frame and scanline
counts for each pipe. However, those arrays are declared with 3 as the
hardcoded size, which cause out-of-bounds access when the trace event is
enabled on a platform that contains pipe D.

For example, when looking at the last 10 intel_pipe_enable events after
running IGT's testdisplay, we see the following on a MTL machine that
has pipe D available:

    $ trace-cmd report -R -F intel_pipe_enable \
    > | tail \
    > | sed 's,\(frame=.*\) \(scanline=.*\),\n\t   \1\n\t\2,'
         testdisplay-6715  [002] 17591.063491: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[83, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [003] 17591.264742: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[89, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [003] 17591.464541: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[8f, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [001] 17591.695827: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[95, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [000] 17591.915841: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[9a, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [000] 17592.127114: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[a0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [002] 17592.358351: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[a8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [002] 17592.580467: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[ae, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [000] 17592.950946: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[b8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-6715  [004] 17593.079597: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[bf, 01, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[00, 00, 00, 00, 3a, 04, 00, 00, 00, 00, 00, 00] pipe=1

Which shows zeros for pipe A's scanline counts. That happens because
pipe D's frame counts are overwriting them.

Let's fix that by making the arrays bring able to store info for all
possible pipes.

With the fix, we get the following:

    $ trace-cmd report -R -F intel_pipe_enable \
    > | tail \
    > | sed 's,\(frame=.*\) \(scanline=.*\),\n\t   \1\n\t\2,'
         testdisplay-7040  [003] 18067.489565: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[8c, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[8e, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18067.699312: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[92, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18067.908868: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[98, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18068.122802: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[9d, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[58, 02, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [003] 18068.331019: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[a2, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18068.529067: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[a8, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [003] 18068.742033: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[ae, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18068.956229: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[b3, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[1f, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [002] 18069.295322: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[bb, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[7b, 08, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=0
         testdisplay-7040  [010] 18069.423527: intel_pipe_enable:     dev=0000:00:02.0
               frame=ARRAY[c2, 01, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00]
            scanline=ARRAY[d0, 05, 00, 00, 3a, 04, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe=1

Which makes more sense now.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index fc28d34b5eef..e70c015a09a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -15,6 +15,7 @@
 
 #include "i915_drv.h"
 #include "intel_crtc.h"
+#include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_vblank.h"
 
@@ -27,8 +28,8 @@ TRACE_EVENT(intel_pipe_enable,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
+			     __array(u32, frame, I915_MAX_PIPES)
+			     __array(u32, scanline, I915_MAX_PIPES)
 			     __field(enum pipe, pipe)
 			     ),
 	    TP_fast_assign(
@@ -55,8 +56,8 @@ TRACE_EVENT(intel_pipe_disable,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
+			     __array(u32, frame, I915_MAX_PIPES)
+			     __array(u32, scanline, I915_MAX_PIPES)
 			     __field(enum pipe, pipe)
 			     ),
 
@@ -184,8 +185,8 @@ TRACE_EVENT(intel_memory_cxsr,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_display(display))
-			     __array(u32, frame, 3)
-			     __array(u32, scanline, 3)
+			     __array(u32, frame, I915_MAX_PIPES)
+			     __array(u32, scanline, I915_MAX_PIPES)
 			     __field(bool, old)
 			     __field(bool, new)
 			     ),
-- 
2.46.1

