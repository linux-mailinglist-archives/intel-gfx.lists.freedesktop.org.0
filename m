Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 825B95815AC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 16:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916D58FE77;
	Tue, 26 Jul 2022 14:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6058FE2E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 14:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658846934; x=1690382934;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vGaMFq3QvhGSpH2A+Xk5acyMe70kg91ZPHcmkEPCo7M=;
 b=nVaH4YRSmGP+qn8zTlZemTYoqKhv9d/++QJDTHOSgqbaT/PgxnesPRrj
 MAaSx0ohKp6F+DW/85uG0496seG6zNwZfHnuz8UcYu5rLZxzdQIkaQOm0
 m7AWcl1T4ZOLU2JwcPV7D+fsXi4LAASr3GfyyLSKlin+EDELnKeKU0VDx
 nX3MHp1m5y8mg/vXzoLQBNLvLN1Ml/T/3PeGJ8U8hCA8nwSeVTNzQUqqM
 tA1C3vBZIrx4w09s2RJ0fv87hzGEdWTB7dalwboIgNre9Q1xPf3L106+N
 w9YJEUZ23iZ4eWaWhHahzWxK+R60HybboUFK4+o2lFEKgkgJecM7XwAPv A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="267737471"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="267737471"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:48:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="658718685"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 07:48:53 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jul 2022 16:48:44 +0200
Message-Id: <20220726144844.18429-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Remove shared locking on freeing
 objects
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

The obj->base.resv may be shared across many objects, some of which may
still be live and locked, preventing objects from being freed
indefintely. We could individualise the lock during the free, or rely on
a freed object having no contention and being able to immediately free
th pages it owns.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/6469
Fixes: be7612fd6665 ("drm/i915: Require object lock when freeing pages during destruction")
Fixes: 6cb12fbda1c2 ("drm/i915: Use trylock instead of blocking lock for __i915_gem_free_objects.")
Cc: <stable@vger.kernel.org> # v5.17+
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 16 ++++------------
 drivers/gpu/drm/i915/i915_drv.h            |  4 ++--
 2 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index ccec4055fde3..389e9f157ca5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -268,7 +268,7 @@ static void __i915_gem_object_free_mmaps(struct drm_i915_gem_object *obj)
  */
 void __i915_gem_object_pages_fini(struct drm_i915_gem_object *obj)
 {
-	assert_object_held(obj);
+	assert_object_held_shared(obj);
 
 	if (!list_empty(&obj->vma.list)) {
 		struct i915_vma *vma;
@@ -331,15 +331,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 			continue;
 		}
 
-		if (!i915_gem_object_trylock(obj, NULL)) {
-			/* busy, toss it back to the pile */
-			if (llist_add(&obj->freed, &i915->mm.free_list))
-				queue_delayed_work(i915->wq, &i915->mm.free_work, msecs_to_jiffies(10));
-			continue;
-		}
-
 		__i915_gem_object_pages_fini(obj);
-		i915_gem_object_unlock(obj);
 		__i915_gem_free_object(obj);
 
 		/* But keep the pointer alive for RCU-protected lookups */
@@ -359,7 +351,7 @@ void i915_gem_flush_free_objects(struct drm_i915_private *i915)
 static void __i915_gem_free_work(struct work_struct *work)
 {
 	struct drm_i915_private *i915 =
-		container_of(work, struct drm_i915_private, mm.free_work.work);
+		container_of(work, struct drm_i915_private, mm.free_work);
 
 	i915_gem_flush_free_objects(i915);
 }
@@ -391,7 +383,7 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 	 */
 
 	if (llist_add(&obj->freed, &i915->mm.free_list))
-		queue_delayed_work(i915->wq, &i915->mm.free_work, 0);
+		queue_work(i915->wq, &i915->mm.free_work);
 }
 
 void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
@@ -745,7 +737,7 @@ bool i915_gem_object_needs_ccs_pages(struct drm_i915_gem_object *obj)
 
 void i915_gem_init__objects(struct drm_i915_private *i915)
 {
-	INIT_DELAYED_WORK(&i915->mm.free_work, __i915_gem_free_work);
+	INIT_WORK(&i915->mm.free_work, __i915_gem_free_work);
 }
 
 void i915_objects_module_exit(void)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d25647be25d1..086bbe8945d6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -247,7 +247,7 @@ struct i915_gem_mm {
 	 * List of objects which are pending destruction.
 	 */
 	struct llist_head free_list;
-	struct delayed_work free_work;
+	struct work_struct free_work;
 	/**
 	 * Count of objects pending destructions. Used to skip needlessly
 	 * waiting on an RCU barrier if no objects are waiting to be freed.
@@ -1378,7 +1378,7 @@ static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
 	 * armed the work again.
 	 */
 	while (atomic_read(&i915->mm.free_count)) {
-		flush_delayed_work(&i915->mm.free_work);
+		flush_work(&i915->mm.free_work);
 		flush_delayed_work(&i915->bdev.wq);
 		rcu_barrier();
 	}
-- 
2.35.1

