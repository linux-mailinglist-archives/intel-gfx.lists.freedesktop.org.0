Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3ED5011E7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:03:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A0810E2DD;
	Thu, 14 Apr 2022 15:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ECC310E2DD;
 Thu, 14 Apr 2022 15:03:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1ADFDAA01E;
 Thu, 14 Apr 2022 15:03:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Thu, 14 Apr 2022 15:03:22 -0000
Message-ID: <164994860207.1347.12408980273825500193@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220414140626.2810550-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220414140626.2810550-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/rpl-p=3A_Add_PCI_IDs?=
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

Series: drm/i915/rpl-p: Add PCI IDs
URL   : https://patchwork.freedesktop.org/series/102701/
State : warning

== Summary ==

Error: dim checkpatch failed
c6b5a4897d53 drm/i915/rpl-p: Add PCI IDs
-:107: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#107: FILE: include/drm/i915_pciids.h:724:
+#define INTEL_RPLP_IDS(info) \
+	INTEL_VGA_DEVICE(0xA720, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

-:107: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#107: FILE: include/drm/i915_pciids.h:724:
+#define INTEL_RPLP_IDS(info) \
+	INTEL_VGA_DEVICE(0xA720, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

total: 1 errors, 0 warnings, 1 checks, 71 lines checked


