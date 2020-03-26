Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3024E193E32
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 12:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3B46E321;
	Thu, 26 Mar 2020 11:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4254D6E2FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 11:49:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 12:49:05 +0100
Message-Id: <20200326114922.1820274-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
References: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/21] drm/i915: Parse command buffer earlier in
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
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 68 ++++++++++---------
 1 file changed, 37 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 00c7c72c4742..4a41ff4d2e62 100644
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
@@ -814,6 +816,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 
 static int eb_lookup_vmas(struct i915_execbuffer *eb)
 {
+	struct drm_i915_private *i915 = eb->i915;
 	unsigned int batch = eb_batch_index(eb);
 	unsigned int i;
 	int err = 0;
@@ -827,18 +830,37 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		vma = eb_lookup_vma(eb, eb->exec[i].handle);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
-			break;
+			goto err;
 		}
 
 		err = eb_validate_vma(eb, &eb->exec[i], vma);
 		if (unlikely(err)) {
 			i915_vma_put(vma);
-			break;
+			goto err;
 		}
 
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
+	return 0;
+
+err:
 	eb->vma[i].vma = NULL;
 	return err;
 }
@@ -1688,7 +1710,7 @@ static int eb_prefault_relocations(const struct i915_execbuffer *eb)
 	return 0;
 }
 
-static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
+static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
 {
 	bool have_copy = false;
 	struct eb_vma *ev;
@@ -1739,6 +1761,11 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
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
@@ -1771,7 +1798,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 	return err;
 }
 
-static int eb_relocate(struct i915_execbuffer *eb)
+static int eb_relocate_parse(struct i915_execbuffer *eb)
 {
 	int err;
 
@@ -1791,11 +1818,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
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
@@ -2731,7 +2758,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (unlikely(err))
 		goto err_context;
 
-	err = eb_relocate(&eb);
+	err = eb_relocate_parse(&eb);
 	if (err) {
 		/*
 		 * If the user expects the execobject.offset and
@@ -2744,33 +2771,10 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
 
@@ -2784,13 +2788,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
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
