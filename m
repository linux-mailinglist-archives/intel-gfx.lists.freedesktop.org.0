Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A978B20CDD0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 12:13:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CF389885;
	Mon, 29 Jun 2020 10:13:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D7989854
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 10:13:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21647661-1500050 
 for multiple; Mon, 29 Jun 2020 11:12:58 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 11:12:53 +0100
Message-Id: <20200629101256.13039-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200629101256.13039-1-chris@chris-wilson.co.uk>
References: <20200629101256.13039-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/gem: Drop forced struct_mutex from
 shrinker_taints_mutex
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

Since we no longer always take struct_mutex around everything, and want
the freedom to create GEM objects, actually taking struct_mutex inside
the lock creation ends up pulling the mutex inside other looks. Since we
don't use generally use struct_mutex, we can relax the tainting.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 5b65ce738b16..1ced1e5d2ec0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -408,26 +408,15 @@ void i915_gem_driver_unregister__shrinker(struct drm_i915_private *i915)
 void i915_gem_shrinker_taints_mutex(struct drm_i915_private *i915,
 				    struct mutex *mutex)
 {
-	bool unlock = false;
-
 	if (!IS_ENABLED(CONFIG_LOCKDEP))
 		return;
 
-	if (!lockdep_is_held_type(&i915->drm.struct_mutex, -1)) {
-		mutex_acquire(&i915->drm.struct_mutex.dep_map,
-			      I915_MM_NORMAL, 0, _RET_IP_);
-		unlock = true;
-	}
-
 	fs_reclaim_acquire(GFP_KERNEL);
 
 	mutex_acquire(&mutex->dep_map, 0, 0, _RET_IP_);
 	mutex_release(&mutex->dep_map, _RET_IP_);
 
 	fs_reclaim_release(GFP_KERNEL);
-
-	if (unlock)
-		mutex_release(&i915->drm.struct_mutex.dep_map, _RET_IP_);
 }
 
 #define obj_to_i915(obj__) to_i915((obj__)->base.dev)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
