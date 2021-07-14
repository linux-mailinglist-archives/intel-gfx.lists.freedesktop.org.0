Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C2F3C8BC7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 21:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC386E4EA;
	Wed, 14 Jul 2021 19:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89726E4DE
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 19:34:33 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id d12so2958721pfj.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 12:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bzZWcYtM21HOIBl+GxrRlBvCLa4yZsGsEb5IZwum4J0=;
 b=eENUbc6QE8zXRIFKUztlR95R1ag54m41arXkFxs4KnyqXhKKKYzKqyFRmw6OW6aLIg
 TOzmGeJtGNQEGZXU/JNWj0YIvxe2xnKnXLO+3ZROdL3PSpDIghWytHUsxUdLy6i8qciD
 zQ5C377g6yeO1/IbU9HEEyBvibe8CZSJB/uLt+Z93rsPuph6cK/5mGUXuOtflH2P9Lrw
 4V07f8vVQSVfXdibm55HwlOw1/BLmHtGkOOKXprrPIdh9twfDJ33lgfJSI9bW1vP2nhQ
 QakwXYoqUHb+Nzw61EzrHYNaVfKEbC4Y1g2Tb+6lfX2xuZJZ4p/oxDu+90bdnlFQATBx
 1aFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bzZWcYtM21HOIBl+GxrRlBvCLa4yZsGsEb5IZwum4J0=;
 b=ZgHY3OqiTEAqR+pgbiY2VWF3soc4CPxOlL6lfVWSFmCQE6ff7YH4y1kBufYj8NTIY5
 zXZGH/usUq9UPIP9ugffIXCg+UjwJLuV3554bEi8bbon/i+zeFDmtD2Gd8l1tV5IHnDx
 BqeGf5WoYj9cWWBA4socTc63nA/kl7K56ESrQJN1B+TzgH6OTq9C4pzzBb5DmU18gD2C
 X3o8jVV7ROjVxFKQ0Y3LUFcUBdPllqHGtSgxRVn8RCiaJjGtImQsiSH9wJiQHP+Py8DO
 j41tQPuOo3pJ/5J+JiTicFRSDB54Qt5quTg3n+OVv768YqoAVwkGUtdvxdozIVTQz4jl
 l9cg==
X-Gm-Message-State: AOAM533G8fPOWTNhsxB8a67YTofuxpqMl0Om5izQWWcAvh/I+r0nqgMY
 29HwZ/qjHBJ+vsE2DTEG0EFrHKsJSgpC8Q==
X-Google-Smtp-Source: ABdhPJwmEgXNZqomyN+CBNacj9ZpuBUgy9lGv4cBElLvsL5Ya5J2xlJMDRybg38mzuwFfnxHJ9T2+g==
X-Received: by 2002:a62:c712:0:b029:319:4e34:5cfb with SMTP id
 w18-20020a62c7120000b02903194e345cfbmr11734423pfg.2.1626291272270; 
 Wed, 14 Jul 2021 12:34:32 -0700 (PDT)
Received: from omlet.com ([134.134.139.71])
 by smtp.gmail.com with ESMTPSA id i1sm3679740pfo.37.2021.07.14.12.34.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Jul 2021 12:34:31 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 14 Jul 2021 14:34:17 -0500
Message-Id: <20210714193419.1459723-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210714193419.1459723-1-jason@jlekstrand.net>
References: <20210714193419.1459723-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Remove allow_alloc from
 i915_gem_object_get_sg*
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts the rest of 0edbb9ba1bfe ("drm/i915: Move cmd parser
pinning to execbuffer").  Now that the only user of i915_gem_object_get_sg
without allow_alloc has been removed, we can drop the parameter.  This
portion of the revert was broken into its own patch to aid review.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 10 +++++-----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 20 ++++----------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c       |  2 +-
 4 files changed, 11 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 8be4fadeee487..f3ede43282dc6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -342,22 +342,22 @@ struct scatterlist *
 __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 			 struct i915_gem_object_page_iter *iter,
 			 unsigned int n,
-			 unsigned int *offset, bool allow_alloc, bool dma);
+			 unsigned int *offset, bool dma);
 
 static inline struct scatterlist *
 i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 		       unsigned int n,
-		       unsigned int *offset, bool allow_alloc)
+		       unsigned int *offset)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset, allow_alloc, false);
+	return __i915_gem_object_get_sg(obj, &obj->mm.get_page, n, offset, false);
 }
 
 static inline struct scatterlist *
 i915_gem_object_get_sg_dma(struct drm_i915_gem_object *obj,
 			   unsigned int n,
-			   unsigned int *offset, bool allow_alloc)
+			   unsigned int *offset)
 {
-	return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset, allow_alloc, true);
+	return __i915_gem_object_get_sg(obj, &obj->mm.get_dma_page, n, offset, true);
 }
 
 struct page *
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 0c9d28423d459..8eb1c3a6fc9cd 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -494,7 +494,7 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 			 struct i915_gem_object_page_iter *iter,
 			 unsigned int n,
 			 unsigned int *offset,
-			 bool allow_alloc, bool dma)
+			 bool dma)
 {
 	struct scatterlist *sg;
 	unsigned int idx, count;
@@ -516,9 +516,6 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 	if (n < READ_ONCE(iter->sg_idx))
 		goto lookup;
 
-	if (!allow_alloc)
-		goto manual_lookup;
-
 	mutex_lock(&iter->lock);
 
 	/* We prefer to reuse the last sg so that repeated lookup of this
@@ -568,16 +565,7 @@ __i915_gem_object_get_sg(struct drm_i915_gem_object *obj,
 	if (unlikely(n < idx)) /* insertion completed by another thread */
 		goto lookup;
 
-	goto manual_walk;
-
-manual_lookup:
-	idx = 0;
-	sg = obj->mm.pages->sgl;
-	count = __sg_page_count(sg);
-
-manual_walk:
-	/*
-	 * In case we failed to insert the entry into the radixtree, we need
+	/* In case we failed to insert the entry into the radixtree, we need
 	 * to look beyond the current sg.
 	 */
 	while (idx + count <= n) {
@@ -624,7 +612,7 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 
 	GEM_BUG_ON(!i915_gem_object_has_struct_page(obj));
 
-	sg = i915_gem_object_get_sg(obj, n, &offset, true);
+	sg = i915_gem_object_get_sg(obj, n, &offset);
 	return nth_page(sg_page(sg), offset);
 }
 
@@ -650,7 +638,7 @@ i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 	struct scatterlist *sg;
 	unsigned int offset;
 
-	sg = i915_gem_object_get_sg_dma(obj, n, &offset, true);
+	sg = i915_gem_object_get_sg_dma(obj, n, &offset);
 
 	if (len)
 		*len = sg_dma_len(sg) - (offset << PAGE_SHIFT);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 6589411396d3f..f253b11e9e367 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -589,7 +589,7 @@ static unsigned long i915_ttm_io_mem_pfn(struct ttm_buffer_object *bo,
 
 	GEM_WARN_ON(bo->ttm);
 
-	sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true, true);
+	sg = __i915_gem_object_get_sg(obj, &obj->ttm.get_io_page, page_offset, &ofs, true);
 
 	return ((base + sg_dma_address(sg)) >> PAGE_SHIFT) + ofs;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 20e46b8433248..9d445ad9a3422 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -1494,7 +1494,7 @@ intel_partial_pages(const struct i915_ggtt_view *view,
 	if (ret)
 		goto err_sg_alloc;
 
-	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset, true);
+	iter = i915_gem_object_get_sg_dma(obj, view->partial.offset, &offset);
 	GEM_BUG_ON(!iter);
 
 	sg = st->sgl;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
