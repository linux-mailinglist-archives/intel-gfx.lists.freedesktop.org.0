Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFEC504D09
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 09:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9AF10EBBF;
	Mon, 18 Apr 2022 07:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A68710EB76;
 Mon, 18 Apr 2022 07:12:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4820CA7E03;
 Mon, 18 Apr 2022 07:12:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Mon, 18 Apr 2022 07:12:58 -0000
Message-ID: <165026597826.11401.11779740929136548452@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220418062157.2974665-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20220418062157.2974665-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/rpl-p=3A_Add_PCI_IDs_=28rev2=29?=
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

Series: drm/i915/rpl-p: Add PCI IDs (rev2)
URL   : https://patchwork.freedesktop.org/series/102701/
State : warning

== Summary ==

Error: dim checkpatch failed
b1fab34e082a drm/i915/rpl-p: Add PCI IDs
-:119: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#119: FILE: include/drm/i915_pciids.h:724:
+#define INTEL_RPLP_IDS(info) \
+	INTEL_VGA_DEVICE(0xA720, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

-:119: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#119: FILE: include/drm/i915_pciids.h:724:
+#define INTEL_RPLP_IDS(info) \
+	INTEL_VGA_DEVICE(0xA720, info), \
+	INTEL_VGA_DEVICE(0xA721, info), \
+	INTEL_VGA_DEVICE(0xA7A0, info), \
+	INTEL_VGA_DEVICE(0xA7A1, info), \
+	INTEL_VGA_DEVICE(0xA7A8, info), \
+	INTEL_VGA_DEVICE(0xA7A9, info)

total: 1 errors, 0 warnings, 1 checks, 79 lines checked


