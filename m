Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D11FF218E68
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA206E904;
	Wed,  8 Jul 2020 17:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DDDA6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:37:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21756439-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 18:37:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 18:37:48 +0100
Message-Id: <20200708173748.32734-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200708173748.32734-1-chris@chris-wilson.co.uk>
References: <20200708173748.32734-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915: Remove
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Last user removed, remove the get_dirty_page convenience function.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h |  4 ----
 drivers/gpu/drm/i915/gem/i915_gem_pages.c  | 14 --------------
 2 files changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 9cf4ad78ece6..e5b9276d254c 100644
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
index 7e54657cf67b..7050519c87a4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -548,20 +548,6 @@ i915_gem_object_get_page(struct drm_i915_gem_object *obj, unsigned int n)
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
