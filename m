Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F605737DF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 15:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3613F9AC69;
	Wed, 13 Jul 2022 13:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CCD9AC62;
 Wed, 13 Jul 2022 13:50:41 +0000 (UTC)
Received: from hermes-devbox.fritz.box (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 3926A66019BF;
 Wed, 13 Jul 2022 14:50:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1657720240;
 bh=CsNQhhmN7tfVGf4HN1uv8HbRGJrZrAmt/638xemnBMo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DXwj3YfPj+jwEGaaCJ/oOqrV2ZdTkRKiyqip2q8qzArc3DJDnGCcZIcoBW861sBnP
 1AQMJPS9yXEwIgCwpHig2lZRQT56VZ1ZI3UHBpmbmggLg90r3VPmeJcsCqsDf6gdmj
 i3OK5F5HpwEnSedmeUJe1R7kZyndUL090IffUUU7dMUSCAS/GjitI2UluXRI7n9kGL
 5x0OpJOpqbp9zls4jPtbHOLIfHxL7WjZG+lFlX8g3z7QkJQ+lQO2pc79cSoWSGpf5A
 iT3ZSOLf1ijDpCxfJ6ELok/v69Ucnc5LQL18j5lolVovU2Asmf2gqNAqgdIgjuQcfp
 Oz6cBjVUdLUCw==
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 13 Jul 2022 14:50:13 +0100
Message-Id: <20220713135022.3710682-2-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713135022.3710682-1-bob.beckett@collabora.com>
References: <20220713135022.3710682-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 01/10] drm/i915/ttm: dont trample
 cache_level overrides during ttm move
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 kernel@collabora.com, Matthew Auld <matthew.auld@intel.com>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Various places within the driver override the default chosen cache_level.
Before ttm, these overrides were permanent until explicitly changed again
or for the lifetime of the buffer.

TTM movement code came along and decided that it could make that
decision at that time, which is usually well after object creation, so
overrode the cache_level decision and reverted it back to its default
decision.

Add logic to indicate whether the caching mode has been set by anything
other than the move logic. If so, assume that the code that overrode the
defaults knows best and keep it.

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c       | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c          | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c     | 9 ++++++---
 4 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index ccec4055fde3..966ac2d778d5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -125,6 +125,7 @@ void i915_gem_object_set_cache_coherency(struct drm_i915_gem_object *obj,
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 
 	obj->cache_level = cache_level;
+	obj->ttm.cache_level_override = true;
 
 	if (cache_level != I915_CACHE_NONE)
 		obj->cache_coherent = (I915_BO_CACHE_COHERENT_FOR_READ |
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 5cf36a130061..14937cf1daaa 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -623,6 +623,7 @@ struct drm_i915_gem_object {
 		struct i915_gem_object_page_iter get_io_page;
 		struct drm_i915_gem_object *backup;
 		bool created:1;
+		bool cache_level_override:1;
 	} ttm;
 
 	/*
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 053b0022ddd0..b6c3fc25d9d1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -1253,6 +1253,7 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 	i915_gem_object_init_memory_region(obj, mem);
 	i915_ttm_adjust_domains_after_move(obj);
 	i915_ttm_adjust_gem_after_move(obj);
+	obj->ttm.cache_level_override = false;
 	i915_gem_object_unlock(obj);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 9a7e50534b84..042c2237e287 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -129,9 +129,12 @@ void i915_ttm_adjust_gem_after_move(struct drm_i915_gem_object *obj)
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
2.25.1

