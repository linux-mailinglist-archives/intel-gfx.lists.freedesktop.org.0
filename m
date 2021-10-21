Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5AE435FC4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974BC6EA9F;
	Thu, 21 Oct 2021 10:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 879F66EA9F;
 Thu, 21 Oct 2021 10:56:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 81192A77A5;
 Thu, 21 Oct 2021 10:56:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 10:56:09 -0000
Message-ID: <163481376949.20178.4824437769395737553@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/28=5D_drm/i915=3A_Fix_i915=5Freq?=
 =?utf-8?q?uest_fence_wait_semantics?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/28] drm/i915: Fix i915_request fence wait semantics
URL   : https://patchwork.freedesktop.org/series/96115/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ddb763fd10e7 drm/i915: Fix i915_request fence wait semantics
0c036c1715f3 drm/i915: use new iterator in i915_gem_object_wait_reservation
6df3a2f9c58a drm/i915: Remove dma_resv_prune
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
1740df189181 drm/i915: Remove unused bits of i915_vma/active api
ec8de168f667 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling, v2.
-:73: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#73: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3134:
+				kvcalloc(eb->capture_count + 1,
+					sizeof(*eb->requests[i]->capture_list),

-:77: CHECK:LINE_SPACING: Please don't use multiple blank lines
#77: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3138:
+
+

total: 0 errors, 0 warnings, 2 checks, 119 lines checked
ce8a62bcaae3 drm/i915: Remove gen6_ppgtt_unpin_all
e22208d09f16 drm/i915: Create a dummy object for gen6 ppgtt
-:178: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#178: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:376:
+static void pd_dummy_obj_put_pages(struct drm_i915_gem_object *obj,
+				     struct sg_table *pages)

-:200: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:398:
+	pd->pt.base = __i915_gem_object_create_internal(ppgtt->base.vm.gt->i915, &pd_dummy_obj_ops, I915_PDES * SZ_4K);

total: 0 errors, 1 warnings, 1 checks, 256 lines checked
5fa1e4d967c0 drm/i915: Create a full object for mock_ring, v2.
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This allows us to finally get rid of all the assumptions that vma->obj is NULL.

total: 0 errors, 1 warnings, 0 checks, 73 lines checked
c56256b7900b drm/i915: vma is always backed by an object.
3324301339ce drm/i915: Change shrink ordering to use locking around unbinding.
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:40:
+static int drop_pages(struct drm_i915_gem_object *obj,
+		       unsigned long shrink, bool trylock_vm)

total: 0 errors, 0 warnings, 1 checks, 56 lines checked
5b0d3b29f3ce drm/i915/pm: Move CONTEXT_VALID_BIT check
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Resetting will clear the CONTEXT_VALID_BIT, so wait until after that to test.

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
494b7f7d1d07 drm/i915: Remove resv from i915_vma
971bfcf716db drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members
-:545: CHECK:LINE_SPACING: Please don't use multiple blank lines
#545: FILE: drivers/gpu/drm/i915/i915_vma.c:791:
 
+

total: 0 errors, 0 warnings, 1 checks, 659 lines checked
9ca977d4ea2d drm/i915: Take object lock in i915_ggtt_pin if ww is not set
6af62101e38d drm/i915: Add lock for unbinding to i915_gem_object_ggtt_pin_ww
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
1893beb58bd2 drm/i915: Rework context handling in hugepages selftests
12aa1adab3a1 drm/i915: Ensure gem_contexts selftests work with unbind changes.
b30510e7c7a5 drm/i915: Take trylock during eviction, v2.
-:92: CHECK:LINE_SPACING: Please don't use multiple blank lines
#92: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:250:
 
+

total: 0 errors, 0 warnings, 1 checks, 109 lines checked
65bb798433f5 drm/i915: Pass trylock context to callers
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:391: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#391: FILE: drivers/gpu/drm/i915/i915_vma.c:1373:
 		if (mutex_lock_interruptible(&vm->mutex) == 0) {
+

total: 0 errors, 1 warnings, 1 checks, 446 lines checked
83936045aeae drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.
9ffbca093c70 drm/i915: Drain the ttm delayed workqueue too
1752c3fdca53 drm/i915: Make i915_gem_evict_vm work correctly for already locked objects
d80031a5a1fa drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors
5845081d8530 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
We want to remove more members of i915_vma, which requires the locking to be

total: 0 errors, 1 warnings, 0 checks, 313 lines checked
2608631d4a65 drm/i915: Require object lock when freeing pages during destruction
40aa9c364286 drm/i915: Remove assert_object_held_shared
deb3047c26f8 drm/i915: Remove support for unlocked i915_vma unbind
cb7d236df1b3 drm/i915: Remove short-term pins from execbuf, v4.


