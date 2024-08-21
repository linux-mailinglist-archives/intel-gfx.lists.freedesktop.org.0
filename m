Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE59597BA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 12:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BBB610E8D1;
	Wed, 21 Aug 2024 10:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0406910E8D1;
 Wed, 21 Aug 2024 10:38:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?identify_display_steppings_in_display_code_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2024 10:38:48 -0000
Message-ID: <172423672801.717871.14102188934963359276@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1724180287.git.jani.nikula@intel.com>
In-Reply-To: <cover.1724180287.git.jani.nikula@intel.com>
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

Series: drm/i915/display: identify display steppings in display code (rev2)
URL   : https://patchwork.freedesktop.org/series/137534/
State : warning

== Summary ==

Error: dim checkpatch failed
6f5838885c18 drm/xe/display: fix compat IS_DISPLAY_STEP() range end
-:22: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#22: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:86:
+#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })

-:22: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'first' may be better as '(first)' to avoid precedence issues
#22: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:86:
+#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })

-:22: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'last' may be better as '(last)' to avoid precedence issues
#22: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:86:
+#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })

total: 0 errors, 1 warnings, 2 checks, 8 lines checked
25a08a4fec06 drm/xe/display: remove intel_display_step_name() to simplify
b34f97ec5e6c drm/xe/display: remove the unused compat HAS_GMD_ID()
f47d23de224a drm/xe/step: define more steppings E-J
d4b2b4c419f7 drm/i915/display: rename IS_DISPLAY_IP_RANGE() to IS_DISPLAY_VER_FULL()
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:164:
+#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
 	(DISPLAY_VER_FULL(__i915) >= (from) && \
 	 DISPLAY_VER_FULL(__i915) <= (until)))

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:164:
+#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
 	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
 	(DISPLAY_VER_FULL(__i915) >= (from) && \
 	 DISPLAY_VER_FULL(__i915) <= (until)))

total: 0 errors, 0 warnings, 2 checks, 24 lines checked
9cfa9a66c18c drm/i915/display: rename IS_DISPLAY_IP_STEP() to IS_DISPLAY_VER_STEP()
-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:184:
+#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
 	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))

-:29: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ipver' - possible side-effects?
#29: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:184:
+#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
 	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__i915), (from), (until)))

total: 0 errors, 0 warnings, 2 checks, 78 lines checked
1f1eca290f08 drm/i915/display: identify display steppings in display probe
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_map' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/display/intel_display_device.c:29:
+#define STEP_INFO(_map)				\
+	.step_info.map = _map,			\
+	.step_info.size = ARRAY_SIZE(_map)

total: 0 errors, 0 warnings, 1 checks, 416 lines checked
8c6ea698523e drm/i915/display: switch to display detected steppings
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:199:
+#define IS_DISPLAY_STEP(__i915, since, until) \
+	(drm_WARN_ON(__to_intel_display(__i915)->drm, INTEL_DISPLAY_STEP(__i915) == STEP_NONE), \
+	 INTEL_DISPLAY_STEP(__i915) >= (since) && INTEL_DISPLAY_STEP(__i915) < (until))

total: 0 errors, 0 warnings, 1 checks, 53 lines checked
0689379bc8fa drm/i915: remove display stepping handling
7d56409883ac drm/xe: remove display stepping handling


