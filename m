Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B36218978
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 15:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C4E86E8D6;
	Wed,  8 Jul 2020 13:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D9A6E397
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 13:48:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21753150-1500050 
 for multiple; Wed, 08 Jul 2020 14:47:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 14:47:38 +0100
Message-Id: <20200708134742.727-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200708134742.727-1-chris@chris-wilson.co.uk>
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Remove
 i915_gem_object_get_dirty_page()
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
Cc: matthew.auld@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Last user removed, remove the convenience function.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 14 --------------
 2 files changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index a26a4faf014f..7234c257eb2a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -258,10 +258,6 @@ struct page *
 i915_gem_object_get_page(struct drm_i915_gem_object *obj,
 			 unsigned int n);
 
-struct page *
-i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n);
-
 dma_addr_t
 i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 				    unsigned long n,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 114256014a97..5aa9f584b154 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -553,20 +553,6 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
 	return nth_page(sg_page(sg), offset);
 }
 
-/* Like i915_gem_object_get_page(), but mark the returned page dirty */
-struct page *
-i915_gem_object_get_dirty_page(struct drm_i915_gem_object *obj,
-			       unsigned int n)
-{
-	struct page *page;
-
-	page = i915_gem_object_get_page(obj, n);
-	if (!obj->mm.dirty)
-		set_page_dirty(page);
-
-	return page;
-}
-
 dma_addr_t
 i915_gem_object_get_dma_address_len(struct drm_i915_gem_object *obj,
 				    unsigned long n,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
