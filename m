Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE22311996
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 04:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F066F55F;
	Sat,  6 Feb 2021 03:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 00F686E3D6;
 Sat,  6 Feb 2021 03:14:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF9EAA47DB;
 Sat,  6 Feb 2021 03:14:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 06 Feb 2021 03:14:36 -0000
Message-ID: <161258127695.3572.12149133997200052424@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Intel_PXP?=
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

Series: Introduce Intel PXP
URL   : https://patchwork.freedesktop.org/series/86798/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7aa9cb10d6b7 drm/i915/pxp: Define PXP component interface
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 52 lines checked
4f3333b243ad mei: pxp: export pavp client to me client bus
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 277 lines checked
32f694bec37d drm/i915/pxp: define PXP device flag and kconfig
-:41: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1746:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

-:41: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#41: FILE: drivers/gpu/drm/i915/i915_drv.h:1746:
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)

total: 1 errors, 0 warnings, 1 checks, 34 lines checked
bd3c9d86e3d9 drm/i915/pxp: allocate a vcs context for pxp usage
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

-:136: WARNING:RETURN_VOID: void function return statements are not generally useful
#136: FILE: drivers/gpu/drm/i915/pxp/intel_pxp.c:53:
+	return;
+}

total: 0 errors, 2 warnings, 0 checks, 159 lines checked
fba284057979 drm/i915/pxp: set KCR reg init during the boot time
4536d239a998 drm/i915/pxp: Implement funcs to create the TEE channel
-:97: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#97: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 161 lines checked
e2c06ca6e948 drm/i915/pxp: Create the arbitrary session after boot
-:46: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#46: 
new file mode 100644

-:318: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#318: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_types.h:17:
+	struct mutex mutex;

-:331: CHECK:LINE_SPACING: Please don't use multiple blank lines
#331: FILE: include/uapi/drm/i915_drm.h:2379:
 
+

total: 0 errors, 1 warnings, 2 checks, 274 lines checked
708df2ee4706 drm/i915/pxp: Implement arb session teardown
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:171: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#171: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:140:
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;

-:171: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#171: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c:140:
+#define MFX_WAIT_PXP \
+	MFX_WAIT | \
+	MFX_WAIT_DW0_PXP_SYNC_CONTROL_FLAG | \
+	MFX_WAIT_DW0_MFX_SYNC_CONTROL_FLAG;

total: 1 errors, 2 warnings, 0 checks, 321 lines checked
1114f3b829b2 drm/i915/pxp: Implement PXP irq handler
-:124: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#124: 
new file mode 100644

-:301: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#301: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:22:
+}
+void intel_pxp_irq_enable(struct intel_pxp *pxp)

-:304: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#304: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:25:
+}
+void intel_pxp_irq_disable(struct intel_pxp *pxp)

-:307: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#307: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_irq.h:28:
+}
+static inline void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)

total: 0 errors, 1 warnings, 3 checks, 301 lines checked
f02841c95381 drm/i915/pxp: Enable PXP power management
-:110: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#110: 
new file mode 100644

-:207: WARNING:RETURN_VOID: void function return statements are not generally useful
#207: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_pm.c:93:
+	return;
+}

total: 0 errors, 2 warnings, 0 checks, 207 lines checked
3aa79d7b4bbd drm/i915/uapi: introduce drm_i915_gem_create_ext
-:106: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#106: FILE: include/uapi/drm/i915_drm.h:395:
+#define DRM_IOCTL_I915_GEM_CREATE_EXT   DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_CREATE, struct drm_i915_gem_create_ext)

total: 0 errors, 1 warnings, 0 checks, 135 lines checked
998839e51267 drm/i915/pxp: User interface for Protected buffer
-:219: CHECK:LINE_SPACING: Please don't use multiple blank lines
#219: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:502:
 
+

total: 0 errors, 0 warnings, 1 checks, 230 lines checked
506139f99362 drm/i915/pxp: Add plane decryption support
fdf64b2df325 drm/i915/pxp: enable PXP for integrated Gen12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
