Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCF712BD5E
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 12:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EA36E187;
	Sat, 28 Dec 2019 11:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECBAD6E187
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 11:12:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19712016-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Dec 2019 11:12:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Dec 2019 11:12:55 +0000
Message-Id: <20191228111255.3086901-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Restore very early GPU reset
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

In commit d03b224f4252 ("drm/i915/gt: Apply sanitiization just before
resume") the GT sanitization was pulled into the resume path as we need
to know the backend in order to do a full reset prior to resume.
However, it is still imperative that we scrub existing GPU state before
clobbering in our early setup, so restore a minimal GPU reset at the
start of our init sequence.

Fixes: d03b224f4252 ("drm/i915/gt: Apply sanitiization just before resume")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 9f75e03368c4..f7385abdd74b 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -469,6 +469,12 @@ static void vlv_free_s0ix_state(struct drm_i915_private *i915)
 	i915->vlv_s0ix_state = NULL;
 }
 
+static void sanitize_gpu(struct drm_i915_private *i915)
+{
+	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display)
+		__intel_gt_reset(&i915->gt, ALL_ENGINES);
+}
+
 /**
  * i915_driver_early_probe - setup state not requiring device access
  * @dev_priv: device private
@@ -602,6 +608,9 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_uncore;
 
+	/* As early as possible, scrub existing GPU state before clobbering */
+	sanitize_gpu(dev_priv);
+
 	return 0;
 
 err_uncore:
@@ -1817,6 +1826,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
+	sanitize_gpu(dev_priv);
+
 	ret = i915_ggtt_enable_hw(dev_priv);
 	if (ret)
 		DRM_ERROR("failed to re-enable GGTT\n");
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
