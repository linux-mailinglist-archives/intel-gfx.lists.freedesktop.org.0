Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9032C550B0B
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jun 2022 15:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1802B10E673;
	Sun, 19 Jun 2022 13:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E99EE10E44E;
 Sun, 19 Jun 2022 13:56:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFB6EAADE1;
 Sun, 19 Jun 2022 13:56:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Sun, 19 Jun 2022 13:56:08 -0000
Message-ID: <165564696888.17163.11922646077764430737@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220619133721.523546-1-alexander.usyskin@intel.com>
In-Reply-To: <20220619133721.523546-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GSC_support_for_XeHP_SDV_and_DG2_platforms_=28rev3=29?=
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

Series: GSC support for XeHP SDV and DG2 platforms (rev3)
URL   : https://patchwork.freedesktop.org/series/102339/
State : warning

== Summary ==

Error: dim checkpatch failed
7345b6d5fb21 HAX: drm/i915: force INTEL_MEI_GSC on for CI
4785ff3d2d94 drm/i915/gsc: skip irq initialization if using polling
8072311356c0 drm/i915/gsc: add slow_fw flag to the mei auxiliary device
7759a820a5cd drm/i915/gsc: add slow_fw flag to the gsc device definition
b6e86073b6ac drm/i915/gsc: add GSC XeHP SDV platform definition
3767e326f1b4 mei: gsc: use polling instead of interrupts
ea6a7017d6c4 mei: gsc: wait for reset thread on stop
90b3dd6fa905 mei: extend timeouts on slow devices.
49a776e97dd0 mei: bus: export common mkhi definitions into a separate header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:78: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#78: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 101 lines checked
bdfa61ef3285 mei: mkhi: add memory ready command
-:46: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#46: FILE: drivers/misc/mei/mkhi.h:54:
+	uint32_t flags;

total: 0 errors, 0 warnings, 1 checks, 29 lines checked
539e465942e6 mei: gsc: setup gsc extended operational memory
-:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'cldev->bus->pxp_mode != MEI_DEV_PXP_INIT'
#51: FILE: drivers/misc/mei/bus-fixup.c:257:
+	if (!cldev->bus->fw_f_fw_ver_supported &&
+	    (cldev->bus->pxp_mode != MEI_DEV_PXP_INIT))

total: 0 errors, 0 warnings, 1 checks, 224 lines checked
8095bf923900 mei: gsc: add transition to PXP mode in resume flow
9d43ddaa46ee mei: debugfs: add pxp mode to devstate in debugfs
-:19: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#19: FILE: drivers/misc/mei/debugfs.c:91:
+#define MEI_PXP_MODE(state) case MEI_DEV_PXP_##state: return #state

total: 1 errors, 0 warnings, 0 checks, 29 lines checked
9f3f139a1dd2 drm/i915/gsc: allocate extended operational memory in LMEM
-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/gpu/drm/i915/gt/intel_gsc.c:152:
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)

total: 0 errors, 0 warnings, 1 checks, 181 lines checked


