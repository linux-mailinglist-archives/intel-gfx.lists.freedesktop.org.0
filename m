Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FCE118538
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0516E894;
	Tue, 10 Dec 2019 10:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 305 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 10:37:14 UTC
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E2F6E894
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:37:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 11:32:03 +0100
Message-Id: <20191210103204.3564263-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
References: <20191210103204.3564263-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Parse command buffer earlier in
 eb_relocate(slow)
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

We want to introduce backoff logic, but we need to lock the
pool object as well for command parsing. Because of this, we
will need backoff logic for the engine pool obj, move the batch
validation up slightly to eb_lookup_vmas, and the actual command
parsing in a separate function which can get called from execbuf
relocation fast and slowpath.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 120 +++++++++---------
 1 file changed, 61 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cb64a27a7d98..1f41c245665a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -285,6 +285,9 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 };
 
+static int eb_parse(struct i915_execbuffer *eb,
+		    struct intel_engine_pool_node *pool);
+
 /*
  * Used to convert any address to canonical form.
  * Starting from gen8, some commands (e.g. STATE_BASE_ADDRESS,
@@ -792,6 +795,21 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 
 	mutex_unlock(&eb->gem_context->mutex);
 
+	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
+		DRM_DEBUG("Attempting to use self-modifying batch buffer\n");
+		return -EINVAL;
+	}
+
+	if (range_overflows_t(u64,
+			      eb->batch_start_offset, eb->batch_len,
+			      eb->batch->vma->size)) {
+		DRM_DEBUG("Attempting to use out-of-bounds batch\n");
+		return -EINVAL;
+	}
+
+	if (eb->batch_len == 0)
+		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
+
 	return 0;
 
 err_obj:
@@ -1679,6 +1697,25 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
+static int eb_lock_and_parse_cmdbuffer(struct i915_execbuffer *eb)
+{
+	struct intel_engine_pool_node *pool;
+	int err;
+
+	if (!eb_use_cmdparser(eb))
+		return 0;
+
+	pool = intel_engine_get_pool(eb->engine, eb->batch_len);
+	if (IS_ERR(pool))
+		return PTR_ERR(pool);
+
+	err = eb_parse(eb, pool);
+	if (err)
+		intel_engine_pool_put(pool);
+
+	return err;
+}
+
 static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 {
 	struct drm_device *dev = &eb->i915->drm;
@@ -1753,6 +1790,10 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		}
 	}
 
+	err = eb_lock_and_parse_cmdbuffer(eb);
+	if (err)
+		goto err;
+
 	/*
 	 * Leave the user relocations as are, this is the painfully slow path,
 	 * and we want to avoid the complication of dropping the lock whilst
@@ -1785,7 +1826,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int eb_relocate(struct i915_execbuffer *eb)
+static int eb_relocate_and_parse_cmdbuf(struct i915_execbuffer *eb)
 {
 	int err;
 
@@ -1793,7 +1834,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	if (eb_validate_vmas(eb))
+	err = eb_validate_vmas(eb);
+	if (!err)
+		err = eb_lock_and_parse_cmdbuffer(eb);
+	if (err)
 		goto slow;
 
 	/* The objects are in their final locations, apply the relocations. */
@@ -2000,21 +2044,17 @@ shadow_batch_pin(struct i915_execbuffer *eb, struct drm_i915_gem_object *obj)
 	return vma;
 }
 
-static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
+static int eb_parse(struct i915_execbuffer *eb,
+		    struct intel_engine_pool_node *pool)
 {
-	struct intel_engine_pool_node *pool;
 	struct i915_vma *vma;
 	u64 batch_start;
 	u64 shadow_batch_start;
 	int err;
 
-	pool = intel_engine_get_pool(eb->engine, eb->batch_len);
-	if (IS_ERR(pool))
-		return ERR_CAST(pool);
-
 	vma = shadow_batch_pin(eb, pool->obj);
 	if (IS_ERR(vma))
-		goto err;
+		return PTR_ERR(vma);
 
 	batch_start = gen8_canonical_addr(eb->batch->vma->node.start) +
 		      eb->batch_start_offset;
@@ -2038,12 +2078,13 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 		 * For PPGTT backing however, we have no choice but to forcibly
 		 * reject unsafe buffers
 		 */
-		if (i915_vma_is_ggtt(vma) && err == -EACCES)
+		if (i915_vma_is_ggtt(vma) && err == -EACCES) {
 			/* Execute original buffer non-secure */
-			vma = NULL;
-		else
-			vma = ERR_PTR(err);
-		goto err;
+			intel_engine_pool_put(pool);
+			return 0;
+		}
+
+		return err;
 	}
 
 	eb->vma[eb->buffer_count].vma = i915_vma_get(vma);
@@ -2059,11 +2100,7 @@ static struct i915_vma *eb_parse(struct i915_execbuffer *eb)
 	/* eb->batch_len unchanged */
 
 	vma->private = pool;
-	return vma;
-
-err:
-	intel_engine_pool_put(pool);
-	return vma;
+	return 0;
 }
 
 static void
@@ -2556,51 +2593,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_engine;
 
-	err = eb_relocate(&eb);
-	if (err) {
-		/*
-		 * If the user expects the execobject.offset and
-		 * reloc.presumed_offset to be an exact match,
-		 * as for using NO_RELOC, then we cannot update
-		 * the execobject.offset until we have completed
-		 * relocation.
-		 */
-		args->flags &= ~__EXEC_HAS_RELOC;
-		goto err_vma;
-	}
-
-	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
-		DRM_DEBUG("Attempting to use self-modifying batch buffer\n");
-		err = -EINVAL;
-		goto err_vma;
-	}
-
-	batch = eb.batch->vma;
-	if (range_overflows_t(u64,
-			      eb.batch_start_offset, eb.batch_len,
-			      batch->size)) {
-		DRM_DEBUG("Attempting to use out-of-bounds batch\n");
-		err = -EINVAL;
+	err = eb_relocate_and_parse_cmdbuf(&eb);
+	if (err)
 		goto err_vma;
-	}
-
-	if (eb.batch_len == 0)
-		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
-
-	if (eb_use_cmdparser(&eb)) {
-		struct i915_vma *vma;
-
-		vma = eb_parse(&eb);
-		if (IS_ERR(vma)) {
-			err = PTR_ERR(vma);
-			goto err_vma;
-		}
-	}
 
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
+	batch = eb.batch->vma;
 	if (eb.batch_flags & I915_DISPATCH_SECURE) {
 		struct i915_vma *vma;
 
@@ -2617,7 +2618,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			goto err_vma;
+			goto err_pool;
 		}
 
 		batch = vma;
@@ -2694,6 +2695,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 err_batch_unpin:
 	if (eb.batch_flags & I915_DISPATCH_SECURE)
 		i915_vma_unpin(batch);
+err_pool:
 	if (batch->private)
 		intel_engine_pool_put(batch->private);
 err_vma:
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
