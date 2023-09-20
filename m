Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DB47A8E00
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD15810E556;
	Wed, 20 Sep 2023 20:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B20910E556;
 Wed, 20 Sep 2023 20:51:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B4A4A66C9;
 Wed, 20 Sep 2023 20:51:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Wed, 20 Sep 2023 20:51:06 -0000
Message-ID: <169524306601.6464.4970453737462512015@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230918170257.8586-1-nirmoy.das@intel.com>
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev8=29?=
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

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev8)
URL   : https://patchwork.freedesktop.org/series/123329/
State : warning

== Summary ==

Error: dim checkpatch failed
a1b7a590c8ed drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex
-:57: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#57: FILE: drivers/gpu/drm/i915/intel_wakeref.c:27:
+		INTEL_WAKEREF_BUG_ON(wf->wakeref);

-:73: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#73: FILE: drivers/gpu/drm/i915/intel_wakeref.c:40:
+	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);

-:96: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#96: FILE: drivers/gpu/drm/i915/intel_wakeref.c:60:
+		INTEL_WAKEREF_BUG_ON(!wf->wakeref);

total: 0 errors, 3 warnings, 0 checks, 83 lines checked
3d01a2c11682 drm/i915: Create a kernel context for GGTT updates
2ffbc0e31c81 drm/i915: Implement for_each_sgt_daddr_next
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__iter' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:100:
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)

total: 0 errors, 0 warnings, 1 checks, 25 lines checked
dd718fef0407 drm/i915: Parameterize binder context creation
973aa7bf165a drm/i915: Implement GGTT update method with MI_UPDATE_GTT
-:69: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#69: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:276:
+	GEM_BUG_ON(!ce);

-:239: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#239: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:491:
+	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
+	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/gt/intel_ggtt.c:553:
+	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt, first_entry,
+	     NULL, num_entries, scratch_pte))

total: 0 errors, 1 warnings, 2 checks, 283 lines checked
d07b23f100b8 drm/i915: Toggle binder context ready status
19ca0a02d7ee drm/i915: Enable GGTT updates with binder in MTL


