Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 882AC337458
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D88C6ECBB;
	Thu, 11 Mar 2021 13:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD336ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:42:47 +0100
Message-Id: <20210311134249.588632-68-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 67/69] drm/i915: Add ww context to
 prepare_(read/write)
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

This will allow us to explicitly pass the ww to pin_pages, when it starts taking it.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c              | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c          | 7 ++++---
 drivers/gpu/drm/i915/gem/i915_gem_object.h              | 2 ++
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c         | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c | 4 ++--
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c   | 4 ++--
 drivers/gpu/drm/i915/i915_gem.c                         | 4 ++--
 7 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index e3537922183b..a5b3a21faf9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -534,6 +534,7 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void *data,
  * flush the object from the CPU cache.
  */
 int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
+				 struct i915_gem_ww_ctx *ww,
 				 unsigned int *needs_clflush)
 {
 	int ret;
@@ -578,6 +579,7 @@ int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
 }
 
 int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww,
 				  unsigned int *needs_clflush)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index df4f124dc61f..74667be619b1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1147,9 +1147,10 @@ static void reloc_cache_reset(struct reloc_cache *cache, struct i915_execbuffer
 }
 
 static void *reloc_kmap(struct drm_i915_gem_object *obj,
-			struct reloc_cache *cache,
+			struct i915_execbuffer *eb,
 			unsigned long pageno)
 {
+	struct reloc_cache *cache = &eb->reloc_cache;
 	void *vaddr;
 	struct page *page;
 
@@ -1159,7 +1160,7 @@ static void *reloc_kmap(struct drm_i915_gem_object *obj,
 		unsigned int flushes;
 		int err;
 
-		err = i915_gem_object_prepare_write(obj, &flushes);
+		err = i915_gem_object_prepare_write(obj, &eb->ww, &flushes);
 		if (err)
 			return ERR_PTR(err);
 
@@ -1259,7 +1260,7 @@ static void *reloc_vaddr(struct drm_i915_gem_object *obj,
 		if ((cache->vaddr & KMAP) == 0)
 			vaddr = reloc_iomap(obj, eb, page);
 		if (!vaddr)
-			vaddr = reloc_kmap(obj, cache, page);
+			vaddr = reloc_kmap(obj, eb, page);
 	}
 
 	return vaddr;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 7a252dc4237f..1a8ec4035112 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -480,8 +480,10 @@ static inline void i915_gem_object_unpin_map(struct drm_i915_gem_object *obj)
 void __i915_gem_object_release_map(struct drm_i915_gem_object *obj);
 
 int i915_gem_object_prepare_read(struct drm_i915_gem_object *obj,
+				 struct i915_gem_ww_ctx *ww,
 				 unsigned int *needs_clflush);
 int i915_gem_object_prepare_write(struct drm_i915_gem_object *obj,
+				  struct i915_gem_ww_ctx *ww,
 				  unsigned int *needs_clflush);
 #define CLFLUSH_BEFORE	BIT(0)
 #define CLFLUSH_AFTER	BIT(1)
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 80eeb59aae67..8b07bb77bb86 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -987,7 +987,7 @@ __cpu_check_shmem(struct drm_i915_gem_object *obj, u32 dword, u32 val)
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_prepare_read(obj, &needs_flush);
+	err = i915_gem_object_prepare_read(obj, NULL, &needs_flush);
 	if (err)
 		goto err_unlock;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
index 8f2e447bd503..8f5b1e44d534 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
@@ -29,7 +29,7 @@ static int cpu_set(struct context *ctx, unsigned long offset, u32 v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_prepare_write(ctx->obj, &needs_clflush);
+	err = i915_gem_object_prepare_write(ctx->obj, NULL, &needs_clflush);
 	if (err)
 		goto out;
 
@@ -62,7 +62,7 @@ static int cpu_get(struct context *ctx, unsigned long offset, u32 *v)
 	int err;
 
 	i915_gem_object_lock(ctx->obj, NULL);
-	err = i915_gem_object_prepare_read(ctx->obj, &needs_clflush);
+	err = i915_gem_object_prepare_read(ctx->obj, NULL, &needs_clflush);
 	if (err)
 		goto out;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 82d5d37e9b66..af5f29a8a7f2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -462,7 +462,7 @@ static int cpu_fill(struct drm_i915_gem_object *obj, u32 value)
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_prepare_write(obj, &need_flush);
+	err = i915_gem_object_prepare_write(obj, NULL, &need_flush);
 	if (err)
 		goto out;
 
@@ -492,7 +492,7 @@ static noinline int cpu_check(struct drm_i915_gem_object *obj,
 	int err;
 
 	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_prepare_read(obj, &needs_flush);
+	err = i915_gem_object_prepare_read(obj, NULL, &needs_flush);
 	if (err)
 		goto out_unlock;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 81c7f2b5a585..a935c05809d5 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -216,7 +216,7 @@ i915_gem_shmem_pread(struct drm_i915_gem_object *obj,
 	if (ret)
 		goto err_unlock;
 
-	ret = i915_gem_object_prepare_read(obj, &needs_clflush);
+	ret = i915_gem_object_prepare_read(obj, NULL, &needs_clflush);
 	if (ret)
 		goto err_unpin;
 
@@ -637,7 +637,7 @@ i915_gem_shmem_pwrite(struct drm_i915_gem_object *obj,
 	if (ret)
 		goto err_unlock;
 
-	ret = i915_gem_object_prepare_write(obj, &needs_clflush);
+	ret = i915_gem_object_prepare_write(obj, NULL, &needs_clflush);
 	if (ret)
 		goto err_unpin;
 
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
