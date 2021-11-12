Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43E244EEE2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 22:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C466E2E1;
	Fri, 12 Nov 2021 21:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339D86E2E1;
 Fri, 12 Nov 2021 21:51:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D8E8AA0EA;
 Fri, 12 Nov 2021 21:51:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 12 Nov 2021 21:51:16 -0000
Message-ID: <163675387618.27231.13757300594426847305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
In-Reply-To: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Introduce_Raptor_Lake_S?=
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

Series: Introduce Raptor Lake S
URL   : https://patchwork.freedesktop.org/series/96869/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
47ee6a9cad2e drm/i915/rpl-s: Add PCI IDS
-:100: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#100: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_RPLS_IDS(info) \
+	INTEL_VGA_DEVICE(0xA780, info), \
+	INTEL_VGA_DEVICE(0xA781, info), \
+	INTEL_VGA_DEVICE(0xA782, info), \
+	INTEL_VGA_DEVICE(0xA783, info), \
+	INTEL_VGA_DEVICE(0xA788, info), \
+	INTEL_VGA_DEVICE(0xA789, info), \
+	INTEL_VGA_DEVICE(0xA78A, info), \
+	INTEL_VGA_DEVICE(0xA78B, info)

-:100: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'info' - possible side-effects?
#100: FILE: include/drm/i915_pciids.h:670:
+#define INTEL_RPLS_IDS(info) \
+	INTEL_VGA_DEVICE(0xA780, info), \
+	INTEL_VGA_DEVICE(0xA781, info), \
+	INTEL_VGA_DEVICE(0xA782, info), \
+	INTEL_VGA_DEVICE(0xA783, info), \
+	INTEL_VGA_DEVICE(0xA788, info), \
+	INTEL_VGA_DEVICE(0xA789, info), \
+	INTEL_VGA_DEVICE(0xA78A, info), \
+	INTEL_VGA_DEVICE(0xA78B, info)

total: 1 errors, 0 warnings, 1 checks, 65 lines checked
ad883b7bc4b6 drm/i915/rpl-s: Add PCH ID
5560fe514f56 drm/i915/rpl-s: Enable guc submission by default


