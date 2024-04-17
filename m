Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB678A85E4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 16:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B6C10F665;
	Wed, 17 Apr 2024 14:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588E410F665;
 Wed, 17 Apr 2024 14:25:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_better_h?=
 =?utf-8?q?igh_level_abstraction_for_display_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Apr 2024 14:25:38 -0000
Message-ID: <171336393836.1465187.5662200357304813527@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1713358679.git.jani.nikula@intel.com>
In-Reply-To: <cover.1713358679.git.jani.nikula@intel.com>
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

Series: drm/i915: better high level abstraction for display (rev3)
URL   : https://patchwork.freedesktop.org/series/130805/
State : warning

== Summary ==

Error: dim checkpatch failed
36717544b8f3 drm/i915/display: add intel_display -> drm_device backpointer
1c60fd31e388 drm/i915/display: add generic to_intel_display() macro
-:54: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#54: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2223:
+	struct type: __##type##_to_intel_display((struct type *)(p))
 	           ^

-:57: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#57: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2226:
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

-:57: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'p' may be better as '(p)' to avoid precedence issues
#57: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2226:
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

-:58: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#58: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:2227:
+	_Generic(*p,					\

total: 1 errors, 0 warnings, 3 checks, 41 lines checked
333a596d24fe drm/i915: add generic __to_intel_display()
-:20: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#20: 
new file mode 100644

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'p' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:15:
+#define __to_intel_display(p)						\
+	_Generic(p,							\
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct intel_display *: (p),			\
+		 struct intel_display *: (p))

-:40: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#40: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:16:
+	_Generic(p,							\

-:41: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:17:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \

-:41: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#41: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:17:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
 		                               ^

-:41: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#41: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:17:
+		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
 		                                ^

-:42: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#42: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:18:
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
 		                         ^

-:42: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#42: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:18:
+		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
 		                          ^

-:43: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#43: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:19:
+		 const struct intel_display *: (p),			\
 		                            ^

-:43: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#43: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:19:
+		 const struct intel_display *: (p),			\
 		                             ^

-:44: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
#44: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:20:
+		 struct intel_display *: (p))
 		                      ^

-:44: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
#44: FILE: drivers/gpu/drm/i915/display/intel_display_conversion.h:20:
+		 struct intel_display *: (p))
 		                       ^

total: 4 errors, 2 warnings, 6 checks, 22 lines checked
315501312ebe drm/i915/display: accept either i915 or display for feature tests
5e9a2671dced drm/i915/quirks: convert struct drm_i915_private to struct intel_display
c9378ebf09d2 drm/i915/display: rename __intel_wait_for_register_nowl() to indicate intel_de_
a0b8fad7d3e5 drm/i915/dmc: convert dmc wakelock interface to struct intel_display
75eac0aeabdf drm/i915/de: allow intel_display and drm_i915_private for de functions
-:48: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#48: FILE: drivers/gpu/drm/i915/display/intel_de.h:31:
 }
+#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)

-:48: ERROR:SPACING: space required after that ',' (ctx:VxV)
#48: FILE: drivers/gpu/drm/i915/display/intel_de.h:31:
+#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
                        ^

-:67: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#67: FILE: drivers/gpu/drm/i915/display/intel_de.h:46:
 }
+#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)

-:67: ERROR:SPACING: space required after that ',' (ctx:VxV)
#67: FILE: drivers/gpu/drm/i915/display/intel_de.h:46:
+#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
                         ^

-:93: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#93: FILE: drivers/gpu/drm/i915/display/intel_de.h:65:
 }
+#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)

-:93: ERROR:SPACING: space required after that ',' (ctx:VxV)
#93: FILE: drivers/gpu/drm/i915/display/intel_de.h:65:
+#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
                               ^

-:108: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#108: FILE: drivers/gpu/drm/i915/display/intel_de.h:76:
 }
+#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)

-:108: ERROR:SPACING: space required after that ',' (ctx:VxV)
#108: FILE: drivers/gpu/drm/i915/display/intel_de.h:76:
+#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
                                ^

-:123: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#123: FILE: drivers/gpu/drm/i915/display/intel_de.h:87:
 }
+#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)

-:123: ERROR:SPACING: space required after that ',' (ctx:VxV)
#123: FILE: drivers/gpu/drm/i915/display/intel_de.h:87:
+#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
                         ^

-:134: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#134: FILE: drivers/gpu/drm/i915/display/intel_de.h:95:
 }
+#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)

-:134: ERROR:SPACING: space required after that ',' (ctx:VxV)
#134: FILE: drivers/gpu/drm/i915/display/intel_de.h:95:
+#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)
                              ^

-:154: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#154: FILE: drivers/gpu/drm/i915/display/intel_de.h:111:
 }
+#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)

-:154: ERROR:SPACING: space required after that ',' (ctx:VxV)
#154: FILE: drivers/gpu/drm/i915/display/intel_de.h:111:
+#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
                       ^

-:167: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#167: FILE: drivers/gpu/drm/i915/display/intel_de.h:121:
+#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)

-:167: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#167: FILE: drivers/gpu/drm/i915/display/intel_de.h:121:
 }
+#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)

-:167: ERROR:SPACING: space required after that ',' (ctx:VxV)
#167: FILE: drivers/gpu/drm/i915/display/intel_de.h:121:
+#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
                                            ^

-:189: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#189: FILE: drivers/gpu/drm/i915/display/intel_de.h:138:
 }
+#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)

-:189: ERROR:SPACING: space required after that ',' (ctx:VxV)
#189: FILE: drivers/gpu/drm/i915/display/intel_de.h:138:
+#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
                        ^

-:211: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#211: FILE: drivers/gpu/drm/i915/display/intel_de.h:155:
 }
+#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)

-:211: ERROR:SPACING: space required after that ',' (ctx:VxV)
#211: FILE: drivers/gpu/drm/i915/display/intel_de.h:155:
+#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
                           ^

-:238: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#238: FILE: drivers/gpu/drm/i915/display/intel_de.h:175:
 }
+#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)

-:238: ERROR:SPACING: space required after that ',' (ctx:VxV)
#238: FILE: drivers/gpu/drm/i915/display/intel_de.h:175:
+#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
                               ^

-:249: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#249: FILE: drivers/gpu/drm/i915/display/intel_de.h:183:
 }
+#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)

-:249: ERROR:SPACING: space required after that ',' (ctx:VxV)
#249: FILE: drivers/gpu/drm/i915/display/intel_de.h:183:
+#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
                                ^

-:260: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#260: FILE: drivers/gpu/drm/i915/display/intel_de.h:191:
 }
+#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)

-:260: ERROR:SPACING: space required after that ',' (ctx:VxV)
#260: FILE: drivers/gpu/drm/i915/display/intel_de.h:191:
+#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
                                  ^

-:279: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#279: FILE: drivers/gpu/drm/i915/display/intel_de.h:211:
 }
+#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)

-:279: ERROR:SPACING: space required after that ',' (ctx:VxV)
#279: FILE: drivers/gpu/drm/i915/display/intel_de.h:211:
+#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
                           ^

-:289: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#289: FILE: drivers/gpu/drm/i915/display/intel_de.h:219:
 }
+#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)

-:289: ERROR:SPACING: space required after that ',' (ctx:VxV)
#289: FILE: drivers/gpu/drm/i915/display/intel_de.h:219:
+#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
                            ^

-:298: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#298: FILE: drivers/gpu/drm/i915/display/intel_de.h:226:
 }
+#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)

-:298: ERROR:SPACING: space required after that ',' (ctx:VxV)
#298: FILE: drivers/gpu/drm/i915/display/intel_de.h:226:
+#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
                                ^

-:308: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#308: FILE: drivers/gpu/drm/i915/display/intel_de.h:234:
 }
+#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)

-:308: ERROR:SPACING: space required after that ',' (ctx:VxV)
#308: FILE: drivers/gpu/drm/i915/display/intel_de.h:234:
+#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
                                 ^

total: 17 errors, 1 warnings, 17 checks, 287 lines checked
e9338cfb79c2 drm/i915/dmc: use struct intel_display more


