Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7A312D06B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 14:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD41289D9A;
	Mon, 30 Dec 2019 13:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5526E89D9A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 13:44:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19726684-1500050 
 for multiple; Mon, 30 Dec 2019 13:43:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Dec 2019 13:43:49 +0000
Message-Id: <20191230134349.3806558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the context worker
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When cleaning up the mock device, remember to flush the context worker
to free the residual GEM contexts before shutting down the device.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/802
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c                  | 4 ++--
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 9ddcf17230e6..a3d701b50a6b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1172,6 +1172,8 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 {
+	i915_gem_driver_release__contexts(dev_priv);
+
 	intel_gt_driver_release(&dev_priv->gt);
 
 	intel_wa_list_free(&dev_priv->gt_wa_list);
@@ -1179,8 +1181,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
 	i915_gem_cleanup_userptr(dev_priv);
 
-	i915_gem_driver_release__contexts(dev_priv);
-
 	i915_gem_drain_freed_objects(dev_priv);
 
 	WARN_ON(!list_empty(&dev_priv->gem.contexts.list));
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index ac641f5360e1..bddead3fc855 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -58,6 +58,8 @@ static void mock_device_release(struct drm_device *dev)
 	mock_device_flush(i915);
 	intel_gt_driver_remove(&i915->gt);
 
+	i915_gem_driver_release__contexts(i915);
+
 	i915_gem_drain_workqueue(i915);
 	i915_gem_drain_freed_objects(i915);
 
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
