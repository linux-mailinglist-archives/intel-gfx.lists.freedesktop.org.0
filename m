Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E186793C95
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 14:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214FA10E61F;
	Wed,  6 Sep 2023 12:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 631D010E61F;
 Wed,  6 Sep 2023 12:25:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E692A0BA8;
 Wed,  6 Sep 2023 12:25:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 06 Sep 2023 12:25:14 -0000
Message-ID: <169400311435.17388.6601100085566632893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230906113121.30472-1-nirmoy.das@intel.com>
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL?=
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

Series: Update GGTT with MI_UPDATE_GTT on MTL
URL   : https://patchwork.freedesktop.org/series/123329/
State : warning

== Summary ==

Error: dim checkpatch failed
0fa027cb3bb7 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex
-:56: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#56: FILE: drivers/gpu/drm/i915/intel_wakeref.c:27:
+		INTEL_WAKEREF_BUG_ON(wf->wakeref);

-:72: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#72: FILE: drivers/gpu/drm/i915/intel_wakeref.c:40:
+	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);

-:95: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#95: FILE: drivers/gpu/drm/i915/intel_wakeref.c:60:
+		INTEL_WAKEREF_BUG_ON(!wf->wakeref);

total: 0 errors, 3 warnings, 0 checks, 83 lines checked
b85d95ce9576 drm/i915: Create a kernel context for GGTT updates
0b602da3c994 drm/i915: Implement __for_each_sgt_daddr_next
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__iter' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:100:
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
e27be239c1e9 drm/i915: Implement GGTT update method with MI_UPDATE_GTT
-:68: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#68: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:276:
+	GEM_BUG_ON(!ce);

-:238: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#238: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:491:
+	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
+	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))

-:286: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#286: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:553:
+	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt, first_entry,
+	     NULL, num_entries, scratch_pte))

total: 0 errors, 1 warnings, 2 checks, 292 lines checked
f1d7a92a51c8 drm/i915: Enable GGTT updates with binder in MTL


