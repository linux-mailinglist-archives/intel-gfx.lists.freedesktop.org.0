Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35048622E31
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EF110E5E3;
	Wed,  9 Nov 2022 14:42:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B641E10E5E3
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668004947; x=1699540947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A/MOzdpw51dC7mJkrAJCieT9+0XL14d8m8xv1ZWuun8=;
 b=inuGXvV/X7+7BlkWGN3ddoMPZpJpw1hZcygVvKrXR2NU3A35pfFOSxdU
 hyKVhg86o3ZChQH//eckuCWK8OATKKumjjAeY25y/NftzyLCE40+/BDWl
 hVoPSuzvvXuTouv6ByY40nUuhqxPHEiChQRH/U2nbRV96XReTMAdvEEwU
 PQP3TH7Tv7lvVcwb++OeFMkgXdBNsGzrghNYnx0UXH1gGEkBG1lvs7SC5
 UHTlFFTcKHD0vz8QE2K8PEetUJ2tlhlf9OL2/pZEd/4gh7aOH0+8/4O0r
 nCL+0LZl6bJ+LiAWh1q7hNFxeLzbiXDG9gJDK7lKgLMlTOiiGaWtod1Gt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="373138006"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="373138006"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669970328"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="669970328"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:42:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 16:42:09 +0200
Message-Id: <20221109144209.3624739-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221109144209.3624739-1-jani.nikula@intel.com>
References: <20221109144209.3624739-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: move restore state and
 ctx under display sub-struct
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display suspend/resume and display reset modeset state and ctx
members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c      | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_display_core.h |  7 +++++++
 drivers/gpu/drm/i915/i915_drv.h                   |  3 ---
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 63f25d6bf0bf..c50bdcdc9081 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -890,7 +890,7 @@ static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 {
-	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
+	struct drm_modeset_acquire_ctx *ctx = &dev_priv->display.restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
@@ -946,13 +946,13 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	dev_priv->modeset_restore_state = state;
+	dev_priv->display.restore.modeset_state = state;
 	state->acquire_ctx = ctx;
 }
 
 void intel_display_finish_reset(struct drm_i915_private *i915)
 {
-	struct drm_modeset_acquire_ctx *ctx = &i915->reset_ctx;
+	struct drm_modeset_acquire_ctx *ctx = &i915->display.restore.reset_ctx;
 	struct drm_atomic_state *state;
 	int ret;
 
@@ -963,7 +963,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
 		return;
 
-	state = fetch_and_zero(&i915->modeset_restore_state);
+	state = fetch_and_zero(&i915->display.restore.modeset_state);
 	if (!state)
 		goto unlock;
 
@@ -2443,7 +2443,7 @@ int intel_display_suspend(struct drm_device *dev)
 		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
 			ret);
 	else
-		dev_priv->modeset_restore_state = state;
+		dev_priv->display.restore.modeset_state = state;
 	return ret;
 }
 
@@ -8899,14 +8899,14 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 void intel_display_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
-	struct drm_atomic_state *state = i915->modeset_restore_state;
+	struct drm_atomic_state *state = i915->display.restore.modeset_state;
 	struct drm_modeset_acquire_ctx ctx;
 	int ret;
 
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	i915->modeset_restore_state = NULL;
+	i915->display.restore.modeset_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7eb705a0fa19..57ddce3ba02b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -14,6 +14,7 @@
 #include <linux/workqueue.h>
 
 #include <drm/drm_connector.h>
+#include <drm/drm_modeset_lock.h>
 
 #include "intel_cdclk.h"
 #include "intel_display.h"
@@ -410,6 +411,12 @@ struct intel_display {
 		unsigned long mask;
 	} quirks;
 
+	struct {
+		/* restore state for suspend/resume and display reset */
+		struct drm_atomic_state *modeset_state;
+		struct drm_modeset_acquire_ctx reset_ctx;
+	} restore;
+
 	struct {
 		enum {
 			I915_SAGV_UNKNOWN = 0,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fdf330a29ec0..2f074d7e0d31 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -287,9 +287,6 @@ struct drm_i915_private {
 
 	unsigned long gem_quirks;
 
-	struct drm_atomic_state *modeset_restore_state;
-	struct drm_modeset_acquire_ctx reset_ctx;
-
 	struct i915_gem_mm mm;
 
 	bool mchbar_need_disable;
-- 
2.34.1

