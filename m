Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A53B3611656
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 17:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE51010E862;
	Fri, 28 Oct 2022 15:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A988210E85E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 15:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666972247; x=1698508247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GBBsbHHyLo/4VOhKZJibmVFY71jQgjxq3/xE98wUyIc=;
 b=XJKrrKVsZdDZZYbQ2sUPJAC6UIDs/WijIwBlhr9SEvKBJF7Pb7YnL1az
 d9JCwLRKMnTin+94bw5tEmH/bx3bWNCZZfkv+VRyzyOf6tfIlt8t1b15W
 BqscRF2oy80UfrCPzj7qNWy4KAJQAAIWTnzj3e8JOB/NN/xN2SfmJdVb5
 tVLQoTrH5aPPAyWkkACABwN+q9zCC7WS8dwEiaxGAWQGsCsfCEriShMIQ
 8K1v2pfKSq+iSfl6qvd337CpyGyjmpqliWJSoW8jtmN47guaqupbhANXo
 cR7LIYDH6hvKaDXkJNviWAvsj8ercJAYrX0sRa3b2FI8kkIG4KHwEuOaQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="288237677"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="288237677"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="758120037"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="758120037"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.29.35])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 08:50:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 16:50:28 +0100
Message-Id: <20221028155029.494736-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028155029.494736-1-matthew.auld@intel.com>
References: <20221028155029.494736-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/dmabuf: dmabuf cleanup
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

From: "Michael J. Ruhl" <michael.j.ruhl@intel.com>

Some minor cleanup of some variables for consistency.

Normalize struct sg_table to sgt.
Normalize struct dma_buf_attachment to attach.
checkpatch issues sizeof(), !NULL updates.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 47 ++++++++++++----------
 1 file changed, 25 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 05ebbdfd3b3b..8342e01a0d27 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -25,43 +25,46 @@ static struct drm_i915_gem_object *dma_buf_to_obj(struct dma_buf *buf)
 	return to_intel_bo(buf->priv);
 }
 
-static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attachment,
+static struct sg_table *i915_gem_map_dma_buf(struct dma_buf_attachment *attach,
 					     enum dma_data_direction dir)
 {
-	struct drm_i915_gem_object *obj = dma_buf_to_obj(attachment->dmabuf);
-	struct sg_table *st;
+	struct drm_i915_gem_object *obj = dma_buf_to_obj(attach->dmabuf);
+	struct sg_table *sgt;
 	struct scatterlist *src, *dst;
 	int ret, i;
 
-	/* Copy sg so that we make an independent mapping */
-	st = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
-	if (st == NULL) {
+	/*
+	 * Make a copy of the object's sgt, so that we can make an independent
+	 * mapping
+	 */
+	sgt = kmalloc(sizeof(*sgt), GFP_KERNEL);
+	if (!sgt) {
 		ret = -ENOMEM;
 		goto err;
 	}
 
-	ret = sg_alloc_table(st, obj->mm.pages->orig_nents, GFP_KERNEL);
+	ret = sg_alloc_table(sgt, obj->mm.pages->orig_nents, GFP_KERNEL);
 	if (ret)
 		goto err_free;
 
 	src = obj->mm.pages->sgl;
-	dst = st->sgl;
+	dst = sgt->sgl;
 	for (i = 0; i < obj->mm.pages->orig_nents; i++) {
 		sg_set_page(dst, sg_page(src), src->length, 0);
 		dst = sg_next(dst);
 		src = sg_next(src);
 	}
 
-	ret = dma_map_sgtable(attachment->dev, st, dir, DMA_ATTR_SKIP_CPU_SYNC);
+	ret = dma_map_sgtable(attach->dev, sgt, dir, DMA_ATTR_SKIP_CPU_SYNC);
 	if (ret)
 		goto err_free_sg;
 
-	return st;
+	return sgt;
 
 err_free_sg:
-	sg_free_table(st);
+	sg_free_table(sgt);
 err_free:
-	kfree(st);
+	kfree(sgt);
 err:
 	return ERR_PTR(ret);
 }
@@ -236,15 +239,15 @@ struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags)
 static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-	struct sg_table *pages;
+	struct sg_table *sgt;
 	unsigned int sg_page_sizes;
 
 	assert_object_held(obj);
 
-	pages = dma_buf_map_attachment(obj->base.import_attach,
-				       DMA_BIDIRECTIONAL);
-	if (IS_ERR(pages))
-		return PTR_ERR(pages);
+	sgt = dma_buf_map_attachment(obj->base.import_attach,
+				     DMA_BIDIRECTIONAL);
+	if (IS_ERR(sgt))
+		return PTR_ERR(sgt);
 
 	/*
 	 * DG1 is special here since it still snoops transactions even with
@@ -261,16 +264,16 @@ static int i915_gem_object_get_pages_dmabuf(struct drm_i915_gem_object *obj)
 	    (!HAS_LLC(i915) && !IS_DG1(i915)))
 		wbinvd_on_all_cpus();
 
-	sg_page_sizes = i915_sg_dma_sizes(pages->sgl);
-	__i915_gem_object_set_pages(obj, pages, sg_page_sizes);
+	sg_page_sizes = i915_sg_dma_sizes(sgt->sgl);
+	__i915_gem_object_set_pages(obj, sgt, sg_page_sizes);
 
 	return 0;
 }
 
 static void i915_gem_object_put_pages_dmabuf(struct drm_i915_gem_object *obj,
-					     struct sg_table *pages)
+					     struct sg_table *sgt)
 {
-	dma_buf_unmap_attachment(obj->base.import_attach, pages,
+	dma_buf_unmap_attachment(obj->base.import_attach, sgt,
 				 DMA_BIDIRECTIONAL);
 }
 
@@ -313,7 +316,7 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
 	get_dma_buf(dma_buf);
 
 	obj = i915_gem_object_alloc();
-	if (obj == NULL) {
+	if (!obj) {
 		ret = -ENOMEM;
 		goto fail_detach;
 	}
-- 
2.37.3

