Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EDC2FEA97
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 13:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171FB6E088;
	Thu, 21 Jan 2021 12:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5072B6E08A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 12:49:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23660110-1500050 
 for multiple; Thu, 21 Jan 2021 12:49:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 12:49:31 +0000
Message-Id: <20210121124932.2143-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Remove special casing from
 reloc-gtt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

By observing that we only use reloc-gtt on objects that are device
coherent and idle, we can avoid the set-to-domain call. Then noting that
our preferred partial GGTT mapping path automatically copes with tiling
(it does not use a fence) and handles all the error cases of pinning,
that dramatically simplifies that branch.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 21 +++++++------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d70ca36f74f6..fe170186dd42 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1151,23 +1151,16 @@ static void *reloc_iomap(struct drm_i915_gem_object *obj,
 		struct i915_vma *vma;
 		int err;
 
-		if (i915_gem_object_is_tiled(obj))
-			return ERR_PTR(-EINVAL);
-
 		if (use_cpu_reloc(cache, obj))
 			return NULL;
 
-		err = i915_gem_object_set_to_gtt_domain(obj, true);
-		if (err)
-			return ERR_PTR(err);
-
-		vma = i915_gem_object_ggtt_pin_ww(obj, &eb->ww, NULL, 0, 0,
-						  PIN_MAPPABLE |
-						  PIN_NONBLOCK /* NOWARN */ |
-						  PIN_NOEVICT);
-		if (vma == ERR_PTR(-EDEADLK))
-			return vma;
-
+		vma = ERR_PTR(-ENODEV);
+		if (!i915_gem_object_is_tiled(obj))
+			vma = i915_gem_object_ggtt_pin_ww(obj, &eb->ww,
+							  NULL, 0, 0,
+							  PIN_MAPPABLE |
+							  PIN_NONBLOCK /* NOWARN */ |
+							  PIN_NOEVICT);
 		if (IS_ERR(vma)) {
 			memset(&cache->node, 0, sizeof(cache->node));
 			mutex_lock(&ggtt->vm.mutex);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
