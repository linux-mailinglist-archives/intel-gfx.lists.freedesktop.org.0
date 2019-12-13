Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA31411ECBC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDE96EDC8;
	Fri, 13 Dec 2019 21:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 867976EDC8;
 Fri, 13 Dec 2019 21:19:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CAE5A0BA8;
 Fri, 13 Dec 2019 21:19:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 13 Dec 2019 21:19:45 -0000
Message-ID: <157627198548.23797.14018052462310369773@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213152823.26817-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_device_name_to_display_tracepoints?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Add device name to display tracepoints
URL   : https://patchwork.freedesktop.org/series/70886/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
78e6434185eb drm/i915: Add device name to display tracepoints
-:113: WARNING:LONG_LINE: line over 100 characters
#113: FILE: drivers/gpu/drm/i915/i915_trace.h:107:
+		      __get_dev_name(dev), pipe_name(__entry->pipe), __entry->frame, __entry->scanline,

-:129: WARNING:TABSTOP: Statements should start on a tabstop
#129: FILE: drivers/gpu/drm/i915/i915_trace.h:124:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

-:130: WARNING:LINE_SPACING: Missing a blank line after declarations
#130: FILE: drivers/gpu/drm/i915/i915_trace.h:125:
+			   struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+			   __assign_dev_name_i915(dev, dev_priv);

-:218: WARNING:LONG_LINE: line over 100 characters
#218: FILE: drivers/gpu/drm/i915/i915_trace.h:234:
+		      __get_dev_name(dev), pipe_name(__entry->pipe), __entry->frame, __entry->scanline,

-:298: WARNING:LONG_LINE: line over 100 characters
#298: FILE: drivers/gpu/drm/i915/i915_trace.h:338:
+	    TP_printk("dev %s, pipe %c, plane %s, frame=%u, scanline=%u, " DRM_RECT_FP_FMT " -> " DRM_RECT_FMT,

total: 0 errors, 5 warnings, 0 checks, 350 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
