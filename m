Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A87B238FAC7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 08:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6358689CD5;
	Tue, 25 May 2021 06:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE0F889276;
 Tue, 25 May 2021 06:18:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7FC8A00E6;
 Tue, 25 May 2021 06:18:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Tue, 25 May 2021 06:18:27 -0000
Message-ID: <162192350768.1318.9599183727702920340@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210525054803.7387-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP?=
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

Series: drm/i915: Introduce Intel PXP
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ef325598b78f drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
85662cad4815 mei: pxp: export pavp client to me client bus
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
2dc2268deb12 drm/i915/pxp: define PXP device flag and kconfig
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

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
2b998e8ec953 drm/i915/gt: Export the pinned context constructor and destructor
8a76c2a85287 drm/i915/pxp: allocate a vcs context for pxp usage
-:97: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#97: 
new file mode 100644

-:121: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#121: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:20:
+	for (engine = gt->engine_class[VIDEO_DECODE_CLASS][0]; !engine; engine++);

total: 1 errors, 1 warnings, 0 checks, 168 lines checked
6bd0c1203dc5 drm/i915/pxp: Implement funcs to create the TEE channel
-:72: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#72: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 152 lines checked
d9c097841a73 drm/i915/pxp: set KCR reg init
7161fc685bdf drm/i915/pxp: Create the arbitrary session after boot
-:87: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#87: 
new file mode 100644

-:344: CHECK:LINE_SPACING: Please don't use multiple blank lines
#344: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h:36:
+
+

total: 0 errors, 1 warnings, 1 checks, 300 lines checked
cb24d6a2574a drm/i915/pxp: Implement arb session teardown
-:63: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#63: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:151:
+#define   MI_FLUSH_DW_PROTECTED_MEM_EN	(1<<22)
                                       	  ^

-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

-:139: ERROR:CODE_INDENT: code indent should use tabs where possible
#139: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:18:
+^I              MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG)$

total: 1 errors, 1 warnings, 1 checks, 282 lines checked
4b5b3318d941 drm/i915/pxp: Implement PXP irq handler
-:209: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#209: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 420 lines checked
33fe09ce5d32 drm/i915/pxp: interface for marking contexts as using protected content
a3dfaa44f65f drm/i915/pxp: start the arb session on demand
bec1d65ea26a drm/i915/pxp: Enable PXP power management
-:137: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#137: 
new file mode 100644

-:205: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#205: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.h:18:
+}
+static inline void intel_pxp_resume(struct intel_pxp *pxp)

total: 0 errors, 1 warnings, 1 checks, 247 lines checked
6385a5aed210 drm/i915/pxp: User interface for Protected buffer
-:87: CHECK:LINE_SPACING: Please don't use multiple blank lines
#87: FILE: drivers/gpu/drm/i915/gem/i915_gem_create.c:371:
+
+

-:301: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#301: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.h:60:
+}
+static inline void intel_pxp_object_remove(struct drm_i915_gem_object *obj)

total: 0 errors, 0 warnings, 2 checks, 295 lines checked
45bde6c5331e drm/i915/pxp: Add plane decryption support
987b3307a598 drm/i915/pxp: black pixels on pxp disabled
-:164: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#164: FILE: drivers/gpu/drm/i915/i915_reg.h:11293:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:164: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#164: FILE: drivers/gpu/drm/i915/i915_reg.h:11293:
+#define PLANE_CSC_COEFF(pipe, plane, index)	_MMIO_PLANE(plane, \
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \
+							    _PLANE_CSC_RY_GY_2(pipe) + (index) * 4)

-:165: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#165: FILE: drivers/gpu/drm/i915/i915_reg.h:11294:
+							    _PLANE_CSC_RY_GY_1(pipe) +  (index) * 4, \

-:178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#178: FILE: drivers/gpu/drm/i915/i915_reg.h:11307:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:178: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#178: FILE: drivers/gpu/drm/i915/i915_reg.h:11307:
+#define PLANE_CSC_PREOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_PREOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \
+							    (index) * 4)

-:179: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#179: FILE: drivers/gpu/drm/i915/i915_reg.h:11308:
+							    (index) * 4, _PLANE_CSC_PREOFF_HI_2(pipe) + \

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/i915_reg.h:11321:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:192: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'index' - possible side-effects?
#192: FILE: drivers/gpu/drm/i915/i915_reg.h:11321:
+#define PLANE_CSC_POSTOFF(pipe, plane, index)	_MMIO_PLANE(plane, _PLANE_CSC_POSTOFF_HI_1(pipe) + \
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
+							    (index) * 4)

-:193: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#193: FILE: drivers/gpu/drm/i915/i915_reg.h:11322:
+							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \

total: 0 errors, 3 warnings, 6 checks, 149 lines checked
35fe0920dc18 drm/i915/pxp: enable PXP for integrated Gen12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
