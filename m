Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 877244A5D50
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 14:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26CF010E1A9;
	Tue,  1 Feb 2022 13:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C897C10E254;
 Tue,  1 Feb 2022 13:17:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C69DFA73C7;
 Tue,  1 Feb 2022 13:17:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 01 Feb 2022 13:17:43 -0000
Message-ID: <164372146379.2608.8052666176695129301@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Compile_out_integrated?=
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

Series: Compile out integrated
URL   : https://patchwork.freedesktop.org/series/99570/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
15e05554122b igp kconfig
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:18: WARNING:EMBEDDED_FILENAME: It's generally not useful to have the filename in the file
#18: FILE: drivers/gpu/drm/i915/Kconfig:150:
+source "drivers/gpu/drm/i915/Kconfig.platforms"

-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

-:30: WARNING:CONFIG_DESCRIPTION: please write a help paragraph that fully describes the config symbol
#30: FILE: drivers/gpu/drm/i915/Kconfig.platforms:1:
+config DRM_I915_INTEGRATED_GPU_SUPPORT
+	bool "Support integrated GPUs"
+	default y
+	depends on DRM_I915
+	help
+	  Include support for integrated GPUs.
+

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:1126:
+#define IS_GRAPHICS_VER(i915, from, until) \
+({ \
+	const unsigned int s_ = 12; \
+	const unsigned int e_ = UINT_MAX; \
+	unsigned int res_; \
+ \
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
+		res_ = GRAPHICS_VER(i915) >= (from) && \
+		       GRAPHICS_VER(i915) <= (until); \
+	else \
+		res_ = 0; \
+ \
+	(res_); \
+})

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'from' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:1126:
+#define IS_GRAPHICS_VER(i915, from, until) \
+({ \
+	const unsigned int s_ = 12; \
+	const unsigned int e_ = UINT_MAX; \
+	unsigned int res_; \
+ \
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
+		res_ = GRAPHICS_VER(i915) >= (from) && \
+		       GRAPHICS_VER(i915) <= (until); \
+	else \
+		res_ = 0; \
+ \
+	(res_); \
+})

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'until' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:1126:
+#define IS_GRAPHICS_VER(i915, from, until) \
+({ \
+	const unsigned int s_ = 12; \
+	const unsigned int e_ = UINT_MAX; \
+	unsigned int res_; \
+ \
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
+		res_ = GRAPHICS_VER(i915) >= (from) && \
+		       GRAPHICS_VER(i915) <= (until); \
+	else \
+		res_ = 0; \
+ \
+	(res_); \
+})

-:55: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#55: FILE: drivers/gpu/drm/i915/i915_drv.h:1131:
+ \$

-:56: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:1132:
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
 	                       ^

-:56: ERROR:SPACING: spaces required around that '?' (ctx:VxW)
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:1132:
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
 	                                                   ^

-:56: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#56: FILE: drivers/gpu/drm/i915/i915_drv.h:1132:
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
 	                                                         ^

-:61: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#61: FILE: drivers/gpu/drm/i915/i915_drv.h:1137:
+ \$

-:145: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#145: FILE: drivers/gpu/drm/i915/i915_drv.h:1274:
+#define IS_JSL_EHL(dev_priv)	(IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
+				IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))

-:162: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#162: FILE: drivers/gpu/drm/i915/i915_drv.h:1288:
+	(IS_ALDERLAKE_S(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S))

-:165: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/i915_drv.h:1290:
+	(IS_ALDERLAKE_P(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N))

-:207: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#207: FILE: drivers/gpu/drm/i915/i915_drv.h:1327:
+	(IS_COFFEELAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT))

-:210: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#210: FILE: drivers/gpu/drm/i915/i915_drv.h:1329:
+	(IS_COFFEELAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX))

total: 3 errors, 10 warnings, 4 checks, 506 lines checked
528a41163c0e jsl/ehl
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 27 lines checked


