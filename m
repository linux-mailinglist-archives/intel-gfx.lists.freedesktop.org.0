Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3B4A0BAA5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 15:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7753310E6C8;
	Mon, 13 Jan 2025 14:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670F210E6C8;
 Mon, 13 Jan 2025 14:56:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Drop_64b?=
 =?utf-8?q?pp_YUV_formats_for_SDR_planes_and_improve_tracepoints_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jan 2025 14:56:40 -0000
Message-ID: <173678020041.3272326.5695655575419943217@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241218173650.19782-1-ville.syrjala@linux.intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Drop 64bpp YUV formats for SDR planes and improve tracepoints (rev2)
URL   : https://patchwork.freedesktop.org/series/142801/
State : warning

== Summary ==

Error: dim checkpatch failed
e231c42c4cdc drm/i915: Drop 64bpp YUV formats from ICL+ SDR planes
-:49: WARNING:MISSING_FIXES_TAG: The commit message has 'stable@', perhaps it also needs a 'Fixes:' tag?

total: 0 errors, 1 warnings, 0 checks, 16 lines checked
611f38984af3 drm/i915: Drop the extra "plane" from tracpoints
-:34: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#34: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:429:
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:460:
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

total: 0 errors, 2 warnings, 0 checks, 56 lines checked
2a6cb8a89d40 drm/i915: Pass the plane state explicitly to tracpoints
0d410d040cdd drm/i915: Include pixel format in plane tracpoints
-:36: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:432:
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:61: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:465:
+	    TP_printk("dev %s, pipe %c, %s, frame=%u, scanline=%u, format=%p4cc, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

total: 0 errors, 2 warnings, 0 checks, 46 lines checked


