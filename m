Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2016C5687B4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 14:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D34811A580;
	Wed,  6 Jul 2022 12:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDE4211A592;
 Wed,  6 Jul 2022 12:03:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4A5FA0096;
 Wed,  6 Jul 2022 12:03:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Wed, 06 Jul 2022 12:03:47 -0000
Message-ID: <165710902784.1549.1163038375378084815@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
In-Reply-To: <20220706114345.1128018-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_platforms_=28rev5=29?=
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

Series: GSC support for XeHP SDV and DG2 platforms (rev5)
URL   : https://patchwork.freedesktop.org/series/102339/
State : warning

== Summary ==

Error: dim checkpatch failed
063c66ed39c4 drm/i915/gsc: skip irq initialization if using polling
e199641a3bfd drm/i915/gsc: add slow_fw flag to the mei auxiliary device
3a3aef152444 drm/i915/gsc: add slow_fw flag to the gsc device definition
7183775ef399 drm/i915/gsc: add GSC XeHP SDV platform definition
ec13d3de378a mei: gsc: use polling instead of interrupts
7223884a32f3 mei: gsc: wait for reset thread on stop
6cf3605aef85 mei: extend timeouts on slow devices.
56873de7e258 mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
6787036d81c1 mei: mkhi: add memory ready command
-:47: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#47: FILE: drivers/misc/mei/mkhi.h:54:
+	uint32_t flags;

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
9517951c0ed6 mei: gsc: setup gsc extended operational memory
-:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
#51: FILE: drivers/misc/mei/bus-fixup.c:257:
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT))

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
ce035839905a mei: gsc: add transition to PXP mode in resume flow
b9184715fcd5 mei: debugfs: add pxp mode to devstate in debugfs
-:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#26: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
0e4a7f81c549 drm/i915/gsc: allocate extended operational memory in LMEM
-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/gpu/drm/i915/gt/intel_gsc.c:152:
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)

total: 0 errors, 0 warnings, 1 checks, 181 lines checked
ba0c192cac32 HAX: drm/i915: force INTEL_MEI_GSC on for CI


