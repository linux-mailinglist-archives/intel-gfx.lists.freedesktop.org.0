Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9CC3E1312
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2E16E808;
	Thu,  5 Aug 2021 10:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537AF89C96
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:21 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id x11so8793122ejj.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pYLkHsGqt60JltYFT2vjvXXJg5Fe+Mi6aHW/NkDNU+w=;
 b=O7sf/RIxvVLDXY62DlgOmkXPum8kQ0I+7dM5EJvdql6vdPgDlHf6k9X6eH0LEON6nl
 E4rk605dk5h2uJdQmd7cUg2Pqpkg7D0Hp6PsAo2Kl9KzpQJzj6h+//L1K6zNKz+1UOy9
 R8TAL0sifo+M/UdYlm/NGW/wM+EzUdFoVyf2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pYLkHsGqt60JltYFT2vjvXXJg5Fe+Mi6aHW/NkDNU+w=;
 b=aLuKn4LkKNzO3UZpQBrTRgjP1JOA5NYgxHmz9I3cPSXzeJVOFR68kCpyUbUDtg4fU8
 jNU9TD42Mi6MF8EzQfeDr8hdoVYH44vOT9wiB4C555NFa5UTxZaSyB8mDLqJH/K2gsyK
 Ss/mHCXMxDfg05O005jx2+od8lQ7TQv8WeS8X9lx8MXhYkHpccncpo5CQbvZymP4UyeK
 lteHL7cD3ViONzB7GDTl+U1bmzc8DVIzBCcKG8KXG/j8aIYivTMLm7B2DqzHadl2wiKp
 MM5/fysoUbmdoCMhCD7DKtbfHvrH5HhahYhBxm7eoAR4y0AnHUw/5wb67t2bI8/Idi5i
 Iu1Q==
X-Gm-Message-State: AOAM530hDaTTg/PixSemZ9HTz7roj4V/Qfh71ZqE+aDpanhaJshq9JO9
 PqoPQDi6deEmAhfinpHjkdTxfw==
X-Google-Smtp-Source: ABdhPJy45XWOMxVci/8wjFic7k6aX62oMouzNW9/6hxcIb9C44x6C6UwRb+0hZPKZSz1wBxs9/0JhA==
X-Received: by 2002:a17:906:f28f:: with SMTP id
 gu15mr4216729ejb.7.1628160439831; 
 Thu, 05 Aug 2021 03:47:19 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Melissa Wen <mwen@igalia.com>,
 Emma Anholt <emma@anholt.net>, Melissa Wen <melissa.srw@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Date: Thu,  5 Aug 2021 12:46:54 +0200
Message-Id: <20210805104705.862416-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 09/20] drm/v3d: Move drm_sched_job_init to
 v3d_job_init
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

Prep work for using the scheduler dependency handling. We need to call
drm_sched_job_init earlier so we can use the new drm_sched_job_await*
functions for dependency handling here.

v2: Slightly better commit message and rebase to include the
drm_sched_job_arm() call (Emma).

v3: Cleanup jobs under construction correctly (Emma)

v4: Rebase over perfmon patch

Reviewed-by: Melissa Wen <mwen@igalia.com> (v3)
Acked-by: Emma Anholt <emma@anholt.net>
Cc: Melissa Wen <melissa.srw@gmail.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Emma Anholt <emma@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_drv.h   |  1 +
 drivers/gpu/drm/v3d/v3d_gem.c   | 86 ++++++++++++++-------------------
 drivers/gpu/drm/v3d/v3d_sched.c | 15 +++---
 3 files changed, 44 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.h
index 270134779073..c1d433b4cf93 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.h
+++ b/drivers/gpu/drm/v3d/v3d_drv.h
@@ -379,6 +379,7 @@ int v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 			 struct drm_file *file_priv);
 int v3d_wait_bo_ioctl(struct drm_device *dev, void *data,
 		      struct drm_file *file_priv);
+void v3d_job_cleanup(struct v3d_job *job);
 void v3d_job_put(struct v3d_job *job);
 void v3d_reset(struct v3d_dev *v3d);
 void v3d_invalidate_caches(struct v3d_dev *v3d);
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index 957228bef29c..42587248c54e 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -397,6 +397,12 @@ v3d_render_job_free(struct kref *ref)
 	v3d_job_free(ref);
 }
 
+void v3d_job_cleanup(struct v3d_job *job)
+{
+	drm_sched_job_cleanup(&job->base);
+	v3d_job_put(job);
+}
+
 void v3d_job_put(struct v3d_job *job)
 {
 	kref_put(&job->refcount, job->free);
@@ -438,9 +444,10 @@ v3d_wait_bo_ioctl(struct drm_device *dev, void *data,
 static int
 v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 	     struct v3d_job *job, void (*free)(struct kref *ref),
-	     u32 in_sync)
+	     u32 in_sync, enum v3d_queue queue)
 {
 	struct dma_fence *in_fence = NULL;
+	struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
 	int ret;
 
 	job->v3d = v3d;
@@ -451,35 +458,33 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 		return ret;
 
 	xa_init_flags(&job->deps, XA_FLAGS_ALLOC);
+	ret = drm_sched_job_init(&job->base, &v3d_priv->sched_entity[queue],
+				 v3d_priv);
+	if (ret)
+		goto fail;
 
 	ret = drm_syncobj_find_fence(file_priv, in_sync, 0, 0, &in_fence);
 	if (ret == -EINVAL)
-		goto fail;
+		goto fail_job;
 
 	ret = drm_gem_fence_array_add(&job->deps, in_fence);
 	if (ret)
-		goto fail;
+		goto fail_job;
 
 	kref_init(&job->refcount);
 
 	return 0;
+fail_job:
+	drm_sched_job_cleanup(&job->base);
 fail:
 	xa_destroy(&job->deps);
 	pm_runtime_put_autosuspend(v3d->drm.dev);
 	return ret;
 }
 
-static int
-v3d_push_job(struct v3d_file_priv *v3d_priv,
-	     struct v3d_job *job, enum v3d_queue queue)
+static void
+v3d_push_job(struct v3d_job *job)
 {
-	int ret;
-
-	ret = drm_sched_job_init(&job->base, &v3d_priv->sched_entity[queue],
-				 v3d_priv);
-	if (ret)
-		return ret;
-
 	drm_sched_job_arm(&job->base);
 
 	job->done_fence = dma_fence_get(&job->base.s_fence->finished);
@@ -488,8 +493,6 @@ v3d_push_job(struct v3d_file_priv *v3d_priv,
 	kref_get(&job->refcount);
 
 	drm_sched_entity_push_job(&job->base);
-
-	return 0;
 }
 
 static void
@@ -564,7 +567,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 	INIT_LIST_HEAD(&render->unref_list);
 
 	ret = v3d_job_init(v3d, file_priv, &render->base,
-			   v3d_render_job_free, args->in_sync_rcl);
+			   v3d_render_job_free, args->in_sync_rcl, V3D_RENDER);
 	if (ret) {
 		kfree(render);
 		return ret;
@@ -578,7 +581,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 		}
 
 		ret = v3d_job_init(v3d, file_priv, &bin->base,
-				   v3d_job_free, args->in_sync_bcl);
+				   v3d_job_free, args->in_sync_bcl, V3D_BIN);
 		if (ret) {
 			v3d_job_put(&render->base);
 			kfree(bin);
@@ -600,7 +603,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 			goto fail;
 		}
 
-		ret = v3d_job_init(v3d, file_priv, clean_job, v3d_job_free, 0);
+		ret = v3d_job_init(v3d, file_priv, clean_job, v3d_job_free, 0, V3D_CACHE_CLEAN);
 		if (ret) {
 			kfree(clean_job);
 			clean_job = NULL;
@@ -635,9 +638,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 	if (bin) {
 		bin->base.perfmon = render->base.perfmon;
 		v3d_perfmon_get(bin->base.perfmon);
-		ret = v3d_push_job(v3d_priv, &bin->base, V3D_BIN);
-		if (ret)
-			goto fail_unreserve;
+		v3d_push_job(&bin->base);
 
 		ret = drm_gem_fence_array_add(&render->base.deps,
 					      dma_fence_get(bin->base.done_fence));
@@ -645,9 +646,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 			goto fail_unreserve;
 	}
 
-	ret = v3d_push_job(v3d_priv, &render->base, V3D_RENDER);
-	if (ret)
-		goto fail_unreserve;
+	v3d_push_job(&render->base);
 
 	if (clean_job) {
 		struct dma_fence *render_fence =
@@ -657,9 +656,7 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 			goto fail_unreserve;
 		clean_job->perfmon = render->base.perfmon;
 		v3d_perfmon_get(clean_job->perfmon);
-		ret = v3d_push_job(v3d_priv, clean_job, V3D_CACHE_CLEAN);
-		if (ret)
-			goto fail_unreserve;
+		v3d_push_job(clean_job);
 	}
 
 	mutex_unlock(&v3d->sched_lock);
@@ -684,10 +681,10 @@ v3d_submit_cl_ioctl(struct drm_device *dev, void *data,
 				    last_job->bo_count, &acquire_ctx);
 fail:
 	if (bin)
-		v3d_job_put(&bin->base);
-	v3d_job_put(&render->base);
+		v3d_job_cleanup(&bin->base);
+	v3d_job_cleanup(&render->base);
 	if (clean_job)
-		v3d_job_put(clean_job);
+		v3d_job_cleanup(clean_job);
 
 	return ret;
 }
@@ -706,7 +703,6 @@ v3d_submit_tfu_ioctl(struct drm_device *dev, void *data,
 		     struct drm_file *file_priv)
 {
 	struct v3d_dev *v3d = to_v3d_dev(dev);
-	struct v3d_file_priv *v3d_priv = file_priv->driver_priv;
 	struct drm_v3d_submit_tfu *args = data;
 	struct v3d_tfu_job *job;
 	struct ww_acquire_ctx acquire_ctx;
@@ -719,7 +715,7 @@ v3d_submit_tfu_ioctl(struct drm_device *dev, void *data,
 		return -ENOMEM;
 
 	ret = v3d_job_init(v3d, file_priv, &job->base,
-			   v3d_job_free, args->in_sync);
+			   v3d_job_free, args->in_sync, V3D_TFU);
 	if (ret) {
 		kfree(job);
 		return ret;
@@ -763,9 +759,7 @@ v3d_submit_tfu_ioctl(struct drm_device *dev, void *data,
 		goto fail;
 
 	mutex_lock(&v3d->sched_lock);
-	ret = v3d_push_job(v3d_priv, &job->base, V3D_TFU);
-	if (ret)
-		goto fail_unreserve;
+	v3d_push_job(&job->base);
 	mutex_unlock(&v3d->sched_lock);
 
 	v3d_attach_fences_and_unlock_reservation(file_priv,
@@ -777,12 +771,8 @@ v3d_submit_tfu_ioctl(struct drm_device *dev, void *data,
 
 	return 0;
 
-fail_unreserve:
-	mutex_unlock(&v3d->sched_lock);
-	drm_gem_unlock_reservations(job->base.bo, job->base.bo_count,
-				    &acquire_ctx);
 fail:
-	v3d_job_put(&job->base);
+	v3d_job_cleanup(&job->base);
 
 	return ret;
 }
@@ -820,7 +810,7 @@ v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 		return -ENOMEM;
 
 	ret = v3d_job_init(v3d, file_priv, &job->base,
-			   v3d_job_free, args->in_sync);
+			   v3d_job_free, args->in_sync, V3D_CSD);
 	if (ret) {
 		kfree(job);
 		return ret;
@@ -833,7 +823,7 @@ v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 		return -ENOMEM;
 	}
 
-	ret = v3d_job_init(v3d, file_priv, clean_job, v3d_job_free, 0);
+	ret = v3d_job_init(v3d, file_priv, clean_job, v3d_job_free, 0, V3D_CACHE_CLEAN);
 	if (ret) {
 		v3d_job_put(&job->base);
 		kfree(clean_job);
@@ -861,18 +851,14 @@ v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 	}
 
 	mutex_lock(&v3d->sched_lock);
-	ret = v3d_push_job(v3d_priv, &job->base, V3D_CSD);
-	if (ret)
-		goto fail_unreserve;
+	v3d_push_job(&job->base);
 
 	ret = drm_gem_fence_array_add(&clean_job->deps,
 				      dma_fence_get(job->base.done_fence));
 	if (ret)
 		goto fail_unreserve;
 
-	ret = v3d_push_job(v3d_priv, clean_job, V3D_CACHE_CLEAN);
-	if (ret)
-		goto fail_unreserve;
+	v3d_push_job(clean_job);
 	mutex_unlock(&v3d->sched_lock);
 
 	v3d_attach_fences_and_unlock_reservation(file_priv,
@@ -891,8 +877,8 @@ v3d_submit_csd_ioctl(struct drm_device *dev, void *data,
 	drm_gem_unlock_reservations(clean_job->bo, clean_job->bo_count,
 				    &acquire_ctx);
 fail:
-	v3d_job_put(&job->base);
-	v3d_job_put(clean_job);
+	v3d_job_cleanup(&job->base);
+	v3d_job_cleanup(clean_job);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/v3d/v3d_sched.c b/drivers/gpu/drm/v3d/v3d_sched.c
index dd7fcc36d726..7969797793d0 100644
--- a/drivers/gpu/drm/v3d/v3d_sched.c
+++ b/drivers/gpu/drm/v3d/v3d_sched.c
@@ -55,12 +55,11 @@ to_csd_job(struct drm_sched_job *sched_job)
 }
 
 static void
-v3d_job_free(struct drm_sched_job *sched_job)
+v3d_sched_job_free(struct drm_sched_job *sched_job)
 {
 	struct v3d_job *job = to_v3d_job(sched_job);
 
-	drm_sched_job_cleanup(sched_job);
-	v3d_job_put(job);
+	v3d_job_cleanup(job);
 }
 
 static void
@@ -376,35 +375,35 @@ static const struct drm_sched_backend_ops v3d_bin_sched_ops = {
 	.dependency = v3d_job_dependency,
 	.run_job = v3d_bin_job_run,
 	.timedout_job = v3d_bin_job_timedout,
-	.free_job = v3d_job_free,
+	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_render_sched_ops = {
 	.dependency = v3d_job_dependency,
 	.run_job = v3d_render_job_run,
 	.timedout_job = v3d_render_job_timedout,
-	.free_job = v3d_job_free,
+	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_tfu_sched_ops = {
 	.dependency = v3d_job_dependency,
 	.run_job = v3d_tfu_job_run,
 	.timedout_job = v3d_generic_job_timedout,
-	.free_job = v3d_job_free,
+	.free_job = v3d_sched_job_free,
 };
 
 static const struct drm_sched_backend_ops v3d_csd_sched_ops = {
 	.dependency = v3d_job_dependency,
 	.run_job = v3d_csd_job_run,
 	.timedout_job = v3d_csd_job_timedout,
-	.free_job = v3d_job_free
+	.free_job = v3d_sched_job_free
 };
 
 static const struct drm_sched_backend_ops v3d_cache_clean_sched_ops = {
 	.dependency = v3d_job_dependency,
 	.run_job = v3d_cache_clean_job_run,
 	.timedout_job = v3d_generic_job_timedout,
-	.free_job = v3d_job_free
+	.free_job = v3d_sched_job_free
 };
 
 int
-- 
2.32.0

