Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4550E4FC187
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 17:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A2310E318;
	Mon, 11 Apr 2022 15:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E57110E540;
 Thu,  7 Apr 2022 08:59:54 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id l7so4009883ejn.2;
 Thu, 07 Apr 2022 01:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C6x/Cgu85YAEsWhUHam4qG6WvwBbchw6Zug4vb1YlGM=;
 b=gC8cLzfnwGLztZ6XD8us40MtdrxOr2vlPLMzQv6mAwKX/GPUJrOthNZ0KaptjOGQZQ
 z4ziDJSfLfCK2MwC8nSmaAsQPhbjqrxOOq8LWwW49vHk/aEIRA642OecrYtVTfxxhr3q
 DhQhDHOIdXopHF5XfVfwg47GqKyanxTT3Q+pSMvKNHe2Ktqqs48CkH1NtRuuI5XXBcMu
 QgcmNiQ4ehmpwaE0pkiAoyrwggU9AOlIF2Efwkb7rm2JGYLVp8H3JPffY73VYs09Bj2S
 tVzm537Xb97PRr62oJn5TC5Kq0GdCtjasQBlWyOXhROsuoFdN9nRJ+lpIl+iCqlNMX0t
 8yWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C6x/Cgu85YAEsWhUHam4qG6WvwBbchw6Zug4vb1YlGM=;
 b=HOL8iyVySoXRgaAnMrnmsGn5ZKAg1PvM4iALC0rJrqfc8Cl9YB2X3hwky8/RatCzkL
 TS0NIyUUjBinmQ2nGIoANzQfEypcSHcBuwii2PSVHgYKJd5QM1U8uZFl0L8ej7SHjKuA
 sVP4pnv5cWhKZusAPCd5oHBqvHkSGk0XBrupgU6+gWF2Yq3zqOZY3NK/u8TfaN35Yd6F
 01YQ5+0uHPdJ+o1QecxtZjax1ox6v0To9e9cYaCKSMNVEWc+rq9u1baF6jCclFppuZ+h
 5Ap7R/PaqYRY049VKmiKeak5JIwBW2NX4cPVZ4av8jIh2ySfEQbQj/w0tkU+nORwyLZy
 ZSGQ==
X-Gm-Message-State: AOAM532Z9Cxe0+e7uYBbsWajt/BwmolbL/JrjcnPcCLlBfMTHxl0og9Q
 MWNqGdvBZ52fF1whxZdY23jpI5eu15k=
X-Google-Smtp-Source: ABdhPJyOHG3FjdwJp21n/Q6fgpBkohlQoN63WtXPr3xokwpS2xYO8Ui+BjUdcYlwlwcx0tOG8fVyeg==
X-Received: by 2002:a17:906:cccf:b0:6e7:5336:8bd7 with SMTP id
 ot15-20020a170906cccf00b006e753368bd7mr12482059ejb.583.1649321992428; 
 Thu, 07 Apr 2022 01:59:52 -0700 (PDT)
Received: from able.fritz.box (p57b0b9e1.dip0.t-ipconnect.de. [87.176.185.225])
 by smtp.gmail.com with ESMTPSA id
 h26-20020a170906111a00b006e778bd4fc8sm5186563eja.38.2022.04.07.01.59.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 01:59:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel.vetter@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org
Date: Thu,  7 Apr 2022 10:59:33 +0200
Message-Id: <20220407085946.744568-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 Apr 2022 15:52:43 +0000
Subject: [Intel-gfx] [PATCH 02/15] dma-buf: specify usage while adding
 fences to dma_resv obj v7
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
Cc: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of distingting between shared and exclusive fences specify
the fence usage while adding fences.

Rework all drivers to use this interface instead and deprecate the old one.

v2: some kerneldoc comments suggested by Daniel
v3: fix a missing case in radeon
v4: rebase on nouveau changes, fix lockdep and temporary disable warning
v5: more documentation updates
v6: separate internal dma_resv changes from this patch, avoids to
    disable warning temporary, rebase on upstream changes
v7: fix missed case in lima driver, minimize changes to i915_gem_busy_ioctl

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/dma-buf/dma-resv.c                    |  48 +++++++--
 drivers/dma-buf/st-dma-resv.c                 | 101 +++++-------------
 .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c  |   2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c        |   4 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    |   6 +-
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c  |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_busy.c      |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |   5 +-
 .../drm/i915/gem/selftests/i915_gem_migrate.c |   4 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   3 +-
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 .../drm/i915/selftests/intel_memory_region.c  |   3 +-
 drivers/gpu/drm/lima/lima_gem.c               |   7 +-
 drivers/gpu/drm/msm/msm_gem_submit.c          |   6 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c          |   9 +-
 drivers/gpu/drm/nouveau/nouveau_fence.c       |   4 +-
 drivers/gpu/drm/panfrost/panfrost_job.c       |   2 +-
 drivers/gpu/drm/qxl/qxl_release.c             |   3 +-
 drivers/gpu/drm/radeon/radeon_object.c        |   6 +-
 drivers/gpu/drm/ttm/ttm_bo.c                  |   2 +-
 drivers/gpu/drm/ttm/ttm_bo_util.c             |   5 +-
 drivers/gpu/drm/ttm/ttm_execbuf_util.c        |   6 +-
 drivers/gpu/drm/v3d/v3d_gem.c                 |   4 +-
 drivers/gpu/drm/vc4/vc4_gem.c                 |   2 +-
 drivers/gpu/drm/vgem/vgem_fence.c             |   9 +-
 drivers/gpu/drm/virtio/virtgpu_gem.c          |   3 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_bo.c            |   3 +-
 include/linux/dma-buf.h                       |  16 +--
 include/linux/dma-resv.h                      |  25 +++--
 30 files changed, 149 insertions(+), 166 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 17237e6ee30c..543dae6566d2 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -234,14 +234,14 @@ EXPORT_SYMBOL(dma_resv_reserve_fences);
 
 #ifdef CONFIG_DEBUG_MUTEXES
 /**
- * dma_resv_reset_shared_max - reset shared fences for debugging
+ * dma_resv_reset_max_fences - reset shared fences for debugging
  * @obj: the dma_resv object to reset
  *
  * Reset the number of pre-reserved shared slots to test that drivers do
  * correct slot allocation using dma_resv_reserve_fences(). See also
  * &dma_resv_list.shared_max.
  */
-void dma_resv_reset_shared_max(struct dma_resv *obj)
+void dma_resv_reset_max_fences(struct dma_resv *obj)
 {
 	struct dma_resv_list *fences = dma_resv_shared_list(obj);
 
@@ -251,7 +251,7 @@ void dma_resv_reset_shared_max(struct dma_resv *obj)
 	if (fences)
 		fences->shared_max = fences->shared_count;
 }
-EXPORT_SYMBOL(dma_resv_reset_shared_max);
+EXPORT_SYMBOL(dma_resv_reset_max_fences);
 #endif
 
 /**
@@ -264,7 +264,8 @@ EXPORT_SYMBOL(dma_resv_reset_shared_max);
  *
  * See also &dma_resv.fence for a discussion of the semantics.
  */
-void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *fence)
+static void dma_resv_add_shared_fence(struct dma_resv *obj,
+				      struct dma_fence *fence)
 {
 	struct dma_resv_list *fobj;
 	struct dma_fence *old;
@@ -305,13 +306,13 @@ void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *fence)
 	write_seqcount_end(&obj->seq);
 	dma_fence_put(old);
 }
-EXPORT_SYMBOL(dma_resv_add_shared_fence);
 
 /**
  * dma_resv_replace_fences - replace fences in the dma_resv obj
  * @obj: the reservation object
  * @context: the context of the fences to replace
  * @replacement: the new fence to use instead
+ * @usage: how the new fence is used, see enum dma_resv_usage
  *
  * Replace fences with a specified context with a new fence. Only valid if the
  * operation represented by the original fence has no longer access to the
@@ -321,12 +322,16 @@ EXPORT_SYMBOL(dma_resv_add_shared_fence);
  * update fence which makes the resource inaccessible.
  */
 void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
-			     struct dma_fence *replacement)
+			     struct dma_fence *replacement,
+			     enum dma_resv_usage usage)
 {
 	struct dma_resv_list *list;
 	struct dma_fence *old;
 	unsigned int i;
 
+	/* Only readers supported for now */
+	WARN_ON(usage != DMA_RESV_USAGE_READ);
+
 	dma_resv_assert_held(obj);
 
 	write_seqcount_begin(&obj->seq);
@@ -360,7 +365,8 @@ EXPORT_SYMBOL(dma_resv_replace_fences);
  * Add a fence to the exclusive slot. @obj must be locked with dma_resv_lock().
  * See also &dma_resv.fence_excl for a discussion of the semantics.
  */
-void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence)
+static void dma_resv_add_excl_fence(struct dma_resv *obj,
+				    struct dma_fence *fence)
 {
 	struct dma_fence *old_fence = dma_resv_excl_fence(obj);
 
@@ -375,7 +381,27 @@ void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence)
 
 	dma_fence_put(old_fence);
 }
-EXPORT_SYMBOL(dma_resv_add_excl_fence);
+
+/**
+ * dma_resv_add_fence - Add a fence to the dma_resv obj
+ * @obj: the reservation object
+ * @fence: the fence to add
+ * @usage: how the fence is used, see enum dma_resv_usage
+ *
+ * Add a fence to a slot, @obj must be locked with dma_resv_lock(), and
+ * dma_resv_reserve_fences() has been called.
+ *
+ * See also &dma_resv.fence for a discussion of the semantics.
+ */
+void dma_resv_add_fence(struct dma_resv *obj, struct dma_fence *fence,
+			enum dma_resv_usage usage)
+{
+	if (usage == DMA_RESV_USAGE_WRITE)
+		dma_resv_add_excl_fence(obj, fence);
+	else
+		dma_resv_add_shared_fence(obj, fence);
+}
+EXPORT_SYMBOL(dma_resv_add_fence);
 
 /* Restart the iterator by initializing all the necessary fields, but not the
  * relation to the dma_resv object. */
@@ -574,7 +600,7 @@ int dma_resv_copy_fences(struct dma_resv *dst, struct dma_resv *src)
 		}
 
 		dma_fence_get(f);
-		if (dma_resv_iter_is_exclusive(&cursor))
+		if (dma_resv_iter_usage(&cursor) == DMA_RESV_USAGE_WRITE)
 			excl = f;
 		else
 			RCU_INIT_POINTER(list->shared[list->shared_count++], f);
@@ -771,13 +797,13 @@ EXPORT_SYMBOL_GPL(dma_resv_test_signaled);
  */
 void dma_resv_describe(struct dma_resv *obj, struct seq_file *seq)
 {
+	static const char *usage[] = { "write", "read" };
 	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
 
 	dma_resv_for_each_fence(&cursor, obj, DMA_RESV_USAGE_READ, fence) {
 		seq_printf(seq, "\t%s fence:",
-			   dma_resv_iter_is_exclusive(&cursor) ?
-				"Exclusive" : "Shared");
+			   usage[dma_resv_iter_usage(&cursor)]);
 		dma_fence_describe(fence, seq);
 	}
 }
diff --git a/drivers/dma-buf/st-dma-resv.c b/drivers/dma-buf/st-dma-resv.c
index d097981061b1..d0f7c2bfd4f0 100644
--- a/drivers/dma-buf/st-dma-resv.c
+++ b/drivers/dma-buf/st-dma-resv.c
@@ -58,8 +58,9 @@ static int sanitycheck(void *arg)
 	return r;
 }
 
-static int test_signaling(void *arg, enum dma_resv_usage usage)
+static int test_signaling(void *arg)
 {
+	enum dma_resv_usage usage = (unsigned long)arg;
 	struct dma_resv resv;
 	struct dma_fence *f;
 	int r;
@@ -81,11 +82,7 @@ static int test_signaling(void *arg, enum dma_resv_usage usage)
 		goto err_unlock;
 	}
 
-	if (usage >= DMA_RESV_USAGE_READ)
-		dma_resv_add_shared_fence(&resv, f);
-	else
-		dma_resv_add_excl_fence(&resv, f);
-
+	dma_resv_add_fence(&resv, f, usage);
 	if (dma_resv_test_signaled(&resv, usage)) {
 		pr_err("Resv unexpectedly signaled\n");
 		r = -EINVAL;
@@ -105,18 +102,9 @@ static int test_signaling(void *arg, enum dma_resv_usage usage)
 	return r;
 }
 
-static int test_excl_signaling(void *arg)
-{
-	return test_signaling(arg, DMA_RESV_USAGE_WRITE);
-}
-
-static int test_shared_signaling(void *arg)
-{
-	return test_signaling(arg, DMA_RESV_USAGE_READ);
-}
-
-static int test_for_each(void *arg, enum dma_resv_usage usage)
+static int test_for_each(void *arg)
 {
+	enum dma_resv_usage usage = (unsigned long)arg;
 	struct dma_resv_iter cursor;
 	struct dma_fence *f, *fence;
 	struct dma_resv resv;
@@ -139,10 +127,7 @@ static int test_for_each(void *arg, enum dma_resv_usage usage)
 		goto err_unlock;
 	}
 
-	if (usage >= DMA_RESV_USAGE_READ)
-		dma_resv_add_shared_fence(&resv, f);
-	else
-		dma_resv_add_excl_fence(&resv, f);
+	dma_resv_add_fence(&resv, f, usage);
 
 	r = -ENOENT;
 	dma_resv_for_each_fence(&cursor, &resv, usage, fence) {
@@ -156,8 +141,7 @@ static int test_for_each(void *arg, enum dma_resv_usage usage)
 			r = -EINVAL;
 			goto err_unlock;
 		}
-		if (dma_resv_iter_is_exclusive(&cursor) !=
-		    (usage >= DMA_RESV_USAGE_READ)) {
+		if (dma_resv_iter_usage(&cursor) != usage) {
 			pr_err("Unexpected fence usage\n");
 			r = -EINVAL;
 			goto err_unlock;
@@ -177,18 +161,9 @@ static int test_for_each(void *arg, enum dma_resv_usage usage)
 	return r;
 }
 
-static int test_excl_for_each(void *arg)
-{
-	return test_for_each(arg, DMA_RESV_USAGE_WRITE);
-}
-
-static int test_shared_for_each(void *arg)
-{
-	return test_for_each(arg, DMA_RESV_USAGE_READ);
-}
-
-static int test_for_each_unlocked(void *arg, enum dma_resv_usage usage)
+static int test_for_each_unlocked(void *arg)
 {
+	enum dma_resv_usage usage = (unsigned long)arg;
 	struct dma_resv_iter cursor;
 	struct dma_fence *f, *fence;
 	struct dma_resv resv;
@@ -212,10 +187,7 @@ static int test_for_each_unlocked(void *arg, enum dma_resv_usage usage)
 		goto err_free;
 	}
 
-	if (usage >= DMA_RESV_USAGE_READ)
-		dma_resv_add_shared_fence(&resv, f);
-	else
-		dma_resv_add_excl_fence(&resv, f);
+	dma_resv_add_fence(&resv, f, usage);
 	dma_resv_unlock(&resv);
 
 	r = -ENOENT;
@@ -235,8 +207,7 @@ static int test_for_each_unlocked(void *arg, enum dma_resv_usage usage)
 			r = -EINVAL;
 			goto err_iter_end;
 		}
-		if (dma_resv_iter_is_exclusive(&cursor) !=
-		    (usage >= DMA_RESV_USAGE_READ)) {
+		if (dma_resv_iter_usage(&cursor) != usage) {
 			pr_err("Unexpected fence usage\n");
 			r = -EINVAL;
 			goto err_iter_end;
@@ -262,18 +233,9 @@ static int test_for_each_unlocked(void *arg, enum dma_resv_usage usage)
 	return r;
 }
 
-static int test_excl_for_each_unlocked(void *arg)
-{
-	return test_for_each_unlocked(arg, DMA_RESV_USAGE_WRITE);
-}
-
-static int test_shared_for_each_unlocked(void *arg)
-{
-	return test_for_each_unlocked(arg, DMA_RESV_USAGE_READ);
-}
-
-static int test_get_fences(void *arg, enum dma_resv_usage usage)
+static int test_get_fences(void *arg)
 {
+	enum dma_resv_usage usage = (unsigned long)arg;
 	struct dma_fence *f, **fences = NULL;
 	struct dma_resv resv;
 	int r, i;
@@ -296,10 +258,7 @@ static int test_get_fences(void *arg, enum dma_resv_usage usage)
 		goto err_resv;
 	}
 
-	if (usage >= DMA_RESV_USAGE_READ)
-		dma_resv_add_shared_fence(&resv, f);
-	else
-		dma_resv_add_excl_fence(&resv, f);
+	dma_resv_add_fence(&resv, f, usage);
 	dma_resv_unlock(&resv);
 
 	r = dma_resv_get_fences(&resv, usage, &i, &fences);
@@ -324,30 +283,24 @@ static int test_get_fences(void *arg, enum dma_resv_usage usage)
 	return r;
 }
 
-static int test_excl_get_fences(void *arg)
-{
-	return test_get_fences(arg, DMA_RESV_USAGE_WRITE);
-}
-
-static int test_shared_get_fences(void *arg)
-{
-	return test_get_fences(arg, DMA_RESV_USAGE_READ);
-}
-
 int dma_resv(void)
 {
 	static const struct subtest tests[] = {
 		SUBTEST(sanitycheck),
-		SUBTEST(test_excl_signaling),
-		SUBTEST(test_shared_signaling),
-		SUBTEST(test_excl_for_each),
-		SUBTEST(test_shared_for_each),
-		SUBTEST(test_excl_for_each_unlocked),
-		SUBTEST(test_shared_for_each_unlocked),
-		SUBTEST(test_excl_get_fences),
-		SUBTEST(test_shared_get_fences),
+		SUBTEST(test_signaling),
+		SUBTEST(test_for_each),
+		SUBTEST(test_for_each_unlocked),
+		SUBTEST(test_get_fences),
 	};
+	enum dma_resv_usage usage;
+	int r;
 
 	spin_lock_init(&fence_lock);
-	return subtests(tests, NULL);
+	for (usage = DMA_RESV_USAGE_WRITE; usage <= DMA_RESV_USAGE_READ;
+	     ++usage) {
+		r = subtests(tests, (void *)(unsigned long)usage);
+		if (r)
+			return r;
+	}
+	return 0;
 }
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index 98b1736bb221..5031e26e6716 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -263,7 +263,7 @@ static int amdgpu_amdkfd_remove_eviction_fence(struct amdgpu_bo *bo,
 	 */
 	replacement = dma_fence_get_stub();
 	dma_resv_replace_fences(bo->tbo.base.resv, ef->base.context,
-				replacement);
+				replacement, DMA_RESV_USAGE_READ);
 	dma_fence_put(replacement);
 	return 0;
 }
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
index 413f32c3fd63..76fd916424d6 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
@@ -55,8 +55,8 @@ static int amdgpu_cs_user_fence_chunk(struct amdgpu_cs_parser *p,
 	bo = amdgpu_bo_ref(gem_to_amdgpu_bo(gobj));
 	p->uf_entry.priority = 0;
 	p->uf_entry.tv.bo = &bo->tbo;
-	/* One for TTM and one for the CS job */
-	p->uf_entry.tv.num_shared = 2;
+	/* One for TTM and two for the CS job */
+	p->uf_entry.tv.num_shared = 3;
 
 	drm_gem_object_put(gobj);
 
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index a7f39f8ab7be..a3cdf8a24377 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -1397,10 +1397,8 @@ void amdgpu_bo_fence(struct amdgpu_bo *bo, struct dma_fence *fence,
 		return;
 	}
 
-	if (shared)
-		dma_resv_add_shared_fence(resv, fence);
-	else
-		dma_resv_add_excl_fence(resv, fence);
+	dma_resv_add_fence(resv, fence, shared ? DMA_RESV_USAGE_READ :
+			   DMA_RESV_USAGE_WRITE);
 }
 
 /**
diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
index 53f7c78628a4..98bb5c9239de 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
@@ -202,14 +202,10 @@ static void submit_attach_object_fences(struct etnaviv_gem_submit *submit)
 
 	for (i = 0; i < submit->nr_bos; i++) {
 		struct drm_gem_object *obj = &submit->bos[i].obj->base;
+		bool write = submit->bos[i].flags & ETNA_SUBMIT_BO_WRITE;
 
-		if (submit->bos[i].flags & ETNA_SUBMIT_BO_WRITE)
-			dma_resv_add_excl_fence(obj->resv,
-							  submit->out_fence);
-		else
-			dma_resv_add_shared_fence(obj->resv,
-							    submit->out_fence);
-
+		dma_resv_add_fence(obj->resv, submit->out_fence, write ?
+				   DMA_RESV_USAGE_WRITE : DMA_RESV_USAGE_READ);
 		submit_unlock_object(submit, i);
 	}
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_busy.c b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
index 14a1c0ad8c3c..ddda468241ef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_busy.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_busy.c
@@ -148,11 +148,11 @@ i915_gem_busy_ioctl(struct drm_device *dev, void *data,
 		if (dma_resv_iter_is_restarted(&cursor))
 			args->busy = 0;
 
-		if (dma_resv_iter_is_exclusive(&cursor))
-			/* Translate the exclusive fence to the READ *and* WRITE engine */
+		if (dma_resv_iter_usage(&cursor) <= DMA_RESV_USAGE_WRITE)
+			/* Translate the write fences to the READ *and* WRITE engine */
 			args->busy |= busy_check_writer(fence);
 		else
-			/* Translate shared fences to READ set of engines */
+			/* Translate read fences to READ set of engines */
 			args->busy |= busy_check_reader(fence);
 	}
 	dma_resv_iter_end(&cursor);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index 1fd0cc9ca213..f5f2b8b115ea 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -116,7 +116,8 @@ bool i915_gem_clflush_object(struct drm_i915_gem_object *obj,
 						obj->base.resv, NULL, true,
 						i915_fence_timeout(i915),
 						I915_FENCE_GFP);
-		dma_resv_add_excl_fence(obj->base.resv, &clflush->base.dma);
+		dma_resv_add_fence(obj->base.resv, &clflush->base.dma,
+				   DMA_RESV_USAGE_WRITE);
 		dma_fence_work_commit(&clflush->base);
 		/*
 		 * We must have successfully populated the pages(since we are
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 432ac74ff225..438b8a95b3d1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -637,9 +637,8 @@ int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 	if (IS_ERR_OR_NULL(copy_fence))
 		return PTR_ERR_OR_ZERO(copy_fence);
 
-	dma_resv_add_excl_fence(dst_bo->base.resv, copy_fence);
-	dma_resv_add_shared_fence(src_bo->base.resv, copy_fence);
-
+	dma_resv_add_fence(dst_bo->base.resv, copy_fence, DMA_RESV_USAGE_WRITE);
+	dma_resv_add_fence(src_bo->base.resv, copy_fence, DMA_RESV_USAGE_READ);
 	dma_fence_put(copy_fence);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index 0e52eb87cd55..4997ed18b6e4 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -218,8 +218,8 @@ static int __igt_lmem_pages_migrate(struct intel_gt *gt,
 		if (rq) {
 			err = dma_resv_reserve_fences(obj->base.resv, 1);
 			if (!err)
-				dma_resv_add_excl_fence(obj->base.resv,
-							&rq->fence);
+				dma_resv_add_fence(obj->base.resv, &rq->fence,
+						   DMA_RESV_USAGE_WRITE);
 			i915_gem_object_set_moving_fence(obj, &rq->fence);
 			i915_request_put(rq);
 		}
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index a132e241c3ee..3a6e3f6d239f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1220,7 +1220,8 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 					  expand32(POISON_INUSE), &rq);
 	i915_gem_object_unpin_pages(obj);
 	if (rq) {
-		dma_resv_add_excl_fence(obj->base.resv, &rq->fence);
+		dma_resv_add_fence(obj->base.resv, &rq->fence,
+				   DMA_RESV_USAGE_WRITE);
 		i915_gem_object_set_moving_fence(obj, &rq->fence);
 		i915_request_put(rq);
 	}
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index bae3423f58e8..524477d8939e 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1826,7 +1826,8 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		}
 
 		if (fence) {
-			dma_resv_add_excl_fence(vma->obj->base.resv, fence);
+			dma_resv_add_fence(vma->obj->base.resv, fence,
+					   DMA_RESV_USAGE_WRITE);
 			obj->write_domain = I915_GEM_DOMAIN_RENDER;
 			obj->read_domains = 0;
 		}
@@ -1838,7 +1839,8 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 		}
 
 		if (fence) {
-			dma_resv_add_shared_fence(vma->obj->base.resv, fence);
+			dma_resv_add_fence(vma->obj->base.resv, fence,
+					   DMA_RESV_USAGE_READ);
 			obj->write_domain = 0;
 		}
 	}
@@ -2078,7 +2080,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, bool trylock_vm)
 		goto out_rpm;
 	}
 
-	dma_resv_add_shared_fence(obj->base.resv, fence);
+	dma_resv_add_fence(obj->base.resv, fence, DMA_RESV_USAGE_READ);
 	dma_fence_put(fence);
 
 out_rpm:
diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 6114e013092b..73eb53edb8de 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -1056,7 +1056,8 @@ static int igt_lmem_write_cpu(void *arg)
 					  obj->mm.pages->sgl, I915_CACHE_NONE,
 					  true, 0xdeadbeaf, &rq);
 	if (rq) {
-		dma_resv_add_excl_fence(obj->base.resv, &rq->fence);
+		dma_resv_add_fence(obj->base.resv, &rq->fence,
+				   DMA_RESV_USAGE_WRITE);
 		i915_request_put(rq);
 	}
 
diff --git a/drivers/gpu/drm/lima/lima_gem.c b/drivers/gpu/drm/lima/lima_gem.c
index e0a11ee0e86d..0f1ca0b0db49 100644
--- a/drivers/gpu/drm/lima/lima_gem.c
+++ b/drivers/gpu/drm/lima/lima_gem.c
@@ -364,10 +364,9 @@ int lima_gem_submit(struct drm_file *file, struct lima_submit *submit)
 	fence = lima_sched_context_queue_task(submit->task);
 
 	for (i = 0; i < submit->nr_bos; i++) {
-		if (submit->bos[i].flags & LIMA_SUBMIT_BO_WRITE)
-			dma_resv_add_excl_fence(lima_bo_resv(bos[i]), fence);
-		else
-			dma_resv_add_shared_fence(lima_bo_resv(bos[i]), fence);
+		dma_resv_add_fence(lima_bo_resv(bos[i]), fence,
+				   submit->bos[i].flags & LIMA_SUBMIT_BO_WRITE ?
+				   DMA_RESV_USAGE_WRITE : DMA_RESV_USAGE_READ);
 	}
 
 	drm_gem_unlock_reservations((struct drm_gem_object **)bos,
diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index 3164db8be893..8d1eef914ba8 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -395,9 +395,11 @@ static void submit_attach_object_fences(struct msm_gem_submit *submit)
 		struct drm_gem_object *obj = &submit->bos[i].obj->base;
 
 		if (submit->bos[i].flags & MSM_SUBMIT_BO_WRITE)
-			dma_resv_add_excl_fence(obj->resv, submit->user_fence);
+			dma_resv_add_fence(obj->resv, submit->user_fence,
+					   DMA_RESV_USAGE_WRITE);
 		else if (submit->bos[i].flags & MSM_SUBMIT_BO_READ)
-			dma_resv_add_shared_fence(obj->resv, submit->user_fence);
+			dma_resv_add_fence(obj->resv, submit->user_fence,
+					   DMA_RESV_USAGE_READ);
 	}
 }
 
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index c6bb4dbcd735..05076e530e7d 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -1308,10 +1308,11 @@ nouveau_bo_fence(struct nouveau_bo *nvbo, struct nouveau_fence *fence, bool excl
 {
 	struct dma_resv *resv = nvbo->bo.base.resv;
 
-	if (exclusive)
-		dma_resv_add_excl_fence(resv, &fence->base);
-	else if (fence)
-		dma_resv_add_shared_fence(resv, &fence->base);
+	if (!fence)
+		return;
+
+	dma_resv_add_fence(resv, &fence->base, exclusive ?
+			   DMA_RESV_USAGE_WRITE : DMA_RESV_USAGE_READ);
 }
 
 static void
diff --git a/drivers/gpu/drm/nouveau/nouveau_fence.c b/drivers/gpu/drm/nouveau/nouveau_fence.c
index d5e81ccee01c..7f01dcf81fab 100644
--- a/drivers/gpu/drm/nouveau/nouveau_fence.c
+++ b/drivers/gpu/drm/nouveau/nouveau_fence.c
@@ -360,9 +360,11 @@ nouveau_fence_sync(struct nouveau_bo *nvbo, struct nouveau_channel *chan,
 		dma_resv_for_each_fence(&cursor, resv,
 					dma_resv_usage_rw(exclusive),
 					fence) {
+			enum dma_resv_usage usage;
 			struct nouveau_fence *f;
 
-			if (i == 0 && dma_resv_iter_is_exclusive(&cursor))
+			usage = dma_resv_iter_usage(&cursor);
+			if (i == 0 && usage == DMA_RESV_USAGE_WRITE)
 				continue;
 
 			f = nouveau_local_fence(fence, chan->drm);
diff --git a/drivers/gpu/drm/panfrost/panfrost_job.c b/drivers/gpu/drm/panfrost/panfrost_job.c
index c34114560e49..fda5871aebe3 100644
--- a/drivers/gpu/drm/panfrost/panfrost_job.c
+++ b/drivers/gpu/drm/panfrost/panfrost_job.c
@@ -268,7 +268,7 @@ static void panfrost_attach_object_fences(struct drm_gem_object **bos,
 	int i;
 
 	for (i = 0; i < bo_count; i++)
-		dma_resv_add_excl_fence(bos[i]->resv, fence);
+		dma_resv_add_fence(bos[i]->resv, fence, DMA_RESV_USAGE_WRITE);
 }
 
 int panfrost_job_push(struct panfrost_job *job)
diff --git a/drivers/gpu/drm/qxl/qxl_release.c b/drivers/gpu/drm/qxl/qxl_release.c
index cde1e8ddaeaa..368d26da0d6a 100644
--- a/drivers/gpu/drm/qxl/qxl_release.c
+++ b/drivers/gpu/drm/qxl/qxl_release.c
@@ -429,7 +429,8 @@ void qxl_release_fence_buffer_objects(struct qxl_release *release)
 	list_for_each_entry(entry, &release->bos, head) {
 		bo = entry->bo;
 
-		dma_resv_add_shared_fence(bo->base.resv, &release->base);
+		dma_resv_add_fence(bo->base.resv, &release->base,
+				   DMA_RESV_USAGE_READ);
 		ttm_bo_move_to_lru_tail_unlocked(bo);
 		dma_resv_unlock(bo->base.resv);
 	}
diff --git a/drivers/gpu/drm/radeon/radeon_object.c b/drivers/gpu/drm/radeon/radeon_object.c
index 7ffd2e90f325..cb5c4aa45cef 100644
--- a/drivers/gpu/drm/radeon/radeon_object.c
+++ b/drivers/gpu/drm/radeon/radeon_object.c
@@ -791,8 +791,6 @@ void radeon_bo_fence(struct radeon_bo *bo, struct radeon_fence *fence,
 		return;
 	}
 
-	if (shared)
-		dma_resv_add_shared_fence(resv, &fence->base);
-	else
-		dma_resv_add_excl_fence(resv, &fence->base);
+	dma_resv_add_fence(resv, &fence->base, shared ?
+			   DMA_RESV_USAGE_READ : DMA_RESV_USAGE_WRITE);
 }
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index cff05b62f3f7..d74f9eea855e 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -739,7 +739,7 @@ static int ttm_bo_add_move_fence(struct ttm_buffer_object *bo,
 		return ret;
 	}
 
-	dma_resv_add_shared_fence(bo->base.resv, fence);
+	dma_resv_add_fence(bo->base.resv, fence, DMA_RESV_USAGE_WRITE);
 
 	ret = dma_resv_reserve_fences(bo->base.resv, 1);
 	if (unlikely(ret)) {
diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 1b96b91bf81b..7a96a1db13a7 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -507,7 +507,8 @@ static int ttm_bo_move_to_ghost(struct ttm_buffer_object *bo,
 	if (ret)
 		return ret;
 
-	dma_resv_add_excl_fence(&ghost_obj->base._resv, fence);
+	dma_resv_add_fence(&ghost_obj->base._resv, fence,
+			   DMA_RESV_USAGE_WRITE);
 
 	/**
 	 * If we're not moving to fixed memory, the TTM object
@@ -561,7 +562,7 @@ int ttm_bo_move_accel_cleanup(struct ttm_buffer_object *bo,
 	struct ttm_resource_manager *man = ttm_manager_type(bdev, new_mem->mem_type);
 	int ret = 0;
 
-	dma_resv_add_excl_fence(bo->base.resv, fence);
+	dma_resv_add_fence(bo->base.resv, fence, DMA_RESV_USAGE_WRITE);
 	if (!evict)
 		ret = ttm_bo_move_to_ghost(bo, fence, man->use_tt);
 	else if (!from->use_tt && pipeline)
diff --git a/drivers/gpu/drm/ttm/ttm_execbuf_util.c b/drivers/gpu/drm/ttm/ttm_execbuf_util.c
index 789c645f004e..0eb995d25df1 100644
--- a/drivers/gpu/drm/ttm/ttm_execbuf_util.c
+++ b/drivers/gpu/drm/ttm/ttm_execbuf_util.c
@@ -154,10 +154,8 @@ void ttm_eu_fence_buffer_objects(struct ww_acquire_ctx *ticket,
 	list_for_each_entry(entry, list, head) {
 		struct ttm_buffer_object *bo = entry->bo;
 
-		if (entry->num_shared)
-			dma_resv_add_shared_fence(bo->base.resv, fence);
-		else
-			dma_resv_add_excl_fence(bo->base.resv, fence);
+		dma_resv_add_fence(bo->base.resv, fence, entry->num_shared ?
+				   DMA_RESV_USAGE_READ : DMA_RESV_USAGE_WRITE);
 		ttm_bo_move_to_lru_tail_unlocked(bo);
 		dma_resv_unlock(bo->base.resv);
 	}
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index 961812d33827..2352e9640922 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -550,8 +550,8 @@ v3d_attach_fences_and_unlock_reservation(struct drm_file *file_priv,
 
 	for (i = 0; i < job->bo_count; i++) {
 		/* XXX: Use shared fences for read-only objects. */
-		dma_resv_add_excl_fence(job->bo[i]->resv,
-					job->done_fence);
+		dma_resv_add_fence(job->bo[i]->resv, job->done_fence,
+				   DMA_RESV_USAGE_WRITE);
 	}
 
 	drm_gem_unlock_reservations(job->bo, job->bo_count, acquire_ctx);
diff --git a/drivers/gpu/drm/vc4/vc4_gem.c b/drivers/gpu/drm/vc4/vc4_gem.c
index 594bd6bb00d2..38550317e025 100644
--- a/drivers/gpu/drm/vc4/vc4_gem.c
+++ b/drivers/gpu/drm/vc4/vc4_gem.c
@@ -546,7 +546,7 @@ vc4_update_bo_seqnos(struct vc4_exec_info *exec, uint64_t seqno)
 		bo = to_vc4_bo(&exec->bo[i]->base);
 		bo->seqno = seqno;
 
-		dma_resv_add_shared_fence(bo->base.base.resv, exec->fence);
+		dma_resv_add_fence(bo->base.base.resv, exec->fence);
 	}
 
 	list_for_each_entry(bo, &exec->unref_list, unref_head) {
diff --git a/drivers/gpu/drm/vgem/vgem_fence.c b/drivers/gpu/drm/vgem/vgem_fence.c
index 91fc4940c65a..c2a879734d40 100644
--- a/drivers/gpu/drm/vgem/vgem_fence.c
+++ b/drivers/gpu/drm/vgem/vgem_fence.c
@@ -161,12 +161,9 @@ int vgem_fence_attach_ioctl(struct drm_device *dev,
 	/* Expose the fence via the dma-buf */
 	dma_resv_lock(resv, NULL);
 	ret = dma_resv_reserve_fences(resv, 1);
-	if (!ret) {
-		if (arg->flags & VGEM_FENCE_WRITE)
-			dma_resv_add_excl_fence(resv, fence);
-		else
-			dma_resv_add_shared_fence(resv, fence);
-	}
+	if (!ret)
+		dma_resv_add_fence(resv, fence, arg->flags & VGEM_FENCE_WRITE ?
+				   DMA_RESV_USAGE_WRITE : DMA_RESV_USAGE_READ);
 	dma_resv_unlock(resv);
 
 	/* Record the fence in our idr for later signaling */
diff --git a/drivers/gpu/drm/virtio/virtgpu_gem.c b/drivers/gpu/drm/virtio/virtgpu_gem.c
index 1820ca6cf673..580a78809836 100644
--- a/drivers/gpu/drm/virtio/virtgpu_gem.c
+++ b/drivers/gpu/drm/virtio/virtgpu_gem.c
@@ -250,7 +250,8 @@ void virtio_gpu_array_add_fence(struct virtio_gpu_object_array *objs,
 	int i;
 
 	for (i = 0; i < objs->nents; i++)
-		dma_resv_add_excl_fence(objs->objs[i]->resv, fence);
+		dma_resv_add_fence(objs->objs[i]->resv, fence,
+				   DMA_RESV_USAGE_WRITE);
 }
 
 void virtio_gpu_array_put_free(struct virtio_gpu_object_array *objs)
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
index b96884f7d03d..bec50223efe5 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
@@ -758,7 +758,8 @@ void vmw_bo_fence_single(struct ttm_buffer_object *bo,
 
 	ret = dma_resv_reserve_fences(bo->base.resv, 1);
 	if (!ret)
-		dma_resv_add_excl_fence(bo->base.resv, &fence->base);
+		dma_resv_add_fence(bo->base.resv, &fence->base,
+				   DMA_RESV_USAGE_WRITE);
 	else
 		/* Last resort fallback when we are OOM */
 		dma_fence_wait(&fence->base, false);
diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
index a297397743a2..71731796c8c3 100644
--- a/include/linux/dma-buf.h
+++ b/include/linux/dma-buf.h
@@ -393,15 +393,15 @@ struct dma_buf {
 	 * e.g. exposed in `Implicit Fence Poll Support`_ must follow the
 	 * below rules.
 	 *
-	 * - Drivers must add a shared fence through dma_resv_add_shared_fence()
-	 *   for anything the userspace API considers a read access. This highly
-	 *   depends upon the API and window system.
+	 * - Drivers must add a read fence through dma_resv_add_fence() with the
+	 *   DMA_RESV_USAGE_READ flag for anything the userspace API considers a
+	 *   read access. This highly depends upon the API and window system.
 	 *
-	 * - Similarly drivers must set the exclusive fence through
-	 *   dma_resv_add_excl_fence() for anything the userspace API considers
-	 *   write access.
+	 * - Similarly drivers must add a write fence through
+	 *   dma_resv_add_fence() with the DMA_RESV_USAGE_WRITE flag for
+	 *   anything the userspace API considers write access.
 	 *
-	 * - Drivers may just always set the exclusive fence, since that only
+	 * - Drivers may just always add a write fence, since that only
 	 *   causes unecessarily synchronization, but no correctness issues.
 	 *
 	 * - Some drivers only expose a synchronous userspace API with no
@@ -416,7 +416,7 @@ struct dma_buf {
 	 * Dynamic importers, see dma_buf_attachment_is_dynamic(), have
 	 * additional constraints on how they set up fences:
 	 *
-	 * - Dynamic importers must obey the exclusive fence and wait for it to
+	 * - Dynamic importers must obey the write fences and wait for them to
 	 *   signal before allowing access to the buffer's underlying storage
 	 *   through the device.
 	 *
diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
index 92cd8023980f..98dc5234b487 100644
--- a/include/linux/dma-resv.h
+++ b/include/linux/dma-resv.h
@@ -195,6 +195,9 @@ struct dma_resv_iter {
 	/** @fence: the currently handled fence */
 	struct dma_fence *fence;
 
+	/** @fence_usage: the usage of the current fence */
+	enum dma_resv_usage fence_usage;
+
 	/** @seq: sequence number to check for modifications */
 	unsigned int seq;
 
@@ -244,14 +247,15 @@ static inline void dma_resv_iter_end(struct dma_resv_iter *cursor)
 }
 
 /**
- * dma_resv_iter_is_exclusive - test if the current fence is the exclusive one
+ * dma_resv_iter_usage - Return the usage of the current fence
  * @cursor: the cursor of the current position
  *
- * Returns true if the currently returned fence is the exclusive one.
+ * Returns the usage of the currently processed fence.
  */
-static inline bool dma_resv_iter_is_exclusive(struct dma_resv_iter *cursor)
+static inline enum dma_resv_usage
+dma_resv_iter_usage(struct dma_resv_iter *cursor)
 {
-	return cursor->index == 0;
+	return cursor->fence_usage;
 }
 
 /**
@@ -306,9 +310,9 @@ static inline bool dma_resv_iter_is_restarted(struct dma_resv_iter *cursor)
 #define dma_resv_assert_held(obj) lockdep_assert_held(&(obj)->lock.base)
 
 #ifdef CONFIG_DEBUG_MUTEXES
-void dma_resv_reset_shared_max(struct dma_resv *obj);
+void dma_resv_reset_max_fences(struct dma_resv *obj);
 #else
-static inline void dma_resv_reset_shared_max(struct dma_resv *obj) {}
+static inline void dma_resv_reset_max_fences(struct dma_resv *obj) {}
 #endif
 
 /**
@@ -454,17 +458,18 @@ static inline struct ww_acquire_ctx *dma_resv_locking_ctx(struct dma_resv *obj)
  */
 static inline void dma_resv_unlock(struct dma_resv *obj)
 {
-	dma_resv_reset_shared_max(obj);
+	dma_resv_reset_max_fences(obj);
 	ww_mutex_unlock(&obj->lock);
 }
 
 void dma_resv_init(struct dma_resv *obj);
 void dma_resv_fini(struct dma_resv *obj);
 int dma_resv_reserve_fences(struct dma_resv *obj, unsigned int num_fences);
-void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *fence);
+void dma_resv_add_fence(struct dma_resv *obj, struct dma_fence *fence,
+			enum dma_resv_usage usage);
 void dma_resv_replace_fences(struct dma_resv *obj, uint64_t context,
-			     struct dma_fence *fence);
-void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence);
+			     struct dma_fence *fence,
+			     enum dma_resv_usage usage);
 int dma_resv_get_fences(struct dma_resv *obj, enum dma_resv_usage usage,
 			unsigned int *num_fences, struct dma_fence ***fences);
 int dma_resv_get_singleton(struct dma_resv *obj, enum dma_resv_usage usage,
-- 
2.25.1

