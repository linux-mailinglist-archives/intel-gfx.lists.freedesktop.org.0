Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E91299F7D15
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 15:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F48810E22A;
	Thu, 19 Dec 2024 14:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC8110E22A;
 Thu, 19 Dec 2024 14:26:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/scaler=3A_S?=
 =?utf-8?q?caler_cleanups_and_tracepoints?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2024 14:26:13 -0000
Message-ID: <173461837310.440938.11513696895179437980@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/scaler: Scaler cleanups and tracepoints
URL   : https://patchwork.freedesktop.org/series/142828/
State : warning

== Summary ==

Error: dim checkpatch failed
5e3d242efe8e drm/i915/scaler: Extract skl_scaler_min_src_size()
32e8df2e586f drm/i915/scaler: Extract skl_scaler_max_src_size()
f68413617514 drm/i915/scaler: Extract skl_scaler_min_dst_size()
860c82e32479 drm/i915/scaler: Extract skl_scaler_max_dst_size()
2b3c0a987719 drm/i915/scaler: Nuke redundant code
ee3977b0e994 drm/i915/scaler: Pimp scaler debugs
d9ee3c9ec167 drm/i915/scaler: s/excdeed/exceed/
8653c078b78d drm/i915/scaler: Add scaler tracepoints
-:27: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#27: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:497:
+	    TP_STRUCT__entry(

-:40: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#40: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:510:
+	    TP_fast_assign(

-:41: WARNING:TABSTOP: Statements should start on a tabstop
#41: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:511:
+			   struct intel_display *display = to_intel_display(plane);

-:42: WARNING:TABSTOP: Statements should start on a tabstop
#42: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:512:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);

-:43: WARNING:LINE_SPACING: Missing a blank line after declarations
#43: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:513:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
+			   __assign_str(dev);

-:66: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#66: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:536:
+	    TP_STRUCT__entry(

-:78: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#78: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:548:
+	    TP_fast_assign(

-:100: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#100: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:570:
+	    TP_STRUCT__entry(

-:108: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#108: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:578:
+	    TP_fast_assign(

total: 0 errors, 3 warnings, 6 checks, 137 lines checked


