Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0656697B99D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 10:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C480810E24F;
	Wed, 18 Sep 2024 08:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D6110E24F;
 Wed, 18 Sep 2024 08:53:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Modify_iterators_to_?=
 =?utf-8?q?prepare_for_ultrajoiner_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2024 08:53:00 -0000
Message-ID: <172664958074.1025065.15141068767137259617@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
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

Series: Modify iterators to prepare for ultrajoiner (rev2)
URL   : https://patchwork.freedesktop.org/series/138751/
State : warning

== Summary ==

Error: dim checkpatch failed
3bd49f072949 drm/i915: Add some essential functionality for joiners
be1cfc9d7b74 drm/i915/display: Enhance iterators for modeset en/disable
-:203: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#203: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = 0; \
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)++) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:203: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#203: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = 0; \
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)++) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:205: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#205: FILE: drivers/gpu/drm/i915/display/intel_display.h:397:
+	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \

-:209: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#209: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)--) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:209: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#209: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
+	for ((i) = (I915_MAX_PIPES * 2 - 1); \
+	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
+	     (i)--) \
+		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

-:215: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#215: FILE: drivers/gpu/drm/i915/display/intel_display.h:407:
+#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks(display, crtc, \
+			       _intel_modeset_primary_pipes(crtc_state), \
+			       _intel_modeset_secondary_pipes(crtc_state), \
+			       i)

-:221: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#221: FILE: drivers/gpu/drm/i915/display/intel_display.h:413:
+#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
+	for_each_crtc_in_masks_reverse(display, crtc, \
+				       _intel_modeset_primary_pipes(crtc_state), \
+				       _intel_modeset_secondary_pipes(crtc_state), \
+				       i)

total: 0 errors, 1 warnings, 6 checks, 234 lines checked


