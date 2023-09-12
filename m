Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B43B79D8D0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 20:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F229310E257;
	Tue, 12 Sep 2023 18:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A1C0E10E257;
 Tue, 12 Sep 2023 18:38:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D7DDAADEB;
 Tue, 12 Sep 2023 18:38:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 12 Sep 2023 18:38:55 -0000
Message-ID: <169454393561.31796.5456457591455463113@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230906113121.30472-1-nirmoy.das@intel.com>
In-Reply-To: <20230906113121.30472-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Update_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev3=29?=
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

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev3)
URL   : https://patchwork.freedesktop.org/series/123329/
State : warning

== Summary ==

Error: dim checkpatch failed
9cea16eb6ab8 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex
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
01aae02e63b3 drm/i915: Create a kernel context for GGTT updates
1c7cfec1dc08 drm/i915: Implement __for_each_sgt_daddr_next
-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__iter' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_scatterlist.h:100:
+#define __for_each_daddr_next(__dp, __iter, __step)                  \
+	for (; ((__dp) = (__iter).dma + (__iter).curr), (__iter).sgp;   \
+	     (((__iter).curr += (__step)) >= (__iter).max) ?            \
+	     (__iter) = __sgt_iter(__sg_next((__iter).sgp), true), 0 : 0)

total: 0 errors, 0 warnings, 1 checks, 16 lines checked
61dbf734f8c7 drm/i915: Implement GGTT update method with MI_UPDATE_GTT
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
48c23376d051 drm/i915: Enable GGTT updates with binder in MTL


