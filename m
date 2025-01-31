Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8609CA23F29
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 15:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27EC310E1EC;
	Fri, 31 Jan 2025 14:31:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mrtDrkCp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B7E10EACD
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 14:30:57 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-4362bae4d7dso15184835e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2025 06:30:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738333855; x=1738938655; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
 :reply-to; bh=qYEU99YjaIifrQifFG08E+amsttIxcl2+iMYS7g1xuc=;
 b=mrtDrkCpgz8dqOKoxL2shvHXTygEd6DAjd2yOe0T1DejoiJl1XP5UUmbQpf8BOCpS/
 Ki0j82B5hzklK4q+FUSFBpTc6kbTnOpHvbK0+v1ifXSUaBL0xw0OwVEpJlf9ehO1Lvph
 H/JWrrKfREJRao9aF8WclgdiluL7AthCWvQHvBL0hws6xk8JR2mSmGbH69F6EEYNC6Bs
 2PTfeusNl/bG0iEKOwEGqcRhB5wfPkefqoIeV9FmeJMvxPLXh+DWgxtwx0h1t/p2eiFr
 pXDUFWBpih9c0cJwAy6KaRSoqOrpNuagG917mLOdke5zsw0eMMy5ng6v62udBm2l9n3r
 QI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738333855; x=1738938655;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qYEU99YjaIifrQifFG08E+amsttIxcl2+iMYS7g1xuc=;
 b=Z5zto/+Lt0U7H9HlywKuPQoOacGZMb3/J5GORzwHOXypes3L+1q3GUDqjLNYZTRD2+
 2FEeGOSIP9R+1B3otHHMH5tmZbCwngvTFXOO2320FEwxbTkdedNGVHowSRyCMMTYd/IX
 VVNUUn5eCdYKyNtnxsdBNzVaDiy0EcHWWOs+Vdkpg2R50Q1Z3h27mmRK3sggVBNJJflQ
 r1QaKxqSgrVMTzb6H4NTUnPpsXW/1Y43OaSq1hjAHFLaQ37ay2YKc90iymjoAn0n1Wjh
 sfw0aFKd5zdujW+6LPjox6IEL2Z21+97rbNsHZ7zGKz6aq78GgTJscY6X3wb4SDtYUht
 WEwQ==
X-Gm-Message-State: AOJu0YxokliIn131mPYaBLve8g/rJjPQEb+6VesB1Y+X3UXXJguiZDvn
 ClTMst9ZahHz+0jJuYfJkpnXv/PXrFh9etORfYc8sbAkOHVI4ZnBn/Mia1VqoNk=
X-Gm-Gg: ASbGncuhlr44q24UECSHxB8VJvK6vc+gpz4fAv1adDdwlmGbCFhpLLGa9y8NDRs95rR
 9Obr2l38oK1s7Mt9f8nx6458IgA/xzYdIRQzTACO3GIXcZQvKJNOzH8690GSEmNaYE5PfVFFKW1
 YBPgi3cMxTCoQT6oqSnyPATaatgkoQXIXb13dBOenCEb3aZGTXJ0aY0QRi1et8FD3UjSquGm6fc
 sggFDVDySZnDosU0nx+64fCX7CHL9g/7WvKb2slUDHYjwCx3RQMTtnd/Na7Co0USHw6abNEN2pd
 waQLQ5VuUSEzsZCBhyOdqC7xVb66
X-Google-Smtp-Source: AGHT+IEb50p+YxQIdYWDDGsIS+xOJ4pr3HNU8af3p5QhvQ4ncRvf6OKUrz4jk45IRkUfM5ODD3tBJQ==
X-Received: by 2002:a5d:6987:0:b0:385:f7d2:7e9b with SMTP id
 ffacd0b85a97d-38c51b5dc56mr6937141f8f.30.1738333855387; 
 Fri, 31 Jan 2025 06:30:55 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:14ea:9e00:b99f:ba95:78e6:9a32])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c5c102e19sm4891382f8f.36.2025.01.31.06.30.54
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2025 06:30:55 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/amdgpu: remove all KFD fences from the BO on release
Date: Fri, 31 Jan 2025 15:30:52 +0100
Message-Id: <20250131143052.1728-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250131143052.1728-1-christian.koenig@amd.com>
References: <20250131143052.1728-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Remove all KFD BOs from the private dma_resv object.

This prevents the KFD from being evitec unecessarily when an exported BO
is released.

Signed-off-by: Christian König <christian.koenig@amd.com>
Reviewed-and-Tested-by: James Zhu <James.Zhu@amd.com>
Reviewed-by: Felix Kuehling <felix.kuehling@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h    |  5 +-
 .../gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c  | 52 ++++++++-----------
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c    | 38 ++++++++------
 3 files changed, 47 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
index 4b80ad860639..62917f76da33 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
@@ -192,7 +192,7 @@ int kfd_debugfs_kfd_mem_limits(struct seq_file *m, void *data);
 #if IS_ENABLED(CONFIG_HSA_AMD)
 bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm);
 struct amdgpu_amdkfd_fence *to_amdgpu_amdkfd_fence(struct dma_fence *f);
-int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo);
+void amdgpu_amdkfd_remove_all_eviction_fences(struct amdgpu_bo *bo);
 int amdgpu_amdkfd_evict_userptr(struct mmu_interval_notifier *mni,
 				unsigned long cur_seq, struct kgd_mem *mem);
 int amdgpu_amdkfd_bo_validate_and_fence(struct amdgpu_bo *bo,
@@ -212,9 +212,8 @@ struct amdgpu_amdkfd_fence *to_amdgpu_amdkfd_fence(struct dma_fence *f)
 }
 
 static inline
-int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo)
+void amdgpu_amdkfd_remove_all_eviction_fences(struct amdgpu_bo *bo)
 {
-	return 0;
 }
 
 static inline
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index f30548f4c3b3..609b27fe1cda 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -370,40 +370,32 @@ static int amdgpu_amdkfd_remove_eviction_fence(struct amdgpu_bo *bo,
 	return 0;
 }
 
-int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo)
+/**
+ * amdgpu_amdkfd_remove_all_eviction_fences - Remove all eviction fences
+ * @bo: the BO where to remove the evictions fences from.
+ *
+ * This functions should only be used on release when all references to the BO
+ * are already dropped. We remove the eviction fence from the private copy of
+ * the dma_resv object here since that is what is used during release to
+ * determine of the BO is idle or not.
+ */
+void amdgpu_amdkfd_remove_all_eviction_fences(struct amdgpu_bo *bo)
 {
-	struct amdgpu_bo *root = bo;
-	struct amdgpu_vm_bo_base *vm_bo;
-	struct amdgpu_vm *vm;
-	struct amdkfd_process_info *info;
-	struct amdgpu_amdkfd_fence *ef;
-	int ret;
-
-	/* we can always get vm_bo from root PD bo.*/
-	while (root->parent)
-		root = root->parent;
+	struct dma_resv *resv = &bo->tbo.base._resv;
+	struct dma_fence *fence, *stub;
+	struct dma_resv_iter cursor;
 
-	vm_bo = root->vm_bo;
-	if (!vm_bo)
-		return 0;
+	dma_resv_assert_held(resv);
 
-	vm = vm_bo->vm;
-	if (!vm)
-		return 0;
-
-	info = vm->process_info;
-	if (!info || !info->eviction_fence)
-		return 0;
-
-	ef = container_of(dma_fence_get(&info->eviction_fence->base),
-			struct amdgpu_amdkfd_fence, base);
-
-	BUG_ON(!dma_resv_trylock(bo->tbo.base.resv));
-	ret = amdgpu_amdkfd_remove_eviction_fence(bo, ef);
-	dma_resv_unlock(bo->tbo.base.resv);
+	stub = dma_fence_get_stub();
+	dma_resv_for_each_fence(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP, fence) {
+		if (!to_amdgpu_amdkfd_fence(fence))
+			continue;
 
-	dma_fence_put(&ef->base);
-	return ret;
+		dma_resv_replace_fences(resv, fence->context, stub,
+					DMA_RESV_USAGE_BOOKKEEP);
+	}
+	dma_fence_put(stub);
 }
 
 static int amdgpu_amdkfd_bo_validate(struct amdgpu_bo *bo, uint32_t domain,
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
index fc94b8b9b86d..d12be7a1eb6e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -1194,28 +1194,36 @@ void amdgpu_bo_release_notify(struct ttm_buffer_object *bo)
 	if (abo->kfd_bo)
 		amdgpu_amdkfd_release_notify(abo);
 
-	/* We only remove the fence if the resv has individualized. */
-	WARN_ON_ONCE(bo->type == ttm_bo_type_kernel
-			&& bo->base.resv != &bo->base._resv);
-	if (bo->base.resv == &bo->base._resv)
-		amdgpu_amdkfd_remove_fence_on_pt_pd_bos(abo);
+	/*
+	 * We lock the private dma_resv object here and since the BO is about to
+	 * be released nobody else should have a pointer to it.
+	 * So when this locking here fails something is wrong with the reference
+	 * counting.
+	 */
+	if (WARN_ON_ONCE(!dma_resv_trylock(&bo->base._resv)))
+		return;
+
+	amdgpu_amdkfd_remove_all_eviction_fences(abo);
 
 	if (!bo->resource || bo->resource->mem_type != TTM_PL_VRAM ||
 	    !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE) ||
 	    adev->in_suspend || drm_dev_is_unplugged(adev_to_drm(adev)))
-		return;
+		goto out;
 
-	if (WARN_ON_ONCE(!dma_resv_trylock(bo->base.resv)))
-		return;
+	r = dma_resv_reserve_fences(&bo->base._resv, 1);
+	if (r)
+		goto out;
 
-	r = amdgpu_fill_buffer(abo, 0, bo->base.resv, &fence, true);
-	if (!WARN_ON(r)) {
-		amdgpu_vram_mgr_set_cleared(bo->resource);
-		amdgpu_bo_fence(abo, fence, false);
-		dma_fence_put(fence);
-	}
+	r = amdgpu_fill_buffer(abo, 0, &bo->base._resv, &fence, true);
+	if (WARN_ON(r))
+		goto out;
+
+	amdgpu_vram_mgr_set_cleared(bo->resource);
+	dma_resv_add_fence(&bo->base._resv, fence, DMA_RESV_USAGE_KERNEL);
+	dma_fence_put(fence);
 
-	dma_resv_unlock(bo->base.resv);
+out:
+	dma_resv_unlock(&bo->base._resv);
 }
 
 /**
-- 
2.34.1

