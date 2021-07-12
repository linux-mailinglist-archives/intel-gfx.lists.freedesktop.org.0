Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F4B3C6490
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAD789DF9;
	Mon, 12 Jul 2021 20:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3AB89DCF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:08 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id l7so26344188wrv.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dxGuluIgPsNrxWTD1ehru33Wm1+EqWPJ5Ymt3NUsZ5o=;
 b=gxehVmkFeT3S4ZctReRHgl9AiWnkdiYsITDi+Kn4w33FADkBxIOnmcKzu/vs4Iq1lV
 G3pcDG4fx1gjbIZ738/3Ykwxu/azWSt3u4ZcRMuzkgywPQ72s4VgJtiVdKMRePc/eRXy
 HtXe2WOWRRLy5907b4o1zIF07wcUXlt8fUfhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dxGuluIgPsNrxWTD1ehru33Wm1+EqWPJ5Ymt3NUsZ5o=;
 b=c5D1VoVNrjSifqE0YMbGVAQqCnkTwZr287XEjSgtb29udxC9t4vz+Q3GQWSLxHhzg6
 tN2adGrWYK1sqo2Jmlp0kBMcy0MIIgYEs2SYizfa8PZxc8rmfyQKa1iYOrOf9UBEMn7y
 rEczEQKmb27X8TtZmQM5jJv2YYCAwkWgPwQun3o9vvjaUjbCqdnwjV0VdpECv5y5vqWN
 0N5DKs62WH+bhy3k/QfFId4Y3LrSsDqq1ebAupqqF1hyw03s8KI20/ZPuPeOd1LohfDt
 fSCXF7N0PdDuvv99n97UolnPK7gO4M2Lvo7HMbajt2GON5XBBA0jNvcmSIcp3XXzAA21
 5k6Q==
X-Gm-Message-State: AOAM532J/VD/vcv4wZF+3VPzmH3hX8tnUxRglvKP9j4tJfwCRy/CdpZs
 LQxNwTEzbJJKU69+OHPA7fe7nA==
X-Google-Smtp-Source: ABdhPJy0CiBUIXCE2rUmoy0tJcSBQNNG7ikcbBm2towQE7K6ob0WD8vWXrnskWEqzI1aaeK2Ppap+g==
X-Received: by 2002:a5d:4d4b:: with SMTP id a11mr817717wru.325.1626120127146; 
 Mon, 12 Jul 2021 13:02:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:43 +0200
Message-Id: <20210712175352.802687-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 09/18] drm/v3d: Use scheduler dependency
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
Cc: Melissa Wen <melissa.srw@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "Cc : Emma Anholt" <emma@anholt.net>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the prep work out of the way this isn't tricky anymore.

Aside: The chaining of the various jobs is a bit awkward, with the
possibility of failure in bad places. I think with the
drm_sched_job_init/arm split and maybe preloading the
job->dependencies xarray this should be fixable.

Cc: Melissa Wen <melissa.srw@gmail.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Cc: Emma Anholt <emma@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_drv.h   |  5 -----
 drivers/gpu/drm/v3d/v3d_gem.c   | 25 ++++++++-----------------
 drivers/gpu/drm/v3d/v3d_sched.c | 29 +----------------------------
 3 files changed, 9 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index 1d870261eaac..f80f4ff1f7aa 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -192,11 +192,6 @@ struct v3d_job {
 	struct drm_gem_object **bo;
 	u32 bo_count;
 
-	/* Array of struct dma_fence * to block on before submitting this job.
-	 */
-	struct xarray deps;
-	unsigned long last_dep;
-
 	/* v3d fence to be signaled by IRQ handler when the job is complete. */
 	struct dma_fence *irq_fence;
 
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index 5eccd3658938..42b07ffbea5e 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -257,8 +257,8 @@ v3d_lock_bo_reservations(struct v3d_job *job,
 		return ret;
 
 	for (i = 0; i < job->bo_count; i++) {
-		ret = drm_gem_fence_array_add_implicit(&job->deps,
-						       job->bo[i], true);
+		ret = drm_sched_job_await_implicit(&job->base,
+						   job->bo[i], true);
 		if (ret) {
 			drm_gem_unlock_reservations(job->bo, job->bo_count,
 						    acquire_ctx);
@@ -354,8 +354,6 @@ static void
 v3d_job_free(struct kref *ref)
 {
 	struct v3d_job *job = container_of(ref, struct v3d_job, refcount);
-	unsigned long index;
-	struct dma_fence *fence;
 	int i;
 
 	for (i = 0; i < job->bo_count; i++) {
@@ -364,11 +362,6 @@ v3d_job_free(struct kref *ref)
 	}
 	kvfree(job->bo);
 
-	xa_for_each(&job->deps, index, fence) {
-		dma_fence_put(fence);
-	}
-	xa_destroy(&job->deps);
-
 	dma_fence_put(job->irq_fence);
 	dma_fence_put(job->done_fence);
 
@@ -452,7 +445,6 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 	if (ret < 0)
 		return ret;
 
-	xa_init_flags(&job->deps, XA_FLAGS_ALLOC);
 	ret = drm_sched_job_init(&job->base, &v3d_priv->sched_entity[queue],
 				 v3d_priv);
 	if (ret)
@@ -462,7 +454,7 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 	if (ret == -EINVAL)
 		goto fail_job;
 
-	ret = drm_gem_fence_array_add(&job->deps, in_fence);
+	ret = drm_sched_job_await_fence(&job->base, in_fence);
 	if (ret)
 		goto fail_job;
 
@@ -472,7 +464,6 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 fail_job:
 	drm_sched_job_cleanup(&job->base);
 fail:
-	xa_destroy(&job->deps);
 	pm_runtime_put_autosuspend(v3d->drm.dev);
 	return ret;
 }
@@ -619,8 +610,8 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 	if (bin) {
 		v3d_push_job(&bin->base);
 
-		ret = drm_gem_fence_array_add(&render->base.deps,
-					      dma_fence_get(bin->base.done_fence));
+		ret = drm_sched_job_await_fence(&render->base.base,
+						dma_fence_get(bin->base.done_fence));
 		if (ret)
 			goto fail_unreserve;
 	}
@@ -630,7 +621,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 	if (clean_job) {
 		struct dma_fence *render_fence =
 			dma_fence_get(render->base.done_fence);
-		ret = drm_gem_fence_array_add(&clean_job->deps, render_fence);
+		ret = drm_sched_job_await_fence(&clean_job->base, render_fence);
 		if (ret)
 			goto fail_unreserve;
 		v3d_push_job(clean_job);
@@ -820,8 +811,8 @@ v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 	mutex_lock(&v3d->sched_lock);
 	v3d_push_job(&job->base);
 
-	ret = drm_gem_fence_array_add(&clean_job->deps,
-				      dma_fence_get(job->base.done_fence));
+	ret = drm_sched_job_await_fence(&clean_job->base,
+					dma_fence_get(job->base.done_fence));
 	if (ret)
 		goto fail_unreserve;
 
diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index 3f352d73af9c..f0de584f452c 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -13,7 +13,7 @@
  * jobs when bulk background jobs are queued up, we submit a new job
  * to the HW only when it has completed the last one, instead of
  * filling up the CT[01]Q FIFOs with jobs.  Similarly, we use
- * v3d_job_dependency() to manage the dependency between bin and
+ * drm_sched_job_await_fence() to manage the dependency between bin and
  * render, instead of having the clients submit jobs using the HW's
  * semaphores to interlock between them.
  */
@@ -62,28 +62,6 @@ v3d_sched_job_free(struct drm_sched_job *sched_job)
 	v3d_job_cleanup(job);
 }
 
-/*
- * Returns the fences that the job depends on, one by one.
- *
- * If placed in the scheduler's .dependency method, the corresponding
- * .run_job won't be called until all of them have been signaled.
- */
-static struct dma_fence *
-v3d_job_dependency(struct drm_sched_job *sched_job,
-		   struct drm_sched_entity *s_entity)
-{
-	struct v3d_job *job = to_v3d_job(sched_job);
-
-	/* XXX: Wait on a fence for switching the GMP if necessary,
-	 * and then do so.
-	 */
-
-	if (!xa_empty(&job->deps))
-		return xa_erase(&job->deps, job->last_dep++);
-
-	return NULL;
-}
-
 static struct dma_fence *v3d_bin_job_run(struct drm_sched_job *sched_job)
 {
 	struct v3d_bin_job *job = to_bin_job(sched_job);
@@ -356,35 +334,30 @@ v3d_csd_job_timedout(struct drm_sched_job *sched_job)
 }
 
 static const struct drm_sched_backend_ops v3d_bin_sched_ops = {
-	.dependency = v3d_job_dependency,
 	.run_job = v3d_bin_job_run,
 	.timedout_job = v3d_bin_job_timedout,
 	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_render_sched_ops = {
-	.dependency = v3d_job_dependency,
 	.run_job = v3d_render_job_run,
 	.timedout_job = v3d_render_job_timedout,
 	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_tfu_sched_ops = {
-	.dependency = v3d_job_dependency,
 	.run_job = v3d_tfu_job_run,
 	.timedout_job = v3d_generic_job_timedout,
 	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_csd_sched_ops = {
-	.dependency = v3d_job_dependency,
 	.run_job = v3d_csd_job_run,
 	.timedout_job = v3d_csd_job_timedout,
 	.free_job = v3d_sched_job_free
 };
 
 static const struct drm_sched_backend_ops v3d_cache_clean_sched_ops = {
-	.dependency = v3d_job_dependency,
 	.run_job = v3d_cache_clean_job_run,
 	.timedout_job = v3d_generic_job_timedout,
 	.free_job = v3d_sched_job_free
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
