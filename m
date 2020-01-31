Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A5414EDD5
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91476FB50;
	Fri, 31 Jan 2020 13:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28A016FB4F;
 Fri, 31 Jan 2020 13:49:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20D7DA0119;
 Fri, 31 Jan 2020 13:49:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 13:49:58 -0000
Message-ID: <158047859810.13124.10034458030008478426@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915/gem=3A_Require_pe?=
 =?utf-8?q?r-engine_reset_support_for_non-persistent_contexts?=
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

Series: series starting with [01/12] drm/i915/gem: Require per-engine reset support for non-persistent contexts
URL   : https://patchwork.freedesktop.org/series/72813/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d94430028946 drm/i915/gem: Require per-engine reset support for non-persistent contexts
3f22ad1cf14f drm/i915/gt: Also use async bind for PIN_USER into bsw/bxt ggtt
-:24: ERROR:CODE_INDENT: code indent should use tabs where possible
#24: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:850:
+^I^I       ^II915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;$

-:24: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#24: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:850:
+^I^I       ^II915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;$

total: 1 errors, 1 warnings, 0 checks, 9 lines checked
edaa3f3922af drm/i915/selftests: Also wait for the scratch buffer to be bound
1178f728bc7d drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
e88c6333db37 drm/i915/gvt: Use the pinned ce->lrc_reg_state
-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/gvt/scheduler.c:70:
+	set_context_pdp_root_pointer((struct execlist_ring_context *)regs,
 			(void *)workload->shadow_mm->ppgtt_mm.shadow_pdps);

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
f572562b1f0b drm/i915/gt: Pull sseu context updates under gt
-:142: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#142: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 212 lines checked
bc6a62afb01e drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
37da77f319f6 drm/i915/gt: Rename lrc.c to execlists_submission.c
-:89: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#89: 
rename from drivers/gpu/drm/i915/gt/intel_lrc.c

total: 0 errors, 1 warnings, 0 checks, 175 lines checked
fec4d13402ab drm/i915/gt: Split logical ring context manipulation into intel_lrc.c
-:47: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#47: 
new file mode 100644

-:749: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#749: FILE: drivers/gpu/drm/i915/gt/intel_engine_workaround_bb.c:306:
+	batch = batch_ptr = kmap_atomic(page);

-:2668: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'count' - possible side-effects?
#2668: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:132:
+#define LRI(count, flags) ((flags) << 6 | (count) | BUILD_BUG_ON_ZERO(count >= BIT(6)))

-:2670: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2670: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:134:
+#define REG(x) (((x) >> 2) | BUILD_BUG_ON_ZERO(x >= 0x200))

-:2671: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2671: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:135:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:2671: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#2671: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:135:
+#define REG16(x) \
+	(((x) >> 9) | BIT(7) | BUILD_BUG_ON_ZERO(x >= 0x10000)), \
+	(((x) >> 2) & 0x7f)

-:2674: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2674: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:138:
+#define END(x) 0, (x)

total: 2 errors, 1 warnings, 4 checks, 3977 lines checked
14152045734c drm/i915: Flush idle barriers when waiting
04486f9552c2 drm/i915: Allow userspace to specify ringsize on construction
-:227: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#227: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 305 lines checked
5b086f11a8fe drm/i915/gem: Honour O_NONBLOCK before throttling execbuf submissions

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
