Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D8A2D6A73
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 23:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 676C36EB6F;
	Thu, 10 Dec 2020 22:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A5256E4D0;
 Thu, 10 Dec 2020 22:27:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1471BA47DB;
 Thu, 10 Dec 2020 22:27:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 22:27:39 -0000
Message-ID: <160763925906.19116.5029579618505674555@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210011720.26649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201210011720.26649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Split_logical_ring_contexts_from_execlist_su?=
 =?utf-8?q?bmission_=28rev2=29?=
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

Series: drm/i915/gt: Split logical ring contexts from execlist submission (rev2)
URL   : https://patchwork.freedesktop.org/series/84752/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
454579934182 drm/i915/gt: Split logical ring contexts from execlist submission
-:1747: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1747: 
new file mode 100644

-:1776: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#1776: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:25:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:1778: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1778: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:27:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:1779: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1779: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:28:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1779: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#1779: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:28:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:1782: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#1782: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:31:
+#define END(total_state_size) 0, (total_state_size)

-:2426: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2426: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:675:
+		lrc_setup_indirect_ctx(regs, engine,
+					    i915_ggtt_offset(wa_ctx->vma) +

-:5754: WARNING:MEMORY_BARRIER: memory barrier without comment
#5754: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:638:
+		wmb();

-:5783: WARNING:MEMORY_BARRIER: memory barrier without comment
#5783: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:667:
+	wmb();

-:5915: WARNING:MEMORY_BARRIER: memory barrier without comment
#5915: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:799:
+		wmb();

-:6463: WARNING:MEMORY_BARRIER: memory barrier without comment
#6463: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1347:
+	wmb();

-:6877: WARNING:LINE_SPACING: Missing a blank line after declarations
#6877: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:1761:
+	struct i915_request *rq;
+	IGT_TIMEOUT(end_time);

total: 2 errors, 6 warnings, 4 checks, 5153 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
