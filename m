Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E09A96BFCC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D16010E0A5;
	Wed,  4 Sep 2024 14:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B930A10E0A5;
 Wed,  4 Sep 2024 14:14:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/i915/display=3A_pass_display_to_intel=5Fcrtc=5Ffor?=
 =?utf-8?q?=5Fpipe=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 04 Sep 2024 14:14:46 -0000
Message-ID: <172545928675.933211.11555677698764128262@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240904130633.3831492-1-jani.nikula@intel.com>
In-Reply-To: <20240904130633.3831492-1-jani.nikula@intel.com>
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

Series: series starting with [1/2] drm/i915/display: pass display to intel_crtc_for_pipe()
URL   : https://patchwork.freedesktop.org/series/138208/
State : warning

== Summary ==

Error: dim checkpatch failed
bc8768a492a7 drm/i915/display: pass display to intel_crtc_for_pipe()
-:356: WARNING:TABSTOP: Statements should start on a tabstop
#356: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:144:
+			   struct intel_display *display = &dev_priv->display;

-:357: WARNING:TABSTOP: Statements should start on a tabstop
#357: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:145:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);

-:365: WARNING:TABSTOP: Statements should start on a tabstop
#365: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:169:
+			   struct intel_display *display = &dev_priv->display;

-:368: WARNING:TABSTOP: Statements should start on a tabstop
#368: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:171:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);

-:377: WARNING:TABSTOP: Statements should start on a tabstop
#377: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:463:
+			   struct intel_display *display = to_intel_display(plane->base.dev);

-:378: WARNING:TABSTOP: Statements should start on a tabstop
#378: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:464:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,

-:387: WARNING:TABSTOP: Statements should start on a tabstop
#387: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:491:
+			   struct intel_display *display = to_intel_display(plane->base.dev);

-:388: WARNING:TABSTOP: Statements should start on a tabstop
#388: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:492:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,

-:397: WARNING:TABSTOP: Statements should start on a tabstop
#397: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:519:
+			   struct intel_display *display = to_intel_display(plane->base.dev);

-:398: WARNING:TABSTOP: Statements should start on a tabstop
#398: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:520:
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,

-:446: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#446: FILE: drivers/gpu/drm/i915/display/intel_fbc.c:1807:
+		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, fbc->state.plane->pipe));

total: 0 errors, 11 warnings, 0 checks, 571 lines checked
1f642dc22dfd drm/i915/display: convert intel_display_trace.h to struct intel_display
-:52: WARNING:TABSTOP: Statements should start on a tabstop
#52: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:35:
+			   struct intel_display *display = to_intel_display(crtc);

-:56: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#56: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:38:
+			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:65: WARNING:TABSTOP: Statements should start on a tabstop
#65: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:64:
+			   struct intel_display *display = to_intel_display(crtc);

-:69: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#69: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:67:
+			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);

-:137: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (27, 35)
#137: FILE: drivers/gpu/drm/i915/display/intel_display_trace.h:196:
+			   for_each_intel_crtc(display->drm, crtc) {
 				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);

total: 0 errors, 5 warnings, 0 checks, 222 lines checked


