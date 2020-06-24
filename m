Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A98C206E8C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 10:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F2A89E69;
	Wed, 24 Jun 2020 08:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1BDB89E69
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 08:03:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21599206-1500050 
 for multiple; Wed, 24 Jun 2020 09:03:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: linux-mm@kvack.org
Date: Wed, 24 Jun 2020 09:02:48 +0100
Message-Id: <20200624080248.3701-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200624080248.3701-1-chris@chris-wilson.co.uk>
References: <20200624080248.3701-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Use
 mmu_notifier_range_mayfail() to avoid waiting inside reclaim
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The direct reclaim path may trigger the mmu_notifier callback as part of
try_to_unmap_one. As this is purely an opportunitistic attempt to
reclaim pages, and will be called from any allocation context under
unknown conditions (that include attempting to allocate pages for the
userptr object itself and subsequently trying to reclaim parts of the
partially acquired object) we have to be careful never to wait on
anything being held by the calling context. Since that is unknown, we
have to avoid waiting from inside direct reclaim.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 9c53eb883400..72cfb91230ea 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -103,6 +103,7 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 	it = interval_tree_iter_first(&mn->objects, range->start, end);
 	while (it) {
 		struct drm_i915_gem_object *obj;
+		unsigned int flags;
 
 		if (!mmu_notifier_range_blockable(range)) {
 			ret = -EAGAIN;
@@ -126,9 +127,12 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
 		}
 		spin_unlock(&mn->lock);
 
-		ret = i915_gem_object_unbind(obj,
-					     I915_GEM_OBJECT_UNBIND_ACTIVE |
-					     I915_GEM_OBJECT_UNBIND_BARRIER);
+		flags = (I915_GEM_OBJECT_UNBIND_ACTIVE |
+			 I915_GEM_OBJECT_UNBIND_BARRIER);
+		if (mmu_notifier_range_mayfail(range))
+			flags = 0;
+
+		ret = i915_gem_object_unbind(obj, flags);
 		if (ret == 0)
 			ret = __i915_gem_object_put_pages(obj);
 		i915_gem_object_put(obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
