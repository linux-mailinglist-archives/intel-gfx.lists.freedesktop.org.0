Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E476E3FB6AD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 15:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F0689C6B;
	Mon, 30 Aug 2021 13:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E033189C6B;
 Mon, 30 Aug 2021 13:03:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8DA9A7E03;
 Mon, 30 Aug 2021 13:03:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Aug 2021 13:03:44 -0000
Message-ID: <163032862486.14977.7512361749906099128@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Short-term_pinning_and_async_eviction=2E?=
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

Series: drm/i915: Short-term pinning and async eviction.
URL   : https://patchwork.freedesktop.org/series/94162/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa0ce1cd930e drm/i915: Move __i915_gem_free_object to ttm_bo_destroy
667b39786fe3 drm/i915: Remove unused bits of i915_vma/active api
98c59acb1911 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling
ce526eaaf6dc drm/i915: Remove gen6_ppgtt_unpin_all
7f62692b5277 drm/i915: Create a dummy object for gen6 ppgtt
-:178: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#178: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:376:
+static void pd_dummy_obj_put_pages(struct drm_i915_gem_object *obj,
+				     struct sg_table *pages)

-:200: WARNING:LONG_LINE: line length of 119 exceeds 100 columns
#200: FILE: drivers/gpu/drm/i915/gt/gen6_ppgtt.c:398:
+	pd->pt.base = __i915_gem_object_create_internal(ppgtt->base.vm.gt->i915, &pd_dummy_obj_ops, I915_PDES * SZ_4K);

total: 0 errors, 1 warnings, 1 checks, 256 lines checked
faee95e0ebdf drm/i915: Create a full object for mock_ring
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
This allows us to finally get rid of all the assumptions that vma->obj is NULL.

total: 0 errors, 1 warnings, 0 checks, 58 lines checked
c13839878262 drm/i915: vma is always backed by an object.
2885005de36d drm/i915: Fix runtime pm handling in i915_gem_shrink
92874150b4e7 drm/i915: Change shrink ordering to use locking around unbinding.
-:27: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#27: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:41:
+static int drop_pages(struct drm_i915_gem_object *obj,
+		       unsigned long shrink, bool trylock_vm)

total: 0 errors, 0 warnings, 1 checks, 56 lines checked
c7b50af89f7a Move CONTEXT_VALID_BIT check
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
9a8f87820ed4 drm/i915: Remove resv from i915_vma
81200f4aea0f drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members
-:520: CHECK:LINE_SPACING: Please don't use multiple blank lines
#520: FILE: drivers/gpu/drm/i915/i915_vma.c:791:
 
+

total: 0 errors, 0 warnings, 1 checks, 633 lines checked
d0e5dee58521 drm/i915: Take object lock in i915_ggtt_pin if ww is not set
eea081368486 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
We want to remove more members of i915_vma, which requires the locking to be

-:337: CHECK:LINE_SPACING: Please don't use multiple blank lines
#337: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:258:
 
+

total: 0 errors, 1 warnings, 1 checks, 513 lines checked
741722532bf6 drm/i915: Remove support for unlocked i915_vma unbind
66f02650e597 drm/i915: Remove short-term pins from execbuf
49d5bf5ffe41 drm/i915: Add functions to set/get moving fence
c29934165e29 drm/i915: Add support for asynchronous moving fence waiting
992d547f7e4d drm/i915: Add accelerated migration to ttm
-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:501:
+		ttm_kmap_iter_iomap_init(&_dst_iter.io, &dst_reg->iomap,
+					  dst_st, dst_reg->region.start);

-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:506:
+		ttm_kmap_iter_iomap_init(&_src_iter.io, &src_reg->iomap,
+					  obj->ttm.cached_io_st,

total: 0 errors, 0 warnings, 2 checks, 167 lines checked


