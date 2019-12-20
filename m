Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 621EC1277C2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 10:12:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8909A6EBEF;
	Fri, 20 Dec 2019 09:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5406E436
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 09:11:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19642902-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 09:11:52 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:11:50 +0000
Message-Id: <20191220091150.256501-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220091150.256501-1-chris@chris-wilson.co.uk>
References: <20191220091150.256501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915: Move i915_gem_init_contexts() earlier
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

As the GEM global context setup is now independent of the GT state
(although GT does currently still depend upon the global
i915->kernel_context), we can move its init earlier, leaving the gt init
ready to be extracted.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index e7f0ef18e31e..a9e0ee37dcc0 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1283,18 +1283,17 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	}
 
 	intel_gt_init(&dev_priv->gt);
-	i915_gem_init__contexts(dev_priv);
 
 	ret = intel_engines_setup(&dev_priv->gt);
 	if (ret) {
 		GEM_BUG_ON(ret == -EIO);
-		goto err_unlock;
+		goto err_gt_early;
 	}
 
 	ret = intel_engines_init(&dev_priv->gt);
 	if (ret) {
 		GEM_BUG_ON(ret == -EIO);
-		goto err_scratch;
+		goto err_engines;
 	}
 
 	intel_uc_init(&dev_priv->gt.uc);
@@ -1321,19 +1320,19 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 
 	ret = intel_engines_verify_workarounds(&dev_priv->gt);
 	if (ret)
-		goto err_gt;
+		goto err_gt_late;
 
 	ret = __intel_engines_record_defaults(&dev_priv->gt);
 	if (ret)
-		goto err_gt;
+		goto err_gt_late;
 
 	ret = i915_inject_probe_error(dev_priv, -ENODEV);
 	if (ret)
-		goto err_gt;
+		goto err_gt_late;
 
 	ret = i915_inject_probe_error(dev_priv, -EIO);
 	if (ret)
-		goto err_gt;
+		goto err_gt_late;
 
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
@@ -1345,7 +1344,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 * HW as irrevisibly wedged, but keep enough state around that the
 	 * driver doesn't explode during runtime.
 	 */
-err_gt:
+err_gt_late:
 	intel_gt_set_wedged_on_init(&dev_priv->gt);
 	i915_gem_suspend(dev_priv);
 	i915_gem_suspend_late(dev_priv);
@@ -1354,11 +1353,12 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 err_init_hw:
 	intel_uc_fini_hw(&dev_priv->gt.uc);
 err_uc_init:
-	if (ret != -EIO) {
+	if (ret != -EIO)
 		intel_uc_fini(&dev_priv->gt.uc);
+err_engines:
+	if (ret != -EIO)
 		intel_engines_cleanup(&dev_priv->gt);
-	}
-err_scratch:
+err_gt_early:
 	intel_gt_driver_release(&dev_priv->gt);
 err_unlock:
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
@@ -1451,6 +1451,7 @@ static void i915_gem_init__mm(struct drm_i915_private *i915)
 void i915_gem_init_early(struct drm_i915_private *dev_priv)
 {
 	i915_gem_init__mm(dev_priv);
+	i915_gem_init__contexts(dev_priv);
 
 	spin_lock_init(&dev_priv->fb_tracking.lock);
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
