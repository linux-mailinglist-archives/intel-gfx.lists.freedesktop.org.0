Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF140CCE8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 21:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A95E6E9E8;
	Wed, 15 Sep 2021 19:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE306E9E0;
 Wed, 15 Sep 2021 19:00:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286094778"
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="286094778"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:22 -0700
X-IronPort-AV: E=Sophos;i="5.85,296,1624345200"; d="scan'208";a="553460967"
Received: from rdignam-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.110])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 12:00:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 15 Sep 2021 19:59:46 +0100
Message-Id: <20210915185954.3114858-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210915185954.3114858-1-matthew.auld@intel.com>
References: <20210915185954.3114858-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 04/12] drm/ttm: s/FLAG_SG/FLAG_EXTERNAL/
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

It covers more than just ttm_bo_type_sg usage, like with say dma-buf,
since one other user is userptr in amdgpu, and in the future we might
have some more. Hence EXTERNAL is likely a more suitable name.

Suggested-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c | 10 +++++-----
 drivers/gpu/drm/nouveau/nouveau_bo.c    |  4 ++--
 drivers/gpu/drm/radeon/radeon_ttm.c     |  8 ++++----
 drivers/gpu/drm/ttm/ttm_bo.c            |  2 +-
 drivers/gpu/drm/ttm/ttm_bo_vm.c         |  2 +-
 drivers/gpu/drm/ttm/ttm_tt.c            | 10 +++++-----
 include/drm/ttm/ttm_tt.h                |  6 +++---
 7 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
index c5fa6e62f6ca..a6d606f91dfd 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
@@ -894,7 +894,7 @@ static int amdgpu_ttm_backend_bind(struct ttm_device *bdev,
 			DRM_ERROR("failed to pin userptr\n");
 			return r;
 		}
-	} else if (ttm->page_flags & TTM_PAGE_FLAG_SG) {
+	} else if (ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL) {
 		if (!ttm->sg) {
 			struct dma_buf_attachment *attach;
 			struct sg_table *sgt;
@@ -1147,7 +1147,7 @@ static int amdgpu_ttm_tt_populate(struct ttm_device *bdev,
 		return 0;
 	}
 
-	if (ttm->page_flags & TTM_PAGE_FLAG_SG)
+	if (ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)
 		return 0;
 
 	ret = ttm_pool_alloc(&adev->mman.bdev.pool, ttm, ctx);
@@ -1179,7 +1179,7 @@ static void amdgpu_ttm_tt_unpopulate(struct ttm_device *bdev,
 		return;
 	}
 
-	if (ttm->page_flags & TTM_PAGE_FLAG_SG)
+	if (ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)
 		return;
 
 	adev = amdgpu_ttm_adev(bdev);
@@ -1210,8 +1210,8 @@ int amdgpu_ttm_tt_set_userptr(struct ttm_buffer_object *bo,
 			return -ENOMEM;
 	}
 
-	/* Set TTM_PAGE_FLAG_SG before populate but after create. */
-	bo->ttm->page_flags |= TTM_PAGE_FLAG_SG;
+	/* Set TTM_PAGE_FLAG_EXTERNAL before populate but after create. */
+	bo->ttm->page_flags |= TTM_PAGE_FLAG_EXTERNAL;
 
 	gtt = (void *)bo->ttm;
 	gtt->userptr = addr;
diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
index 33dca2565cca..ba0fec252df7 100644
--- a/drivers/gpu/drm/nouveau/nouveau_bo.c
+++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
@@ -1249,7 +1249,7 @@ nouveau_ttm_tt_populate(struct ttm_device *bdev,
 	struct ttm_tt *ttm_dma = (void *)ttm;
 	struct nouveau_drm *drm;
 	struct device *dev;
-	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
+	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL);
 
 	if (ttm_tt_is_populated(ttm))
 		return 0;
@@ -1272,7 +1272,7 @@ nouveau_ttm_tt_unpopulate(struct ttm_device *bdev,
 {
 	struct nouveau_drm *drm;
 	struct device *dev;
-	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
+	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL);
 
 	if (slave)
 		return;
diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
index 7793249bc549..d891491b6da8 100644
--- a/drivers/gpu/drm/radeon/radeon_ttm.c
+++ b/drivers/gpu/drm/radeon/radeon_ttm.c
@@ -545,14 +545,14 @@ static int radeon_ttm_tt_populate(struct ttm_device *bdev,
 {
 	struct radeon_device *rdev = radeon_get_rdev(bdev);
 	struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(rdev, ttm);
-	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
+	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL);
 
 	if (gtt && gtt->userptr) {
 		ttm->sg = kzalloc(sizeof(struct sg_table), GFP_KERNEL);
 		if (!ttm->sg)
 			return -ENOMEM;
 
-		ttm->page_flags |= TTM_PAGE_FLAG_SG;
+		ttm->page_flags |= TTM_PAGE_FLAG_EXTERNAL;
 		return 0;
 	}
 
@@ -569,13 +569,13 @@ static void radeon_ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm
 {
 	struct radeon_device *rdev = radeon_get_rdev(bdev);
 	struct radeon_ttm_tt *gtt = radeon_ttm_tt_to_gtt(rdev, ttm);
-	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);
+	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL);
 
 	radeon_ttm_tt_unbind(bdev, ttm);
 
 	if (gtt && gtt->userptr) {
 		kfree(ttm->sg);
-		ttm->page_flags &= ~TTM_PAGE_FLAG_SG;
+		ttm->page_flags &= ~TTM_PAGE_FLAG_EXTERNAL;
 		return;
 	}
 
diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index 3b22c0013dbf..642dc7ce3081 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -1115,7 +1115,7 @@ int ttm_bo_swapout(struct ttm_buffer_object *bo, struct ttm_operation_ctx *ctx,
 		return -EBUSY;
 
 	if (!bo->ttm || !ttm_tt_is_populated(bo->ttm) ||
-	    bo->ttm->page_flags & TTM_PAGE_FLAG_SG ||
+	    bo->ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL ||
 	    bo->ttm->page_flags & TTM_PAGE_FLAG_SWAPPED ||
 	    !ttm_bo_get_unless_zero(bo)) {
 		if (locked)
diff --git a/drivers/gpu/drm/ttm/ttm_bo_vm.c b/drivers/gpu/drm/ttm/ttm_bo_vm.c
index 906ec8a1bf5a..708390588c7c 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_vm.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_vm.c
@@ -162,7 +162,7 @@ vm_fault_t ttm_bo_vm_reserve(struct ttm_buffer_object *bo,
 	 * Refuse to fault imported pages. This should be handled
 	 * (if at all) by redirecting mmap to the exporter.
 	 */
-	if (bo->ttm && (bo->ttm->page_flags & TTM_PAGE_FLAG_SG)) {
+	if (bo->ttm && (bo->ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)) {
 		dma_resv_unlock(bo->base.resv);
 		return VM_FAULT_SIGBUS;
 	}
diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
index 980ecb079b2c..9c586b613737 100644
--- a/drivers/gpu/drm/ttm/ttm_tt.c
+++ b/drivers/gpu/drm/ttm/ttm_tt.c
@@ -73,7 +73,7 @@ int ttm_tt_create(struct ttm_buffer_object *bo, bool zero_alloc)
 	case ttm_bo_type_kernel:
 		break;
 	case ttm_bo_type_sg:
-		page_flags |= TTM_PAGE_FLAG_SG;
+		page_flags |= TTM_PAGE_FLAG_EXTERNAL;
 		break;
 	default:
 		pr_err("Illegal buffer object type\n");
@@ -178,7 +178,7 @@ int ttm_sg_tt_init(struct ttm_tt *ttm, struct ttm_buffer_object *bo,
 
 	ttm_tt_init_fields(ttm, bo, page_flags, caching);
 
-	if (page_flags & TTM_PAGE_FLAG_SG)
+	if (page_flags & TTM_PAGE_FLAG_EXTERNAL)
 		ret = ttm_sg_tt_alloc_page_directory(ttm);
 	else
 		ret = ttm_dma_tt_alloc_page_directory(ttm);
@@ -300,7 +300,7 @@ int ttm_tt_populate(struct ttm_device *bdev,
 	if (ttm_tt_is_populated(ttm))
 		return 0;
 
-	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
+	if (!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)) {
 		atomic_long_add(ttm->num_pages, &ttm_pages_allocated);
 		if (bdev->pool.use_dma32)
 			atomic_long_add(ttm->num_pages,
@@ -337,7 +337,7 @@ int ttm_tt_populate(struct ttm_device *bdev,
 	return 0;
 
 error:
-	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
+	if (!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)) {
 		atomic_long_sub(ttm->num_pages, &ttm_pages_allocated);
 		if (bdev->pool.use_dma32)
 			atomic_long_sub(ttm->num_pages,
@@ -357,7 +357,7 @@ void ttm_tt_unpopulate(struct ttm_device *bdev, struct ttm_tt *ttm)
 	else
 		ttm_pool_free(&bdev->pool, ttm);
 
-	if (!(ttm->page_flags & TTM_PAGE_FLAG_SG)) {
+	if (!(ttm->page_flags & TTM_PAGE_FLAG_EXTERNAL)) {
 		atomic_long_sub(ttm->num_pages, &ttm_pages_allocated);
 		if (bdev->pool.use_dma32)
 			atomic_long_sub(ttm->num_pages,
diff --git a/include/drm/ttm/ttm_tt.h b/include/drm/ttm/ttm_tt.h
index 842ce756213c..a6c284c21e72 100644
--- a/include/drm/ttm/ttm_tt.h
+++ b/include/drm/ttm/ttm_tt.h
@@ -38,9 +38,9 @@ struct ttm_resource;
 struct ttm_buffer_object;
 struct ttm_operation_ctx;
 
-#define TTM_PAGE_FLAG_SWAPPED         (1 << 4)
-#define TTM_PAGE_FLAG_ZERO_ALLOC      (1 << 6)
-#define TTM_PAGE_FLAG_SG              (1 << 8)
+#define TTM_PAGE_FLAG_SWAPPED		(1 << 4)
+#define TTM_PAGE_FLAG_ZERO_ALLOC	(1 << 6)
+#define TTM_PAGE_FLAG_EXTERNAL		(1 << 8)
 
 #define TTM_PAGE_FLAG_PRIV_POPULATED  (1 << 31)
 
-- 
2.26.3

