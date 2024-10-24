Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0479AE5E5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B6C10E289;
	Thu, 24 Oct 2024 13:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7144610E289;
 Thu, 24 Oct 2024 13:18:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?platform_identification_with_display-=3Eplatform=2E=3Cplatform=3E?=
 =?utf-8?q?_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 13:18:43 -0000
Message-ID: <172977592345.1327227.6146577773020582034@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1729773149.git.jani.nikula@intel.com>
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
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

Series: drm/i915/display: platform identification with display->platform.<platform> (rev3)
URL   : https://patchwork.freedesktop.org/series/139302/
State : warning

== Summary ==

Error: dim checkpatch failed
613fac167fb2 drm/i915/display: reindent subplatform initialization
49fb0f8401fa drm/i915/display: use a macro to initialize subplatforms
1b325a15cf22 drm/i915/display: use a macro to define platform enumerations
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:18:
+#define INTEL_DISPLAY_PLATFORMS(func) \
+	func(PLATFORM_UNINITIALIZED) \
+	/* Display ver 2 */ \
+	func(I830) \
+	func(I845G) \
+	func(I85X) \
+	func(I865G) \
+	/* Display ver 3 */ \
+	func(I915G) \
+	func(I915GM) \
+	func(I945G) \
+	func(I945GM) \
+	func(G33) \
+	func(PINEVIEW) \
+	/* Display ver 4 */ \
+	func(I965G) \
+	func(I965GM) \
+	func(G45) \
+	func(GM45) \
+	/* Display ver 5 */ \
+	func(IRONLAKE) \
+	/* Display ver 6 */ \
+	func(SANDYBRIDGE) \
+	/* Display ver 7 */ \
+	func(IVYBRIDGE) \
+	func(VALLEYVIEW) \
+	func(HASWELL) \
+	/* Display ver 8 */ \
+	func(BROADWELL) \
+	func(CHERRYVIEW) \
+	/* Display ver 9 */ \
+	func(SKYLAKE) \
+	func(BROXTON) \
+	func(KABYLAKE) \
+	func(GEMINILAKE) \
+	func(COFFEELAKE) \
+	func(COMETLAKE) \
+	/* Display ver 11 */ \
+	func(ICELAKE) \
+	func(JASPERLAKE) \
+	func(ELKHARTLAKE) \
+	/* Display ver 12 */ \
+	func(TIGERLAKE) \
+	func(ROCKETLAKE) \
+	func(DG1) \
+	func(ALDERLAKE_S) \
+	/* Display ver 13 */ \
+	func(ALDERLAKE_P) \
+	func(DG2) \
+	/* Display ver 14 (based on GMD ID) */ \
+	func(METEORLAKE) \
+	/* Display ver 20 (based on GMD ID) */ \
+	func(LUNARLAKE) \
+	/* Display ver 14.1 (based on GMD ID) */ \
+	func(BATTLEMAGE) \
+	/* Display ver 30 (based on GMD ID) */ \
+	func(PANTHERLAKE)

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'func' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:18:
+#define INTEL_DISPLAY_PLATFORMS(func) \
+	func(PLATFORM_UNINITIALIZED) \
+	/* Display ver 2 */ \
+	func(I830) \
+	func(I845G) \
+	func(I85X) \
+	func(I865G) \
+	/* Display ver 3 */ \
+	func(I915G) \
+	func(I915GM) \
+	func(I945G) \
+	func(I945GM) \
+	func(G33) \
+	func(PINEVIEW) \
+	/* Display ver 4 */ \
+	func(I965G) \
+	func(I965GM) \
+	func(G45) \
+	func(GM45) \
+	/* Display ver 5 */ \
+	func(IRONLAKE) \
+	/* Display ver 6 */ \
+	func(SANDYBRIDGE) \
+	/* Display ver 7 */ \
+	func(IVYBRIDGE) \
+	func(VALLEYVIEW) \
+	func(HASWELL) \
+	/* Display ver 8 */ \
+	func(BROADWELL) \
+	func(CHERRYVIEW) \
+	/* Display ver 9 */ \
+	func(SKYLAKE) \
+	func(BROXTON) \
+	func(KABYLAKE) \
+	func(GEMINILAKE) \
+	func(COFFEELAKE) \
+	func(COMETLAKE) \
+	/* Display ver 11 */ \
+	func(ICELAKE) \
+	func(JASPERLAKE) \
+	func(ELKHARTLAKE) \
+	/* Display ver 12 */ \
+	func(TIGERLAKE) \
+	func(ROCKETLAKE) \
+	func(DG1) \
+	func(ALDERLAKE_S) \
+	/* Display ver 13 */ \
+	func(ALDERLAKE_P) \
+	func(DG2) \
+	/* Display ver 14 (based on GMD ID) */ \
+	func(METEORLAKE) \
+	/* Display ver 20 (based on GMD ID) */ \
+	func(LUNARLAKE) \
+	/* Display ver 14.1 (based on GMD ID) */ \
+	func(BATTLEMAGE) \
+	/* Display ver 30 (based on GMD ID) */ \
+	func(PANTHERLAKE)

total: 1 errors, 0 warnings, 1 checks, 128 lines checked
66442fb64b0a drm/i915/display: join the platform and subplatform enums
ff9b83d6b01c drm/i915/display: convert display platforms to lower case
bf06aa992119 drm/i915/display: add display platforms structure with platform members
-:67: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#67: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:110:
+#define __MEMBER(name) unsigned long name:1;

-:68: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#68: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:111:
+#define __COUNT(x) 1 +

-:68: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#68: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:111:
+#define __COUNT(x) 1 +

total: 1 errors, 2 warnings, 0 checks, 57 lines checked
7c66611c0018 drm/i915/display: add platform member to struct intel_display
7c7f4642b871 drm/i915/display: remove the display platform enum as unnecessary
1b8d0ae8044b drm/i915/display: add platform group for g4x
e94b6cc241d6 drm/i915/display: add subplatform group for HSW/BDW ULT
aef88db132e7 drm/i915/bios: use display->platform.<platform> instead of IS_<PLATFORM>()
13aacd86cce1 drm/i915/pps: use display->platform.<platform> instead of IS_<PLATFORM>()
d04ddab7d4be drm/i915/tv: use display->platform.<platform> instead of IS_<PLATFORM>()
ccc3ada7ad9a drm/i915/vga: use display->platform.<platform> instead of IS_<PLATFORM>()
4704e768e12c drm/i915/vblank: drop unnecessary i915 local variable
4e420c6ccf6b drm/i915/vblank: use display->platform.<platform> instead of IS_<PLATFORM>()


