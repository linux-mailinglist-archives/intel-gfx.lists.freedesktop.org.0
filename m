Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E9254A378
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 03:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCC010FDC3;
	Tue, 14 Jun 2022 01:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159BF10FDB9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 01:14:09 +0000 (UTC)
Received: from sobremesa.fritz.box (82-69-11-11.dsl.in-addr.zen.co.uk
 [82.69.11.11])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id AA24F6601693;
 Tue, 14 Jun 2022 02:14:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655169247;
 bh=8jxc6JzzS5y+pBvGGHPwH/0os6A/y6/kJ8YLYX2MaUQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=K2acIRhTuAht4W/7GRyZVthoj64bBFvXRJBdPdFsCxuKJ5HBS+1Rt/F0xon2ZIy3V
 opFc+TExkEF0LEIPHW42L4PvUno42dKws1D6b8k5SWOKmPdtHWCt3LqYT/FsWBP0ao
 SxRlZ5JzQfRiYJinkNPJQP8bWuG0hUI3KkCFF8N8L4oV8mWlgzJ+pM5VytJX5jcnFh
 23UbtOj+SVJDpQn6rDfMUnSRVug5VrURBxunG9RA12+RxqLy2IsASfOE9lKD1aEVke
 HBfD27veLWKnkLl4JFSdElNoosRT+/U3wcfRqLdcnQ+cWzR4A66AEjMLO64yTMK1SI
 lxlssbIRdXjHw==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 02:13:49 +0100
Message-Id: <20220614011350.122168-3-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220614011350.122168-1-adrian.larumbe@collabora.com>
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/ttm: don't overwrite cache_dirty
 after setting coherency
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

When i915_gem_object_set_cache_level sets the GEM object's cache_dirty to
true, in the case of TTM that will sometimes be overwritten when getting
the object's pages, more specifically for shmem-placed objects for which
its ttm structure has just been populated.

This wasn't an issue so far, even though intel_dpt_create was setting the
object's cache level to 'none', regardless of the platform and memory
placement of the framebuffer. However, commit 2f0ec95ed20c ("drm/i915/ttm:
dont trample cache_level overrides during ttm move") makes sure the cache
level set by older backends soon to be managed by TTM isn't altered after
their TTM bo ttm structure is populated.

However this led to the 'obj->cache_dirty = true' set in
i915_gem_object_set_cache_level to stick around rather than being reset
inside i915_ttm_adjust_gem_after_move after calling ttm_tt_populate in
__i915_ttm_get_pages, which eventually led to a warning in DGFX platforms.

There also seems to be no need for this statement to be kept in
i915_gem_object_set_cache_level, since i915_gem_object_set_cache_coherency
is already taking care of it, and also considering whether it's a discrete
platform.

Remove statement altogether.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 3e5d6057b3ef..b2c9e16bfa55 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -273,10 +273,8 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 		return ret;
 
 	/* Always invalidate stale cachelines */
-	if (obj->cache_level != cache_level) {
+	if (obj->cache_level != cache_level)
 		i915_gem_object_set_cache_coherency(obj, cache_level);
-		obj->cache_dirty = true;
-	}
 
 	/* The cache-level will be applied when each vma is rebound. */
 	return i915_gem_object_unbind(obj,
-- 
2.36.1

