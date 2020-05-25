Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DE01E105B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 16:20:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A22189E3E;
	Mon, 25 May 2020 14:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B9589C29
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 14:20:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21287753-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 15:19:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 May 2020 15:19:57 +0100
Message-Id: <20200525141957.3061-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200525141957.3061-1-chris@chris-wilson.co.uk>
References: <20200525141957.3061-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gem: Suppress some random warnings
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Leave the error propagation in place, but limit the warnings to only
show up in CI if the unlikely errors are hit.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_phys.c       | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c      | 3 +--
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c    | 2 +-
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e4fb6c372537..219a36995b96 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1626,8 +1626,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 			err = i915_vma_bind(target->vma,
 					    target->vma->obj->cache_level,
 					    PIN_GLOBAL, NULL);
-			if (drm_WARN_ONCE(&i915->drm, err,
-				      "Unexpected failure to bind target VMA!"))
+			if (err)
 				return err;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index 4c1c7232b024..12245a47e5fb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -27,8 +27,7 @@ static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
 	void *dst;
 	int i;
 
-	if (drm_WARN_ON(obj->base.dev,
-			i915_gem_object_needs_bit17_swizzle(obj)))
+	if (GEM_WARN_ON(i915_gem_object_needs_bit17_swizzle(obj)))
 		return -EINVAL;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 7aff3514d97a..7cf8548ff708 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -147,8 +147,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 		last_pfn = page_to_pfn(page);
 
 		/* Check that the i965g/gm workaround works. */
-		drm_WARN_ON(&i915->drm,
-			    (gfp & __GFP_DMA32) && (last_pfn >= 0x00100000UL));
+		GEM_BUG_ON(gfp & __GFP_DMA32 && last_pfn >= 0x00100000UL);
 	}
 	if (sg) { /* loop terminated early; short sg table */
 		sg_page_sizes |= sg->length;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8b0708708671..2226146b01c9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -235,7 +235,7 @@ i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
 	if (flags & I915_USERPTR_UNSYNCHRONIZED)
 		return capable(CAP_SYS_ADMIN) ? 0 : -EPERM;
 
-	if (drm_WARN_ON(obj->base.dev, obj->userptr.mm == NULL))
+	if (GEM_WARN_ON(!obj->userptr.mm))
 		return -EINVAL;
 
 	mn = i915_mmu_notifier_find(obj->userptr.mm);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
