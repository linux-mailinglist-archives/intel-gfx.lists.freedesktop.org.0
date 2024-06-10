Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89B3902719
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC9A10E4EA;
	Mon, 10 Jun 2024 16:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="citaONUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B2810E4D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038191; x=1749574191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7E5FzIjEedepyzEYfmS/yeQz9QWNTruuhA/HzGtmlz0=;
 b=citaONUJfSvKbW1F02xrVokFbNsIHNB7CsNjxqEQ2FdzycRfSX8JTqDh
 RRp6drEtCwA69XhypumoU+OSTkWCg6vKbp0KmvCDCYm99T+YoHTKfTAxr
 CdYIz0FNkYMCPhxdiq2CioqDQ83taDKYnjO1iups1kNf0mc9Y75++TF0y
 efgJqBA9IwK5ae1TTB9ImJFD0poJH6JT6QDMEwNrk+vE9BFZleChWaIKy
 7Nl5U7Owpmr7Y70SiaLcu8xLFpK+/B+xVnShQ0NbJRVfRyfoI+xtT6zM1
 knNQvbANt6IUqS7zuFIU4Mq5SOv4+o2rDK7uiBptk8DlLZbpapQYA/Yud A==;
X-CSE-ConnectionGUID: zGFbeeJ6S6G6mt49MPgAkw==
X-CSE-MsgGUID: P2wuVsSoQuSS0GhXhO9uzw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494024"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494024"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:51 -0700
X-CSE-ConnectionGUID: tR2MeVY6R8SylKhEAHLidg==
X-CSE-MsgGUID: co1A/Kz5R2iiSl1ZIhSHzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060621"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 20/21] drm/i915/dp: Add debugfs entry to force link retrain
Date: Mon, 10 Jun 2024 19:49:32 +0300
Message-ID: <20240610164933.2947366-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Add a connector debugfs entry to force retrain an active link. This can
be used to test both custom link parameters (previously forced via the
force_link_rate/lane_count entries) or link train failure scenarios
(previously forced via the force_link_training_failure entry). The entry
will autoreset after the link-retrain is complete.

v2: Add the entry from intel_dp_link_training.c (Jani)
v3: Lock connection_mutex only for the required intel_dp state. (Ville)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 +++++---
 .../drm/i915/display/intel_dp_link_training.c | 45 +++++++++++++++++++
 3 files changed, 59 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 1e234da03c4f2..ccf7c546fc16a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1771,6 +1771,7 @@ struct intel_dp {
 		/* Sequential link training failures after a passing LT */
 		int seq_train_failures;
 		int force_train_failure;
+		bool force_retrain;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ca18b4853758d..05edeaf036c63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5050,7 +5050,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	if (!link_ok)
+	if (!link_ok || intel_dp->link.force_retrain)
 		intel_encoder_link_check_queue_work(encoder, 0);
 
 	return !reprobe_needed;
@@ -5099,6 +5099,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
+	if (intel_dp->link.force_retrain)
+		return true;
+
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 					     link_status) < 0)
 		return false;
@@ -5237,8 +5240,9 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
-		    encoder->base.base.id, encoder->base.name);
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link (forced %s)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp->link.force_retrain));
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
@@ -5266,7 +5270,7 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				    encoder->base.base.id, encoder->base.name,
 				    ERR_PTR(ret));
 
-		return ret;
+		goto out;
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
@@ -5293,7 +5297,11 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 							      intel_crtc_pch_transcoder(crtc), true);
 	}
 
-	return 0;
+out:
+	if (ret != -EDEADLK)
+		intel_dp->link.force_retrain = false;
+
+	return ret;
 }
 
 void intel_dp_link_check(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a6ea92b54c2f4..4da550d6e0ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -26,6 +26,7 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_encoder.h"
+#include "intel_hotplug.h"
 #include "intel_panel.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
@@ -1856,6 +1857,47 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
 			 i915_dp_force_link_training_failure_show,
 			 i915_dp_force_link_training_failure_write, "%llu\n");
 
+static int i915_dp_force_link_retrain_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	*val = intel_dp->link.force_retrain;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+
+static int i915_dp_force_link_retrain_write(void *data, u64 val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp->link.force_retrain = val;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_retrain_fops,
+			 i915_dp_force_link_retrain_show,
+			 i915_dp_force_link_retrain_write, "%llu\n");
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1878,4 +1920,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 			    connector, &i915_dp_force_link_training_failure_fops);
+
+	debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
+			    connector, &i915_dp_force_link_retrain_fops);
 }
-- 
2.43.3

