Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE7D201B74
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 21:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 322FB6E8EB;
	Fri, 19 Jun 2020 19:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C116E8EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 19:40:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21554386-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jun 2020 20:40:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Jun 2020 20:40:38 +0100
Message-Id: <20200619194038.5088-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Avoid kmalloc under i915->mm_lock
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

Rearrange the allocation of the mm_struct registration to avoid
allocating underneath the i915->mm_lock, so that we avoid tainting the
lock (and in turn many other locks that may be held as i915->mm_lock is
taken, and those locks we may want on the free [shrinker] paths). In
doing so, we convert the lookup to be RCU protected by courtesy of
converting the free-worker to be an rcu_work.

v2: Remember to use hash_rcu variants to protect the list iteration from
concurrent add/del.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 131 ++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h             |   2 +-
 2 files changed, 65 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 9c53eb883400..e946032b13e4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -21,7 +21,7 @@ struct i915_mm_struct {
 	struct i915_mmu_notifier *mn;
 	struct hlist_node node;
 	struct kref kref;
-	struct work_struct work;
+	struct rcu_work work;
 };
 
 #if defined(CONFIG_MMU_NOTIFIER)
@@ -189,40 +189,31 @@ i915_gem_userptr_release__mmu_notifier(struct drm_i915_gem_object *obj)
 static struct i915_mmu_notifier *
 i915_mmu_notifier_find(struct i915_mm_struct *mm)
 {
-	struct i915_mmu_notifier *mn;
-	int err = 0;
+	struct i915_mmu_notifier *mn, *old;
+	int err;
 
-	mn = mm->mn;
-	if (mn)
+	mn = READ_ONCE(mm->mn);
+	if (likely(mn))
 		return mn;
 
 	mn = i915_mmu_notifier_create(mm);
 	if (IS_ERR(mn))
-		err = PTR_ERR(mn);
-
-	mmap_write_lock(mm->mm);
-	mutex_lock(&mm->i915->mm_lock);
-	if (mm->mn == NULL && !err) {
-		/* Protected by mmap_lock (write-lock) */
-		err = __mmu_notifier_register(&mn->mn, mm->mm);
-		if (!err) {
-			/* Protected by mm_lock */
-			mm->mn = fetch_and_zero(&mn);
-		}
-	} else if (mm->mn) {
-		/*
-		 * Someone else raced and successfully installed the mmu
-		 * notifier, we can cancel our own errors.
-		 */
-		err = 0;
+		return mn;
+
+	err = mmu_notifier_register(&mn->mn, mm->mm);
+	if (err) {
+		kfree(mn);
+		return ERR_PTR(err);
 	}
-	mutex_unlock(&mm->i915->mm_lock);
-	mmap_write_unlock(mm->mm);
 
-	if (mn && !IS_ERR(mn))
+	old = cmpxchg(&mm->mn, NULL, mn);
+	if (old) {
+		mmu_notifier_unregister(&mn->mn, mm->mm);
 		kfree(mn);
+		mn = old;
+	}
 
-	return err ? ERR_PTR(err) : mm->mn;
+	return mn;
 }
 
 static int
@@ -301,23 +292,28 @@ i915_mmu_notifier_free(struct i915_mmu_notifier *mn,
 #endif
 
 static struct i915_mm_struct *
-__i915_mm_struct_find(struct drm_i915_private *dev_priv, struct mm_struct *real)
+__i915_mm_struct_find(struct drm_i915_private *i915, struct mm_struct *real)
 {
-	struct i915_mm_struct *mm;
-
-	/* Protected by dev_priv->mm_lock */
-	hash_for_each_possible(dev_priv->mm_structs, mm, node, (unsigned long)real)
-		if (mm->mm == real)
-			return mm;
+	struct i915_mm_struct *it, *mm = NULL;
+
+	rcu_read_lock();
+	hash_for_each_possible_rcu(i915->mm_structs,
+				   it, node,
+				   (unsigned long)real)
+		if (it->mm == real && kref_get_unless_zero(&it->kref)) {
+			mm = it;
+			break;
+		}
+	rcu_read_unlock();
 
-	return NULL;
+	return mm;
 }
 
 static int
 i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
-	struct i915_mm_struct *mm;
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_mm_struct *mm, *new;
 	int ret = 0;
 
 	/* During release of the GEM object we hold the struct_mutex. This
@@ -330,39 +326,42 @@ i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
 	 * struct_mutex, i.e. we need to schedule a worker to do the clean
 	 * up.
 	 */
-	mutex_lock(&dev_priv->mm_lock);
-	mm = __i915_mm_struct_find(dev_priv, current->mm);
-	if (mm == NULL) {
-		mm = kmalloc(sizeof(*mm), GFP_KERNEL);
-		if (mm == NULL) {
-			ret = -ENOMEM;
-			goto out;
-		}
+	mm = __i915_mm_struct_find(i915, current->mm);
+	if (mm)
+		goto out;
 
-		kref_init(&mm->kref);
-		mm->i915 = to_i915(obj->base.dev);
+	new = kmalloc(sizeof(*mm), GFP_KERNEL);
+	if (!new)
+		return -ENOMEM;
 
-		mm->mm = current->mm;
+	kref_init(&new->kref);
+	new->i915 = to_i915(obj->base.dev);
+	new->mm = current->mm;
+	new->mn = NULL;
+
+	spin_lock(&i915->mm_lock);
+	mm = __i915_mm_struct_find(i915, current->mm);
+	if (!mm) {
+		hash_add_rcu(i915->mm_structs,
+			     &new->node,
+			     (unsigned long)new->mm);
 		mmgrab(current->mm);
+		mm = new;
+	}
+	spin_unlock(&i915->mm_lock);
+	if (mm != new)
+		kfree(new);
 
-		mm->mn = NULL;
-
-		/* Protected by dev_priv->mm_lock */
-		hash_add(dev_priv->mm_structs,
-			 &mm->node, (unsigned long)mm->mm);
-	} else
-		kref_get(&mm->kref);
-
-	obj->userptr.mm = mm;
 out:
-	mutex_unlock(&dev_priv->mm_lock);
+	obj->userptr.mm = mm;
 	return ret;
 }
 
 static void
 __i915_mm_struct_free__worker(struct work_struct *work)
 {
-	struct i915_mm_struct *mm = container_of(work, typeof(*mm), work);
+	struct i915_mm_struct *mm = container_of(work, typeof(*mm), work.work);
+
 	i915_mmu_notifier_free(mm->mn, mm->mm);
 	mmdrop(mm->mm);
 	kfree(mm);
@@ -373,12 +372,12 @@ __i915_mm_struct_free(struct kref *kref)
 {
 	struct i915_mm_struct *mm = container_of(kref, typeof(*mm), kref);
 
-	/* Protected by dev_priv->mm_lock */
-	hash_del(&mm->node);
-	mutex_unlock(&mm->i915->mm_lock);
+	spin_lock(&mm->i915->mm_lock);
+	hash_del_rcu(&mm->node);
+	spin_unlock(&mm->i915->mm_lock);
 
-	INIT_WORK(&mm->work, __i915_mm_struct_free__worker);
-	queue_work(mm->i915->mm.userptr_wq, &mm->work);
+	INIT_RCU_WORK(&mm->work, __i915_mm_struct_free__worker);
+	queue_rcu_work(system_wq, &mm->work);
 }
 
 static void
@@ -387,9 +386,7 @@ i915_gem_userptr_release__mm_struct(struct drm_i915_gem_object *obj)
 	if (obj->userptr.mm == NULL)
 		return;
 
-	kref_put_mutex(&obj->userptr.mm->kref,
-		       __i915_mm_struct_free,
-		       &to_i915(obj->base.dev)->mm_lock);
+	kref_put(&obj->userptr.mm->kref, __i915_mm_struct_free);
 	obj->userptr.mm = NULL;
 }
 
@@ -851,7 +848,7 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 
 int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
 {
-	mutex_init(&dev_priv->mm_lock);
+	spin_lock_init(&dev_priv->mm_lock);
 	hash_init(dev_priv->mm_structs);
 
 	dev_priv->mm.userptr_wq =
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5649f8e502fe..7464656253c9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -988,7 +988,7 @@ struct drm_i915_private {
 
 	struct i915_gem_mm mm;
 	DECLARE_HASHTABLE(mm_structs, 7);
-	struct mutex mm_lock;
+	spinlock_t mm_lock;
 
 	/* Kernel Modesetting */
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
