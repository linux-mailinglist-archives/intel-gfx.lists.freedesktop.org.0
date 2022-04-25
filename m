Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69CE50DE2A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 12:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0524C10E292;
	Mon, 25 Apr 2022 10:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5103110E292;
 Mon, 25 Apr 2022 10:50:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4FA34A0003;
 Mon, 25 Apr 2022 10:50:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Mon, 25 Apr 2022 10:50:16 -0000
Message-ID: <165088381630.32286.12636055296270922349@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220425074901.3991274-1-alexander.usyskin@intel.com>
In-Reply-To: <20220425074901.3991274-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_platforms_=28rev2=29?=
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

Series: GSC support for XeHP SDV and DG2 platforms (rev2)
URL   : https://patchwork.freedesktop.org/series/102339/
State : warning

== Summary ==

Error: dim checkpatch failed
9eb52a6face3 HAX: drm/i915: force INTEL_MEI_GSC on for CI
bcb3f3e0f0e6 drm/i915/gsc: skip irq initialization if using polling
3c33122a6f2f drm/i915/gsc: add slow_fw flag to the mei auxiliary device
93f26e6be8e2 drm/i915/gsc: add slow_fw flag to the gsc device definition
8d51996ee984 drm/i915/gsc: add GSC XeHP SDV platform definition
e3c0939e6332 mei: gsc: use polling instead of interrupts
885811f13ec8 mei: gsc: wait for reset thread on stop
9946bcc89d8e mei: extend timeouts on slow devices.
ef1379eb6fe3 mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
5b11304a908c mei: mkhi: add memory ready command
-:46: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#46: FILE: drivers/misc/mei/mkhi.h:54:
+	uint32_t flags;

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
dadcfa341a66 mei: gsc: setup gsc extended operational memory
-:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
#51: FILE: drivers/misc/mei/bus-fixup.c:257:
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT))

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
8f005a4b080a mei: gsc: add transition to PXP mode in resume flow
d22619ef42f8 mei: debugfs: add pxp mode to devstate in debugfs
-:19: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#19: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
b7490e00c025 drm/i915/gsc: allocate extended operational memory in LMEM
-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/gpu/drm/i915/gt/intel_gsc.c:152:
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)

total: 0 errors, 0 warnings, 1 checks, 181 lines checked


