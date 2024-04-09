Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A6089DF68
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 17:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745FD10E882;
	Tue,  9 Apr 2024 15:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D487E10E886;
 Tue,  9 Apr 2024 15:40:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_better_h?=
 =?utf-8?q?igh_level_abstraction_for_display_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 15:40:20 -0000
Message-ID: <171267722086.1300821.16304709363682091430@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712665176.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712665176.git.jani.nikula@intel.com>
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

Series: drm/i915: better high level abstraction for display (rev2)
URL   : https://patchwork.freedesktop.org/series/130805/
State : warning

== Summary ==

Error: dim checkpatch failed
dac86e84fa8c drm/i915/display: add intel_display -> drm_device backpointer
40e8d033ff3c drm/i915/display: add generic to_intel_display() macro
-:53: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#53: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2223:
+	struct type: __##type##_to_intel_display((struct type *)(p))
 	           ^

-:56: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#56: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2226:
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(drm_device, p),		\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_dp, p),			\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p))

-:56: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'p' may be better as '(p)' to avoid precedence issues
#56: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2226:
+#define to_intel_display(p)				\
+	_Generic(*p,					\
+		 __assoc(drm_device, p),		\
+		 __assoc(intel_connector, p),		\
+		 __assoc(intel_crtc, p),		\
+		 __assoc(intel_crtc_state, p),		\
+		 __assoc(intel_digital_port, p),	\
+		 __assoc(intel_dp, p),			\
+		 __assoc(intel_encoder, p),		\
+		 __assoc(intel_hdmi, p))

-:57: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#57: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2227:
+	_Generic(*p,					\

total: 1 errors, 0 warnings, 3 checks, 41 lines checked
13c270690677 drm/i915: add generic __to_intel_display()
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:364:
+#define __to_intel_display(p)						\
+	_Generic(p,							\
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct intel_display *: (p),			\
+		 struct intel_display *: (p))

-:26: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#26: FILE: drivers/gpu/drm/i915/i915_drv.h:365:
+	_Generic(p,							\

-:27: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:366:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \

-:27: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:366:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
 		                               ^

-:27: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#27: FILE: drivers/gpu/drm/i915/i915_drv.h:366:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
 		                                ^

-:28: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:367:
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
 		                         ^

-:28: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#28: FILE: drivers/gpu/drm/i915/i915_drv.h:367:
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
 		                          ^

-:29: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:368:
+		 const struct intel_display *: (p),			\
 		                            ^

-:29: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#29: FILE: drivers/gpu/drm/i915/i915_drv.h:368:
+		 const struct intel_display *: (p),			\
 		                             ^

-:30: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#30: FILE: drivers/gpu/drm/i915/i915_drv.h:369:
+		 struct intel_display *: (p))
 		                      ^

-:30: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#30: FILE: drivers/gpu/drm/i915/i915_drv.h:369:
+		 struct intel_display *: (p))
 		                       ^

total: 4 errors, 1 warnings, 6 checks, 17 lines checked
ef7f7db6eac3 drm/xe/display: add generic __to_intel_display()
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#25: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:36:
+#define __to_intel_display(p)						\
+	_Generic(p,							\
+		 const struct xe_device *: (&((const struct xe_device *)(p))->display), \
+		 struct xe_device *: (&((struct xe_device *)(p))->display), \
+		 const struct intel_display *: (p),			\
+		 struct intel_display *: (p))

-:26: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#26: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:37:
+	_Generic(p,							\

-:27: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#27: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:38:
+		 const struct xe_device *: (&((const struct xe_device *)(p))->display), \
 		                        ^

-:27: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#27: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:38:
+		 const struct xe_device *: (&((const struct xe_device *)(p))->display), \
 		                         ^

-:28: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#28: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:39:
+		 struct xe_device *: (&((struct xe_device *)(p))->display), \
 		                  ^

-:28: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#28: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:39:
+		 struct xe_device *: (&((struct xe_device *)(p))->display), \
 		                   ^

-:29: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#29: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:40:
+		 const struct intel_display *: (p),			\
 		                            ^

-:29: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#29: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:40:
+		 const struct intel_display *: (p),			\
 		                             ^

-:30: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#30: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:41:
+		 struct intel_display *: (p))
 		                      ^

-:30: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#30: FILE: drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:41:
+		 struct intel_display *: (p))
 		                       ^

total: 4 errors, 0 warnings, 6 checks, 17 lines checked
b92cebd0bd5d drm/i915/display: accept either i915 or display for feature tests
c9ce81cc4783 drm/i915/de: allow intel_display and drm_i915_private for de functions
-:33: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#33: FILE: drivers/gpu/drm/i915/display/intel_de.h:23:
 }
+#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)

-:33: ERROR:SPACING: space required after that ',' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/display/intel_de.h:23:
+#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
                        ^

-:42: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#42: FILE: drivers/gpu/drm/i915/display/intel_de.h:30:
 }
+#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)

-:42: ERROR:SPACING: space required after that ',' (ctx:VxV)
#42: FILE: drivers/gpu/drm/i915/display/intel_de.h:30:
+#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
                         ^

-:54: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#54: FILE: drivers/gpu/drm/i915/display/intel_de.h:39:
 }
+#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)

-:54: ERROR:SPACING: space required after that ',' (ctx:VxV)
#54: FILE: drivers/gpu/drm/i915/display/intel_de.h:39:
+#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
                               ^

-:63: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#63: FILE: drivers/gpu/drm/i915/display/intel_de.h:46:
 }
+#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)

-:63: ERROR:SPACING: space required after that ',' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/display/intel_de.h:46:
+#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
                                ^

-:72: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#72: FILE: drivers/gpu/drm/i915/display/intel_de.h:53:
 }
+#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)

-:72: ERROR:SPACING: space required after that ',' (ctx:VxV)
#72: FILE: drivers/gpu/drm/i915/display/intel_de.h:53:
+#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
                         ^

-:82: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#82: FILE: drivers/gpu/drm/i915/display/intel_de.h:61:
 }
+#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)

-:82: ERROR:SPACING: space required after that ',' (ctx:VxV)
#82: FILE: drivers/gpu/drm/i915/display/intel_de.h:61:
+#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
                       ^

-:94: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#94: FILE: drivers/gpu/drm/i915/display/intel_de.h:70:
 }
+#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)

-:94: ERROR:SPACING: space required after that ',' (ctx:VxV)
#94: FILE: drivers/gpu/drm/i915/display/intel_de.h:70:
+#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
                        ^

-:106: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#106: FILE: drivers/gpu/drm/i915/display/intel_de.h:79:
 }
+#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)

-:106: ERROR:SPACING: space required after that ',' (ctx:VxV)
#106: FILE: drivers/gpu/drm/i915/display/intel_de.h:79:
+#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
                           ^

-:123: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#123: FILE: drivers/gpu/drm/i915/display/intel_de.h:91:
 }
+#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)

-:123: ERROR:SPACING: space required after that ',' (ctx:VxV)
#123: FILE: drivers/gpu/drm/i915/display/intel_de.h:91:
+#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
                               ^

-:134: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#134: FILE: drivers/gpu/drm/i915/display/intel_de.h:99:
 }
+#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)

-:134: ERROR:SPACING: space required after that ',' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/display/intel_de.h:99:
+#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
                                ^

-:145: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#145: FILE: drivers/gpu/drm/i915/display/intel_de.h:107:
 }
+#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)

-:145: ERROR:SPACING: space required after that ',' (ctx:VxV)
#145: FILE: drivers/gpu/drm/i915/display/intel_de.h:107:
+#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
                                  ^

-:164: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#164: FILE: drivers/gpu/drm/i915/display/intel_de.h:127:
 }
+#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)

-:164: ERROR:SPACING: space required after that ',' (ctx:VxV)
#164: FILE: drivers/gpu/drm/i915/display/intel_de.h:127:
+#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
                           ^

-:174: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#174: FILE: drivers/gpu/drm/i915/display/intel_de.h:135:
 }
+#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)

-:174: ERROR:SPACING: space required after that ',' (ctx:VxV)
#174: FILE: drivers/gpu/drm/i915/display/intel_de.h:135:
+#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
                            ^

-:183: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#183: FILE: drivers/gpu/drm/i915/display/intel_de.h:142:
 }
+#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)

-:183: ERROR:SPACING: space required after that ',' (ctx:VxV)
#183: FILE: drivers/gpu/drm/i915/display/intel_de.h:142:
+#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
                                ^

-:193: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#193: FILE: drivers/gpu/drm/i915/display/intel_de.h:150:
 }
+#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)

-:193: ERROR:SPACING: space required after that ',' (ctx:VxV)
#193: FILE: drivers/gpu/drm/i915/display/intel_de.h:150:
+#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
                                 ^

total: 15 errors, 0 warnings, 15 checks, 177 lines checked
b80637579560 drm/i915/quirks: convert struct drm_i915_private to struct intel_display


