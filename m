Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435033E1324
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26EBF6E9A5;
	Thu,  5 Aug 2021 10:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117D96E972
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:23 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id g21so7725834edb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RNtq6hCIBFIpKrgTS3fF+5pLM27NieV8t2gZ4HTzwW8=;
 b=Wc15l1UemZE3M9THOYbK3HTsSSrCJw3WbK6TMe03c3Qb7kNg+6cSO3ftgu3lFwygb3
 8IdfKkq+wGKfBxcmexsVEKYc1JvAuqlFbAsgpu9Ixu4GnAWgVEXiic1BQBjHBEBNlcSl
 N+hPLcftdUAx6Wf+ckeDQCY7Sj+L0NScYLw1c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RNtq6hCIBFIpKrgTS3fF+5pLM27NieV8t2gZ4HTzwW8=;
 b=XypIPgTKTMbfmf7wUiEwjFbGorI2vN5re1CPRY0j9yuKJWzxVrblboouOPW3ku8sCQ
 QJoHQ/roaYMumBj5hQN7TQ1MZs349ZerKSyVJNVJoGGyLJxUwk+nf1zb/++OBjgDuFCC
 hOwnz3fplDbbDmnGvnf9MQQecbKSmxsj6EKhdWxswOoBRWExmWUrUfjER2YG0g8/tPad
 2hHyd/V66ot1kPUBivruygPgXjD3THaLJSgq3apjlWv4N4DDNEJ3RzmQGRb+4ssyFsrM
 y0tRxJAVUbPB1vfuxRXE/onPNIsa43Qp0bAcRo6sCOv3W9dGZG7MP7CY+nJ4HFuhYW7c
 jDJg==
X-Gm-Message-State: AOAM532AtsXtfkYeY104JnsbkYoUXVzTRvESaZrcE4W9cu9ClHPTAH7K
 Px/0VQlHHtP0tZqpiEB3g8vlcQ==
X-Google-Smtp-Source: ABdhPJyi03Vr6QQ78F9N7ACtlZUpWcUyU35iHMBs996IL7VwAHRgK4eZAKaCXC/G6FRI1bBGkuxaLg==
X-Received: by 2002:aa7:d144:: with SMTP id r4mr5641668edo.111.1628160441604; 
 Thu, 05 Aug 2021 03:47:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:21 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 etnaviv@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Date: Thu,  5 Aug 2021 12:46:56 +0200
Message-Id: <20210805104705.862416-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 11/20] drm/etnaviv: Use scheduler dependency
 handling
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

We need to pull the drm_sched_job_init much earlier, but that's very
minor surgery.

v2: Actually fix up cleanup paths by calling drm_sched_job_init, which
I wanted to to in the previous round (and did, for all other drivers).
Spotted by Lucas.

v3: Rebase over renamed functions to add dependencies.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Russell King <linux+etnaviv@armlinux.org.uk>
Cc: Christian Gmeiner <christian.gmeiner@gmail.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: etnaviv@lists.freedesktop.org
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
---
 drivers/gpu/drm/etnaviv/etnaviv_gem.h        |  5 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 60 ++++++++++---------
 drivers/gpu/drm/etnaviv/etnaviv_sched.c      | 63 +-------------------
 drivers/gpu/drm/etnaviv/etnaviv_sched.h      |  3 +-
 4 files changed, 37 insertions(+), 94 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem.h b/drivers/gpu/drm/etnaviv/etnaviv_gem.h
index 98e60df882b6..63688e6e4580 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem.h
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem.h
@@ -80,9 +80,6 @@ struct etnaviv_gem_submit_bo {
 	u64 va;
 	struct etnaviv_gem_object *obj;
 	struct etnaviv_vram_mapping *mapping;
-	struct dma_fence *excl;
-	unsigned int nr_shared;
-	struct dma_fence **shared;
 };
 
 /* Created per submit-ioctl, to track bo's and cmdstream bufs, etc,
@@ -95,7 +92,7 @@ struct etnaviv_gem_submit {
 	struct etnaviv_file_private *ctx;
 	struct etnaviv_gpu *gpu;
 	struct etnaviv_iommu_context *mmu_context, *prev_mmu_context;
-	struct dma_fence *out_fence, *in_fence;
+	struct dma_fence *out_fence;
 	int out_fence_id;
 	struct list_head node; /* GPU active submit list */
 	struct etnaviv_cmdbuf cmdbuf;
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
index 4dd7d9d541c0..e3d43678eb09 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
@@ -188,16 +188,11 @@ static int submit_fence_sync(struct etnaviv_gem_submit *submit)
 		if (submit->flags & ETNA_SUBMIT_NO_IMPLICIT)
 			continue;
 
-		if (bo->flags & ETNA_SUBMIT_BO_WRITE) {
-			ret = dma_resv_get_fences(robj, &bo->excl,
-						  &bo->nr_shared,
-						  &bo->shared);
-			if (ret)
-				return ret;
-		} else {
-			bo->excl = dma_resv_get_excl_unlocked(robj);
-		}
-
+		ret = drm_sched_job_add_implicit_dependencies(&submit->sched_job,
+							      &bo->obj->base,
+							      bo->flags & ETNA_SUBMIT_BO_WRITE);
+		if (ret)
+			return ret;
 	}
 
 	return ret;
@@ -403,8 +398,6 @@ static void submit_cleanup(struct kref *kref)
 
 	wake_up_all(&submit->gpu->fence_event);
 
-	if (submit->in_fence)
-		dma_fence_put(submit->in_fence);
 	if (submit->out_fence) {
 		/* first remove from IDR, so fence can not be found anymore */
 		mutex_lock(&submit->gpu->fence_lock);
@@ -529,7 +522,7 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, void *data,
 	ret = etnaviv_cmdbuf_init(priv->cmdbuf_suballoc, &submit->cmdbuf,
 				  ALIGN(args->stream_size, 8) + 8);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_put;
 
 	submit->ctx = file->driver_priv;
 	etnaviv_iommu_context_get(submit->ctx->mmu);
@@ -537,51 +530,62 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, void *data,
 	submit->exec_state = args->exec_state;
 	submit->flags = args->flags;
 
+	ret = drm_sched_job_init(&submit->sched_job,
+				 &ctx->sched_entity[args->pipe],
+				 submit->ctx);
+	if (ret)
+		goto err_submit_put;
+
 	ret = submit_lookup_objects(submit, file, bos, args->nr_bos);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	if ((priv->mmu_global->version != ETNAVIV_IOMMU_V2) &&
 	    !etnaviv_cmd_validate_one(gpu, stream, args->stream_size / 4,
 				      relocs, args->nr_relocs)) {
 		ret = -EINVAL;
-		goto err_submit_objects;
+		goto err_submit_job;
 	}
 
 	if (args->flags & ETNA_SUBMIT_FENCE_FD_IN) {
-		submit->in_fence = sync_file_get_fence(args->fence_fd);
-		if (!submit->in_fence) {
+		struct dma_fence *in_fence = sync_file_get_fence(args->fence_fd);
+		if (!in_fence) {
 			ret = -EINVAL;
-			goto err_submit_objects;
+			goto err_submit_job;
 		}
+
+		ret = drm_sched_job_add_dependency(&submit->sched_job,
+						   in_fence);
+		if (ret)
+			goto err_submit_job;
 	}
 
 	ret = submit_pin_objects(submit);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	ret = submit_reloc(submit, stream, args->stream_size / 4,
 			   relocs, args->nr_relocs);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	ret = submit_perfmon_validate(submit, args->exec_state, pmrs);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	memcpy(submit->cmdbuf.vaddr, stream, args->stream_size);
 
 	ret = submit_lock_objects(submit, &ticket);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	ret = submit_fence_sync(submit);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
-	ret = etnaviv_sched_push_job(&ctx->sched_entity[args->pipe], submit);
+	ret = etnaviv_sched_push_job(submit);
 	if (ret)
-		goto err_submit_objects;
+		goto err_submit_job;
 
 	submit_attach_object_fences(submit);
 
@@ -595,7 +599,7 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, void *data,
 		sync_file = sync_file_create(submit->out_fence);
 		if (!sync_file) {
 			ret = -ENOMEM;
-			goto err_submit_objects;
+			goto err_submit_job;
 		}
 		fd_install(out_fence_fd, sync_file->file);
 	}
@@ -603,7 +607,9 @@ int etnaviv_ioctl_gem_submit(struct drm_device *dev, void *data,
 	args->fence_fd = out_fence_fd;
 	args->fence = submit->out_fence_id;
 
-err_submit_objects:
+err_submit_job:
+	drm_sched_job_cleanup(&submit->sched_job);
+err_submit_put:
 	etnaviv_submit_put(submit);
 
 err_submit_ww_acquire:
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_sched.c b/drivers/gpu/drm/etnaviv/etnaviv_sched.c
index 180bb633d5c5..2bbbd6ccc95e 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_sched.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_sched.c
@@ -17,58 +17,6 @@ module_param_named(job_hang_limit, etnaviv_job_hang_limit, int , 0444);
 static int etnaviv_hw_jobs_limit = 4;
 module_param_named(hw_job_limit, etnaviv_hw_jobs_limit, int , 0444);
 
-static struct dma_fence *
-etnaviv_sched_dependency(struct drm_sched_job *sched_job,
-			 struct drm_sched_entity *entity)
-{
-	struct etnaviv_gem_submit *submit = to_etnaviv_submit(sched_job);
-	struct dma_fence *fence;
-	int i;
-
-	if (unlikely(submit->in_fence)) {
-		fence = submit->in_fence;
-		submit->in_fence = NULL;
-
-		if (!dma_fence_is_signaled(fence))
-			return fence;
-
-		dma_fence_put(fence);
-	}
-
-	for (i = 0; i < submit->nr_bos; i++) {
-		struct etnaviv_gem_submit_bo *bo = &submit->bos[i];
-		int j;
-
-		if (bo->excl) {
-			fence = bo->excl;
-			bo->excl = NULL;
-
-			if (!dma_fence_is_signaled(fence))
-				return fence;
-
-			dma_fence_put(fence);
-		}
-
-		for (j = 0; j < bo->nr_shared; j++) {
-			if (!bo->shared[j])
-				continue;
-
-			fence = bo->shared[j];
-			bo->shared[j] = NULL;
-
-			if (!dma_fence_is_signaled(fence))
-				return fence;
-
-			dma_fence_put(fence);
-		}
-		kfree(bo->shared);
-		bo->nr_shared = 0;
-		bo->shared = NULL;
-	}
-
-	return NULL;
-}
-
 static struct dma_fence *etnaviv_sched_run_job(struct drm_sched_job *sched_job)
 {
 	struct etnaviv_gem_submit *submit = to_etnaviv_submit(sched_job);
@@ -140,29 +88,22 @@ static void etnaviv_sched_free_job(struct drm_sched_job *sched_job)
 }
 
 static const struct drm_sched_backend_ops etnaviv_sched_ops = {
-	.dependency = etnaviv_sched_dependency,
 	.run_job = etnaviv_sched_run_job,
 	.timedout_job = etnaviv_sched_timedout_job,
 	.free_job = etnaviv_sched_free_job,
 };
 
-int etnaviv_sched_push_job(struct drm_sched_entity *sched_entity,
-			   struct etnaviv_gem_submit *submit)
+int etnaviv_sched_push_job(struct etnaviv_gem_submit *submit)
 {
 	int ret = 0;
 
 	/*
 	 * Hold the fence lock across the whole operation to avoid jobs being
 	 * pushed out of order with regard to their sched fence seqnos as
-	 * allocated in drm_sched_job_init.
+	 * allocated in drm_sched_job_arm.
 	 */
 	mutex_lock(&submit->gpu->fence_lock);
 
-	ret = drm_sched_job_init(&submit->sched_job, sched_entity,
-				 submit->ctx);
-	if (ret)
-		goto out_unlock;
-
 	drm_sched_job_arm(&submit->sched_job);
 
 	submit->out_fence = dma_fence_get(&submit->sched_job.s_fence->finished);
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_sched.h b/drivers/gpu/drm/etnaviv/etnaviv_sched.h
index c0a6796e22c9..baebfa069afc 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_sched.h
+++ b/drivers/gpu/drm/etnaviv/etnaviv_sched.h
@@ -18,7 +18,6 @@ struct etnaviv_gem_submit *to_etnaviv_submit(struct drm_sched_job *sched_job)
 
 int etnaviv_sched_init(struct etnaviv_gpu *gpu);
 void etnaviv_sched_fini(struct etnaviv_gpu *gpu);
-int etnaviv_sched_push_job(struct drm_sched_entity *sched_entity,
-			   struct etnaviv_gem_submit *submit);
+int etnaviv_sched_push_job(struct etnaviv_gem_submit *submit);
 
 #endif /* __ETNAVIV_SCHED_H__ */
-- 
2.32.0

