Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DECCB3E1331
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0BD6E9CF;
	Thu,  5 Aug 2021 10:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC45A6E9A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:24 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id qk33so8763106ejc.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jSzJFH8CtxTJYEXcCZZIbr2vCkG9eURdQPO2UTEKnBM=;
 b=ayI8hGndL92HshvSFXNFZ0Lc8C4Aysey6TTy9xUBOIGjEiQywtqJB6PF96tdkgDZ2l
 wibdOONFuc1ptidH5N9sZf+EOc+VO64/5FoMngFp+wDvf6rNgBZOE87s+ZA2LgYHKrot
 11rc7PxMuWEcdU0tdJjtMlYmDpYdWg750L3K8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jSzJFH8CtxTJYEXcCZZIbr2vCkG9eURdQPO2UTEKnBM=;
 b=QJ/And3JCoSHoHeWvB8nxmFC/gPTlW9eTvSnZp1VpDQrO6QRvRQEuZ4SO3Orzou3ek
 GlY5ueSu2GyEmEn7WFQac3yy+meCsYArqumoQMLeNSWDBxIxw9RSFu6cdDLDmuLe+ogm
 YZLuxccfRjRzqL5m4uquwqLxCQXVRC/uYrxgr8l5KSifwRvUvsMSdcGv2qXks43imehL
 BPNL2N9/JORLOOqlL+HGA3JltEm8ZiR6vODzhqS78sGSPDFd0rJn3BnTVWtGBhLxXvKX
 Z5F8eTp7jBEVYXdtfOG94OJ5XpxcrxuIlY/btcb5DfVucl7dAjVdR7YYtxVviRLvMnto
 llOQ==
X-Gm-Message-State: AOAM533xuaJ5n8Z8wDg3oTjtC29hAnUZ1WESJcHaM6hElZK/RWSRtEQ/
 MRMZKzJ4YE+VAumchCStiuCl4w==
X-Google-Smtp-Source: ABdhPJxpyljfbXPxATlcHpARHjEIH7oeB91EwoMvWsvYfgqp1K5k09Ko2eLFP/1UgvQ1s0WMr1+EkA==
X-Received: by 2002:a17:906:e089:: with SMTP id
 gh9mr4309138ejb.80.1628160443331; 
 Thu, 05 Aug 2021 03:47:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Thu,  5 Aug 2021 12:46:58 +0200
Message-Id: <20210805104705.862416-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 13/20] drm/gem: Delete gem array fencing
 helpers
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

Integrated into the scheduler now and all users converted over.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: "Christian König" <christian.koenig@amd.com>
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
---
 drivers/gpu/drm/drm_gem.c | 96 ---------------------------------------
 include/drm/drm_gem.h     |  5 --
 2 files changed, 101 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 09c820045859..37e2e2820f08 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -1272,99 +1272,3 @@ drm_gem_unlock_reservations(struct drm_gem_object **objs, int count,
 	ww_acquire_fini(acquire_ctx);
 }
 EXPORT_SYMBOL(drm_gem_unlock_reservations);
-
-/**
- * drm_gem_fence_array_add - Adds the fence to an array of fences to be
- * waited on, deduplicating fences from the same context.
- *
- * @fence_array: array of dma_fence * for the job to block on.
- * @fence: the dma_fence to add to the list of dependencies.
- *
- * This functions consumes the reference for @fence both on success and error
- * cases.
- *
- * Returns:
- * 0 on success, or an error on failing to expand the array.
- */
-int drm_gem_fence_array_add(struct xarray *fence_array,
-			    struct dma_fence *fence)
-{
-	struct dma_fence *entry;
-	unsigned long index;
-	u32 id = 0;
-	int ret;
-
-	if (!fence)
-		return 0;
-
-	/* Deduplicate if we already depend on a fence from the same context.
-	 * This lets the size of the array of deps scale with the number of
-	 * engines involved, rather than the number of BOs.
-	 */
-	xa_for_each(fence_array, index, entry) {
-		if (entry->context != fence->context)
-			continue;
-
-		if (dma_fence_is_later(fence, entry)) {
-			dma_fence_put(entry);
-			xa_store(fence_array, index, fence, GFP_KERNEL);
-		} else {
-			dma_fence_put(fence);
-		}
-		return 0;
-	}
-
-	ret = xa_alloc(fence_array, &id, fence, xa_limit_32b, GFP_KERNEL);
-	if (ret != 0)
-		dma_fence_put(fence);
-
-	return ret;
-}
-EXPORT_SYMBOL(drm_gem_fence_array_add);
-
-/**
- * drm_gem_fence_array_add_implicit - Adds the implicit dependencies tracked
- * in the GEM object's reservation object to an array of dma_fences for use in
- * scheduling a rendering job.
- *
- * This should be called after drm_gem_lock_reservations() on your array of
- * GEM objects used in the job but before updating the reservations with your
- * own fences.
- *
- * @fence_array: array of dma_fence * for the job to block on.
- * @obj: the gem object to add new dependencies from.
- * @write: whether the job might write the object (so we need to depend on
- * shared fences in the reservation object).
- */
-int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
-				     struct drm_gem_object *obj,
-				     bool write)
-{
-	int ret;
-	struct dma_fence **fences;
-	unsigned int i, fence_count;
-
-	if (!write) {
-		struct dma_fence *fence =
-			dma_resv_get_excl_unlocked(obj->resv);
-
-		return drm_gem_fence_array_add(fence_array, fence);
-	}
-
-	ret = dma_resv_get_fences(obj->resv, NULL,
-						&fence_count, &fences);
-	if (ret || !fence_count)
-		return ret;
-
-	for (i = 0; i < fence_count; i++) {
-		ret = drm_gem_fence_array_add(fence_array, fences[i]);
-		if (ret)
-			break;
-	}
-
-	for (; i < fence_count; i++)
-		dma_fence_put(fences[i]);
-	kfree(fences);
-	return ret;
-}
-EXPORT_SYMBOL(drm_gem_fence_array_add_implicit);
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index 35e7f44c2a75..e55a767188af 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -407,11 +407,6 @@ int drm_gem_lock_reservations(struct drm_gem_object **objs, int count,
 			      struct ww_acquire_ctx *acquire_ctx);
 void drm_gem_unlock_reservations(struct drm_gem_object **objs, int count,
 				 struct ww_acquire_ctx *acquire_ctx);
-int drm_gem_fence_array_add(struct xarray *fence_array,
-			    struct dma_fence *fence);
-int drm_gem_fence_array_add_implicit(struct xarray *fence_array,
-				     struct drm_gem_object *obj,
-				     bool write);
 int drm_gem_dumb_map_offset(struct drm_file *file, struct drm_device *dev,
 			    u32 handle, u64 *offset);
 
-- 
2.32.0

