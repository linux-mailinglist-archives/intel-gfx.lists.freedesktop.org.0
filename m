Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34288D3E82
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 20:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E1610E505;
	Wed, 29 May 2024 18:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B994910E505;
 Wed, 29 May 2024 18:48:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915_and_drm/xe_?=
 =?utf-8?q?display_and_compat_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2024 18:48:08 -0000
Message-ID: <171700848875.2233681.18326961352988822748@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1717004739.git.jani.nikula@intel.com>
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
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

Series: drm/i915 and drm/xe display and compat cleanups
URL   : https://patchwork.freedesktop.org/series/134198/
State : warning

== Summary ==

Error: dim checkpatch failed
55a5e0cbaba1 drm/i915/display: include gem/i915_gem_stolen.h where needed
-:26: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#26: 
rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
98e02863a998 drm/i915/display: include gt/intel_gt_types.h where needed
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
rename from drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
627a4f404b96 drm/i915/display: include i915_gpu_error.h where needed
846b506a705b drm/i915/display: include intel_uncore.h where needed
1465cc65688b drm/i915/display: include intel_step.h where needed
9de79b63baa5 drm/i915/display: include xe_bo.h, gem_object_types etc. where needed
-:62: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#62: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 115 lines checked
d7fd085e5f7e drm/xe/display: move compat uncore stubs to the correct file
-:34: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#34: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h:175:
+#define intel_uncore_forcewake_get(x, y) do { } while (0)

-:34: WARNING:MACRO_ARG_UNUSED: Argument 'y' is not used in function-like macro
#34: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h:175:
+#define intel_uncore_forcewake_get(x, y) do { } while (0)

-:35: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#35: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h:176:
+#define intel_uncore_forcewake_put(x, y) do { } while (0)

-:35: WARNING:MACRO_ARG_UNUSED: Argument 'y' is not used in function-like macro
#35: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h:176:
+#define intel_uncore_forcewake_put(x, y) do { } while (0)

-:37: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#37: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h:178:
+#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)

total: 0 errors, 5 warnings, 0 checks, 20 lines checked
48bbc525042c drm/xe/display: move compat runtime pm stubs to the correct file
-:146: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#146: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h:60:
+#define assert_rpm_wakelock_held(x) do { } while (0)

-:147: WARNING:MACRO_ARG_UNUSED: Argument 'x' is not used in function-like macro
#147: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h:61:
+#define assert_rpm_raw_wakeref_held(x) do { } while (0)

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rpm' - possible side-effects?
#149: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h:63:
+#define with_intel_runtime_pm(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)

-:149: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#149: FILE: drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h:63:
+#define with_intel_runtime_pm(rpm, wf) \
+	for ((wf) = intel_runtime_pm_get(rpm); (wf); \
+	     intel_runtime_pm_put((rpm), (wf)), (wf) = 0)

total: 0 errors, 2 warnings, 2 checks, 130 lines checked
e751dde19fa3 drm/xe/display: reduce includes in compat i915_drv.h
bdec1c4c63f3 drm/xe/display: drop i915_drv.h include from xe code
-:91: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#91: FILE: drivers/gpu/drm/xe/display/intel_fbdev_fb.c:49:
+			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));

-:96: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#96: FILE: drivers/gpu/drm/xe/display/intel_fbdev_fb.c:53:
+		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					  ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |

total: 0 errors, 1 warnings, 1 checks, 169 lines checked


