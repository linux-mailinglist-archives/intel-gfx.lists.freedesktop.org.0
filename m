Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DB2128B5C
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 21:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EBA56E4AA;
	Sat, 21 Dec 2019 20:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2466E4AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 20:01:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19658332-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 20:01:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 20:01:09 +0000
Message-Id: <20191221200109.1202310-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Move i915_gem_init_contexts() earlier
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
index 8f4a3832ee85..1d23d8bfcc6b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1284,18 +1284,17 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
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
@@ -1322,19 +1321,19 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 
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
 
@@ -1346,7 +1345,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 * HW as irrevisibly wedged, but keep enough state around that the
 	 * driver doesn't explode during runtime.
 	 */
-err_gt:
+err_gt_late:
 	intel_gt_set_wedged_on_init(&dev_priv->gt);
 	i915_gem_suspend(dev_priv);
 	i915_gem_suspend_late(dev_priv);
@@ -1355,11 +1354,12 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
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
@@ -1452,6 +1452,7 @@ static void i915_gem_init__mm(struct drm_i915_private *i915)
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
