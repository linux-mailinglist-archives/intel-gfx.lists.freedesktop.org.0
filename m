Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 500A86261AD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 19:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E222E10E0D4;
	Fri, 11 Nov 2022 18:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 65ABC10E0D4;
 Fri, 11 Nov 2022 18:54:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E29DA0003;
 Fri, 11 Nov 2022 18:54:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 18:54:27 -0000
Message-ID: <166819286734.870.16781562856610359895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Per-device_display_tracepoints_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Per-device display tracepoints (rev2)
URL   : https://patchwork.freedesktop.org/series/110807/
State : warning

== Summary ==

Error: dim checkpatch failed
57ffee5e5bd2 drm/i915: Pass intel_plane to plane tracepoints
bf87f6d30e3d drm/i915: Print plane name in fbc tracepoints
9a2cc7ea7c9b drm/i915: Pass i915 to frontbuffer tracepoints
ef75aa004c86 drm/i915: Add device name to display tracepoints
-:305: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#305: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:335:
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

-:332: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#332: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:366:
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

total: 0 errors, 2 warnings, 0 checks, 551 lines checked


