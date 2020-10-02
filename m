Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA355281370
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150F06E96D;
	Fri,  2 Oct 2020 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD616E95B
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:50 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:14 +0200
Message-Id: <20201002125939.50817-37-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 36/61] drm/i915: Add ww locking to dma-buf ops.
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

vmap is using pin_pages, but needs to use ww locking,
add pin_pages_unlocked to correctly lock the mapping.

Also add ww locking to begin/end cpu access.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 60 ++++++++++++----------
 1 file changed, 33 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 131ec53d8521..dfd483147b73 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -82,7 +82,7 @@ static int i915_gem_dmabuf_vmap(struct dma_buf *dma_buf, struct dma_buf_map *map
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 	void *vaddr;
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -124,42 +124,48 @@ static int i915_gem_begin_cpu_access(struct dma_buf *dma_buf, enum dma_data_dire
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
 	bool write = (direction == DMA_BIDIRECTIONAL || direction == DMA_TO_DEVICE);
+	struct i915_gem_ww_ctx ww;
 	int err;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
-	err = i915_gem_object_lock_interruptible(obj, NULL);
-	if (err)
-		goto out;
-
-	err = i915_gem_object_set_to_cpu_domain(obj, write);
-	i915_gem_object_unlock(obj);
-
-out:
-	i915_gem_object_unpin_pages(obj);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_gem_object_pin_pages(obj);
+	if (!err) {
+		err = i915_gem_object_set_to_cpu_domain(obj, write);
+		i915_gem_object_unpin_pages(obj);
+	}
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	return err;
 }
 
 static int i915_gem_end_cpu_access(struct dma_buf *dma_buf, enum dma_data_direction direction)
 {
 	struct drm_i915_gem_object *obj = dma_buf_to_obj(dma_buf);
+	struct i915_gem_ww_ctx ww;
 	int err;
 
-	err = i915_gem_object_pin_pages(obj);
-	if (err)
-		return err;
-
-	err = i915_gem_object_lock_interruptible(obj, NULL);
-	if (err)
-		goto out;
-
-	err = i915_gem_object_set_to_gtt_domain(obj, false);
-	i915_gem_object_unlock(obj);
-
-out:
-	i915_gem_object_unpin_pages(obj);
+	i915_gem_ww_ctx_init(&ww, true);
+retry:
+	err = i915_gem_object_lock(obj, &ww);
+	if (!err)
+		err = i915_gem_object_pin_pages(obj);
+	if (!err) {
+		err = i915_gem_object_set_to_gtt_domain(obj, false);
+		i915_gem_object_unpin_pages(obj);
+	}
+	if (err == -EDEADLK) {
+		err = i915_gem_ww_ctx_backoff(&ww);
+		if (!err)
+			goto retry;
+	}
+	i915_gem_ww_ctx_fini(&ww);
 	return err;
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
