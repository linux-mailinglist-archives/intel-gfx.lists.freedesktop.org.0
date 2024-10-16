Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6369A0BF4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05EDA10E70D;
	Wed, 16 Oct 2024 13:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLCruw4g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4987D10E70C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729086791; x=1760622791;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XUWEI2NIKfRAdUTI7oiYEQyE6auXjNZ3wnvpGfYIqQ4=;
 b=kLCruw4gOKXA19Ti2twqYevrICU+HZHpYsVGcy40EI3HBPYO+jl5PeZW
 isIpPxf+kkHbmq3tqfzaeQJ22Bvezgo1gVAV4LenVcYeQktNziCOjD+kk
 jvzJw56Bn201+n7d/x2FV2y+A0Pt1Zi7648GzelZb4KF/Mh6o0gij9Dlm
 vjDxZTn8pdHQHFs1mshT4AegdsWrKqv+bVLdi/pr5BWMJgHMRFdcfbbpi
 aeNLWMsd9kN1rbKP2uQgLE5nSOAy53GCb5E1Jb8X88g3EWjk1J1QaH0CJ
 yk6RIw0Bs/+oHTnlDHEpA/ydIX6ZvmkzSknjV4d6izYz/s5pPsI4lCynf A==;
X-CSE-ConnectionGUID: pAHzmhLjQTmfrD9tmPBS9w==
X-CSE-MsgGUID: ghc0cRTXSfOBuBy3I0w9eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46008620"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46008620"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:11 -0700
X-CSE-ConnectionGUID: URI/ko1NTseDHHcQoSzAxw==
X-CSE-MsgGUID: m1m7CgJdQduwtCFzMw9cVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78124084"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:10 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 1/5] drm/i915/display: Fix out-of-bounds access in
 pipe-related tracepoints
Date: Wed, 16 Oct 2024 10:52:27 -0300
Message-ID: <20241016135300.21428-2-gustavo.sousa@intel.com>
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

