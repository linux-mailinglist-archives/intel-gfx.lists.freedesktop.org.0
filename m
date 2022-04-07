Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A04F84A9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C305610E1C1;
	Thu,  7 Apr 2022 16:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A5CA10E1C1;
 Thu,  7 Apr 2022 16:13:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6409CAADD8;
 Thu,  7 Apr 2022 16:13:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Thu, 07 Apr 2022 16:13:32 -0000
Message-ID: <164934801240.14670.7072487982931203991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_platforms?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: GSC support for XeHP SDV and DG2 platforms
URL   : https://patchwork.freedesktop.org/series/102339/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
57df08911dad drm/i915/gsc: add gsc as a mei auxiliary device
-:65: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#65: 
new file mode 100644

-:459: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#459: FILE: drivers/gpu/drm/i915/i915_drv.h:1316:
+#define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 418 lines checked
cbe282748891 mei: add support for graphics system controller (gsc) devices
-:57: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#57: 
new file mode 100644

-:255: WARNING:MODULE_LICENSE: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#255: FILE: drivers/misc/mei/gsc-me.c:194:
+MODULE_LICENSE("GPL v2");

total: 0 errors, 2 warnings, 0 checks, 297 lines checked
73727156241a mei: gsc: setup char driver alive in spite of firmware handshake failure
cf7d610b88d2 mei: gsc: add runtime pm handlers
3b921daf3d69 mei: gsc: retrieve the firmware version
7bf14c184625 HAX: drm/i915: force INTEL_MEI_GSC on for CI
79367081c714 drm/i915/gsc: skip irq initialization if using polling
e4627be07856 drm/i915/gsc: add slow_fw flag to the mei auxiliary device
c3a1f69fab81 drm/i915/gsc: add slow_fw flag to the gsc device definition
c8d254e0de12 drm/i915/gsc: add GSC XeHP SDV platform definition
7102bca609de mei: gsc: use polling instead of interrupts
ce5e1f8ea33d mei: gsc: wait for reset thread on stop
613f4221d396 mei: extend timeouts on slow devices.
c7ef5e1c508b drm/i915/dg2: add gsc with special gsc bar offsets
a289d7722c57 mei: bus: export common mkhi definitions into a separate header
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
f767b7e3953f mei: mkhi: add memory ready command
-:46: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#46: FILE: drivers/misc/mei/mkhi.h:54:
+	uint32_t flags;

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
ed778c11fb2f mei: gsc: setup gsc extended operational memory
-:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
#51: FILE: drivers/misc/mei/bus-fixup.c:257:
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT))

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
0c7708f978ad mei: gsc: add transition to PXP mode in resume flow
d7761f03a774 mei: debugfs: add pxp mode to devstate in debugfs
-:19: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#19: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
9f233cb0bb63 drm/i915/gsc: allocate extended operational memory in LMEM
-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/gpu/drm/i915/gt/intel_gsc.c:152:
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)

total: 0 errors, 0 warnings, 1 checks, 181 lines checked


