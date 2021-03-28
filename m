Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F33F034BFC8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 01:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E3F56E0A2;
	Sun, 28 Mar 2021 23:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16E3C6E05C;
 Sun, 28 Mar 2021 23:34:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04640A9932;
 Sun, 28 Mar 2021 23:34:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sun, 28 Mar 2021 23:34:29 -0000
Message-ID: <161697446999.1905.4727162846506770779@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210328225709.18541-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP_=28rev3=29?=
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

Series: Introduce Intel PXP (rev3)
URL   : https://patchwork.freedesktop.org/series/86798/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2fffdc9bd6ba drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
02633f66149b mei: pxp: export pavp client to me client bus
-:33: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#33: 
new file mode 100644

-:161: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#161: FILE: drivers/misc/mei/pxp/mei_pxp.c:92:
+	dev_dbg(dev, "%s\n", __func__);

-:176: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#176: FILE: drivers/misc/mei/pxp/mei_pxp.c:107:
+	dev_dbg(dev, "%s\n", __func__);

total: 0 errors, 3 warnings, 0 checks, 280 lines checked
c036327c9e13 drm/i915/pxp: define PXP device flag and kconfig
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1736:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:42: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#42: FILE: drivers/gpu/drm/i915/i915_drv.h:1736:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
88337c97ac74 drm/i915/pxp: allocate a vcs context for pxp usage
-:191: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#191: 
new file mode 100644

-:215: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#215: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 252 lines checked
4243fb716dc6 drm/i915/pxp: Implement funcs to create the TEE channel
-:69: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#69: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 142 lines checked
f1f5c9b44578 drm/i915/pxp: set KCR reg init
0eb8fb9b5f41 drm/i915/pxp: Create the arbitrary session after boot
-:75: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#75: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 280 lines checked
16a8074ae79e drm/i915/pxp: Implement arb session teardown
-:62: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#62: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:151:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:116: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#116: 
new file mode 100644

-:138: ERROR:CODE_INDENT: code indent should use tabs where possible
#138: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:18:
+^I              MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG)$

total: 1 errors, 1 warnings, 1 checks, 282 lines checked
79b9cb67b7e9 drm/i915/pxp: Implement PXP irq handler
-:220: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#220: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 426 lines checked
22699a366358 drm/i915/pxp: Enable PXP power management
-:132: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#132: 
new file mode 100644

-:197: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#197: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 245 lines checked
3e8ecf822ffa drm/i915/pxp: interface for marking contexts as using protected content
37ca85466387 drm/i915/uapi: introduce drm_i915_gem_create_ext
-:106: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#106: FILE: include/uapi/drm/i915_drm.h:395:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
335d8f6de7b8 drm/i915/pxp: User interface for Protected buffer
-:329: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#329: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:60:
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)

total: 0 errors, 0 warnings, 1 checks, 300 lines checked
4a1dd05541f5 drm/i915/pxp: Add plane decryption support
5078af49bd4f drm/i915/pxp: black pixels on pxp disabled
-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/i915_reg.h:11202:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/i915_reg.h:11202:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:111: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#111: FILE: drivers/gpu/drm/i915/i915_reg.h:11203:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_reg.h:11216:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:124: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#124: FILE: drivers/gpu/drm/i915/i915_reg.h:11216:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:125: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#125: FILE: drivers/gpu/drm/i915/i915_reg.h:11217:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_reg.h:11230:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/i915_reg.h:11230:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:139: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#139: FILE: drivers/gpu/drm/i915/i915_reg.h:11231:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 115 lines checked
d3fff13e5990 drm/i915/pxp: enable PXP for integrated Gen12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
