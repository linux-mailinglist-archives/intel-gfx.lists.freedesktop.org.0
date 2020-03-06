Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 729BE17BCB4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 13:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA33189CA1;
	Fri,  6 Mar 2020 12:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A076ECF1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 12:30:58 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 13:30:32 +0100
Message-Id: <20200306123046.2797797-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
References: <20200306123046.2797797-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/17] drm/i915: Parse command buffer earlier in
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 61 ++++++++++---------
 1 file changed, 32 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index a1a2f6e8b7bc..c70026b05c26 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -285,6 +285,8 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 };
 
+static int eb_parse(struct i915_execbuffer *eb);
+
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -731,6 +733,7 @@ static int eb_select_context(struct i915_execbuffer *eb)
 static int eb_lookup_vmas(struct i915_execbuffer *eb)
 {
 	struct radix_tree_root *handles_vma = &eb->gem_context->handles_vma;
+	struct drm_i915_private *i915 = eb->i915;
 	struct drm_i915_gem_object *obj;
 	unsigned int i, batch;
 	int err;
@@ -794,6 +797,22 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		eb_add_vma(eb, i, batch, vma);
 	}
 
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
@@ -1648,7 +1667,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
-static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
+static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 {
 	bool have_copy = false;
 	struct eb_vma *ev;
@@ -1699,6 +1718,11 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
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
@@ -1731,7 +1755,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int eb_relocate(struct i915_execbuffer *eb)
+static int eb_relocate_parse(struct i915_execbuffer *eb)
 {
 	int err;
 
@@ -1753,11 +1777,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			if (eb_relocate_vma(eb, ev))
-				return eb_relocate_slow(eb);
+				return eb_relocate_parse_slow(eb);
 		}
 	}
 
-	return 0;
+	return eb_parse(eb);
 }
 
 static int eb_move_to_gpu(struct i915_execbuffer *eb)
@@ -2695,7 +2719,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
-	err = eb_relocate(&eb);
+	err = eb_relocate_parse(&eb);
 	if (err) {
 		/*
 		 * If the user expects the execobject.offset and
@@ -2708,33 +2732,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
 
@@ -2748,13 +2749,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		 *   fitting due to fragmentation.
 		 * So this is actually safe.
 		 */
-		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
+		vma = i915_gem_object_ggtt_pin(eb.batch->vma->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto err_parse;
 		}
 
 		batch = vma;
+	} else {
+		batch = eb.batch->vma;
 	}
 
 	/* All GPU relocation batches must be submitted prior to the user rq */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
