Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15975680CAB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 12:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8152910E0DF;
	Mon, 30 Jan 2023 11:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3CE1910E0DF;
 Mon, 30 Jan 2023 11:58:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3438EA3ECB;
 Mon, 30 Jan 2023 11:58:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 30 Jan 2023 11:58:14 -0000
Message-ID: <167507989417.3667.6276206421972603532@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230130101436.924402-1-andrzej.hajda@intel.com>
In-Reply-To: <20230130101436.924402-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Add_selftests_for_TLB_invalidation_=28rev6?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: Add selftests for TLB invalidation (rev6)
URL   : https://patchwork.freedesktop.org/series/112894/
State : warning

== Summary ==

Error: dim checkpatch failed
d3a3e008ebc9 drm/i915/gt: Add selftests for TLB invalidation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:39: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#39: 
new file mode 100644

-:67: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#67: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:24:
+	GEM_BUG_ON(addr < i915_vma_offset(vma));

-:68: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#68: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:25:
+	GEM_BUG_ON(addr >= i915_vma_offset(vma) + i915_vma_size(vma) + sizeof(val));

-:113: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#113: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:70:
+	GEM_BUG_ON(i915_vma_offset(va) != addr);

-:174: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#174: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:131:
+	msleep(10);

-:210: WARNING:MEMORY_BARRIER: memory barrier without comment
#210: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:167:
+	wmb();

-:255: WARNING:LINE_SPACING: Missing a blank line after declarations
#255: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:212:
+	enum intel_engine_id id;
+	I915_RND_STATE(prng);

-:289: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#289: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:246:
+	GEM_BUG_ON(A->base.size != B->base.size);

-:350: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#350: FILE: drivers/gpu/drm/i915/gt/selftest_tlb.c:307:
+				err = pte_tlbinv(ce, va, vb,
+						BIT_ULL(bit),

total: 0 errors, 8 warnings, 1 checks, 400 lines checked


