Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713BF97B07B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 15:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1CFA10E3D1;
	Tue, 17 Sep 2024 13:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C856410E3D1;
 Tue, 17 Sep 2024 13:02:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Modify_iterators_to_?=
 =?utf-8?q?prepare_for_ultrajoiner?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 13:02:53 -0000
Message-ID: <172657817381.1022008.8590218893932402357@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
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

Series: Modify iterators to prepare for ultrajoiner
URL   : https://patchwork.freedesktop.org/series/138751/
State : warning

== Summary ==

Error: dim checkpatch failed
0725cfc71687 drm/i915: Add some essential functionality for joiners
488bdd3f086f drm/i915/display: Enhance iterators for modeset en/disable
-:192: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__dev_priv' may be better as '(__dev_priv)' to avoid precedence issues
#192: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)++) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)++) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipes' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)++) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/display/intel_display.h:395:
+#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)++) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:194: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/display/intel_display.h:397:
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \

-:194: ERROR:CODE_INDENT: code indent should use tabs where possible
#194: FILE: drivers/gpu/drm/i915/display/intel_display.h:397:
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \$

-:194: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#194: FILE: drivers/gpu/drm/i915/display/intel_display.h:397:
+             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \$

-:195: ERROR:CODE_INDENT: code indent should use tabs where possible
#195: FILE: drivers/gpu/drm/i915/display/intel_display.h:398:
+             (i)++) \$

-:195: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#195: FILE: drivers/gpu/drm/i915/display/intel_display.h:398:
+             (i)++) \$

-:196: ERROR:CODE_INDENT: code indent should use tabs where possible
#196: FILE: drivers/gpu/drm/i915/display/intel_display.h:399:
+                for_each_if((crtc) && (pipes) & BIT(i))$

-:196: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#196: FILE: drivers/gpu/drm/i915/display/intel_display.h:399:
+                for_each_if((crtc) && (pipes) & BIT(i))$

-:198: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__dev_priv' may be better as '(__dev_priv)' to avoid precedence issues
#198: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)--) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)--) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipes' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)--) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:198: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#198: FILE: drivers/gpu/drm/i915/display/intel_display.h:401:
+#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
+	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
+             (i)--) \
+                for_each_if((crtc) && (pipes) & BIT(i))

-:200: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/display/intel_display.h:403:
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \

-:200: ERROR:CODE_INDENT: code indent should use tabs where possible
#200: FILE: drivers/gpu/drm/i915/display/intel_display.h:403:
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \$

-:200: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#200: FILE: drivers/gpu/drm/i915/display/intel_display.h:403:
+             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \$

-:201: ERROR:CODE_INDENT: code indent should use tabs where possible
#201: FILE: drivers/gpu/drm/i915/display/intel_display.h:404:
+             (i)--) \$

-:201: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#201: FILE: drivers/gpu/drm/i915/display/intel_display.h:404:
+             (i)--) \$

-:202: ERROR:CODE_INDENT: code indent should use tabs where possible
#202: FILE: drivers/gpu/drm/i915/display/intel_display.h:405:
+                for_each_if((crtc) && (pipes) & BIT(i))$

-:202: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#202: FILE: drivers/gpu/drm/i915/display/intel_display.h:405:
+                for_each_if((crtc) && (pipes) & BIT(i))$

-:204: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#204: FILE: drivers/gpu/drm/i915/display/intel_display.h:407:
+#define for_each_pipe_crtc_modeset_disable(__dev_priv, crtc, crtc_state, pipes, i) \
+	for_each_crtc_in_masks(__dev_priv, crtc, \
+			       _modeset_primary_pipes(crtc_state), \
+			       _modeset_secondary_pipes(crtc_state), \
+			       pipes, i)

-:210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'crtc_state' - possible side-effects?
#210: FILE: drivers/gpu/drm/i915/display/intel_display.h:413:
+#define for_each_pipe_crtc_modeset_enable(__dev_priv, crtc, crtc_state, pipes, i) \
+	for_each_crtc_in_masks_reverse(__dev_priv, crtc, \
+				       _modeset_primary_pipes(crtc_state), \
+				       _modeset_secondary_pipes(crtc_state), \
+				       pipes, i)

total: 6 errors, 8 warnings, 10 checks, 216 lines checked


