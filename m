Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E89D129FDE
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 10:59:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCE389FCE;
	Tue, 24 Dec 2019 09:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4603589FCE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 09:59:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19680317-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 09:59:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Dec 2019 09:59:20 +0000
Message-Id: <20191224095920.2386297-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Switch context id allocation directly to
 xarray
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

IDR internally uses xarray so we can use it directly which simplifies our
code by removing the need to do external locking.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 52 +++++++------------
 .../gpu/drm/i915/gem/selftests/mock_context.c |  3 +-
 drivers/gpu/drm/i915/i915_drv.h               |  6 +--
 3 files changed, 25 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index dc90b044a217..f746bb53f18e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -760,12 +760,6 @@ void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
 	flush_work(&i915->gem.contexts.free_work);
 }
 
-static int context_idr_cleanup(int id, void *p, void *data)
-{
-	context_close(p);
-	return 0;
-}
-
 static int vm_idr_cleanup(int id, void *p, void *data)
 {
 	i915_vm_put(p);
@@ -773,7 +767,8 @@ static int vm_idr_cleanup(int id, void *p, void *data)
 }
 
 static int gem_context_register(struct i915_gem_context *ctx,
-				struct drm_i915_file_private *fpriv)
+				struct drm_i915_file_private *fpriv,
+				u32 *id)
 {
 	struct i915_address_space *vm;
 	int ret;
@@ -791,14 +786,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
 		 current->comm, pid_nr(ctx->pid));
 
 	/* And finally expose ourselves to userspace via the idr */
-	mutex_lock(&fpriv->context_idr_lock);
-	ret = idr_alloc(&fpriv->context_idr, ctx, 0, 0, GFP_KERNEL);
-	mutex_unlock(&fpriv->context_idr_lock);
-	if (ret >= 0)
-		goto out;
+	ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
+	if (ret)
+		put_pid(fetch_and_zero(&ctx->pid));
 
-	put_pid(fetch_and_zero(&ctx->pid));
-out:
 	return ret;
 }
 
@@ -808,11 +799,11 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct i915_gem_context *ctx;
 	int err;
+	u32 id;
 
-	mutex_init(&file_priv->context_idr_lock);
-	mutex_init(&file_priv->vm_idr_lock);
+	xa_init_flags(&file_priv->context_xa, XA_FLAGS_ALLOC);
 
-	idr_init(&file_priv->context_idr);
+	mutex_init(&file_priv->vm_idr_lock);
 	idr_init_base(&file_priv->vm_idr, 1);
 
 	ctx = i915_gem_create_context(i915, 0);
@@ -821,21 +812,19 @@ int i915_gem_context_open(struct drm_i915_private *i915,
 		goto err;
 	}
 
-	err = gem_context_register(ctx, file_priv);
+	err = gem_context_register(ctx, file_priv, &id);
 	if (err < 0)
 		goto err_ctx;
 
-	GEM_BUG_ON(err > 0);
-
+	GEM_BUG_ON(id);
 	return 0;
 
 err_ctx:
 	context_close(ctx);
 err:
 	idr_destroy(&file_priv->vm_idr);
-	idr_destroy(&file_priv->context_idr);
+	xa_destroy(&file_priv->context_xa);
 	mutex_destroy(&file_priv->vm_idr_lock);
-	mutex_destroy(&file_priv->context_idr_lock);
 	return err;
 }
 
@@ -843,10 +832,12 @@ void i915_gem_context_close(struct drm_file *file)
 {
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct drm_i915_private *i915 = file_priv->dev_priv;
+	struct i915_gem_context *ctx;
+	unsigned long idx;
 
-	idr_for_each(&file_priv->context_idr, context_idr_cleanup, NULL);
-	idr_destroy(&file_priv->context_idr);
-	mutex_destroy(&file_priv->context_idr_lock);
+	xa_for_each(&file_priv->context_xa, idx, ctx)
+		context_close(ctx);
+	xa_destroy(&file_priv->context_xa);
 
 	idr_for_each(&file_priv->vm_idr, vm_idr_cleanup, NULL);
 	idr_destroy(&file_priv->vm_idr);
@@ -2187,6 +2178,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_context_create_ext *args = data;
 	struct create_ext ext_data;
 	int ret;
+	u32 id;
 
 	if (!DRIVER_CAPS(i915)->has_logical_contexts)
 		return -ENODEV;
@@ -2218,11 +2210,11 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 			goto err_ctx;
 	}
 
-	ret = gem_context_register(ext_data.ctx, ext_data.fpriv);
+	ret = gem_context_register(ext_data.ctx, ext_data.fpriv, &id);
 	if (ret < 0)
 		goto err_ctx;
 
-	args->ctx_id = ret;
+	args->ctx_id = id;
 	DRM_DEBUG("HW context %d created\n", args->ctx_id);
 
 	return 0;
@@ -2245,11 +2237,7 @@ int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
 	if (!args->ctx_id)
 		return -ENOENT;
 
-	if (mutex_lock_interruptible(&file_priv->context_idr_lock))
-		return -EINTR;
-
-	ctx = idr_remove(&file_priv->context_idr, args->ctx_id);
-	mutex_unlock(&file_priv->context_idr_lock);
+	ctx = xa_erase(&file_priv->context_xa, args->ctx_id);
 	if (!ctx)
 		return -ENOENT;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 7d7e13dc2fdf..384143aa7776 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -77,12 +77,13 @@ live_context(struct drm_i915_private *i915, struct file *file)
 {
 	struct i915_gem_context *ctx;
 	int err;
+	u32 id;
 
 	ctx = i915_gem_create_context(i915, 0);
 	if (IS_ERR(ctx))
 		return ctx;
 
-	err = gem_context_register(ctx, to_drm_file(file)->driver_priv);
+	err = gem_context_register(ctx, to_drm_file(file)->driver_priv, &id);
 	if (err < 0)
 		goto err_ctx;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d05a968227f7..b7f122dccdca 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -46,6 +46,7 @@
 #include <linux/dma-resv.h>
 #include <linux/shmem_fs.h>
 #include <linux/stackdepot.h>
+#include <linux/xarray.h>
 
 #include <drm/intel-gtt.h>
 #include <drm/drm_legacy.h> /* for struct drm_dma_handle */
@@ -201,8 +202,7 @@ struct drm_i915_file_private {
 		struct list_head request_list;
 	} mm;
 
-	struct idr context_idr;
-	struct mutex context_idr_lock; /* guards context_idr */
+	struct xarray context_xa;
 
 	struct idr vm_idr;
 	struct mutex vm_idr_lock; /* guards vm_idr */
@@ -1889,7 +1889,7 @@ struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags)
 static inline struct i915_gem_context *
 __i915_gem_context_lookup_rcu(struct drm_i915_file_private *file_priv, u32 id)
 {
-	return idr_find(&file_priv->context_idr, id);
+	return xa_load(&file_priv->context_xa, id);
 }
 
 static inline struct i915_gem_context *
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
