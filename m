Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9083D58807F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E341591CFC;
	Tue,  2 Aug 2022 16:52:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033E891D8E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:06 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id F148C6601BCB;
 Tue,  2 Aug 2022 17:52:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459125;
 bh=4z/apoDs0JPg5eDilz7+9hmbfYpKbIzTT5ACGi5lo0I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TfluHiWy/BSZXClN8+VkQctiQy8UOz2hiDtliF7QIAjgGaKvIg85TFVnTnE5VvJXk
 /N3xLwG6c20aHEHOuOQjpziUDpSjBssTII4LODTvbK/6/JkkPhKYHciKm+Qo9MCDAc
 UTQEf1sWpLCxZT853p+eyhSDptrZnB/EEQhLvcXsc7BrrKe5KJA9+I7k7Ep8bJFydd
 VysQ3ySUw7/kRLhR/p4Bi8UjGxTsOmu3T1qG8McqPsrcisjdwMISZOHgIA8TF4N9/0
 lLMc5Tr/yIf7ixRdpQy7sjNBMSRMfKZAMb1xH8R+mLKwGhQHeWoz6tTMKvL7rta21U
 J3GaVKdzFku+A==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:52 +0100
Message-Id: <20220802165155.165576-5-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/ttm: don't overwrite cache_dirty
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
placement of the framebuffer. However, commit b6f17c183a3e ("drm/i915/ttm:
dont trample cache_level overrides during ttm move") makes sure the cache
level set by older backends soon to be managed by TTM isn't altered after
their TTM bo ttm structure is populated.

However this led to the 'obj->cache_dirty = true' set in
i915_gem_object_set_cache_level and flush_write_domain to stick around
rather than being reset inside i915_ttm_adjust_gem_after_move after calling
ttm_tt_populate in __i915_ttm_get_pages, which eventually led to a warning
in DGFX platforms.

Make sure it's not set in DGFX platforms.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 1674b0c5802b..341b60432a12 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -77,7 +77,7 @@ flush_write_domain(struct drm_i915_gem_object *obj, unsigned int flush_domains)
 
 	case I915_GEM_DOMAIN_RENDER:
 		if (gpu_write_needs_clflush(obj))
-			obj->cache_dirty = true;
+			obj->cache_dirty = !IS_DGFX(to_i915(obj->base.dev));
 		break;
 	}
 
@@ -275,7 +275,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	/* Always invalidate stale cachelines */
 	if (obj->cache_level != cache_level) {
 		i915_gem_object_set_cache_coherency(obj, cache_level);
-		obj->cache_dirty = true;
+		obj->cache_dirty = !IS_DGFX(to_i915(obj->base.dev));
 	}
 
 	/* The cache-level will be applied when each vma is rebound. */
-- 
2.37.0

