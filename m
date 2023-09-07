Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBB37971D8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 13:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C2E10E229;
	Thu,  7 Sep 2023 11:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E964910E19C;
 Thu,  7 Sep 2023 11:37:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E34B2AADE4;
 Thu,  7 Sep 2023 11:37:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 07 Sep 2023 11:37:56 -0000
Message-ID: <169408667689.17902.1881095831181398680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230906113121.30472-1-nirmoy.das@intel.com>
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev2=29?=
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

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/123329/
State : warning

== Summary ==

Error: dim checkpatch failed
1fb73c567369 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex
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
183b06118dce drm/i915: Create a kernel context for GGTT updates
e7e081a64212 drm/i915: Implement __for_each_sgt_daddr_next
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__iter' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:100:
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
dff2ea539632 drm/i915: Implement GGTT update method with MI_UPDATE_GTT
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
a957d9392de4 drm/i915: Enable GGTT updates with binder in MTL


