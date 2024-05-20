Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9E48CA270
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:59:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F4F10E873;
	Mon, 20 May 2024 18:59:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PfeRsmEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED6710E88A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231519; x=1747767519;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h8MEZUKemb58H86VbTWPxtadbP993NAUdZm8GuVHwAQ=;
 b=PfeRsmEjqhQkqJsmS8pR4FYoW5D+mcw+fQLqVqKCQX8308qt4l94ZPap
 YLqkLXl9iE7s5rR9Ha/sXYkMxvtDMBcAC3x49Re8EL3Ns4gAnaQtIg/+Z
 XaIrerNRNmp0epqEble3SX/wU+gOGBJFpnEAUpbuir8d9UJnNRMeWkCeo
 dvawTk+2ZdHs7F/4phOWB6DFzWUxsCf2ZRH8y1Xoz63+Pm9hVEADETwev
 DswxnoAyL6UwDjB1htG2v9dViyfTKbahpiOIJMdIrTu9QJ9I3zUhEmBiq
 2OURGud02hH0fFqdFW3B7B2rmh1PWbnaQmqz9em/uCDLKDSENzjwfTFNT w==;
X-CSE-ConnectionGUID: gXSVYnOwRp2bK7xJ0alrWQ==
X-CSE-MsgGUID: O4ASrXM6ReCmVjrwCu4NiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218561"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218561"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:39 -0700
X-CSE-ConnectionGUID: /BPK+NWcSaSB0UoID8F4ow==
X-CSE-MsgGUID: 3ARhuo3uRR2b3YbcgXfveg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213909"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 20/21] drm/i915/dp: Add debugfs entry to force link retrain
Date: Mon, 20 May 2024 21:58:18 +0300
Message-ID: <20240520185822.3725844-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
MIME-Version: 1.0
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
be used to test both custom link parameters (previously set via the
target link lane count/rate entries) or link train failure scenarios
(previously forced via the force-failure entry). The entry will
autoreset after the link-retrain is complete.

v2: Add the entry from intel_dp_link_training.c (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 +++++--
 .../drm/i915/display/intel_dp_link_training.c | 47 +++++++++++++++++++
 3 files changed, 61 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dbe1468fe471d..52c69c7eb52f5 100644
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
index cf4a768fccd15..895074d548671 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5042,7 +5042,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	if (!link_ok)
+	if (!link_ok || intel_dp->link.force_retrain)
 		intel_ddi_queue_link_check(dig_port, 0);
 
 	return !reprobe_needed;
@@ -5091,6 +5091,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
+	if (intel_dp->link.force_retrain)
+		return true;
+
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 					     link_status) < 0)
 		return false;
@@ -5237,8 +5240,9 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
-		    encoder->base.base.id, encoder->base.name);
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link (forced %s)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp->link.force_retrain));
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
@@ -5266,7 +5270,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 				    encoder->base.base.id, encoder->base.name,
 				    ERR_PTR(ret));
 
-		return ret;
+		goto out;
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
@@ -5293,7 +5297,11 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 							      intel_crtc_pch_transcoder(crtc), true);
 	}
 
-	return 0;
+out:
+	if (ret != -EDEADLK)
+		intel_dp->link.force_retrain = false;
+
+	return ret;
 }
 
 static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b40148a42f442..6fac8421a6918 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -26,6 +26,7 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_ddi.h"
+#include "intel_hotplug.h"
 #include "intel_panel.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
@@ -1846,6 +1847,49 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
 			 i915_dp_force_link_training_failure_show,
 			 i915_dp_force_link_training_failure_write, "%llu\n");
 
+static int i915_dp_force_link_retrain_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
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
+	struct intel_dp *intel_dp;
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	intel_dp->link.force_retrain = val;
+	intel_hpd_trigger_irq(dp_to_dig_port(intel_dp));
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
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
@@ -1868,4 +1912,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 			    connector, &i915_dp_force_link_training_failure_fops);
+
+	debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
+			    connector, &i915_dp_force_link_retrain_fops);
 }
-- 
2.43.3

