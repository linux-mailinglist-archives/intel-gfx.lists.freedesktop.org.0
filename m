Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2418B3EA444
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 14:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526656E3DB;
	Thu, 12 Aug 2021 12:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 724596E0F0;
 Thu, 12 Aug 2021 12:07:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A5F9A9A42;
 Thu, 12 Aug 2021 12:07:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 12:07:55 -0000
Message-ID: <162877007541.21763.2827102893217688451@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP_=28rev4=29?=
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

Series: drm/i915: Introduce Intel PXP (rev4)
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
65c355279252 drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
2d8e564a00c6 mei: pxp: export pavp client to me client bus
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 276 lines checked
bfb4bf081281 drm/i915/pxp: define PXP device flag and kconfig
-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1724:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1724:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
9ad093624bbe drm/i915/pxp: allocate a vcs context for pxp usage
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:122: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#122: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 168 lines checked
9d3aaae13dbd drm/i915/pxp: Implement funcs to create the TEE channel
-:75: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#75: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
231491eefcc7 drm/i915/pxp: set KCR reg init
6ee365ff48d6 drm/i915/pxp: Create the arbitrary session after boot
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:383: CHECK:LINE_SPACING: Please don't use multiple blank lines
#383: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h:36:
+
+

total: 0 errors, 1 warnings, 1 checks, 339 lines checked
389286854a1d drm/i915/pxp: Implement arb session teardown
-:63: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:153:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 283 lines checked
8bb9f3f77bad drm/i915/pxp: Implement PXP irq handler
-:211: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#211: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 423 lines checked
c5a878193242 drm/i915/pxp: interfaces for using protected objects
-:674: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#674: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:61:
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)

total: 0 errors, 0 warnings, 1 checks, 676 lines checked
5d5cf83b00a6 drm/i915/pxp: start the arb session on demand
6c338ff4035f drm/i915/pxp: Enable PXP power management
-:120: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#120: 
new file mode 100644

-:188: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#188: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 232 lines checked
acfc177b569e drm/i915/pxp: Add plane decryption support
-:64: ERROR:CODE_INDENT: code indent should use tabs where possible
#64: FILE: drivers/gpu/drm/i915/display/intel_display.c:9631:
+        struct drm_i915_private *i915 = to_i915(obj->base.dev);$

-:64: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#64: FILE: drivers/gpu/drm/i915/display/intel_display.c:9631:
+        struct drm_i915_private *i915 = to_i915(obj->base.dev);$

-:66: ERROR:CODE_INDENT: code indent should use tabs where possible
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:9633:
+        return i915_gem_object_has_valid_protection(obj) &&$

-:66: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#66: FILE: drivers/gpu/drm/i915/display/intel_display.c:9633:
+        return i915_gem_object_has_valid_protection(obj) &&$

-:67: ERROR:CODE_INDENT: code indent should use tabs where possible
#67: FILE: drivers/gpu/drm/i915/display/intel_display.c:9634:
+               intel_pxp_is_active(&i915->gt.pxp);$

-:67: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#67: FILE: drivers/gpu/drm/i915/display/intel_display.c:9634:
+               intel_pxp_is_active(&i915->gt.pxp);$

-:95: ERROR:CODE_INDENT: code indent should use tabs where possible
#95: FILE: drivers/gpu/drm/i915/display/intel_display.c:9702:
+        }$

-:95: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#95: FILE: drivers/gpu/drm/i915/display/intel_display.c:9702:
+        }$

total: 4 errors, 4 warnings, 0 checks, 107 lines checked
44da0d1d6f69 drm/i915/pxp: black pixels on pxp disabled
-:168: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#168: FILE: drivers/gpu/drm/i915/i915_reg.h:11366:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:168: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#168: FILE: drivers/gpu/drm/i915/i915_reg.h:11366:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:169: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#169: FILE: drivers/gpu/drm/i915/i915_reg.h:11367:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:182: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#182: FILE: drivers/gpu/drm/i915/i915_reg.h:11380:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:182: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#182: FILE: drivers/gpu/drm/i915/i915_reg.h:11380:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:183: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#183: FILE: drivers/gpu/drm/i915/i915_reg.h:11381:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:196: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#196: FILE: drivers/gpu/drm/i915/i915_reg.h:11394:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:196: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#196: FILE: drivers/gpu/drm/i915/i915_reg.h:11394:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:197: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:11395:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 148 lines checked
3fffe5731ae9 drm/i915/pxp: enable PXP for integrated Gen12


