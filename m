Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8031A1419DC
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 22:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22106E150;
	Sat, 18 Jan 2020 21:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BC96E150
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2020 21:29:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19931063-1500050 
 for multiple; Sat, 18 Jan 2020 21:29:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jan 2020 21:29:02 +0000
Message-Id: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/2] drm/i915/gem: Convert vm idr to xarray
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

Replace the vm_idr + vm_idr_mutex to an XArray. The XArray data
structure is now used to implement IDRs, and provides its won locking.
We can simply remove the IDR wrapper and in the process also remove our
extra mutex.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 80 ++++++---------------
 drivers/gpu/drm/i915/i915_drv.h             |  4 +-
 2 files changed, 22 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a2e57e62af30..d2e4e8cbf4d4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -761,12 +761,6 @@ void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
 	flush_work(&i915->gem.contexts.free_work);
 }
 
-static int vm_idr_cleanup(int id, void *p, void *data)
-{
-	i915_vm_put(p);
-	return 0;
-}
-
 static int gem_context_register(struct i915_gem_context *ctx,
 				struct drm_i915_file_private *fpriv,
 				u32 *id)
@@ -803,9 +797,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 	u32 id;
 
 	xa_init_flags(&file_priv->context_xa, XA_FLAGS_ALLOC);
-
-	mutex_init(&file_priv->vm_idr_lock);
-	idr_init_base(&file_priv->vm_idr, 1);
+	xa_init_flags(&file_priv->vm_xa, XA_FLAGS_ALLOC1);
 
 	ctx = i915_gem_create_context(i915, 0);
 	if (IS_ERR(ctx)) {
@@ -823,9 +815,8 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 err_ctx:
 	context_close(ctx);
 err:
-	idr_destroy(&file_priv->vm_idr);
+	xa_destroy(&file_priv->vm_xa);
 	xa_destroy(&file_priv->context_xa);
-	mutex_destroy(&file_priv->vm_idr_lock);
 	return err;
 }
 
@@ -833,6 +824,7 @@ void i915_gem_context_close(struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_private *i915 = file_priv->dev_priv;
+	struct i915_address_space *vm;
 	struct i915_gem_context *ctx;
 	unsigned long idx;
 
@@ -840,9 +832,9 @@ void i915_gem_context_close(struct drm_file *file)
 		context_close(ctx);
 	xa_destroy(&file_priv->context_xa);
 
-	idr_for_each(&file_priv->vm_idr, vm_idr_cleanup, NULL);
-	idr_destroy(&file_priv->vm_idr);
-	mutex_destroy(&file_priv->vm_idr_lock);
+	xa_for_each(&file_priv->vm_xa, idx, vm)
+		i915_vm_put(vm);
+	xa_destroy(&file_priv->vm_xa);
 
 	contexts_flush_free(&i915->gem.contexts);
 }
@@ -876,23 +868,13 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 			goto err_put;
 	}
 
-	err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
+	err = xa_alloc(&file_priv->vm_xa, &args->vm_id,
+		       &ppgtt->vm, xa_limit_32b, GFP_KERNEL);
 	if (err)
 		goto err_put;
 
-	err = idr_alloc(&file_priv->vm_idr, &ppgtt->vm, 0, 0, GFP_KERNEL);
-	if (err < 0)
-		goto err_unlock;
-
-	GEM_BUG_ON(err == 0); /* reserved for invalid/unassigned ppgtt */
-
-	mutex_unlock(&file_priv->vm_idr_lock);
-
-	args->vm_id = err;
 	return 0;
 
-err_unlock:
-	mutex_unlock(&file_priv->vm_idr_lock);
 err_put:
 	i915_vm_put(&ppgtt->vm);
 	return err;
@@ -904,8 +886,6 @@ int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_gem_vm_control *args = data;
 	struct i915_address_space *vm;
-	int err;
-	u32 id;
 
 	if (args->flags)
 		return -EINVAL;
@@ -913,17 +893,7 @@ int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
 	if (args->extensions)
 		return -EINVAL;
 
-	id = args->vm_id;
-	if (!id)
-		return -ENOENT;
-
-	err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
-	if (err)
-		return err;
-
-	vm = idr_remove(&file_priv->vm_idr, id);
-
-	mutex_unlock(&file_priv->vm_idr_lock);
+	vm = xa_erase(&file_priv->vm_xa, args->vm_id);
 	if (!vm)
 		return -ENOENT;
 
@@ -1021,35 +991,27 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
 		     struct drm_i915_gem_context_param *args)
 {
 	struct i915_address_space *vm;
-	int ret;
+	int err = -ENODEV;
+	u32 id;
 
 	if (!rcu_access_pointer(ctx->vm))
 		return -ENODEV;
 
 	rcu_read_lock();
 	vm = context_get_vm_rcu(ctx);
+	if (vm)
+		err = xa_alloc(&file_priv->vm_xa, &id, vm,
+			       xa_limit_32b, GFP_KERNEL);
 	rcu_read_unlock();
+	if (!err) {
+		i915_vm_open(vm);
 
-	ret = mutex_lock_interruptible(&file_priv->vm_idr_lock);
-	if (ret)
-		goto err_put;
-
-	ret = idr_alloc(&file_priv->vm_idr, vm, 0, 0, GFP_KERNEL);
-	GEM_BUG_ON(!ret);
-	if (ret < 0)
-		goto err_unlock;
-
-	i915_vm_open(vm);
-
-	args->size = 0;
-	args->value = ret;
+		args->size = 0;
+		args->value = id;
+	}
 
-	ret = 0;
-err_unlock:
-	mutex_unlock(&file_priv->vm_idr_lock);
-err_put:
 	i915_vm_put(vm);
-	return ret;
+	return err;
 }
 
 static void set_ppgtt_barrier(void *data)
@@ -1151,7 +1113,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 		return -ENOENT;
 
 	rcu_read_lock();
-	vm = idr_find(&file_priv->vm_idr, args->value);
+	vm = xa_load(&file_priv->vm_xa, args->value);
 	if (vm && !kref_get_unless_zero(&vm->ref))
 		vm = NULL;
 	rcu_read_unlock();
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 077af22b8340..50abf9113b2f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -203,9 +203,7 @@ struct drm_i915_file_private {
 	} mm;
 
 	struct xarray context_xa;
-
-	struct idr vm_idr;
-	struct mutex vm_idr_lock; /* guards vm_idr */
+	struct xarray vm_xa;
 
 	unsigned int bsd_engine;
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
