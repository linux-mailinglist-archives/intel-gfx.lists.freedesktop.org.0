Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450CD1DDD99
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 05:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473406E96C;
	Fri, 22 May 2020 03:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068776E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 03:01:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21254581-1500050 
 for multiple; Fri, 22 May 2020 04:01:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 May 2020 04:01:09 +0100
Message-Id: <20200522030109.4845-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Avoid waiting inside
 mmu_notifier_invalidate_range
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the userptr may be invalidated from inside a reclaim path, we
cannot wait on unbinding the object as we may hold any number of locks,
including the active reference of the object we are trying to
invalidate. E.g.

[<0>] __i915_active_wait+0x70/0xc0 [i915]
[<0>] i915_vma_unbind+0x2f/0x110 [i915]
[<0>] i915_gem_object_unbind+0x17c/0x350 [i915]
[<0>] userptr_mn_invalidate_range_start+0xb6/0x140 [i915]
[<0>] __mmu_notifier_invalidate_range_start+0x105/0x150
[<0>] try_to_unmap_one+0x7fb/0x900
[<0>] rmap_walk_file+0xe4/0x240
[<0>] try_to_unmap+0x85/0xc0
[<0>] shrink_page_list+0x885/0xe80
[<0>] shrink_inactive_list+0x155/0x260
[<0>] shrink_lruvec+0x4ec/0x5f0
[<0>] shrink_node+0x15b/0x410
[<0>] try_to_free_pages+0x169/0x3a0
[<0>] __alloc_pages_slowpath.constprop.0+0x251/0xa00
[<0>] __alloc_pages_nodemask+0x144/0x170
[<0>] new_slab+0x259/0x280
[<0>] ___slab_alloc.isra.0.constprop.0+0x3dd/0x460
[<0>] __slab_alloc.isra.0.constprop.0+0x9/0x10
[<0>] kmem_cache_alloc+0x11a/0x130
[<0>] alloc_pd+0x17/0x60 [i915]
[<0>] __gen8_ppgtt_alloc+0x2d7/0x350 [i915]
[<0>] gen8_ppgtt_alloc+0x35/0x70 [i915]
[<0>] ppgtt_bind_vma+0x29/0x70 [i915]

This situation only occurs when the lru page shrinker tries to sacrifice
one the objects it is trying to allocate for. However, we do have to
wait for an active object so that we can revoke access to the page
range.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1702
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8b0708708671..a398d817543e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -126,9 +126,11 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		}
 		spin_unlock(&mn->lock);
 
-		ret = i915_gem_object_unbind(obj,
-					     I915_GEM_OBJECT_UNBIND_ACTIVE |
-					     I915_GEM_OBJECT_UNBIND_BARRIER);
+		ret = i915_gem_object_wait(obj,
+					   I915_WAIT_ALL,
+					   MAX_SCHEDULE_TIMEOUT);
+		if (ret == 0)
+			ret = i915_gem_object_unbind(obj, 0);
 		if (ret == 0)
 			ret = __i915_gem_object_put_pages(obj);
 		i915_gem_object_put(obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
