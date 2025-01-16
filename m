Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54F6A13E41
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 16:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230C910E1F4;
	Thu, 16 Jan 2025 15:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="grGTtLNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com
 [IPv6:2607:f8b0:4864:20::74a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8329810E1F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 15:53:43 +0000 (UTC)
Received: by mail-qk1-x74a.google.com with SMTP id
 af79cd13be357-7b6e9fb0436so296702785a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 07:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1737042822; x=1737647622;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=+NgxzohitdM1qWFyHYVoLcjjA8gFpN7ubVQANdColG0=;
 b=grGTtLNFa1QgZBzEITJghcbxJTy3F1/L6whzpqf0HjOgqkBf4pYt+VLCU5Zb1xcmWf
 3JVFhE5hyg2C6SvoRccWWLLTxkx5mmcPHX7zEYsUQao6Rz4PkoQ2scpDcCAqOqd8eIJ4
 3/5jSOygr0pUiYSLCpkNl/5GKCWTHKsKzevmAftZCPjUaXgyo/SHT5J2ijX7N/XIJmlV
 zaWnOVr/krHXgAzaTY8NTxT15yj8I7nCkXWws9P9v/8nok9sxCiu+MMRVyKJlzTne9qg
 NpH4sN5n7b6Es5cXqBUAnDaGRxqR7iXsQH3DrBabw/al3f8p8sOo3yp87ZDXsXnl9gYm
 dDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737042822; x=1737647622;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+NgxzohitdM1qWFyHYVoLcjjA8gFpN7ubVQANdColG0=;
 b=osna0RUpIwXfl4Y1rkhXRJeecu/7LiBMv1f4zTziVBWkv7U2ce90Bzei6CIujVMUVE
 TPUHzyTGfZgQo9/tey+55a3gW1okf3RXrYn9XN8a7VMjHi+PBj/BatXy2eU5mD06ZzyD
 8fWfb2p31vN0qDwGiFbDiShKZnQ1wDlhekCcH47EmaBCGBpEvL9G09dlw3cj9Tm9PgYi
 svDTa9kY7aoFcjLygR4jU7l7PaFQKz2CWI2mmy6kQJc+/UbCN+FdMy0+FKRXBeC2bIcr
 wSy540bGarI094sS9LRrIqmfyb3yig4mtheVSYIGDULkhV5W7cY+cQQMgv245X0lR3vN
 rctw==
X-Gm-Message-State: AOJu0Yw6od+cVSvvtkdVDEZ1FljIFs9Zjffi5GvfIHbZqV2ANGr2TyHA
 pqlXlXUrk/BAbRDVjNjAJ3JOObfuSiIk0x2/WBQUeFUFJMVD/rGiO7SySIaSAe2UHT01MWN2TxZ
 goFqDbG3+b6VPKB6hfxjz4jT13JH7g5CT3ohbrslm2j7xVWGYxa+VxNmybsowpipjB9yn42v938
 jE9cg7G/jyu2YlhtdsTR7tz/0hQMVdlL5HS6XhD7IKeid3+Z3Mzg==
X-Google-Smtp-Source: AGHT+IGJOnZhDdWOuqF4V2FKZrAxZRVdn4bKnAiEpdg+yjoPSSoWSLu+uDS4cdr2EjL67ZS7jo3Ffc+mWC1W
X-Received: from qkhn21.prod.google.com ([2002:a05:620a:2235:b0:7b6:cc15:8bb0])
 (user=bgeffon job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:5e15:b0:7be:3cd7:dd95
 with SMTP id af79cd13be357-7be3cd7de65mr1979422985a.12.1737042822520; Thu, 16
 Jan 2025 07:53:42 -0800 (PST)
Date: Thu, 16 Jan 2025 10:53:40 -0500
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.0.rc2.279.g1de40edade-goog
Message-ID: <20250116155340.533180-1-bgeffon@google.com>
Subject: [PATCH v2] drm/i915: Fix page cleanup on DMA remap failure
From: Brian Geffon <bgeffon@google.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com, jani.saarinen@intel.com, tomasz.mistat@intel.com,
 vidya.srinivas@intel.com, ville.syrjala@linux.intel.com, 
 jani.nikula@linux.intel.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Brian Geffon <bgeffon@google.com>, 
 stable@vger.kernel.org, Tomasz Figa <tfiga@google.com>
Content-Type: text/plain; charset="UTF-8"
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

When converting to folios the cleanup path of shmem_get_pages() was
missed. When a DMA remap fails and the max segment size is greater than
PAGE_SIZE it will attempt to retry the remap with a PAGE_SIZEd segment
size. The cleanup code isn't properly using the folio apis and as a
result isn't handling compound pages correctly.

v1 -> v2:
  (Ville) Fixed locations where we were not clearing mapping unevictable.

Cc: stable@vger.kernel.org
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13487
Link: https://lore.kernel.org/lkml/20250116135636.410164-1-bgeffon@google.com/
Fixes: 0b62af28f249 ("i915: convert shmem_sg_free_table() to use a folio_batch")
Signed-off-by: Brian Geffon <bgeffon@google.com>
Suggested-by: Tomasz Figa <tfiga@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  3 +--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 23 +++++++++-------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c    |  7 ++++---
 3 files changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3dc61cbd2e11..0f122a12d4a5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -843,8 +843,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			 size_t size, struct intel_memory_region *mr,
 			 struct address_space *mapping,
 			 unsigned int max_segment);
-void shmem_sg_free_table(struct sg_table *st, struct address_space *mapping,
-			 bool dirty, bool backup);
+void shmem_sg_free_table(struct sg_table *st, bool dirty, bool backup);
 void __shmem_writeback(size_t size, struct address_space *mapping);
 
 #ifdef CONFIG_MMU_NOTIFIER
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index fe69f2c8527d..b320d9dfd6d3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -29,16 +29,13 @@ static void check_release_folio_batch(struct folio_batch *fbatch)
 	cond_resched();
 }
 
-void shmem_sg_free_table(struct sg_table *st, struct address_space *mapping,
-			 bool dirty, bool backup)
+void shmem_sg_free_table(struct sg_table *st, bool dirty, bool backup)
 {
 	struct sgt_iter sgt_iter;
 	struct folio_batch fbatch;
 	struct folio *last = NULL;
 	struct page *page;
 
-	mapping_clear_unevictable(mapping);
-
 	folio_batch_init(&fbatch);
 	for_each_sgt_page(page, sgt_iter, st) {
 		struct folio *folio = page_folio(page);
@@ -180,10 +177,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	return 0;
 err_sg:
 	sg_mark_end(sg);
+	mapping_clear_unevictable(mapping);
 	if (sg != st->sgl) {
-		shmem_sg_free_table(st, mapping, false, false);
+		shmem_sg_free_table(st, false, false);
 	} else {
-		mapping_clear_unevictable(mapping);
 		sg_free_table(st);
 	}
 
@@ -209,8 +206,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	struct address_space *mapping = obj->base.filp->f_mapping;
 	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	struct sg_table *st;
-	struct sgt_iter sgt_iter;
-	struct page *page;
 	int ret;
 
 	/*
@@ -239,9 +234,8 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 		 * for PAGE_SIZE chunks instead may be helpful.
 		 */
 		if (max_segment > PAGE_SIZE) {
-			for_each_sgt_page(page, sgt_iter, st)
-				put_page(page);
-			sg_free_table(st);
+			/* Leave the mapping unevictable while we retry */
+			shmem_sg_free_table(st, false, false);
 			kfree(st);
 
 			max_segment = PAGE_SIZE;
@@ -265,7 +259,8 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	return 0;
 
 err_pages:
-	shmem_sg_free_table(st, mapping, false, false);
+	mapping_clear_unevictable(mapping);
+	shmem_sg_free_table(st, false, false);
 	/*
 	 * shmemfs first checks if there is enough memory to allocate the page
 	 * and reports ENOSPC should there be insufficient, along with the usual
@@ -402,8 +397,8 @@ void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_
 	if (i915_gem_object_needs_bit17_swizzle(obj))
 		i915_gem_object_save_bit_17_swizzle(obj, pages);
 
-	shmem_sg_free_table(pages, file_inode(obj->base.filp)->i_mapping,
-			    obj->mm.dirty, obj->mm.madv == I915_MADV_WILLNEED);
+	mapping_clear_unevictable(file_inode(obj->base.filp)->i_mapping);
+	shmem_sg_free_table(pages, obj->mm.dirty, obj->mm.madv == I915_MADV_WILLNEED);
 	kfree(pages);
 	obj->mm.dirty = false;
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 10d8673641f7..37f51a04b838 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -232,7 +232,8 @@ static int i915_ttm_tt_shmem_populate(struct ttm_device *bdev,
 	return 0;
 
 err_free_st:
-	shmem_sg_free_table(st, filp->f_mapping, false, false);
+	mapping_clear_unevictable(filp->f_mapping);
+	shmem_sg_free_table(st, false, false);
 
 	return err;
 }
@@ -243,8 +244,8 @@ static void i915_ttm_tt_shmem_unpopulate(struct ttm_tt *ttm)
 	bool backup = ttm->page_flags & TTM_TT_FLAG_SWAPPED;
 	struct sg_table *st = &i915_tt->cached_rsgt.table;
 
-	shmem_sg_free_table(st, file_inode(i915_tt->filp)->i_mapping,
-			    backup, backup);
+	mapping_clear_unevictable(file_inode(i915_tt->filp)->i_mapping);
+	shmem_sg_free_table(st, backup, backup);
 }
 
 static void i915_ttm_tt_release(struct kref *ref)
-- 
2.48.0.rc2.279.g1de40edade-goog

