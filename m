Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BFC457A58
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Nov 2021 02:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A5A6E87D;
	Sat, 20 Nov 2021 01:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B3E176E87A;
 Sat, 20 Nov 2021 01:12:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC0BAA7E03;
 Sat, 20 Nov 2021 01:12:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Sat, 20 Nov 2021 01:12:05 -0000
Message-ID: <163737072567.27211.5546457285216402241@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211120002921.1939452-1-anusha.srivatsa@intel.com>
In-Reply-To: <20211120002921.1939452-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Raptor_Lake_S_=28rev2=29?=
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

Series: Introduce Raptor Lake S (rev2)
URL   : https://patchwork.freedesktop.org/series/96869/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
56b18da79200 drm/i915/rpl-s: Add PCI IDS for Raptor Lake S
-:107: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#107: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_RPLS_IDS(info) \
+	INTEL_VGA_DEVICE(0xA780, info), \
+	INTEL_VGA_DEVICE(0xA781, info), \
+	INTEL_VGA_DEVICE(0xA782, info), \
+	INTEL_VGA_DEVICE(0xA783, info), \
+	INTEL_VGA_DEVICE(0xA788, info), \
+	INTEL_VGA_DEVICE(0xA789, info)

-:107: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#107: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_RPLS_IDS(info) \
+	INTEL_VGA_DEVICE(0xA780, info), \
+	INTEL_VGA_DEVICE(0xA781, info), \
+	INTEL_VGA_DEVICE(0xA782, info), \
+	INTEL_VGA_DEVICE(0xA783, info), \
+	INTEL_VGA_DEVICE(0xA788, info), \
+	INTEL_VGA_DEVICE(0xA789, info)

total: 1 errors, 0 warnings, 1 checks, 63 lines checked
d28b63700f32 drm/i915/rpl-s: Add PCH Support for Raptor Lake S
341e56667f47 drm/i915/rpl-s: Enable guc submission by default


