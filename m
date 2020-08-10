Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C12404C2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 12:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952DF6E3D0;
	Mon, 10 Aug 2020 10:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1C26E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 10:33:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Aug 2020 12:30:48 +0200
Message-Id: <20200810103103.303818-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/24] drm/i915: make lockdep slightly happier
 about execbuf.
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

As soon as we install fences, we should stop allocating memory
in order to prevent any potential deadlocks.

This is required later on, when we start adding support for
dma-fence annotations, and also required for userptr.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 18 ++++++++++++------
 drivers/gpu/drm/i915/i915_vma.c                |  8 +++++---
 drivers/gpu/drm/i915/i915_vma.h                |  3 +++
 3 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5d08ce71f341..12397fbc0971 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -48,11 +48,12 @@ enum {
 #define DBG_FORCE_RELOC 0 /* choose one of the above! */
 };
 
-#define __EXEC_OBJECT_HAS_PIN		BIT(31)
-#define __EXEC_OBJECT_HAS_FENCE		BIT(30)
-#define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+/* __EXEC_OBJECT_NO_RESERVE is BIT(31), defined in i915_vma.h */
+#define __EXEC_OBJECT_HAS_PIN		BIT(30)
+#define __EXEC_OBJECT_HAS_FENCE		BIT(29)
+#define __EXEC_OBJECT_NEEDS_MAP		BIT(28)
+#define __EXEC_OBJECT_NEEDS_BIAS	BIT(27)
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 27) /* all of the above + */
 #define __EXEC_OBJECT_RESERVED (__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_FENCE)
 
 #define __EXEC_HAS_RELOC	BIT(31)
@@ -2094,7 +2095,8 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		}
 
 		if (err == 0)
-			err = i915_vma_move_to_active(vma, eb->request, flags);
+			err = i915_vma_move_to_active(vma, eb->request,
+						      flags | __EXEC_OBJECT_NO_RESERVE);
 	}
 
 	if (unlikely(err))
@@ -2291,6 +2293,10 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (err)
 		goto err_commit;
 
+	err = dma_resv_reserve_shared(shadow->resv, 1);
+	if (err)
+		goto err_commit;
+
 	/* Wait for all writes (and relocs) into the batch to complete */
 	err = i915_sw_fence_await_reservation(&pw->base.chain,
 					      pw->batch->resv, NULL, false,
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index c6bf04ca2032..8066f167d6b9 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1227,9 +1227,11 @@ int i915_vma_move_to_active(struct i915_vma *vma,
 		obj->write_domain = I915_GEM_DOMAIN_RENDER;
 		obj->read_domains = 0;
 	} else {
-		err = dma_resv_reserve_shared(vma->resv, 1);
-		if (unlikely(err))
-			return err;
+		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
+			err = dma_resv_reserve_shared(vma->resv, 1);
+			if (unlikely(err))
+				return err;
+		}
 
 		dma_resv_add_shared_fence(vma->resv, &rq->fence);
 		obj->write_domain = 0;
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index d0d01f909548..4b325a670a04 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -52,6 +52,9 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
 	return !i915_active_is_idle(&vma->active);
 }
 
+/* do not reserve memory to prevent deadlocks */
+#define __EXEC_OBJECT_NO_RESERVE BIT(31)
+
 int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
 					   struct i915_request *rq);
 int __must_check i915_vma_move_to_active(struct i915_vma *vma,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
