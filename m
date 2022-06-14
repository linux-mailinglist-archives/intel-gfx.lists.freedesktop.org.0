Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF9654A379
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 03:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A7310FDC5;
	Tue, 14 Jun 2022 01:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B7810FD9B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 01:14:09 +0000 (UTC)
Received: from sobremesa.fritz.box (82-69-11-11.dsl.in-addr.zen.co.uk
 [82.69.11.11])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 7EA946601691;
 Tue, 14 Jun 2022 02:14:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655169247;
 bh=BaGB9VdXoG6PHxMLhbqawBvC/BMTOcsBEPUZPxAOl5k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YS+Thxdi1vJQHhyN5RFm6tg4ANMUqDtilQtPb5rqLavmbn2lDf6JaRJgc3/he9CcM
 5PnfmIzcvTcLTbNYjtfO6DsHXH+gzt3MI1GJAleNgOUBLi5lLiHNAbMJ+eU/BEb6g0
 bcMadrADWqT3cbqF0LIQvrXOiaCQzF6jd/C9wH6zFNHyIERCvXqmgwYLvaJ9kuIFZ6
 AurfNZelnNsXupnL0re2iTFn6/XiXsKYQvKlOXW7jPJE4EtToibyvrhjhItfSWF9Vd
 lYJV8cBUr09cO3xBNFsYSktMCWT0nS4sqAaNz7JeQjU6Hdae2ycy0VjrgII+ezxUvd
 LgYRj/SJBLmqA==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 02:13:48 +0100
Message-Id: <20220614011350.122168-2-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220614011350.122168-1-adrian.larumbe@collabora.com>
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/ttm: dont trample cache_level
 overrides during ttm move
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Various places within the driver override the default chosen cache_level.
Before ttm, these overrides were permanent until explicitly changed again or
for the lifetime of the buffer.

TTM movement code came along and decided that it could make that
decision at that time, which is usually well after object creation, so overrode
the cache_level decision and reverted it back to its default decision.

Add logic to indicate whether the caching mode has been set by anything
other than the move logic. If so, assume that the code that overrode the
defaults knows best and keep it.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c       | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c          | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c     | 9 ++++++---
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 06b1b188ce5a..519887769c08 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -125,6 +125,7 @@ void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	obj->cache_level = cache_level;
+	obj->ttm.cache_level_override = true;
 
 	if (cache_level != I915_CACHE_NONE)
 		obj->cache_coherent = (I915_BO_CACHE_COHERENT_FOR_READ |
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 2c88bdb8ff7c..6632ed52e919 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -605,6 +605,7 @@ struct drm_i915_gem_object {
 		struct i915_gem_object_page_iter get_io_page;
 		struct drm_i915_gem_object *backup;
 		bool created:1;
+		bool cache_level_override:1;
 	} ttm;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 4c25d9b2f138..27d59639177f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1241,6 +1241,7 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	i915_gem_object_init_memory_region(obj, mem);
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_adjust_gem_after_move(obj);
+	obj->ttm.cache_level_override = false;
 	i915_gem_object_unlock(obj);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index a10716f4e717..4c1de0b4a10f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -123,9 +123,12 @@ void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
 	obj->mem_flags |= i915_ttm_cpu_maps_iomem(bo->resource) ? I915_BO_FLAG_IOMEM :
 		I915_BO_FLAG_STRUCT_PAGE;
 
-	cache_level = i915_ttm_cache_level(to_i915(bo->base.dev), bo->resource,
-					   bo->ttm);
-	i915_gem_object_set_cache_coherency(obj, cache_level);
+	if (!obj->ttm.cache_level_override) {
+		cache_level = i915_ttm_cache_level(to_i915(bo->base.dev),
+						   bo->resource, bo->ttm);
+		i915_gem_object_set_cache_coherency(obj, cache_level);
+		obj->ttm.cache_level_override = false;
+	}
 }
 
 /**
-- 
2.36.1

