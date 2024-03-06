Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE8F8741AF
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 22:14:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979DA113566;
	Wed,  6 Mar 2024 21:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8350C113566;
 Wed,  6 Mar 2024 21:13:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_better_h?=
 =?utf-8?q?igh_level_abstraction_for_display?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 21:13:59 -0000
Message-ID: <170975963953.562292.7912424841927199658@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1709727127.git.jani.nikula@intel.com>
In-Reply-To: <cover.1709727127.git.jani.nikula@intel.com>
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

Series: drm/i915: better high level abstraction for display
URL   : https://patchwork.freedesktop.org/series/130805/
State : warning

== Summary ==

Error: dim checkpatch failed
3000e528f9db drm/i915/display: ideas for further separating display code from the rest
ffc3bd209f4c drm/i915/display: add generic to_intel_display() macro
-:58: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#58: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2218:
+	struct type: __##type##_to_intel_display((struct type *)(p))
 	           ^

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2221:
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p),		\
+		 __assoc(intel_dp, p),			\
+		 __assoc(drm_device, p))

-:61: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'p' may be better as '(p)' to avoid precedence issues
#61: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2221:
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p),		\
+		 __assoc(intel_dp, p),			\
+		 __assoc(drm_device, p))

-:62: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#62: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2222:
+	_Generic(*p,					\

total: 1 errors, 0 warnings, 3 checks, 50 lines checked
d58449dd142d drm/i915/display: accept either i915 or display for feature tests
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915_or_display' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:17:
+#define __display(i915_or_display)					\
+	_Generic(*i915_or_display,					\
+		 struct drm_i915_private: (((const struct drm_i915_private *)(i915_or_display))->__intel_display_private), \
+		 struct intel_display: (i915_or_display))

-:21: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915_or_display' may be better as '(i915_or_display)' to avoid precedence issues
#21: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:17:
+#define __display(i915_or_display)					\
+	_Generic(*i915_or_display,					\
+		 struct drm_i915_private: (((const struct drm_i915_private *)(i915_or_display))->__intel_display_private), \
+		 struct intel_display: (i915_or_display))

-:22: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#22: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:18:
+	_Generic(*i915_or_display,					\

-:23: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:19:
+		 struct drm_i915_private: (((const struct drm_i915_private *)(i915_or_display))->__intel_display_private), \

-:23: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#23: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:19:
+		 struct drm_i915_private: (((const struct drm_i915_private *)(i915_or_display))->__intel_display_private), \
 		                        ^

-:24: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#24: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:20:
+		 struct intel_display: (i915_or_display))
 		                     ^

total: 2 errors, 1 warnings, 3 checks, 22 lines checked
86ad59f094bd drm/i915/display: test various to_intel_display() scenarios


