Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FE096529C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 00:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FAD10E795;
	Thu, 29 Aug 2024 22:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9roI+5M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89E810E766
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 22:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724969037; x=1756505037;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=G2s69I3E6ewbeOI2/0qTT66JbfqSdSP+cce1C65FWUA=;
 b=N9roI+5MnSwWj6LrQI+B+Zxq2frV6Y/6I0A04+4TugKsWmxBbVNnpyPx
 ovIfpFx20DD/qWJRsDbPd1YesCJgMwlliyR7bjz60hCDiSzg2fiQgkie/
 TI4bAKGazMoXxZ7urLzuZ3snzUcYhnNI4DgccZjTf2M4nUCdM4VFKyspT
 QiG+VijXLRHPAOGOg15558lLg5U0/GUxaT3XoWjmlKF05I0Vq5fbRJ0gX
 DZz+LAFxddaM26qr5C4wTJSEXG8BwIW4f8SzUpKZZPgW9kYwk5DeOajlK
 TbabLVIqODRp4s3SipZM54xAMH5mRLNivC5X+CcyWnKEUCh/O1MhglY4T A==;
X-CSE-ConnectionGUID: cyWGuDb4QsStiTvf37OcLg==
X-CSE-MsgGUID: 2v+Y2iUPRvCU5cbm7loJRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="27356215"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="27356215"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:46 -0700
X-CSE-ConnectionGUID: Cl6U4hSJTD6UURwYM7xzNg==
X-CSE-MsgGUID: 72xqRgmFQ8+PO6rF34SGcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="68541466"
Received: from djiang5-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.19])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:01:45 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/display: Store pipe name in trace events
Date: Thu, 29 Aug 2024 19:00:45 -0300
Message-ID: <20240829220106.80449-3-gustavo.sousa@intel.com>
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

The first part[1] of the LWN series on using TRACE_EVENT() mentions
about TP_printk():

    "Do not create new tracepoint-specific helpers, because that will
    confuse user-space tools that know about the TRACE_EVENT() helper
    macros but will not know how to handle ones created for individual
    tracepoints."

It seems this is what we ended up doing when using pipe_name() in
TP_printk().

For example, the format for the intel_pipe_update_start event is as
follows:

    # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_update_start/format
    name: intel_pipe_update_start
    ID: 1136
    format:
            field:unsigned short common_type;       offset:0;       size:2; signed:0;
            field:unsigned char common_flags;       offset:2;       size:1; signed:0;
            field:unsigned char common_preempt_count;       offset:3;       size:1; signed:0;
            field:int common_pid;   offset:4;       size:4; signed:1;

            field:__data_loc char[] dev;    offset:8;       size:4; signed:0;
            field:enum pipe pipe;   offset:12;      size:4; signed:1;
            field:u32 frame;        offset:16;      size:4; signed:0;
            field:u32 scanline;     offset:20;      size:4; signed:0;
            field:u32 min;  offset:24;      size:4; signed:0;
            field:u32 max;  offset:28;      size:4; signed:0;

    print fmt: "dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u", __get_str(dev), ((REC->pipe) + 'A'), REC->frame, REC->scanline, REC->min, REC->max

The call to pipe_name(__entry->pipe) is expanted to ((REC->pipe) + 'A')
and that's how the format is saved.

Even though the output from /sys/kernel/debug/tracing/trace will look
correct (because it is generated in the kernel), we will see corrupted
lines when using a tool like trace-cmd to view the data.

While the output looks correct when looking at
/sys/kernel/debug/tracing/trace, we see corrupted lines when viewing the
trace data with "trace-cmd report":

    $ trace-cmd report \
    > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
    > | cat -v | uniq -c
         34 pipe ^A

, where ^A is a non-printable character.

As a fix, let's store the pipe name directly in the event. The fix was
done by applying the following sed script:

    s/__field\s*(\s*enum\s\+pipe\s*,\s*pipe\s*)/__field(char, pipe_name)/
    s/__entry\s*->\s*pipe\s*=\s*\([^;]\+\);/__entry->pipe_name = pipe_name(\1);/
    s/pipe_name\s*(\s*__entry\s*->\s*pipe\s*)/__entry->pipe_name/

After these changes, using the same example, we have the following:

    $ trace-cmd report \
    > | sed -n 's/.*dev 0000:00:02\.0, \(pipe .\).*/\1/p' \
    > | cat -v | sort | uniq -c
        396 pipe A
         34 pipe B

[1] https://lwn.net/Articles/379903/

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_trace.h    | 126 +++++++++---------
 1 file changed, 63 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index 8a3185862089..ec2ab6fb743d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -30,7 +30,7 @@ TRACE_EVENT(intel_pipe_enable,
 			     __string(dev, __dev_name_kms(crtc))
 			     __array(u32, frame, I915_MAX_PIPES)
 			     __array(u32, scanline, I915_MAX_PIPES)
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     ),
 	    TP_fast_assign(
 			   struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -40,11 +40,11 @@ TRACE_EVENT(intel_pipe_enable,
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   ),
 
 	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
@@ -58,7 +58,7 @@ TRACE_EVENT(intel_pipe_disable,
 			     __string(dev, __dev_name_kms(crtc))
 			     __array(u32, frame, I915_MAX_PIPES)
 			     __array(u32, scanline, I915_MAX_PIPES)
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     ),
 
 	    TP_fast_assign(
@@ -69,11 +69,11 @@ TRACE_EVENT(intel_pipe_disable,
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
 			   }
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   ),
 
 	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
 		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
 		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
@@ -85,20 +85,20 @@ TRACE_EVENT(intel_crtc_flip_done,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
@@ -108,7 +108,7 @@ TRACE_EVENT(intel_pipe_crc,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __array(u32, crcs, 5)
@@ -116,14 +116,14 @@ TRACE_EVENT(intel_pipe_crc,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   memcpy(__entry->crcs, crcs, sizeof(__entry->crcs));
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u crc=%08x %08x %08x %08x %08x",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->crcs[0], __entry->crcs[1],
 		      __entry->crcs[2], __entry->crcs[3],
@@ -136,7 +136,7 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_i915(dev_priv))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
@@ -144,13 +144,13 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 	    TP_fast_assign(
 			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 			   __assign_str(dev);
-			   __entry->pipe = pipe;
+			   __entry->pipe_name = pipe_name(pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
@@ -160,7 +160,7 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_i915(dev_priv))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
@@ -169,13 +169,13 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 			   enum pipe pipe = pch_transcoder;
 			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
 			   __assign_str(dev);
-			   __entry->pipe = pipe;
+			   __entry->pipe_name = pipe_name(pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pch transcoder %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
@@ -215,7 +215,7 @@ TRACE_EVENT(g4x_wm,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(u16, primary)
@@ -234,7 +234,7 @@ TRACE_EVENT(g4x_wm,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->primary = wm->pipe[crtc->pipe].plane[PLANE_PRIMARY];
@@ -252,7 +252,7 @@ TRACE_EVENT(g4x_wm,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, wm %d/%d/%d, sr %s/%d/%d/%d, hpll %s/%d/%d/%d, fbc %s",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->primary, __entry->sprite, __entry->cursor,
 		      str_yes_no(__entry->cxsr), __entry->sr_plane, __entry->sr_cursor, __entry->sr_fbc,
@@ -266,7 +266,7 @@ TRACE_EVENT(vlv_wm,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(u32, level)
@@ -281,7 +281,7 @@ TRACE_EVENT(vlv_wm,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->level = wm->level;
@@ -295,7 +295,7 @@ TRACE_EVENT(vlv_wm,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, level=%d, cxsr=%d, wm %d/%d/%d/%d, sr %d/%d",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->level, __entry->cxsr,
 		      __entry->primary, __entry->sprite0, __entry->sprite1, __entry->cursor,
@@ -308,7 +308,7 @@ TRACE_EVENT(vlv_fifo_size,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(u32, sprite0_start)
@@ -318,7 +318,7 @@ TRACE_EVENT(vlv_fifo_size,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->sprite0_start = sprite0_start;
@@ -327,7 +327,7 @@ TRACE_EVENT(vlv_fifo_size,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, %d/%d/%d",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->sprite0_start, __entry->sprite1_start, __entry->fifo_size)
 );
@@ -338,7 +338,7 @@ TRACE_EVENT(intel_plane_async_flip,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(bool, async_flip)
@@ -348,14 +348,14 @@ TRACE_EVENT(intel_plane_async_flip,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->async_flip = async_flip;
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, async_flip=%s",
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline, str_yes_no(__entry->async_flip))
 );
 
@@ -365,7 +365,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __array(int, src, 4)
@@ -376,7 +376,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
@@ -384,7 +384,7 @@ TRACE_EVENT(intel_plane_update_noarm,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
@@ -396,7 +396,7 @@ TRACE_EVENT(intel_plane_update_arm,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __array(int, src, 4)
@@ -407,7 +407,7 @@ TRACE_EVENT(intel_plane_update_arm,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   memcpy(__entry->src, &plane->base.state->src, sizeof(__entry->src));
@@ -415,7 +415,7 @@ TRACE_EVENT(intel_plane_update_arm,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline,
 		      DRM_RECT_FP_ARG((const struct drm_rect *)__entry->src),
 		      DRM_RECT_ARG((const struct drm_rect *)__entry->dst))
@@ -427,7 +427,7 @@ TRACE_EVENT(intel_plane_disable_arm,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __string(name, plane->base.name)
@@ -436,13 +436,13 @@ TRACE_EVENT(intel_plane_disable_arm,
 	    TP_fast_assign(
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -453,7 +453,7 @@ TRACE_EVENT(intel_fbc_activate,
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
@@ -463,13 +463,13 @@ TRACE_EVENT(intel_fbc_activate,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -480,7 +480,7 @@ TRACE_EVENT(intel_fbc_deactivate,
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
@@ -490,13 +490,13 @@ TRACE_EVENT(intel_fbc_deactivate,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -507,7 +507,7 @@ TRACE_EVENT(intel_fbc_nuke,
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(plane))
 			     __string(name, plane->base.name)
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
@@ -517,13 +517,13 @@ TRACE_EVENT(intel_fbc_nuke,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe), __get_str(name),
+		      __get_str(dev), __entry->pipe_name, __get_str(name),
 		      __entry->frame, __entry->scanline)
 );
 
@@ -533,20 +533,20 @@ TRACE_EVENT(intel_crtc_vblank_work_start,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
@@ -556,20 +556,20 @@ TRACE_EVENT(intel_crtc_vblank_work_end,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
@@ -579,7 +579,7 @@ TRACE_EVENT(intel_pipe_update_start,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(u32, min)
@@ -588,7 +588,7 @@ TRACE_EVENT(intel_pipe_update_start,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
 			   __entry->scanline = intel_get_crtc_scanline(crtc);
 			   __entry->min = crtc->debug.min_vbl;
@@ -596,7 +596,7 @@ TRACE_EVENT(intel_pipe_update_start,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->min, __entry->max)
 );
@@ -607,7 +607,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     __field(u32, min)
@@ -616,7 +616,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = crtc->debug.start_vbl_count;
 			   __entry->scanline = crtc->debug.scanline_start;
 			   __entry->min = crtc->debug.min_vbl;
@@ -624,7 +624,7 @@ TRACE_EVENT(intel_pipe_update_vblank_evaded,
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u, min=%u, max=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline,
 		      __entry->min, __entry->max)
 );
@@ -635,20 +635,20 @@ TRACE_EVENT(intel_pipe_update_end,
 
 	    TP_STRUCT__entry(
 			     __string(dev, __dev_name_kms(crtc))
-			     __field(enum pipe, pipe)
+			     __field(char, pipe_name)
 			     __field(u32, frame)
 			     __field(u32, scanline)
 			     ),
 
 	    TP_fast_assign(
 			   __assign_str(dev);
-			   __entry->pipe = crtc->pipe;
+			   __entry->pipe_name = pipe_name(crtc->pipe);
 			   __entry->frame = frame;
 			   __entry->scanline = scanline_end;
 			   ),
 
 	    TP_printk("dev %s, pipe %c, frame=%u, scanline=%u",
-		      __get_str(dev), pipe_name(__entry->pipe),
+		      __get_str(dev), __entry->pipe_name,
 		      __entry->frame, __entry->scanline)
 );
 
-- 
2.46.0

