Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4DA328FB3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 21:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4346E88D;
	Mon,  1 Mar 2021 20:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A406A6E88C;
 Mon,  1 Mar 2021 20:00:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C31A5AA3D8;
 Mon,  1 Mar 2021 20:00:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Mon, 01 Mar 2021 20:00:09 -0000
Message-ID: <161462880979.9389.2632373280982041175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_=28rev2=29?=
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

Series: Introduce Intel PXP (rev2)
URL   : https://patchwork.freedesktop.org/series/86798/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3a311348975 drm/i915/pxp: Define PXP component interface
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
b39091843fc5 mei: pxp: export pavp client to me client bus
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:161: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#161: FILE: drivers/misc/mei/pxp/mei_pxp.c:92:
+	dev_dbg(dev, "%s\n", __func__);

-:176: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#176: FILE: drivers/misc/mei/pxp/mei_pxp.c:107:
+	dev_dbg(dev, "%s\n", __func__);

total: 0 errors, 3 warnings, 0 checks, 277 lines checked
82f987002778 drm/i915/pxp: define PXP device flag and kconfig
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1745:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1745:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
c827c2625593 drm/i915/pxp: allocate a vcs context for pxp usage
-:168: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#168: 
new file mode 100644

-:192: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#192: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

-:228: WARNING:RETURN_VOID: void function return statements are not generally useful
#228: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:56:
+	return;
+}

total: 1 errors, 2 warnings, 0 checks, 233 lines checked
e8d17e3b42bd drm/i915/pxp: set KCR reg init during the boot time
5ae54e4b7228 drm/i915/pxp: Implement funcs to create the TEE channel
-:71: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#71: 
new file mode 100644

-:93: CHECK:LINE_SPACING: Please don't use multiple blank lines
#93: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:18:
+
+

total: 0 errors, 1 warnings, 1 checks, 145 lines checked
cf600c3c742a drm/i915/pxp: Create the arbitrary session after boot
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
new file mode 100644

-:341: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#341: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_types.h:20:
+	struct mutex mutex;

-:354: CHECK:LINE_SPACING: Please don't use multiple blank lines
#354: FILE: include/uapi/drm/i915_drm.h:2379:
 
+

total: 0 errors, 1 warnings, 2 checks, 288 lines checked
8113993a2d3e drm/i915/pxp: Implement arb session teardown
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:65: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#65: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:31:
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;

-:65: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#65: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:31:
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;

total: 1 errors, 2 warnings, 0 checks, 258 lines checked
ebfeffa20951 drm/i915/pxp: Implement PXP irq handler
-:185: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#185: 
new file mode 100644

-:368: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#368: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:22:
+}
+void intel_pxp_irq_enable(struct intel_pxp *pxp)

-:371: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#371: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:25:
+}
+void intel_pxp_irq_disable(struct intel_pxp *pxp)

-:374: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#374: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:28:
+}
+static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)

total: 0 errors, 1 warnings, 3 checks, 384 lines checked
9e8f422996d7 drm/i915/pxp: Enable PXP power management
-:123: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#123: 
new file mode 100644

-:252: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#252: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:20:
+}
+static inline int intel_pxp_pm_resume(struct intel_pxp *pxp)

-:256: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#256: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:24:
+}
+static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp)

-:259: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#259: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:27:
+}
+static inline int intel_pxp_runtime_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 3 checks, 284 lines checked
0d03068b552a drm/i915/pxp: interface for creation of protected contexts
-:23: WARNING:BAD_SIGN_OFF: Duplicate signature
#23: 
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:322: ERROR:TRAILING_WHITESPACE: trailing whitespace
#322: FILE: include/uapi/drm/i915_drm.h:1707:
+ * Given the numerous restriction on this flag, there are several unique $

total: 1 errors, 1 warnings, 0 checks, 265 lines checked
e568c1b52ed7 drm/i915/uapi: introduce drm_i915_gem_create_ext
-:106: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#106: FILE: include/uapi/drm/i915_drm.h:395:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
f99a324742e0 drm/i915/pxp: User interface for Protected buffer
-:317: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#317: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:65:
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)

-:343: WARNING:USE_SPINLOCK_T: struct spinlock should be spinlock_t
#343: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_types.h:34:
+	struct spinlock lock;

total: 0 errors, 1 warnings, 1 checks, 295 lines checked
de691ae4574f drm/i915/pxp: Add plane decryption support
13f73d6d4665 drm/i915/pxp: black pixels on pxp disabled
-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/i915_reg.h:11181:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/i915_reg.h:11181:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:111: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/i915_reg.h:11182:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_reg.h:11195:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_reg.h:11195:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:125: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#125: FILE: drivers/gpu/drm/i915/i915_reg.h:11196:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_reg.h:11209:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_reg.h:11209:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:139: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/i915_reg.h:11210:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 115 lines checked
4f113650134a drm/i915/pxp: enable PXP for integrated Gen12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
