Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE35435F2E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59336EC5C;
	Thu, 21 Oct 2021 10:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5098A6EC32;
 Thu, 21 Oct 2021 10:36:11 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Date: Thu, 21 Oct 2021 12:35:49 +0200
Message-Id: <20211021103605.735002-12-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/28] drm/i915: Remove resv from i915_vma
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

It's just an alias to vma->obj->base.resv, no need to duplicate it.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 4 ++--
 drivers/gpu/drm/i915/i915_vma.c                | 9 ++++-----
 drivers/gpu/drm/i915/i915_vma.h                | 6 +++---
 drivers/gpu/drm/i915/i915_vma_types.h          | 1 -
 4 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index eaacadd2d2e5..e614591ca510 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1007,7 +1007,7 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 		}
 
 		if (!(ev->flags & EXEC_OBJECT_WRITE)) {
-			err = dma_resv_reserve_shared(vma->resv, 1);
+			err = dma_resv_reserve_shared(vma->obj->base.resv, 1);
 			if (err)
 				return err;
 		}
@@ -2173,7 +2173,7 @@ static int eb_parse(struct i915_execbuffer *eb)
 		goto err_trampoline;
 	}
 
-	err = dma_resv_reserve_shared(shadow->resv, 1);
+	err = dma_resv_reserve_shared(shadow->obj->base.resv, 1);
 	if (err)
 		goto err_trampoline;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index aebfc232b58b..ac09b685678a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -116,7 +116,6 @@ vma_create(struct drm_i915_gem_object *obj,
 	vma->vm = i915_vm_get(vm);
 	vma->ops = &vm->vma_ops;
 	vma->obj = obj;
-	vma->resv = obj->base.resv;
 	vma->size = obj->base.size;
 	vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
 
@@ -1032,7 +1031,7 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
 #ifdef CONFIG_LOCKDEP
-	WARN_ON(!ww && dma_resv_held(vma->resv));
+	WARN_ON(!ww && dma_resv_held(vma->obj->base.resv));
 #endif
 
 	do {
@@ -1251,19 +1250,19 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		}
 
 		if (fence) {
-			dma_resv_add_excl_fence(vma->resv, fence);
+			dma_resv_add_excl_fence(vma->obj->base.resv, fence);
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
 			obj->read_domains = 0;
 		}
 	} else {
 		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
-			err = dma_resv_reserve_shared(vma->resv, 1);
+			err = dma_resv_reserve_shared(vma->obj->base.resv, 1);
 			if (unlikely(err))
 				return err;
 		}
 
 		if (fence) {
-			dma_resv_add_shared_fence(vma->resv, fence);
+			dma_resv_add_shared_fence(vma->obj->base.resv, fence);
 			obj->write_domain = 0;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 423e0df81c87..9a931ecb09e5 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -232,16 +232,16 @@ static inline void __i915_vma_put(struct i915_vma *vma)
 	kref_put(&vma->ref, i915_vma_release);
 }
 
-#define assert_vma_held(vma) dma_resv_assert_held((vma)->resv)
+#define assert_vma_held(vma) dma_resv_assert_held((vma)->obj->base.resv)
 
 static inline void i915_vma_lock(struct i915_vma *vma)
 {
-	dma_resv_lock(vma->resv, NULL);
+	dma_resv_lock(vma->obj->base.resv, NULL);
 }
 
 static inline void i915_vma_unlock(struct i915_vma *vma)
 {
-	dma_resv_unlock(vma->resv);
+	dma_resv_unlock(vma->obj->base.resv);
 }
 
 int __must_check
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index 80e93bf00f2e..8a0decb19bcc 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -178,7 +178,6 @@ struct i915_vma {
 	const struct i915_vma_ops *ops;
 
 	struct drm_i915_gem_object *obj;
-	struct dma_resv *resv; /** Alias of obj->resv */
 
 	struct sg_table *pages;
 	void __iomem *iomap;
-- 
2.33.0

