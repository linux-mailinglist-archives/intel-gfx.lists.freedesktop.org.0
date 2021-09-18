Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356F44103BF
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 06:52:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40D16F3C6;
	Sat, 18 Sep 2021 04:52:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 452816E0D7;
 Sat, 18 Sep 2021 04:52:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3525BAA0EB;
 Sat, 18 Sep 2021 04:52:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Sep 2021 04:52:34 -0000
Message-ID: <163194075418.23825.11252259365335399039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP_=28rev8=29?=
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

Series: drm/i915: Introduce Intel PXP (rev8)
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e27175183684 drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
012116d10cdd mei: pxp: export pavp client to me client bus
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 276 lines checked
af5e58681019 drm/i915/pxp: define PXP device flag and kconfig
-:47: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#47: FILE: drivers/gpu/drm/i915/i915_drv.h:1681:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:47: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#47: FILE: drivers/gpu/drm/i915/i915_drv.h:1681:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 33 lines checked
5dedc9b4fe19 drm/i915/pxp: allocate a vcs context for pxp usage
-:99: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#99: 
new file mode 100644

-:128: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#128: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:25:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 170 lines checked
d38c24e6e3ee drm/i915/pxp: Implement funcs to create the TEE channel
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 145 lines checked
fa9eb97502e6 drm/i915/pxp: set KCR reg init
-:30: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#30: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:14:
+
+}

total: 0 errors, 0 warnings, 1 checks, 64 lines checked
930d960635dc drm/i915/pxp: Create the arbitrary session after boot
-:107: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#107: 
new file mode 100644

-:392: CHECK:LINE_SPACING: Please don't use multiple blank lines
#392: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h:36:
+
+

total: 0 errors, 1 warnings, 1 checks, 345 lines checked
5e0df3748521 drm/i915/pxp: Implement arb session teardown
-:63: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:153:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 1 checks, 283 lines checked
82b3c64893e8 drm/i915/pxp: Implement PXP irq handler
-:212: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#212: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 424 lines checked
c6743ef21dc4 drm/i915/pxp: interfaces for using protected objects
4eded7843af4 drm/i915/pxp: start the arb session on demand
575446839b7e drm/i915/pxp: Enable PXP power management
-:121: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#121: 
new file mode 100644

-:195: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#195: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 238 lines checked
cb48f7c7e563 drm/i915/pxp: Add plane decryption support
-:36: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#36: 
v10 (Daniele): update PXP check again to match rework in earlier patches and

total: 0 errors, 1 warnings, 0 checks, 155 lines checked
0f9612c2a9dc drm/i915/pxp: black pixels on pxp disabled
-:169: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#169: FILE: drivers/gpu/drm/i915/i915_reg.h:11412:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:169: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#169: FILE: drivers/gpu/drm/i915/i915_reg.h:11412:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:170: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#170: FILE: drivers/gpu/drm/i915/i915_reg.h:11413:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#183: FILE: drivers/gpu/drm/i915/i915_reg.h:11426:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:183: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#183: FILE: drivers/gpu/drm/i915/i915_reg.h:11426:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:184: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#184: FILE: drivers/gpu/drm/i915/i915_reg.h:11427:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:11440:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:197: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#197: FILE: drivers/gpu/drm/i915/i915_reg.h:11440:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:198: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#198: FILE: drivers/gpu/drm/i915/i915_reg.h:11441:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 148 lines checked
c47b65bb5067 drm/i915/pxp: add pxp debugfs
-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 120 lines checked
3dfd4a0acb75 drm/i915/pxp: add PXP documentation
6033e584a830 drm/i915/pxp: enable PXP for integrated Gen12


