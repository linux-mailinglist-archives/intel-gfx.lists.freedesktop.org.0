Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D0011EDC9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 23:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3ED6EC18;
	Fri, 13 Dec 2019 22:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D71F6EC18
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 22:31:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19573510-1500050 
 for multiple; Fri, 13 Dec 2019 22:31:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Dec 2019 22:31:40 +0000
Message-Id: <20191213223140.1830738-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Serialise object before changing
 cache-level
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

Wait for the object to be idle before changing its cache-level and
unbinding. This was dropped as supposedly superfluous from commit
8b1c78e06e61 ("drm/i915: Avoid calling i915_gem_object_unbind holding
object lock"), but it turns out to prevent some cache dirt escaping.
Smells like papering over a race...

Closes: https://gitlab.freedesktop.org/drm/intel/issues/820
Fixes: 8b1c78e06e61 ("drm/i915: Avoid calling i915_gem_object_unbind holding object lock")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 88ab7e71f36c..65f1851e2863 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -190,6 +190,13 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
 	if (obj->cache_level == cache_level)
 		return 0;
 
+	ret = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE |
+				   I915_WAIT_ALL,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (ret)
+		return ret;
+
 	ret = i915_gem_object_lock_interruptible(obj);
 	if (ret)
 		return ret;
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
