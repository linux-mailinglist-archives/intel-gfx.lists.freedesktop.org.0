Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 759383FA2FF
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Aug 2021 03:54:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29D926E9F7;
	Sat, 28 Aug 2021 01:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7047F6E9F4;
 Sat, 28 Aug 2021 01:54:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CED7A47E2;
 Sat, 28 Aug 2021 01:54:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Aug 2021 01:54:29 -0000
Message-ID: <163011566934.4572.6359687893117747359@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210828012738.317661-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210828012738.317661-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP_=28rev5=29?=
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

Series: drm/i915: Introduce Intel PXP (rev5)
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
910059416d57 drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
abf9668ab4e5 mei: pxp: export pavp client to me client bus
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 276 lines checked
eb96dbcf454a drm/i915/pxp: define PXP device flag and kconfig
-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1704:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1704:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 33 lines checked
80b13361e371 drm/i915/pxp: allocate a vcs context for pxp usage
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:122: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#122: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 168 lines checked
74e6bcfbdce1 drm/i915/pxp: Implement funcs to create the TEE channel
-:77: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#77: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 145 lines checked
ca95163833b5 drm/i915/pxp: set KCR reg init
561e93566dae drm/i915/pxp: Create the arbitrary session after boot
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:383: CHECK:LINE_SPACING: Please don't use multiple blank lines
#383: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h:36:
+
+

total: 0 errors, 1 warnings, 1 checks, 337 lines checked
244c1b99cd66 drm/i915/pxp: Implement arb session teardown
-:63: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:153:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 283 lines checked
dcae974c66c3 drm/i915/pxp: Implement PXP irq handler
-:211: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#211: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 423 lines checked
ceac05faf4c2 drm/i915/pxp: interfaces for using protected objects
1a6b3fc054d6 drm/i915/pxp: start the arb session on demand
7c81b7112e15 drm/i915/pxp: Enable PXP power management
-:120: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#120: 
new file mode 100644

-:188: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#188: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 232 lines checked
6b8ca79c42ed drm/i915/pxp: Add plane decryption support
-:36: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#36: 
v10 (Daniele): update PXP check again to match rework in earlier patches and

total: 0 errors, 1 warnings, 0 checks, 155 lines checked
86464081f910 drm/i915/pxp: black pixels on pxp disabled
-:169: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#169: FILE: drivers/gpu/drm/i915/i915_reg.h:11392:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:169: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#169: FILE: drivers/gpu/drm/i915/i915_reg.h:11392:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:170: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#170: FILE: drivers/gpu/drm/i915/i915_reg.h:11393:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#183: FILE: drivers/gpu/drm/i915/i915_reg.h:11406:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#183: FILE: drivers/gpu/drm/i915/i915_reg.h:11406:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:184: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#184: FILE: drivers/gpu/drm/i915/i915_reg.h:11407:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:11420:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:11420:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:198: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:11421:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 148 lines checked
789cdd175095 drm/i915/pxp: add pxp debugfs
-:44: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#44: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 120 lines checked
e42cbed9b722 drm/i915/pxp: add PXP documentation
f3e795b02f57 drm/i915/pxp: enable PXP for integrated Gen12


