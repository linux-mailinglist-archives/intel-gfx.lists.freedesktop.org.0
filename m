Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D93282DC9B0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 00:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E5289AC9;
	Wed, 16 Dec 2020 23:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 77474899DE;
 Wed, 16 Dec 2020 23:45:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71D12A9A42;
 Wed, 16 Dec 2020 23:45:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 16 Dec 2020 23:45:44 -0000
Message-ID: <160816234444.16511.10210101248804620361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201216220353.18430-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201216220353.18430-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Split_lo?=
 =?utf-8?q?gical_ring_contexts_from_execlist_submission?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Split logical ring contexts from execlist submission
URL   : https://patchwork.freedesktop.org/series/85017/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d46ab2bc6044 drm/i915/gt: Split logical ring contexts from execlist submission
-:1796: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1796: 
new file mode 100644

-:1827: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#1827: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:27:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:1829: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1829: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:29:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:1830: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1830: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:30:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1830: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1830: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:30:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1833: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1833: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:33:
+#define END(total_state_size) 0, (total_state_size)

-:5792: WARNING:MEMORY_BARRIER: memory barrier without comment
#5792: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:637:
+		wmb();

-:5821: WARNING:MEMORY_BARRIER: memory barrier without comment
#5821: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:666:
+	wmb();

-:5953: WARNING:MEMORY_BARRIER: memory barrier without comment
#5953: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:798:
+		wmb();

-:6501: WARNING:MEMORY_BARRIER: memory barrier without comment
#6501: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1346:
+	wmb();

-:6915: WARNING:LINE_SPACING: Missing a blank line after declarations
#6915: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1760:
+	struct i915_request *rq;
+	IGT_TIMEOUT(end_time);

total: 2 errors, 6 warnings, 3 checks, 5222 lines checked
ec652f702ec9 drm/i915/gt: Provide a utility to create a scratch buffer


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
