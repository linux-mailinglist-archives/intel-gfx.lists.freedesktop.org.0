Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F464700F7
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 13:45:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394AF10E6A7;
	Fri, 10 Dec 2021 12:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 69E7C10E6A7;
 Fri, 10 Dec 2021 12:45:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 619CEA9A42;
 Fri, 10 Dec 2021 12:45:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Fri, 10 Dec 2021 12:45:28 -0000
Message-ID: <163914032836.3443.11921159937684285998@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/adl-n=3A_Enable_ADL-N_platform_=28rev3=29?=
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

Series: drm/i915/adl-n: Enable ADL-N platform (rev3)
URL   : https://patchwork.freedesktop.org/series/97406/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d0f0f58c665 drm/i915/adl-n: Enable ADL-N platform
-:103: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#103: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_ADLN_IDS(info) \
+	INTEL_VGA_DEVICE(0x46D0, info), \
+	INTEL_VGA_DEVICE(0x46D1, info), \
+	INTEL_VGA_DEVICE(0x46D2, info)

-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#103: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_ADLN_IDS(info) \
+	INTEL_VGA_DEVICE(0x46D0, info), \
+	INTEL_VGA_DEVICE(0x46D1, info), \
+	INTEL_VGA_DEVICE(0x46D2, info)

total: 1 errors, 0 warnings, 1 checks, 62 lines checked


