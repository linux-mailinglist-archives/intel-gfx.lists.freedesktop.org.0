Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2CB3DF792
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 00:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76C286E8FD;
	Tue,  3 Aug 2021 22:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4036E8FF;
 Tue,  3 Aug 2021 22:11:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="193393484"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="193393484"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="511512737"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 15:11:56 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue,  3 Aug 2021 15:29:34 -0700
Message-Id: <20210803222943.27686-38-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
References: <20210803222943.27686-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 37/46] drm/i915: Teach execbuf there can be more
 than one batch in the objects list
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of multiple batches all batches will be at the beginning in the
exex objects array or at the end based on the existing execbuffer2 flag.

Batches not executed in the current execbuf call will not be processed
for relocations or but will be pinned in same manner as the current
batch.

This will enable multiple do_execbuf calls with a single exec object
array in a later patch.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 31 +++++++++++++------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 707e12725f74..2835ef8734e5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -255,6 +255,9 @@ struct i915_execbuffer {
 	/* batch_index in vma list */
 	unsigned int batch_index;
 
+	/* number of batches in execbuf IOCTL */
+	unsigned int num_batches;
+
 	/** actual size of execobj[] as we may extend it for the cmdparser */
 	unsigned int buffer_count;
 
@@ -511,6 +514,14 @@ static bool platform_has_relocs_enabled(const struct i915_execbuffer *eb)
 	return false;
 }
 
+static inline bool
+is_batch_buffer(struct i915_execbuffer *eb, unsigned int buffer_idx)
+{
+	return eb->args->flags & I915_EXEC_BATCH_FIRST ?
+		buffer_idx <= eb->num_batches :
+		buffer_idx >= eb->args->buffer_count - eb->num_batches;
+}
+
 static int
 eb_validate_vma(struct i915_execbuffer *eb,
 		struct drm_i915_gem_exec_object2 *entry,
@@ -562,11 +573,10 @@ eb_validate_vma(struct i915_execbuffer *eb,
 
 static void
 eb_add_vma(struct i915_execbuffer *eb,
-	   unsigned int i, unsigned batch_idx,
-	   struct i915_vma *vma)
+	   unsigned int buffer_idx, struct i915_vma *vma)
 {
-	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
-	struct eb_vma *ev = &eb->vma[i];
+	struct drm_i915_gem_exec_object2 *entry = &eb->exec[buffer_idx];
+	struct eb_vma *ev = &eb->vma[buffer_idx];
 
 	ev->vma = vma;
 	ev->exec = entry;
@@ -591,14 +601,15 @@ eb_add_vma(struct i915_execbuffer *eb,
 	 * Note that actual hangs have only been observed on gen7, but for
 	 * paranoia do it everywhere.
 	 */
-	if (i == batch_idx) {
+	if (is_batch_buffer(eb, buffer_idx)) {
 		if (entry->relocation_count &&
 		    !(ev->flags & EXEC_OBJECT_PINNED))
 			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
 		if (eb->reloc_cache.has_fence)
 			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
-		eb->batch = ev;
+		if (buffer_idx == eb->batch_index)
+			eb->batch = ev;
 	}
 }
 
@@ -872,7 +883,7 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 			goto err;
 		}
 
-		eb_add_vma(eb, i, eb->batch_index, vma);
+		eb_add_vma(eb, i, vma);
 
 		if (i915_gem_object_is_userptr(vma->obj)) {
 			err = i915_gem_object_userptr_submit_init(vma->obj);
@@ -3147,6 +3158,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		       struct drm_i915_gem_execbuffer2 *args,
 		       struct drm_i915_gem_exec_object2 *exec,
 		       int batch_index,
+		       unsigned int num_batches,
 		       struct dma_fence *in_fence,
 		       struct dma_fence *exec_fence,
 		       struct dma_fence **out_fence)
@@ -3203,6 +3215,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 	GEM_BUG_ON(!eb.lut_size);
 
+	eb.num_batches = num_batches;
 	if (batch_index >= 0)
 		eb.batch_index = batch_index;
 
@@ -3433,8 +3446,8 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
 		goto err_copy;
 	}
 
-	err = i915_gem_do_execbuffer(dev, file, args, exec2_list, -1, in_fence,
-				     exec_fence, out_fence_p);
+	err = i915_gem_do_execbuffer(dev, file, args, exec2_list, -1, 1,
+				     in_fence, exec_fence, out_fence_p);
 
 	/*
 	 * Now that we have begun execution of the batchbuffer, we ignore
-- 
2.28.0

