Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9239D3D9C1B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 05:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006616E83C;
	Thu, 29 Jul 2021 03:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE4856E3D8;
 Thu, 29 Jul 2021 03:16:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6638AA915;
 Thu, 29 Jul 2021 03:16:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 29 Jul 2021 03:16:07 -0000
Message-ID: <162752856765.27326.8517656969713476390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Introduce Intel PXP (rev2)
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3eda4d7baf4a drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
1ee35a3e836c mei: pxp: export pavp client to me client bus
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 276 lines checked
c61305748e40 drm/i915/pxp: define PXP device flag and kconfig
-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1727:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1727:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
aa416e099e6f drm/i915/pxp: allocate a vcs context for pxp usage
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:122: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#122: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 168 lines checked
7ffdfca48a9e drm/i915/pxp: Implement funcs to create the TEE channel
-:75: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#75: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
6f6679322f8d drm/i915/pxp: set KCR reg init
57f92b5ff2d8 drm/i915/pxp: Create the arbitrary session after boot
-:98: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#98: 
new file mode 100644

-:383: CHECK:LINE_SPACING: Please don't use multiple blank lines
#383: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h:36:
+
+

total: 0 errors, 1 warnings, 1 checks, 339 lines checked
26740ebc8086 drm/i915/pxp: Implement arb session teardown
-:63: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:153:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 283 lines checked
363a76eda1be drm/i915/pxp: Implement PXP irq handler
-:211: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#211: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 423 lines checked
89558164d429 drm/i915/pxp: interfaces for using protected objects
-:673: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#673: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:61:
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)

total: 0 errors, 0 warnings, 1 checks, 676 lines checked
fe8ab2429443 drm/i915/pxp: start the arb session on demand
8ad86e692de6 drm/i915/pxp: Enable PXP power management
-:120: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#120: 
new file mode 100644

-:188: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#188: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 232 lines checked
0f8e7697ee99 drm/i915/pxp: Add plane decryption support
9f4496a68386 drm/i915/pxp: black pixels on pxp disabled
-:165: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#165: FILE: drivers/gpu/drm/i915/i915_reg.h:11389:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:165: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#165: FILE: drivers/gpu/drm/i915/i915_reg.h:11389:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:166: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#166: FILE: drivers/gpu/drm/i915/i915_reg.h:11390:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:179: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#179: FILE: drivers/gpu/drm/i915/i915_reg.h:11403:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:179: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#179: FILE: drivers/gpu/drm/i915/i915_reg.h:11403:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:180: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#180: FILE: drivers/gpu/drm/i915/i915_reg.h:11404:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:193: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#193: FILE: drivers/gpu/drm/i915/i915_reg.h:11417:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:193: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#193: FILE: drivers/gpu/drm/i915/i915_reg.h:11417:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:194: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/i915_reg.h:11418:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 149 lines checked
8893b90612e6 drm/i915/pxp: enable PXP for integrated Gen12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
