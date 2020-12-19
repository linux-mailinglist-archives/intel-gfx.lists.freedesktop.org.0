Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05AC2DECBE
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Dec 2020 03:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6C789DD5;
	Sat, 19 Dec 2020 02:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D440589704;
 Sat, 19 Dec 2020 02:30:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5B5DA7DFC;
 Sat, 19 Dec 2020 02:30:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 19 Dec 2020 02:30:15 -0000
Message-ID: <160834501578.22064.9325184293700665257@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201219020343.22681-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201219020343.22681-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/85105/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5dd14c1bb771 drm/i915/gt: Split logical ring contexts from execlist submission
-:1882: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1882: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3406:
+static int virtual_context_pre_pin(struct intel_context *ce,
+				     struct i915_gem_ww_ctx *ww,

-:1974: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1974: 
new file mode 100644

-:2005: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#2005: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:27:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:2007: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2007: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:29:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:2008: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2008: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:30:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:2008: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2008: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:30:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:6071: WARNING:MEMORY_BARRIER: memory barrier without comment
#6071: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:634:
+		wmb();

-:6100: WARNING:MEMORY_BARRIER: memory barrier without comment
#6100: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:663:
+	wmb();

-:6232: WARNING:MEMORY_BARRIER: memory barrier without comment
#6232: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:795:
+		wmb();

-:6780: WARNING:MEMORY_BARRIER: memory barrier without comment
#6780: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1343:
+	wmb();

-:7194: WARNING:LINE_SPACING: Missing a blank line after declarations
#7194: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1757:
+	struct i915_request *rq;
+	IGT_TIMEOUT(end_time);

total: 1 errors, 6 warnings, 4 checks, 5502 lines checked
b9d0ad833b5c drm/i915/gt: Provide a utility to create a scratch buffer


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
