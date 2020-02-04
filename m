Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D44151C2E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1256F376;
	Tue,  4 Feb 2020 14:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701E46EF44
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:27:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20113573-1500050 
 for multiple; Tue, 04 Feb 2020 14:26:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 14:25:58 +0000
Message-Id: <20200204142558.1082764-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204142558.1082764-1-chris@chris-wilson.co.uk>
References: <20200204142558.1082764-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/2] drm/i915: Export per-client debug tracing
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than put sensitive user details into a global dmesg, report the
error and debug messages directly back to the user via the kernel
tracing mechanism.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 91 ++++++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h             |  4 +
 drivers/gpu/drm/i915/i915_gem.c             |  5 +-
 include/uapi/drm/i915_drm.h                 |  7 ++
 4 files changed, 77 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 52a749691a8d..bb68e6f847df 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -82,6 +82,8 @@
 
 #define ALL_L3_SLICES(dev) (1 << NUM_L3_SLICES(dev)) - 1
 
+#define CTX_TRACE(ctx, ...) TRACE((ctx)->file_priv->trace, __VA_ARGS__)
+
 static struct i915_global_gem_context {
 	struct i915_global base;
 	struct kmem_cache *slab_luts;
@@ -722,8 +724,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 
 		ppgtt = i915_ppgtt_create(&i915->gt);
 		if (IS_ERR(ppgtt)) {
-			drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
-				PTR_ERR(ppgtt));
 			context_close(ctx);
 			return ERR_CAST(ppgtt);
 		}
@@ -1364,14 +1364,15 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 		return -EFAULT;
 
 	if (idx >= set->engines->num_engines) {
-		drm_dbg(&i915->drm, "Invalid placement value, %d >= %d\n",
-			idx, set->engines->num_engines);
+		CTX_TRACE(set->ctx,
+			  "Invalid placement value, %d >= %d\n",
+			  idx, set->engines->num_engines);
 		return -EINVAL;
 	}
 
 	idx = array_index_nospec(idx, set->engines->num_engines);
 	if (set->engines->engines[idx]) {
-		drm_dbg(&i915->drm,
+		CTX_TRACE(set->ctx,
 			"Invalid placement[%d], already occupied\n", idx);
 		return -EEXIST;
 	}
@@ -1408,9 +1409,9 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 						       ci.engine_class,
 						       ci.engine_instance);
 		if (!siblings[n]) {
-			drm_dbg(&i915->drm,
-				"Invalid sibling[%d]: { class:%d, inst:%d }\n",
-				n, ci.engine_class, ci.engine_instance);
+			CTX_TRACE(set->ctx,
+				  "Invalid sibling[%d]: { class:%d, inst:%d }\n",
+				  n, ci.engine_class, ci.engine_instance);
 			err = -EINVAL;
 			goto out_siblings;
 		}
@@ -1454,15 +1455,15 @@ set_engines__bond(struct i915_user_extension __user *base, void *data)
 		return -EFAULT;
 
 	if (idx >= set->engines->num_engines) {
-		drm_dbg(&i915->drm,
-			"Invalid index for virtual engine: %d >= %d\n",
-			idx, set->engines->num_engines);
+		CTX_TRACE(set->ctx,
+			  "Invalid index for virtual engine: %d >= %d\n",
+			  idx, set->engines->num_engines);
 		return -EINVAL;
 	}
 
 	idx = array_index_nospec(idx, set->engines->num_engines);
 	if (!set->engines->engines[idx]) {
-		drm_dbg(&i915->drm, "Invalid engine at %d\n", idx);
+		CTX_TRACE(set->ctx, "Invalid engine at %d\n", idx);
 		return -EINVAL;
 	}
 	virtual = set->engines->engines[idx]->engine;
@@ -1483,9 +1484,9 @@ set_engines__bond(struct i915_user_extension __user *base, void *data)
 	master = intel_engine_lookup_user(i915,
 					  ci.engine_class, ci.engine_instance);
 	if (!master) {
-		drm_dbg(&i915->drm,
-			"Unrecognised master engine: { class:%u, instance:%u }\n",
-			ci.engine_class, ci.engine_instance);
+		CTX_TRACE(set->ctx,
+			  "Unrecognised master engine: { class:%u, instance:%u }\n",
+			  ci.engine_class, ci.engine_instance);
 		return -EINVAL;
 	}
 
@@ -1502,9 +1503,9 @@ set_engines__bond(struct i915_user_extension __user *base, void *data)
 						ci.engine_class,
 						ci.engine_instance);
 		if (!bond) {
-			drm_dbg(&i915->drm,
-				"Unrecognised engine[%d] for bonding: { class:%d, instance: %d }\n",
-				n, ci.engine_class, ci.engine_instance);
+			CTX_TRACE(set->ctx,
+				  "Unrecognised engine[%d] for bonding: { class:%d, instance: %d }\n",
+				  n, ci.engine_class, ci.engine_instance);
 			return -EINVAL;
 		}
 
@@ -1533,7 +1534,6 @@ static int
 set_engines(struct i915_gem_context *ctx,
 	    const struct drm_i915_gem_context_param *args)
 {
-	struct drm_i915_private *i915 = ctx->i915;
 	struct i915_context_param_engines __user *user =
 		u64_to_user_ptr(args->value);
 	struct set_engines set = { .ctx = ctx };
@@ -1555,8 +1555,9 @@ set_engines(struct i915_gem_context *ctx,
 	BUILD_BUG_ON(!IS_ALIGNED(sizeof(*user), sizeof(*user->engines)));
 	if (args->size < sizeof(*user) ||
 	    !IS_ALIGNED(args->size, sizeof(*user->engines))) {
-		drm_dbg(&i915->drm, "Invalid size for engine array: %d\n",
-			args->size);
+		CTX_TRACE(ctx,
+			  "Invalid size for engine array: %d\n",
+			  args->size);
 		return -EINVAL;
 	}
 
@@ -1592,9 +1593,9 @@ set_engines(struct i915_gem_context *ctx,
 						  ci.engine_class,
 						  ci.engine_instance);
 		if (!engine) {
-			drm_dbg(&i915->drm,
-				"Invalid engine[%d]: { class:%d, instance:%d }\n",
-				n, ci.engine_class, ci.engine_instance);
+			CTX_TRACE(ctx,
+				  "Invalid engine[%d]: { class:%d, instance:%d }\n",
+				  n, ci.engine_class, ci.engine_instance);
 			__free_engines(set.engines, n);
 			return -ENOENT;
 		}
@@ -1737,6 +1738,36 @@ get_engines(struct i915_gem_context *ctx,
 	return err;
 }
 
+static int
+get_trace(struct i915_gem_context *ctx,
+	  struct drm_i915_gem_context_param *args)
+{
+	int fd;
+
+	if (args->ctx_id) /* single trace per-fd, let's not mix it up! */
+		return -EINVAL;
+
+	if (!READ_ONCE(ctx->file_priv->trace)) {
+		struct trace_array *tr;
+
+		tr = trace_array_create();
+		if (IS_ERR(tr))
+			return PTR_ERR(tr);
+
+		if (cmpxchg(&ctx->file_priv->trace, NULL, tr))
+			trace_array_put(tr);
+	}
+
+	fd = anon_trace_getfd("i915-client", ctx->file_priv->trace);
+	if (fd < 0)
+		return fd;
+
+	args->size = 0;
+	args->value = fd;
+
+	return 0;
+}
+
 static int
 set_persistence(struct i915_gem_context *ctx,
 		const struct drm_i915_gem_context_param *args)
@@ -2108,9 +2139,9 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 
 	ext_data.fpriv = file->driver_priv;
 	if (client_is_banned(ext_data.fpriv)) {
-		drm_dbg(&i915->drm,
-			"client %s[%d] banned from creating ctx\n",
-			current->comm, task_pid_nr(current));
+		TRACE(file_priv->trace,
+		      "client %s[%d] banned from creating ctx\n",
+		      current->comm, task_pid_nr(current));
 		return -EIO;
 	}
 
@@ -2132,7 +2163,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
 		goto err_ctx;
 
 	args->ctx_id = id;
-	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
+	TRACE(file_priv->trace, "HW context %d created\n", args->ctx_id);
 
 	return 0;
 
@@ -2282,6 +2313,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
 		args->value = i915_gem_context_is_persistent(ctx);
 		break;
 
+	case I915_CONTEXT_PARAM_TRACE:
+		ret = get_trace(ctx, args);
+		break;
+
 	case I915_CONTEXT_PARAM_BAN_PERIOD:
 	default:
 		ret = -EINVAL;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a71ff233cc55..41228d648ed4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -46,6 +46,7 @@
 #include <linux/dma-resv.h>
 #include <linux/shmem_fs.h>
 #include <linux/stackdepot.h>
+#include <linux/trace.h>
 #include <linux/xarray.h>
 
 #include <drm/intel-gtt.h>
@@ -223,7 +224,10 @@ struct drm_i915_file_private {
 	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
 	atomic_t ban_score;
 	unsigned long hang_timestamp;
+
+	struct trace_array *trace;
 };
+#define TRACE(tr, ...) trace_array_printk((tr), _THIS_IP_,  __VA_ARGS__)
 
 /* Interface history:
  *
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index a712e60b016a..56b9c1e0223f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1290,6 +1290,9 @@ void i915_gem_release(struct drm_device *dev, struct drm_file *file)
 	struct drm_i915_file_private *file_priv = file->driver_priv;
 	struct i915_request *request;
 
+	if (file_priv->trace)
+		trace_array_destroy(file_priv->trace);
+
 	/* Clean up our request list when the client is going away, so that
 	 * later retire_requests won't dereference our soon-to-be-gone
 	 * file_priv.
@@ -1305,8 +1308,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
 	struct drm_i915_file_private *file_priv;
 	int ret;
 
-	DRM_DEBUG("\n");
-
 	file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 	if (!file_priv)
 		return -ENOMEM;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 829c0a48577f..c8b25b2d9ab3 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1619,6 +1619,13 @@ struct drm_i915_gem_context_param {
  * By default, new contexts allow persistence.
  */
 #define I915_CONTEXT_PARAM_PERSISTENCE	0xb
+
+#define I915_CONTEXT_PARAM_TRACE	0xc
+/*
+ * I915_CONTEXT_PARAM_TRACE:
+ *
+ * Return an fd representing a pipe of all trace output from this file.
+ */
 /* Must be kept compact -- no holes and well documented */
 
 	__u64 value;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
