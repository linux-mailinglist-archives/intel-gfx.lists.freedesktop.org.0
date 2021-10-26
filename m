Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F6843BD72
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 00:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554616E4CB;
	Tue, 26 Oct 2021 22:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 553D76E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 22:51:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="217203172"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="217203172"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:13 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497574336"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 15:51:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Oct 2021 01:51:01 +0300
Message-Id: <20211026225105.2783797-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026225105.2783797-1-imre.deak@intel.com>
References: <20211026225105.2783797-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/fb: Factor out functions to remap
 contiguous FB obj pages
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

Factor out functions needed to map contiguous FB obj pages to a GTT/DPT
VMA view in the next patch.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 110 +++++++++++++++------------
 1 file changed, 60 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 57c97554393b9..a30366d4965b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1387,6 +1387,25 @@ intel_rotate_pages(struct intel_rotation_info *rot_info,
 	return ERR_PTR(ret);
 }
 
+static struct scatterlist *
+add_padding_pages(unsigned int count,
+		  struct sg_table *st, struct scatterlist *sg)
+{
+	st->nents++;
+
+	/*
+	 * The DE ignores the PTEs for the padding tiles, the sg entry
+	 * here is just a convenience to indicate how many padding PTEs
+	 * to insert at this spot.
+	 */
+	sg_set_page(sg, NULL, count * 4096, 0);
+	sg_dma_address(sg) = 0;
+	sg_dma_len(sg) = count * 4096;
+	sg = sg_next(sg);
+
+	return sg;
+}
+
 static struct scatterlist *
 remap_pages(struct drm_i915_gem_object *obj,
 	    unsigned int offset, unsigned int alignment_pad,
@@ -1399,19 +1418,8 @@ remap_pages(struct drm_i915_gem_object *obj,
 	if (!width || !height)
 		return sg;
 
-	if (alignment_pad) {
-		st->nents++;
-
-		/*
-		 * The DE ignores the PTEs for the padding tiles, the sg entry
-		 * here is just a convenience to indicate how many padding PTEs
-		 * to insert at this spot.
-		 */
-		sg_set_page(sg, NULL, alignment_pad * 4096, 0);
-		sg_dma_address(sg) = 0;
-		sg_dma_len(sg) = alignment_pad * 4096;
-		sg = sg_next(sg);
-	}
+	if (alignment_pad)
+		sg = add_padding_pages(alignment_pad, st, sg);
 
 	for (row = 0; row < height; row++) {
 		unsigned int left = width * I915_GTT_PAGE_SIZE;
@@ -1448,22 +1456,45 @@ remap_pages(struct drm_i915_gem_object *obj,
 		if (!left)
 			continue;
 
-		st->nents++;
-
-		/*
-		 * The DE ignores the PTEs for the padding tiles, the sg entry
-		 * here is just a conenience to indicate how many padding PTEs
-		 * to insert at this spot.
-		 */
-		sg_set_page(sg, NULL, left, 0);
-		sg_dma_address(sg) = 0;
-		sg_dma_len(sg) = left;
-		sg = sg_next(sg);
+		sg = add_padding_pages(left >> PAGE_SHIFT, st, sg);
 	}
 
 	return sg;
 }
 
+static struct scatterlist *
+remap_contiguous_pages(struct drm_i915_gem_object *obj,
+		       unsigned int obj_offset,
+		       unsigned int count,
+		       struct sg_table *st, struct scatterlist *sg)
+{
+	struct scatterlist *iter;
+	unsigned int offset;
+
+	iter = i915_gem_object_get_sg_dma(obj, obj_offset, &offset);
+	GEM_BUG_ON(!iter);
+
+	do {
+		unsigned int len;
+
+		len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
+			  count << PAGE_SHIFT);
+		sg_set_page(sg, NULL, len, 0);
+		sg_dma_address(sg) =
+			sg_dma_address(iter) + (offset << PAGE_SHIFT);
+		sg_dma_len(sg) = len;
+
+		st->nents++;
+		count -= len >> PAGE_SHIFT;
+		if (count == 0)
+			return sg;
+
+		sg = __sg_next(sg);
+		iter = __sg_next(iter);
+		offset = 0;
+	} while (1);
+}
+
 static noinline struct sg_table *
 intel_remap_pages(struct intel_remapped_info *rem_info,
 		  struct drm_i915_gem_object *obj)
@@ -1524,9 +1555,8 @@ intel_partial_pages(const struct i915_ggtt_view *view,
 		    struct drm_i915_gem_object *obj)
 {
 	struct sg_table *st;
-	struct scatterlist *sg, *iter;
+	struct scatterlist *sg;
 	unsigned int count = view->partial.size;
-	unsigned int offset;
 	int ret = -ENOMEM;
 
 	st = kmalloc(sizeof(*st), GFP_KERNEL);
@@ -1537,34 +1567,14 @@ intel_partial_pages(const struct i915_ggtt_view *view,
 	if (ret)
 		goto err_sg_alloc;
 
-	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
-	GEM_BUG_ON(!iter);
-
-	sg = st->sgl;
 	st->nents = 0;
-	do {
-		unsigned int len;
 
-		len = min(sg_dma_len(iter) - (offset << PAGE_SHIFT),
-			  count << PAGE_SHIFT);
-		sg_set_page(sg, NULL, len, 0);
-		sg_dma_address(sg) =
-			sg_dma_address(iter) + (offset << PAGE_SHIFT);
-		sg_dma_len(sg) = len;
+	sg = remap_contiguous_pages(obj, view->partial.offset, count, st, st->sgl);
 
-		st->nents++;
-		count -= len >> PAGE_SHIFT;
-		if (count == 0) {
-			sg_mark_end(sg);
-			i915_sg_trim(st); /* Drop any unused tail entries. */
+	sg_mark_end(sg);
+	i915_sg_trim(st); /* Drop any unused tail entries. */
 
-			return st;
-		}
-
-		sg = __sg_next(sg);
-		iter = __sg_next(iter);
-		offset = 0;
-	} while (1);
+	return st;
 
 err_sg_alloc:
 	kfree(st);
-- 
2.27.0

