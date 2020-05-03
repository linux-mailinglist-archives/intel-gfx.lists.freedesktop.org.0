Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FDA1C2E29
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 19:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFB56E265;
	Sun,  3 May 2020 17:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB946E265
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 17:15:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21099758-1500050 
 for multiple; Sun, 03 May 2020 18:15:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 May 2020 18:15:13 +0100
Message-Id: <20200503171513.18704-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Lazily acquire the device wakeref
 for freeing objects
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

We only need the device wakeref on freeing the objects if we have to
unbind the object from the global GTT, or otherwise update device
information. If the objects are clean, we never need the wakeref, so
avoid taking until required.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 9d1d0131f7c2..99356c00c19e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -162,9 +162,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 				    struct llist_node *freed)
 {
 	struct drm_i915_gem_object *obj, *on;
-	intel_wakeref_t wakeref;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	llist_for_each_entry_safe(obj, on, freed, freed) {
 		struct i915_mmap_offset *mmo, *mn;
 
@@ -224,7 +222,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
 		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
 		cond_resched();
 	}
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 }
 
 void i915_gem_flush_free_objects(struct drm_i915_private *i915)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
