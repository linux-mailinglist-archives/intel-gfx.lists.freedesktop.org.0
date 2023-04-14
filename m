Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE99B6E1F8E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A02810ECB0;
	Fri, 14 Apr 2023 09:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 963A410ECB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465367; x=1713001367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyAEo8w0Hvws+yiCf1LMoTgLhp4fSgOSCquISy3Msfc=;
 b=jNeBq1EcwJyNHNnUfR2XQ6KdRE53EQfiSeBQpfBF4bpv9Au/PeX433ws
 eE7vjtg73FhLojof+44Ij71RGOPkOV70VUwkRNYsl/FyuX5s3cD7zpiXk
 S/9Dv8osnZ9q2xjKNEdvB6MpFde5awHzJuBfGN6AbWC6ySnhU5um7XOi6
 Uk/RpGx/FhGgaJOzyWpEXo3h8TBoBR1ZB9s+okJKJqhbYHQLNEwJwC4xT
 ShDma8tvYMLKPR5quZMmQdux9AVKxFjq1OK2pb1lAkuLT1pk1ldCFRtMT
 YRvtviWlQQNpfQ307mV+sa8ObwPnxV/C697d255/NugTiuJgr7+A6o12A A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324778695"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324778695"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="779133082"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="779133082"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:42:01 +0300
Message-Id: <cdd4228337678609967ed176dcfc9690de5d490b.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915/display: rename
 intel_display_driver_suspend/resume functions
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions. Switch to i915 arguments and naming
while at it.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 24 +++++++++----------
 .../drm/i915/display/intel_display_driver.h   | 11 ++++-----
 .../drm/i915/display/intel_display_reset.c    |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  6 ++---
 4 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index eb03b0a87d5a..d20a279fdf51 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -471,29 +471,28 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
  * turn all crtc's off, but do not adjust state
  * This has to be paired with a call to intel_modeset_setup_hw_state.
  */
-int intel_display_suspend(struct drm_device *dev)
+int intel_display_driver_suspend(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_atomic_state *state;
 	int ret;
 
-	if (!HAS_DISPLAY(dev_priv))
+	if (!HAS_DISPLAY(i915))
 		return 0;
 
-	state = drm_atomic_helper_suspend(dev);
+	state = drm_atomic_helper_suspend(&i915->drm);
 	ret = PTR_ERR_OR_ZERO(state);
 	if (ret)
-		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
+		drm_err(&i915->drm, "Suspending crtc's failed with %i\n",
 			ret);
 	else
-		dev_priv->display.restore.modeset_state = state;
+		i915->display.restore.modeset_state = state;
 	return ret;
 }
 
 int
-__intel_display_resume(struct drm_i915_private *i915,
-		       struct drm_atomic_state *state,
-		       struct drm_modeset_acquire_ctx *ctx)
+__intel_display_driver_resume(struct drm_i915_private *i915,
+			      struct drm_atomic_state *state,
+			      struct drm_modeset_acquire_ctx *ctx)
 {
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
@@ -530,9 +529,8 @@ __intel_display_resume(struct drm_i915_private *i915,
 	return ret;
 }
 
-void intel_display_resume(struct drm_device *dev)
+void intel_display_driver_resume(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_atomic_state *state = i915->display.restore.modeset_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
@@ -547,7 +545,7 @@ void intel_display_resume(struct drm_device *dev)
 	drm_modeset_acquire_init(&ctx, 0);
 
 	while (1) {
-		ret = drm_modeset_lock_all_ctx(dev, &ctx);
+		ret = drm_modeset_lock_all_ctx(&i915->drm, &ctx);
 		if (ret != -EDEADLK)
 			break;
 
@@ -555,7 +553,7 @@ void intel_display_resume(struct drm_device *dev)
 	}
 
 	if (!ret)
-		ret = __intel_display_resume(i915, state, &ctx);
+		ret = __intel_display_driver_resume(i915, state, &ctx);
 
 	skl_watermark_ipc_update(i915);
 	drm_modeset_drop_locks(&ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 7b5ff4309dec..84e7977f265a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -9,7 +9,6 @@
 #include <linux/types.h>
 
 struct drm_atomic_state;
-struct drm_device;
 struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
 struct pci_dev;
@@ -24,13 +23,13 @@ void intel_display_driver_remove(struct drm_i915_private *i915);
 void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
-int intel_display_suspend(struct drm_device *dev);
-void intel_display_resume(struct drm_device *dev);
+int intel_display_driver_suspend(struct drm_i915_private *i915);
+void intel_display_driver_resume(struct drm_i915_private *i915);
 
 /* interface for intel_display_reset.c */
-int __intel_display_resume(struct drm_i915_private *i915,
-			   struct drm_atomic_state *state,
-			   struct drm_modeset_acquire_ctx *ctx);
+int __intel_display_driver_resume(struct drm_i915_private *i915,
+				  struct drm_atomic_state *state,
+				  struct drm_modeset_acquire_ctx *ctx);
 
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 166aa0cab1fc..17178d5d7788 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -117,7 +117,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
 		intel_clock_gating_init(i915);
 		intel_hpd_init(i915);
 
-		ret = __intel_display_resume(i915, state, ctx);
+		ret = __intel_display_driver_resume(i915, state, ctx);
 		if (ret)
 			drm_err(&i915->drm,
 				"Restoring old state failed with %i\n", ret);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f11ca12cb55d..d806790114e0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1053,7 +1053,7 @@ static int i915_drm_prepare(struct drm_device *dev)
 	intel_pxp_suspend_prepare(i915->pxp);
 
 	/*
-	 * NB intel_display_suspend() may issue new requests after we've
+	 * NB intel_display_driver_suspend() may issue new requests after we've
 	 * ostensibly marked the GPU as ready-to-sleep here. We need to
 	 * split out that work and pull it forward so that after point,
 	 * the GPU is not woken again.
@@ -1077,7 +1077,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	pci_save_state(pdev);
 
-	intel_display_suspend(dev);
+	intel_display_driver_suspend(dev_priv);
 
 	intel_dp_mst_suspend(dev_priv);
 
@@ -1251,7 +1251,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(dev_priv);
-	intel_display_resume(dev);
+	intel_display_driver_resume(dev_priv);
 
 	intel_hpd_poll_disable(dev_priv);
 	if (HAS_DISPLAY(dev_priv))
-- 
2.39.2

