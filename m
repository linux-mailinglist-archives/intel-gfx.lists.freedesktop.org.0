Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3150186A42
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:42:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F846E41D;
	Mon, 16 Mar 2020 11:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B366E41D
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:42:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20574776-1500050 
 for multiple; Mon, 16 Mar 2020 11:42:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 11:42:31 +0000
Message-Id: <20200316114237.5436-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316114237.5436-1-chris@chris-wilson.co.uk>
References: <20200316114237.5436-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Immediately execute the fenced
 work
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

If the caller allows and we do not have to wait for any signals,
immediately execute the work within the caller's process.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/i915_sw_fence_work.c      | 6 +++++-
 drivers/gpu/drm/i915/i915_sw_fence_work.h      | 7 +++++++
 drivers/gpu/drm/i915/i915_vma.c                | 2 +-
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..f647f98a9bc6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1784,7 +1784,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	dma_resv_add_excl_fence(shadow->resv, &pw->base.dma);
 	dma_resv_unlock(shadow->resv);
 
-	dma_fence_work_commit(&pw->base);
+	dma_fence_work_commit_imm(&pw->base);
 	return 0;
 
 err_batch_unlock:
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.c b/drivers/gpu/drm/i915/i915_sw_fence_work.c
index 997b2998f1f2..cb2858d369cf 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.c
@@ -38,7 +38,10 @@ fence_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 
 		if (!f->dma.error) {
 			dma_fence_get(&f->dma);
-			queue_work(system_unbound_wq, &f->work);
+			if (f->immediate)
+				fence_work(&f->work);
+			else
+				queue_work(system_unbound_wq, &f->work);
 		} else {
 			fence_complete(f);
 		}
@@ -88,6 +91,7 @@ void dma_fence_work_init(struct dma_fence_work *f,
 	dma_fence_init(&f->dma, &fence_ops, &f->lock, 0, 0);
 	i915_sw_fence_init(&f->chain, fence_notify);
 	INIT_WORK(&f->work, fence_work);
+	f->immediate = false;
 }
 
 int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal)
diff --git a/drivers/gpu/drm/i915/i915_sw_fence_work.h b/drivers/gpu/drm/i915/i915_sw_fence_work.h
index 3a22b287e201..c258a2b2e6f4 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence_work.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence_work.h
@@ -28,6 +28,7 @@ struct dma_fence_work {
 	struct i915_sw_fence chain;
 	struct i915_sw_dma_fence_cb cb;
 
+	bool immediate;
 	struct work_struct work;
 	const struct dma_fence_work_ops *ops;
 };
@@ -41,4 +42,10 @@ static inline void dma_fence_work_commit(struct dma_fence_work *f)
 	i915_sw_fence_commit(&f->chain);
 }
 
+static inline void dma_fence_work_commit_imm(struct dma_fence_work *f)
+{
+	f->immediate = atomic_read(&f->chain.pending) <= 1;
+	dma_fence_work_commit(f);
+}
+
 #endif /* I915_SW_FENCE_WORK_H */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 73dafaafb3e5..880e18f5b71b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -956,7 +956,7 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	mutex_unlock(&vma->vm->mutex);
 err_fence:
 	if (work)
-		dma_fence_work_commit(&work->base);
+		dma_fence_work_commit_imm(&work->base);
 	if (wakeref)
 		intel_runtime_pm_put(&vma->vm->i915->runtime_pm, wakeref);
 err_pages:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
