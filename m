Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AADF82DA663
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 03:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C319C89F38;
	Tue, 15 Dec 2020 02:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7344189F2A;
 Tue, 15 Dec 2020 02:46:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E660A9932;
 Tue, 15 Dec 2020 02:46:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 15 Dec 2020 02:46:15 -0000
Message-ID: <160800037542.24781.4849765354533256702@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201215021509.32176-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201215021509.32176-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Split_logical?=
 =?utf-8?q?_ring_contexts_from_execlist_submission?=
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

Series: series starting with [1/2] drm/i915/gt: Split logical ring contexts from execlist submission
URL   : https://patchwork.freedesktop.org/series/84930/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b43f0b75f3e2 drm/i915/gt: Split logical ring contexts from execlist submission
-:1796: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1796: 
new file mode 100644

-:1825: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#1825: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:25:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:1827: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1827: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:27:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:1828: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1828: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:28:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1828: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1828: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:28:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1831: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1831: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:31:
+#define END(total_state_size) 0, (total_state_size)

-:5791: WARNING:MEMORY_BARRIER: memory barrier without comment
#5791: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:638:
+		wmb();

-:5820: WARNING:MEMORY_BARRIER: memory barrier without comment
#5820: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:667:
+	wmb();

-:5952: WARNING:MEMORY_BARRIER: memory barrier without comment
#5952: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:799:
+		wmb();

-:6500: WARNING:MEMORY_BARRIER: memory barrier without comment
#6500: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1347:
+	wmb();

-:6914: WARNING:LINE_SPACING: Missing a blank line after declarations
#6914: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1761:
+	struct i915_request *rq;
+	IGT_TIMEOUT(end_time);

total: 2 errors, 6 warnings, 3 checks, 5221 lines checked
35c99bde3b21 drm/i915/gt: Provide a utility to create a scratch buffer


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
