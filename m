Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB0F41556C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 04:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1C16ECA7;
	Thu, 23 Sep 2021 02:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3A846ECA1;
 Thu, 23 Sep 2021 02:27:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA3CFAA0EB;
 Thu, 23 Sep 2021 02:27:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 02:27:53 -0000
Message-ID: <163236407366.31051.9292780328194657621@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20210922001531.399533-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Introduce_Intel_PXP_=28rev10=29?=
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

Series: drm/i915: Introduce Intel PXP (rev10)
URL   : https://patchwork.freedesktop.org/series/90503/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
05e1ec3f284d drm/i915/pxp: Define PXP component interface
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 49 lines checked
a6f0b119f74f mei: pxp: export pavp client to me client bus
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 276 lines checked
9f5fd3d81cf3 drm/i915/pxp: define PXP device flag and kconfig
-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#49: FILE: drivers/gpu/drm/i915/i915_drv.h:1686:
+#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			    INTEL_INFO(dev_priv)->has_pxp) && \
+			    VDBOX_MASK(&dev_priv->gt))

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
1b5cc61a686b drm/i915/pxp: allocate a vcs context for pxp usage
-:100: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#100: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 172 lines checked
8a35249b2073 drm/i915/pxp: Implement funcs to create the TEE channel
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 145 lines checked
d242815536ca drm/i915/pxp: set KCR reg init
d401356a6ad5 drm/i915/pxp: Create the arbitrary session after boot
-:107: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#107: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 344 lines checked
1975d3f5fda6 drm/i915/pxp: Implement arb session teardown
-:117: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#117: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 283 lines checked
2b49864b5bed drm/i915/pxp: Implement PXP irq handler
-:213: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#213: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 424 lines checked
f6b4768e1fa2 drm/i915/pxp: interfaces for using protected objects
c4ff99595b46 drm/i915/pxp: start the arb session on demand
54fbc154318a drm/i915/pxp: Enable PXP power management
-:122: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#122: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 239 lines checked
e58d9b52e0f0 drm/i915/pxp: Add plane decryption support
6faffa9df265 drm/i915/pxp: black pixels on pxp disabled
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
3c1965c6e3ef drm/i915/pxp: add pxp debugfs
-:48: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#48: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 120 lines checked
0ff702586cf9 drm/i915/pxp: add PXP documentation
4728e4ee5b2d drm/i915/pxp: enable PXP for integrated Gen12


