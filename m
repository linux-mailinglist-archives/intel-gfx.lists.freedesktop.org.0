Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CB311822D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 09:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D3F6E82D;
	Tue, 10 Dec 2019 08:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D60C96E82D;
 Tue, 10 Dec 2019 08:26:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDF1FA0119;
 Tue, 10 Dec 2019 08:26:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 10 Dec 2019 08:26:02 -0000
Message-ID: <157596636281.18784.8568099753132481640@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210150415.10705-1-shawn.c.lee@intel.com>
In-Reply-To: <20191210150415.10705-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/cml=3A_Remove_unsupport_PCI_ID?=
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

Series: drm/i915/cml: Remove unsupport PCI ID
URL   : https://patchwork.freedesktop.org/series/70668/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1252381d27fa drm/i915/cml: Remove unsupport PCI ID
70d0910f13a4 drm/i915/cml: Separate U series pci id from origianl list.
-:58: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#58: FILE: include/drm/i915_pciids.h:454:
+#define INTEL_CML_U_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B21, info), \
+	INTEL_VGA_DEVICE(0x9BAA, info), \
+	INTEL_VGA_DEVICE(0x9BAC, info)

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#58: FILE: include/drm/i915_pciids.h:454:
+#define INTEL_CML_U_GT1_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B21, info), \
+	INTEL_VGA_DEVICE(0x9BAA, info), \
+	INTEL_VGA_DEVICE(0x9BAC, info)

-:75: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#75: FILE: include/drm/i915_pciids.h:469:
+#define INTEL_CML_U_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B41, info), \
+	INTEL_VGA_DEVICE(0x9BCA, info), \
+	INTEL_VGA_DEVICE(0x9BCC, info)

-:75: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#75: FILE: include/drm/i915_pciids.h:469:
+#define INTEL_CML_U_GT2_IDS(info) \
+	INTEL_VGA_DEVICE(0x9B41, info), \
+	INTEL_VGA_DEVICE(0x9BCA, info), \
+	INTEL_VGA_DEVICE(0x9BCC, info)

total: 2 errors, 0 warnings, 2 checks, 61 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
