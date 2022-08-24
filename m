Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB80359FB26
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA96B536A;
	Wed, 24 Aug 2022 13:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCD1B51E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347109; x=1692883109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2nlAwD3/AtGMzja/ZgkrfnhTtCQi0wA7FO3wNfuqN7Q=;
 b=K6gfSRYaGI+2NRtsRXwnFqkPIZBcvf+VrV7BoqKXzYCUR5YXy4tmY98j
 VlqQFpk+WBmjb8PSo0owepMbw+6GKAYN03xMU6OzzsXdDP/WeR7kpDM+C
 Zrd9uL/lJ/B4rAotLTZH5AWxJTQue/tBAmVvpvk4Vap/eZIJ1/HKJVVxe
 lkLxAbDgp26MsvGH7ubDykinpY1+jqB1VFSwMSXdstihRw9z04fAfBDWX
 rt9O8282ZCXDYsVJ0XcNFbBMz138qQd6kkIuVUp58dsaISszjSq/ATysN
 LPKtqOiwY57Xw+eJH+50bIJ6x3Hk+J2oZphd5d4fYcbfz0F6/GXAWUH7B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="295244369"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="295244369"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="699070550"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:58 +0300
Message-Id: <b38a6ad1869fa634298a8c6c51f5fd97638cbe1b.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 32/38] drm/i915: move and group modeset_wq
 and flip_wq under display.wq
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

Move display workqueue related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 20 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  8 ++++++++
 drivers/gpu/drm/i915/i915_drv.h               |  5 -----
 3 files changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b347165ac2cf..5fb027ff5246 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7812,12 +7812,12 @@ static int intel_atomic_commit(struct drm_device *dev,
 
 	i915_sw_fence_commit(&state->commit_ready);
 	if (nonblock && state->modeset) {
-		queue_work(dev_priv->modeset_wq, &state->base.commit_work);
+		queue_work(dev_priv->display.wq.modeset, &state->base.commit_work);
 	} else if (nonblock) {
-		queue_work(dev_priv->flip_wq, &state->base.commit_work);
+		queue_work(dev_priv->display.wq.flip, &state->base.commit_work);
 	} else {
 		if (state->modeset)
-			flush_workqueue(dev_priv->modeset_wq);
+			flush_workqueue(dev_priv->display.wq.modeset);
 		intel_atomic_commit_tail(state);
 	}
 
@@ -8686,9 +8686,9 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 
 	intel_dmc_ucode_init(i915);
 
-	i915->modeset_wq = alloc_ordered_workqueue("i915_modeset", 0);
-	i915->flip_wq = alloc_workqueue("i915_flip", WQ_HIGHPRI |
-					WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
+	i915->display.wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
+	i915->display.wq.flip = alloc_workqueue("i915_flip", WQ_HIGHPRI |
+						WQ_UNBOUND, WQ_UNBOUND_MAX_ACTIVE);
 
 	intel_mode_config_init(i915);
 
@@ -8995,8 +8995,8 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	flush_workqueue(i915->flip_wq);
-	flush_workqueue(i915->modeset_wq);
+	flush_workqueue(i915->display.wq.flip);
+	flush_workqueue(i915->display.wq.modeset);
 
 	flush_work(&i915->atomic_helper.free_work);
 	drm_WARN_ON(&i915->drm, !llist_empty(&i915->atomic_helper.free_list));
@@ -9037,8 +9037,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_gmbus_teardown(i915);
 
-	destroy_workqueue(i915->flip_wq);
-	destroy_workqueue(i915->modeset_wq);
+	destroy_workqueue(i915->display.wq.flip);
+	destroy_workqueue(i915->display.wq.modeset);
 
 	intel_fbc_cleanup(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b061deb21df1..31fd05a04bff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -376,6 +376,14 @@ struct intel_display {
 		u32 block_time_us;
 	} sagv;
 
+	struct {
+		/* ordered wq for modesets */
+		struct workqueue_struct *modeset;
+
+		/* unbound hipri wq for page flips/plane updates */
+		struct workqueue_struct *flip;
+	} wq;
+
 	/* Grouping using named structs. Keep sorted. */
 	struct intel_audio audio;
 	struct intel_dmc dmc;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6ec48944772b..dcd95aed145c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -289,11 +289,6 @@ struct drm_i915_private {
 	 */
 	struct workqueue_struct *wq;
 
-	/* ordered wq for modesets */
-	struct workqueue_struct *modeset_wq;
-	/* unbound hipri wq for page flips/plane updates */
-	struct workqueue_struct *flip_wq;
-
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-- 
2.34.1

