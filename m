Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6C81AD9E9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 11:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFCE6E3E1;
	Fri, 17 Apr 2020 09:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B54D6E3E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 09:30:49 +0000 (UTC)
IronPort-SDR: qDdiOQq9r1xD1Ac+smZATgDKj6TYVa9TJIB3+DYFMLnWDV/EQQPDtbuXGUEMdBdOn1sIDqumkL
 9GZBnAY2H/TQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 02:30:48 -0700
IronPort-SDR: SOV4g73JRhB5FQvNHK1c+pozMpuTDnQ5WT4qPsf6f8CxtCXW3WEQtC3KBP10gvysUA96Tfz8n8
 kZ+ZB+Z4rNTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="454671790"
Received: from yklein1-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.249.90.245])
 by fmsmga005.fm.intel.com with ESMTP; 17 Apr 2020 02:30:46 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 10:30:46 +0100
Message-Id: <20200417093046.102979-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pages: some more unsigned long
 conversions
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

unsigned long is always preferred when indexing a page, especially when
the caller expects it.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h       |  6 +++---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c        | 11 ++++++-----
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 2faa481cc18f..49f88a3409b7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -252,15 +252,15 @@ int i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 
 struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
-		       unsigned int n, unsigned int *offset);
+		       unsigned long n, unsigned int *offset);
 
 struct page *
 i915_gem_object_get_page(struct drm_i915_gem_object *obj,
-			 unsigned int n);
+			 unsigned long n);
 
 struct page *
 i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n);
+			       unsigned long n);
 
 dma_addr_t
 i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 54ee658bb168..0399940fff94 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -236,7 +236,7 @@ struct drm_i915_gem_object {
 
 		struct i915_gem_object_page_iter {
 			struct scatterlist *sg_pos;
-			unsigned int sg_idx; /* in pages, but 32bit eek! */
+			unsigned long sg_idx; /* in pages */
 
 			struct radix_tree_root radix;
 			struct mutex lock; /* protects this cache */
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 5d855fcd5c0f..cb215a0d7efb 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -409,12 +409,13 @@ void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
 
 struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
-		       unsigned int n,
+		       unsigned long n,
 		       unsigned int *offset)
 {
 	struct i915_gem_object_page_iter *iter = &obj->mm.get_page;
 	struct scatterlist *sg;
-	unsigned int idx, count;
+	unsigned long idx;
+	unsigned int count;
 
 	might_sleep();
 	GEM_BUG_ON(n >= obj->base.size >> PAGE_SHIFT);
@@ -445,7 +446,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 
 	while (idx + count <= n) {
 		void *entry;
-		unsigned long i;
+		unsigned int i;
 		int ret;
 
 		/* If we cannot allocate and insert this entry, or the
@@ -521,7 +522,7 @@ i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 }
 
 struct page *
-i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
+i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned long n)
 {
 	struct scatterlist *sg;
 	unsigned int offset;
@@ -535,7 +536,7 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 /* Like i915_gem_object_get_page(), but mark the returned page dirty */
 struct page *
 i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n)
+			       unsigned long n)
 {
 	struct page *page;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
