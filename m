Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB3315D5C0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8766EB7C;
	Fri, 14 Feb 2020 10:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F5F6EB6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:31:00 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:42 +0100
Message-Id: <20200214103055.2117836-7-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/19] drm/i915: Parse command buffer earlier in
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 66 +++++++++++--------
 1 file changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e7dd29541727..bcbcd0ea8da6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -287,6 +287,8 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 };
 
+static int eb_parse(struct i915_execbuffer *eb);
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -706,6 +708,7 @@ static int eb_select_context(struct i915_execbuffer *eb)
 static int eb_lookup_vmas(struct i915_execbuffer *eb)
 {
 	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
+	struct drm_i915_private *i915 = eb->i915;
 	struct drm_i915_gem_object *obj;
 	unsigned int i, batch;
 	int err;
@@ -771,6 +774,22 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 
 	mutex_unlock(&eb->gem_context->mutex);
 
+	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
+		drm_dbg(&i915->drm,
+			"Attempting to use self-modifying batch buffer\n");
+		return -EINVAL;
+	}
+
+	if (range_overflows_t(u64,
+			      eb->batch_start_offset, eb->batch_len,
+			      eb->batch->vma->size)) {
+		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
+		return -EINVAL;
+	}
+
+	if (eb->batch_len == 0)
+		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
+
 	return 0;
 
 err_obj:
@@ -1661,7 +1680,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
-static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
+static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 {
 	struct drm_device *dev = &eb->i915->drm;
 	bool have_copy = false;
@@ -1735,6 +1754,11 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 		}
 	}
 
+	/* as last step, parse the command buffer */
+	err = eb_parse(eb);
+	if (err)
+		goto err;
+
 	/*
 	 * Leave the user relocations as are, this is the painfully slow path,
 	 * and we want to avoid the complication of dropping the lock whilst
@@ -1767,7 +1791,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int eb_relocate(struct i915_execbuffer *eb)
+static int eb_relocate_parse(struct i915_execbuffer *eb)
 {
 	int err;
 
@@ -1775,7 +1799,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
 	if (err)
 		return err;
 
-	if (eb_validate_vmas(eb))
+	err = eb_validate_vmas(eb);
+	if (err)
 		goto slow;
 
 	/* The objects are in their final locations, apply the relocations. */
@@ -1788,10 +1813,14 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		}
 	}
 
+	err = eb_parse(eb);
+	if (err)
+		goto slow;
+
 	return 0;
 
 slow:
-	return eb_relocate_slow(eb);
+	return eb_relocate_parse_slow(eb);
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -2663,7 +2692,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (err)
 		goto err_engine;
 
-	err = eb_relocate(&eb);
+	err = eb_relocate_parse(&eb);
 	if (err) {
 		/*
 		 * If the user expects the execobject.offset and
@@ -2676,33 +2705,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
-	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
-		drm_dbg(&i915->drm,
-			"Attempting to use self-modifying batch buffer\n");
-		err = -EINVAL;
-		goto err_vma;
-	}
-
-	if (range_overflows_t(u64,
-			      eb.batch_start_offset, eb.batch_len,
-			      eb.batch->vma->size)) {
-		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
-		err = -EINVAL;
-		goto err_vma;
-	}
-
-	if (eb.batch_len == 0)
-		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
-
-	err = eb_parse(&eb);
-	if (err)
-		goto err_vma;
-
 	/*
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
-	batch = eb.batch->vma;
 	if (eb.batch_flags & I915_DISPATCH_SECURE) {
 		struct i915_vma *vma;
 
@@ -2716,13 +2722,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		 *   fitting due to fragmentation.
 		 * So this is actually safe.
 		 */
-		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
+		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto err_vma;
 		}
 
 		batch = vma;
+	} else {
+		batch = eb.batch->vma;
 	}
 
 	/* All GPU relocation batches must be submitted prior to the user rq */
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
