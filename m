Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A10C8C5B9A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36AE10EA4D;
	Tue, 14 May 2024 19:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWzL0Mtc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18F710EB32
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714074; x=1747250074;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JuzLUWbKNMQ4ZI7YgWPMBIoEV/oeTOymPJd3h6rofNk=;
 b=AWzL0Mtc1Pn4v55be43BZNhXgFhGml2DuDViSYmhaM07s7s5ztj2WP+X
 vobxg017iOsBdkQTdpdeAcv/0YnGOI3KYZIXu1/iJ20rsht9lFP4N03JR
 MCSNFq5Le+6s61QZknQ6Nuvunv+h89aNZFtO2QnFwQ8AK+7bNCoqhh6Ux
 bU/dQIbEfqxJPkkE9FZ4CU+2gAHcqtXG7MbUDEPTFCbZjmkg+3+CxeyGz
 XE0wjJFc1rmFjOvyionCqzT36BG8h2XMswVG/lX3tZw+V1j2H3/nPML9U
 Xju22Uu17DGmf2rI4VozHo6+SZZIBi5sgs9VpeWxuj8hiPOVctS1+I7Fy A==;
X-CSE-ConnectionGUID: vxsNGcE3QzGlX0mPFyEvEw==
X-CSE-MsgGUID: E2aPICvjSXCZxA1leP48cQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23125003"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23125003"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:34 -0700
X-CSE-ConnectionGUID: eqwUJOgqTK2+hv4AltZyFg==
X-CSE-MsgGUID: mIelShG/RYudMBmziNMS1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724649"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 19/20] drm/i915/dp: Add debugfs entry to force link retrain
Date: Tue, 14 May 2024 22:14:17 +0300
Message-ID: <20240514191418.2863344-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 18 ++++++--
 3 files changed, 60 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 098d0f5190723..4f19d30e6972f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1569,6 +1569,49 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
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
+	*val = intel_dp->link_train.force_retrain;
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
+	intel_dp->link_train.force_retrain = val;
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
 static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1786,6 +1829,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 
 		debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 				    connector, &i915_dp_force_link_training_failure_fops);
+
+		debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
+				    connector, &i915_dp_force_link_retrain_fops);
 	}
 
 	if (DISPLAY_VER(i915) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 62acec5236052..345e2883d9cfc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1769,6 +1769,7 @@ struct intel_dp {
 		/* Sequential failures after a passing LT */
 		int seq_failures;
 		int force_failure;
+		bool force_retrain;
 	} link_train;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 367970f956863..28842ae51039a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5042,7 +5042,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	if (!link_ok)
+	if (!link_ok || intel_dp->link_train.force_retrain)
 		intel_dp_queue_link_check(intel_dp, 0);
 
 	return !reprobe_needed;
@@ -5091,6 +5091,9 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
+	if (intel_dp->link_train.force_retrain)
+		return true;
+
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 					     link_status) < 0)
 		return false;
@@ -5229,8 +5232,9 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link\n",
-		    encoder->base.base.id, encoder->base.name);
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] retraining link (forced %s)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp->link_train.force_retrain));
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
@@ -5258,7 +5262,7 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				    encoder->base.base.id, encoder->base.name,
 				    ERR_PTR(ret));
 
-		return ret;
+		goto out;
 	}
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
@@ -5285,7 +5289,11 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 							      intel_crtc_pch_transcoder(crtc), true);
 	}
 
-	return 0;
+out:
+	if (ret != -EDEADLK)
+		intel_dp->link_train.force_retrain = false;
+
+	return ret;
 }
 
 static void intel_dp_link_check_work_fn(struct work_struct *work)
-- 
2.43.3

