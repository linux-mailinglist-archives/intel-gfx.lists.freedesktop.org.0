Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F106FEDC9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 10:20:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E46B10E21D;
	Thu, 11 May 2023 08:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2CA010E21D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 08:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683793231; x=1715329231;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZOoIyeOMkgYQHCm06Y5EGkOD8IcVj7gXDDR26w9QBNQ=;
 b=eEPlDkUQ9kk52by+uOngZkjq+iyrIHtO0yc7SCBVYsS2EzMG04wU6gVs
 kf+wRLlQc5AAWAE7kcHV2bc/6zz/LCRGNs9KAW5mKXvP/6mDswwW3meqT
 hh+VI078auByBAelWrckrTbNKL3USrau9vWmz7TH4UK5ixgt9ToWiHpPx
 wbacm+RAGhv4QzJOKgkQlr1r51Or8FvrnNOOvVJiQsxuyjEQI2E17qEAY
 JA9HhBTiigXsujfQGv4TrNGbXk5iYs1fgKqRTaPl11KguRjA+pQJfbBfG
 97FHMnpW5cXgcV78wLm3WyasTgUDOGL6/yuCfkLZhgV0cD3KmgqOI/ZPm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="350465849"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="350465849"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="699624931"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="699624931"
Received: from okozlyk-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.218.243])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:30 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:20:11 +0300
Message-Id: <20230511082013.1313484-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230511082013.1313484-1-luciano.coelho@intel.com>
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: add a dedicated workqueue inside
 drm_i915_private
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In order to avoid flush_scheduled_work() usage, add a dedicated
workqueue in the drm_i915_private structure.  In this way, we don't
need to use the system queue anymore.

This change is mostly mechanical and based on Tetsuo's original
patch[1].

Link: https://patchwork.freedesktop.org/series/114608/ [1]
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_pps.c      |  4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++---
 .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++--------
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  7 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++-
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 23 files changed, 89 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d5d42a40803..155b8e378f7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7127,11 +7127,12 @@ intel_atomic_commit_ready(struct i915_sw_fence *fence,
 		break;
 	case FENCE_FREE:
 		{
+			struct drm_i915_private *i915 = to_i915(state->base.dev);
 			struct intel_atomic_helper *helper =
-				&to_i915(state->base.dev)->display.atomic_helper;
+				&i915->display.atomic_helper;
 
 			if (llist_add(&state->freed, &helper->free_list))
-				schedule_work(&helper->free_work);
+				queue_work(i915->i915_wq, &helper->free_work);
 			break;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 60ce10fc7205..bd61418fef15 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -435,7 +435,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 	intel_unregister_dsm_handler();
 
 	/* flush any delayed tasks or pending work */
-	flush_scheduled_work();
+	flush_workqueue(i915->i915_wq);
 
 	intel_hdcp_component_fini(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 8a88de67ff0a..743c5b3e610d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1057,7 +1057,7 @@ void intel_dmc_init(struct drm_i915_private *i915)
 	i915->display.dmc.dmc = dmc;
 
 	drm_dbg_kms(&i915->drm, "Loading %s\n", dmc->fw_path);
-	schedule_work(&dmc->work);
+	queue_work(i915->i915_wq, &dmc->work);
 
 	return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0cc57681dc4d..02ce619ecd70 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5250,7 +5250,7 @@ static void intel_dp_oob_hotplug_event(struct drm_connector *connector)
 	spin_lock_irq(&i915->irq_lock);
 	i915->display.hotplug.event_bits |= BIT(encoder->hpd_pin);
 	spin_unlock_irq(&i915->irq_lock);
-	queue_delayed_work(system_wq, &i915->display.hotplug.hotplug_work, 0);
+	queue_delayed_work(i915->i915_wq, &i915->display.hotplug.hotplug_work, 0);
 }
 
 static const struct drm_connector_funcs intel_dp_connector_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e92c62bcc9b8..f7eb431f03fa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1130,9 +1130,10 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (intel_dp->hobl_active) {
-		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+		drm_dbg_kms(&i915->drm,
 			    "[ENCODER:%d:%s] Link Training failed with HOBL active, "
 			    "not enabling it from now on",
 			    encoder->base.base.id, encoder->base.name);
@@ -1144,7 +1145,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 	}
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	schedule_work(&intel_connector->modeset_retry_work);
+	queue_work(i915->i915_wq, &intel_connector->modeset_retry_work);
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 760e63cdc0c8..0939dbe453e0 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -111,7 +111,9 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 
 static void intel_drrs_schedule_work(struct intel_crtc *crtc)
 {
-	mod_delayed_work(system_wq, &crtc->drrs.work, msecs_to_jiffies(1000));
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	mod_delayed_work(i915->i915_wq, &crtc->drrs.work, msecs_to_jiffies(1000));
 }
 
 static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 11bb8cf9c9d0..177d6e6bcad0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1600,7 +1600,7 @@ static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
 	if (READ_ONCE(fbc->underrun_detected))
 		return;
 
-	schedule_work(&fbc->underrun_work);
+	queue_work(fbc->i915->i915_wq, &fbc->underrun_work);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index aab1ae74a8f7..af0df232b806 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -689,7 +689,8 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 			/* Don't block our own workqueue as this can
 			 * be run in parallel with other i915.ko tasks.
 			 */
-			schedule_work(&dev_priv->display.fbdev.suspend_work);
+			queue_work(dev_priv->i915_wq,
+				   &dev_priv->display.fbdev.suspend_work);
 			return;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..85a71609563f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1019,6 +1019,7 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	struct drm_device *dev = connector->base.dev;
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	drm_WARN_ON(connector->base.dev, !mutex_is_locked(&hdcp->mutex));
 
@@ -1037,7 +1038,7 @@ static void intel_hdcp_update_value(struct intel_connector *connector,
 	hdcp->value = value;
 	if (update_property) {
 		drm_connector_get(&connector->base);
-		schedule_work(&hdcp->prop_work);
+		queue_work(i915->i915_wq, &hdcp->prop_work);
 	}
 }
 
@@ -2132,16 +2133,17 @@ static void intel_hdcp_check_work(struct work_struct *work)
 					       struct intel_hdcp,
 					       check_work);
 	struct intel_connector *connector = intel_hdcp_to_connector(hdcp);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (drm_connector_is_unregistered(&connector->base))
 		return;
 
 	if (!intel_hdcp2_check_link(connector))
-		schedule_delayed_work(&hdcp->check_work,
-				      DRM_HDCP2_CHECK_PERIOD_MS);
+		queue_delayed_work(i915->i915_wq, &hdcp->check_work,
+				   DRM_HDCP2_CHECK_PERIOD_MS);
 	else if (!intel_hdcp_check_link(connector))
-		schedule_delayed_work(&hdcp->check_work,
-				      DRM_HDCP_CHECK_PERIOD_MS);
+		queue_delayed_work(i915->i915_wq, &hdcp->check_work,
+				   DRM_HDCP_CHECK_PERIOD_MS);
 }
 
 static int i915_hdcp_component_bind(struct device *i915_kdev,
@@ -2386,7 +2388,8 @@ int intel_hdcp_enable(struct intel_connector *connector,
 	}
 
 	if (!ret) {
-		schedule_delayed_work(&hdcp->check_work, check_link_interval);
+		queue_delayed_work(dev_priv->i915_wq, &hdcp->check_work,
+				   check_link_interval);
 		intel_hdcp_update_value(connector,
 					DRM_MODE_CONTENT_PROTECTION_ENABLED,
 					true);
@@ -2435,6 +2438,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 				to_intel_connector(conn_state->connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	bool content_protection_type_changed, desired_and_not_enabled = false;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (!connector->hdcp.shim)
 		return;
@@ -2461,7 +2465,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		mutex_lock(&hdcp->mutex);
 		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
 		drm_connector_get(&connector->base);
-		schedule_work(&hdcp->prop_work);
+		queue_work(i915->i915_wq, &hdcp->prop_work);
 		mutex_unlock(&hdcp->mutex);
 	}
 
@@ -2478,7 +2482,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 		 */
 		if (!desired_and_not_enabled && !content_protection_type_changed) {
 			drm_connector_get(&connector->base);
-			schedule_work(&hdcp->prop_work);
+			queue_work(i915->i915_wq, &hdcp->prop_work);
 		}
 	}
 
@@ -2592,6 +2596,7 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 {
 	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (!hdcp->shim)
 		return;
@@ -2599,5 +2604,5 @@ void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 	atomic_inc(&connector->hdcp.cp_irq_count);
 	wake_up_all(&connector->hdcp.cp_irq_queue);
 
-	schedule_delayed_work(&hdcp->check_work, 0);
+	queue_delayed_work(i915->i915_wq, &hdcp->check_work, 0);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index b12900446828..7a50c392e8b1 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -211,7 +211,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 	/* Enable polling and queue hotplug re-enabling. */
 	if (hpd_disabled) {
 		drm_kms_helper_poll_enable(&dev_priv->drm);
-		mod_delayed_work(system_wq, &dev_priv->display.hotplug.reenable_work,
+		mod_delayed_work(dev_priv->i915_wq,
+				 &dev_priv->display.hotplug.reenable_work,
 				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
 	}
 }
@@ -338,7 +339,8 @@ static void i915_digport_work_func(struct work_struct *work)
 		spin_lock_irq(&dev_priv->irq_lock);
 		dev_priv->display.hotplug.event_bits |= old_bits;
 		spin_unlock_irq(&dev_priv->irq_lock);
-		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
+		queue_delayed_work(dev_priv->i915_wq,
+				   &dev_priv->display.hotplug.hotplug_work, 0);
 	}
 }
 
@@ -445,7 +447,8 @@ static void i915_hotplug_work_func(struct work_struct *work)
 		dev_priv->display.hotplug.retry_bits |= retry;
 		spin_unlock_irq(&dev_priv->irq_lock);
 
-		mod_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work,
+		mod_delayed_work(dev_priv->i915_wq,
+				 &dev_priv->display.hotplug.hotplug_work,
 				 msecs_to_jiffies(HPD_RETRY_DELAY));
 	}
 }
@@ -576,7 +579,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
 	if (queue_dig)
 		queue_work(dev_priv->display.hotplug.dp_wq, &dev_priv->display.hotplug.dig_port_work);
 	if (queue_hp)
-		queue_delayed_work(system_wq, &dev_priv->display.hotplug.hotplug_work, 0);
+		queue_delayed_work(dev_priv->i915_wq,
+				   &dev_priv->display.hotplug.hotplug_work, 0);
 }
 
 /**
@@ -686,7 +690,8 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
 	 * As well, there's no issue if we race here since we always reschedule
 	 * this worker anyway
 	 */
-	schedule_work(&dev_priv->display.hotplug.poll_init_work);
+	queue_work(dev_priv->i915_wq,
+		   &dev_priv->display.hotplug.poll_init_work);
 }
 
 /**
@@ -714,7 +719,8 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
 		return;
 
 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
-	schedule_work(&dev_priv->display.hotplug.poll_init_work);
+	queue_work(dev_priv->i915_wq,
+		   &dev_priv->display.hotplug.poll_init_work);
 }
 
 void intel_hpd_init_early(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index b7973a05d022..e7af1935b4eb 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -635,7 +635,8 @@ static void asle_work(struct work_struct *work)
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 {
 	if (dev_priv->display.opregion.asle)
-		schedule_work(&dev_priv->display.opregion.asle_work);
+		queue_work(dev_priv->i915_wq,
+			   &dev_priv->display.opregion.asle_work);
 }
 
 #define ACPI_EV_DISPLAY_SWITCH (1<<0)
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 4f0b0cca03cc..63d1d879bd69 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -867,6 +867,7 @@ static void edp_panel_vdd_work(struct work_struct *__work)
 
 static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	unsigned long delay;
 
 	/*
@@ -882,7 +883,8 @@ static void edp_panel_vdd_schedule_off(struct intel_dp *intel_dp)
 	 * operations.
 	 */
 	delay = msecs_to_jiffies(intel_dp->pps.panel_power_cycle_delay * 5);
-	schedule_delayed_work(&intel_dp->pps.panel_vdd_work, delay);
+	queue_delayed_work(i915->i915_wq,
+			   &intel_dp->pps.panel_vdd_work, delay);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ea0389c5f656..ca2337e84159 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -341,7 +341,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 */
 		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp));
 
-		schedule_work(&intel_dp->psr.work);
+		queue_work(dev_priv->i915_wq, &intel_dp->psr.work);
 	}
 }
 
@@ -2440,6 +2440,8 @@ static void
 tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 		       enum fb_op_origin origin)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
 	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
 	    !intel_dp->psr.active)
 		return;
@@ -2453,7 +2455,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 		return;
 
 	tgl_psr2_enable_dc3co(intel_dp);
-	mod_delayed_work(system_wq, &intel_dp->psr.dc3co_work,
+	mod_delayed_work(i915->i915_wq, &intel_dp->psr.dc3co_work,
 			 intel_dp->psr.dc3co_exit_delay);
 }
 
@@ -2493,7 +2495,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		psr_force_hw_tracking_exit(intel_dp);
 
 		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			schedule_work(&intel_dp->psr.work);
+			queue_work(dev_priv->i915_wq, &intel_dp->psr.work);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 750326434677..cf313296efd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2327,6 +2327,7 @@ static u32 active_ccid(struct intel_engine_cs *engine)
 
 static void execlists_capture(struct intel_engine_cs *engine)
 {
+	struct drm_i915_private *i915 = engine->i915;
 	struct execlists_capture *cap;
 
 	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
@@ -2375,7 +2376,7 @@ static void execlists_capture(struct intel_engine_cs *engine)
 		goto err_rq;
 
 	INIT_WORK(&cap->work, execlists_capture_work);
-	schedule_work(&cap->work);
+	queue_work(i915->i915_wq, &cap->work);
 	return;
 
 err_rq:
@@ -3680,7 +3681,7 @@ static void virtual_context_destroy(struct kref *kref)
 	 * lock, we can delegate the free of the engine to an RCU worker.
 	 */
 	INIT_RCU_WORK(&ve->rcu, rcu_virtual_context_destroy);
-	queue_rcu_work(system_wq, &ve->rcu);
+	queue_rcu_work(ve->context.engine->i915->i915_wq, &ve->rcu);
 }
 
 static void virtual_engine_initial_hint(struct virtual_engine *ve)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
index cadfd85785b1..a4ead9ccd223 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -88,10 +88,11 @@ static void pool_free_work(struct work_struct *wrk)
 {
 	struct intel_gt_buffer_pool *pool =
 		container_of(wrk, typeof(*pool), work.work);
+	struct intel_gt *gt = container_of(pool, struct intel_gt, buffer_pool);
 
 	if (pool_free_older_than(pool, HZ))
-		schedule_delayed_work(&pool->work,
-				      round_jiffies_up_relative(HZ));
+		queue_delayed_work(gt->i915->i915_wq, &pool->work,
+				   round_jiffies_up_relative(HZ));
 }
 
 static void pool_retire(struct i915_active *ref)
@@ -99,6 +100,7 @@ static void pool_retire(struct i915_active *ref)
 	struct intel_gt_buffer_pool_node *node =
 		container_of(ref, typeof(*node), active);
 	struct intel_gt_buffer_pool *pool = node->pool;
+	struct intel_gt *gt = container_of(pool, struct intel_gt, buffer_pool);
 	struct list_head *list = bucket_for_size(pool, node->obj->base.size);
 	unsigned long flags;
 
@@ -116,8 +118,8 @@ static void pool_retire(struct i915_active *ref)
 	WRITE_ONCE(node->age, jiffies ?: 1); /* 0 reserved for active nodes */
 	spin_unlock_irqrestore(&pool->lock, flags);
 
-	schedule_delayed_work(&pool->work,
-			      round_jiffies_up_relative(HZ));
+	queue_delayed_work(gt->i915->i915_wq, &pool->work,
+			   round_jiffies_up_relative(HZ));
 }
 
 void intel_gt_buffer_pool_mark_used(struct intel_gt_buffer_pool_node *node)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 95e59ed6651d..6916c86acbc1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -375,7 +375,7 @@ static void gen7_parity_error_irq_handler(struct intel_gt *gt, u32 iir)
 	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT)
 		gt->i915->l3_parity.which_slice |= 1 << 0;
 
-	schedule_work(&gt->i915->l3_parity.error_work);
+	queue_work(gt->i915->i915_wq, &gt->i915->l3_parity.error_work);
 }
 
 void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 1dfd01668c79..13f372143cc9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -116,7 +116,7 @@ void intel_engine_add_retire(struct intel_engine_cs *engine,
 	GEM_BUG_ON(intel_engine_is_virtual(engine));
 
 	if (add_retire(engine, tl))
-		schedule_work(&engine->retire_work);
+		queue_work(engine->i915->i915_wq, &engine->retire_work);
 }
 
 void intel_engine_init_retire(struct intel_engine_cs *engine)
@@ -207,8 +207,8 @@ static void retire_work_handler(struct work_struct *work)
 	struct intel_gt *gt =
 		container_of(work, typeof(*gt), requests.retire_work.work);
 
-	schedule_delayed_work(&gt->requests.retire_work,
-			      round_jiffies_up_relative(HZ));
+	queue_delayed_work(gt->i915->i915_wq, &gt->requests.retire_work,
+			   round_jiffies_up_relative(HZ));
 	intel_gt_retire_requests(gt);
 }
 
@@ -224,8 +224,8 @@ void intel_gt_park_requests(struct intel_gt *gt)
 
 void intel_gt_unpark_requests(struct intel_gt *gt)
 {
-	schedule_delayed_work(&gt->requests.retire_work,
-			      round_jiffies_up_relative(HZ));
+	queue_delayed_work(gt->i915->i915_wq, &gt->requests.retire_work,
+			   round_jiffies_up_relative(HZ));
 }
 
 void intel_gt_fini_requests(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 195ff72d7a14..26ccb7ed1f91 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1625,7 +1625,7 @@ void __intel_init_wedge(struct intel_wedge_me *w,
 	w->name = name;
 
 	INIT_DELAYED_WORK_ONSTACK(&w->work, intel_wedge_me);
-	schedule_delayed_work(&w->work, timeout);
+	queue_delayed_work(gt->i915->i915_wq, &w->work, timeout);
 }
 
 void __intel_fini_wedge(struct intel_wedge_me *w)
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 80968e49e2c3..2dfbc43a71d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -72,13 +72,14 @@ static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
 static void rps_timer(struct timer_list *t)
 {
 	struct intel_rps *rps = from_timer(rps, t, timer);
+	struct intel_gt *gt = rps_to_gt(rps);
 	struct intel_engine_cs *engine;
 	ktime_t dt, last, timestamp;
 	enum intel_engine_id id;
 	s64 max_busy[3] = {};
 
 	timestamp = 0;
-	for_each_engine(engine, rps_to_gt(rps), id) {
+	for_each_engine(engine, gt, id) {
 		s64 busy;
 		int i;
 
@@ -122,7 +123,7 @@ static void rps_timer(struct timer_list *t)
 
 			busy += div_u64(max_busy[i], 1 << i);
 		}
-		GT_TRACE(rps_to_gt(rps),
+		GT_TRACE(gt,
 			 "busy:%lld [%d%%], max:[%lld, %lld, %lld], interval:%d\n",
 			 busy, (int)div64_u64(100 * busy, dt),
 			 max_busy[0], max_busy[1], max_busy[2],
@@ -132,12 +133,12 @@ static void rps_timer(struct timer_list *t)
 		    rps->cur_freq < rps->max_freq_softlimit) {
 			rps->pm_iir |= GEN6_PM_RP_UP_THRESHOLD;
 			rps->pm_interval = 1;
-			schedule_work(&rps->work);
+			queue_work(gt->i915->i915_wq, &rps->work);
 		} else if (100 * busy < rps->power.down_threshold * dt &&
 			   rps->cur_freq > rps->min_freq_softlimit) {
 			rps->pm_iir |= GEN6_PM_RP_DOWN_THRESHOLD;
 			rps->pm_interval = 1;
-			schedule_work(&rps->work);
+			queue_work(gt->i915->i915_wq, &rps->work);
 		} else {
 			rps->last_adj = 0;
 		}
@@ -972,7 +973,7 @@ static int rps_set_boost_freq(struct intel_rps *rps, u32 val)
 	}
 	mutex_unlock(&rps->lock);
 	if (boost)
-		schedule_work(&rps->work);
+		queue_work(rps_to_gt(rps)->i915->i915_wq, &rps->work);
 
 	return 0;
 }
@@ -1024,7 +1025,8 @@ void intel_rps_boost(struct i915_request *rq)
 			if (!atomic_fetch_inc(&slpc->num_waiters)) {
 				GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
 					 rq->fence.context, rq->fence.seqno);
-				schedule_work(&slpc->boost_work);
+				queue_work(rps_to_gt(rps)->i915->i915_wq,
+					   &slpc->boost_work);
 			}
 
 			return;
@@ -1040,7 +1042,7 @@ void intel_rps_boost(struct i915_request *rq)
 			 rq->fence.context, rq->fence.seqno);
 
 		if (READ_ONCE(rps->cur_freq) < rps->boost_freq)
-			schedule_work(&rps->work);
+			queue_work(rps_to_gt(rps)->i915->i915_wq, &rps->work);
 
 		WRITE_ONCE(rps->boosts, rps->boosts + 1); /* debug only */
 	}
@@ -1899,7 +1901,7 @@ void gen11_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 	gen6_gt_pm_mask_irq(gt, events);
 
 	rps->pm_iir |= events;
-	schedule_work(&rps->work);
+	queue_work(gt->i915->i915_wq, &rps->work);
 }
 
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
@@ -1916,7 +1918,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
 		gen6_gt_pm_mask_irq(gt, events);
 		rps->pm_iir |= events;
 
-		schedule_work(&rps->work);
+		queue_work(gt->i915->i915_wq, &rps->work);
 		spin_unlock(gt->irq_lock);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
index 542ce6d2de19..a7627ccf13f1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
@@ -27,7 +27,7 @@ static void perf_begin(struct intel_gt *gt)
 
 	/* Boost gpufreq to max [waitboost] and keep it fixed */
 	atomic_inc(&gt->rps.num_waiters);
-	schedule_work(&gt->rps.work);
+	queue_work(gt->i915->i915_wq, &gt->rps.work);
 	flush_work(&gt->rps.work);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index fd198700272b..6ab5db790490 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -132,8 +132,14 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	if (dev_priv->display.hotplug.dp_wq == NULL)
 		goto out_free_wq;
 
+	dev_priv->i915_wq = alloc_workqueue("i915-generic", 0, 0);
+	if (dev_priv->i915_wq == NULL)
+		goto out_free_dp_wq;
+
 	return 0;
 
+out_free_dp_wq:
+	destroy_workqueue(dev_priv->i915_wq);
 out_free_wq:
 	destroy_workqueue(dev_priv->wq);
 out_err:
@@ -144,6 +150,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 
 static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
 {
+	destroy_workqueue(dev_priv->i915_wq);
 	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
 	destroy_workqueue(dev_priv->wq);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 14c5338c96a6..06cd956b03ab 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -259,6 +259,8 @@ struct drm_i915_private {
 	 */
 	struct workqueue_struct *wq;
 
+	struct workqueue_struct *i915_wq;
+
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
@@ -930,5 +932,4 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
 				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
-
 #endif
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 630a732aaecc..0f77c46cacab 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -290,7 +290,7 @@ static enum hrtimer_restart __rq_watchdog_expired(struct hrtimer *hrtimer)
 
 	if (!i915_request_completed(rq)) {
 		if (llist_add(&rq->watchdog.link, &gt->watchdog.list))
-			schedule_work(&gt->watchdog.work);
+			queue_work(gt->i915->i915_wq, &gt->watchdog.work);
 	} else {
 		i915_request_put(rq);
 	}
-- 
2.39.2

