Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 644245A4DB6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA9310F2A3;
	Mon, 29 Aug 2022 13:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C0C10F28C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779168; x=1693315168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tNqx0hrw4sIajT1RE0Aq4IL2pPRiBQIKxHVX+kObdBA=;
 b=MTeCX+S4von3qns4N1eReLHtbsRyFP5xpqX29yi3wy60SqH9eKHzav2q
 XdarkpbG7e5pZlGV4nVAqtadAdhq0Fdu8RAtBuKgzBglpbdwLsEtqvNCX
 uqR8aNjoeQd0tkQ1gIkc0kGaUhRfoGp2P2eOluTyo4ln+QK5NHLNRKCwT
 gUPAUK81V7qj7lil8iyGhxV4nHnWjqgA6gT3FvDPpi4xF8oJIf0mS89TE
 arQ8zVFS5y55Ri1NNYLp/EOM5nHjoJ5V4D7MxWN/PzEz+7XyYrus+jOKP
 qoYu5+u0AwjpePphmixDxwiT7ls02VT3mGzxiCyifsznPXEJKCybxrbUD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="277903502"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="277903502"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="753626563"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:19:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:18:20 +0300
Message-Id: <f34f7fb45510e880ce0cc16cb2fbba72fbe94a1d.1661779055.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
References: <cover.1661779055.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/18] drm/i915: move and group modeset_wq
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
index 1a494933dd92..5aac06da3cc7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -290,11 +290,6 @@ struct drm_i915_private {
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

