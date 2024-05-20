Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44788CA266
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F0CE10E31E;
	Mon, 20 May 2024 18:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3G28wjC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F3C10E881
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231518; x=1747767518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lPgYdvlyyuL/xzlTjHndEAwMDVvkUL5vlYEFOxj377k=;
 b=i3G28wjCu/P1ZzsjbbQEozG/NPfEyzXWoi2NYAQ5hEnXMYFlI0KB8mtW
 nlLTEC0SX3LAkMTWmcZWzhyC7Rbg6ss/KuxESKECvYS1SpyrNTrUB/vLg
 5qCUfmPbvHZhYaN8J7u98YSw5wAsQM2FBfrPXWerbKmlZDmm5J1nxjw5x
 N/yHv+UG5h/cS8N2/m80fj7LJODhCC5OMGjAbfxHImZy7D/YAZYX2K1jj
 udhyV/d+5UlR5xELKZ+Qd6Tv6oVVy0zL3EL/u9HESvgw3b+BqY3TqxDHP
 DUGa1avuXVVcAC8iTVjjqQ1Hu55cyWS1z+LtTyimkKKvMoVgHVYTlKLX8 w==;
X-CSE-ConnectionGUID: 7lvXX/TvTUSJuKcT4VSHqQ==
X-CSE-MsgGUID: Rut1dZKGT9uElJXpXumIXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218558"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218558"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:38 -0700
X-CSE-ConnectionGUID: aeRbihK8RLecHLTv3prTXg==
X-CSE-MsgGUID: CMjhhoOlQhq/aW/29xpKsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213901"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 19/21] drm/i915/dp: Add debugfs entry to force link
 training failure
Date: Mon, 20 May 2024 21:58:17 +0300
Message-ID: <20240520185822.3725844-20-imre.deak@intel.com>
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

Add a connector debugfs entry to force a failure during the following
1-2 link training. The entry will auto-reset after the specified link
training events are complete.

v2: Add the entry from intel_dp_link_training.c (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 .../drm/i915/display/intel_dp_link_training.c | 52 ++++++++++++++++++-
 2 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e1c41cece249d..dbe1468fe471d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1770,6 +1770,7 @@ struct intel_dp {
 		bool retrain_disabled;
 		/* Sequential link training failures after a passing LT */
 		int seq_train_failures;
+		int force_train_failure;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 764187bc42ff9..b40148a42f442 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1489,7 +1489,10 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
-	if (passed) {
+	if (intel_dp->link.force_train_failure) {
+		intel_dp->link.force_train_failure--;
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
+	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
 		intel_ddi_queue_link_check(dig_port, 2000);
 		return;
@@ -1799,6 +1802,50 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 }
 DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
 
+static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
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
+	*val = intel_dp->link.force_train_failure;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+
+static int i915_dp_force_link_training_failure_write(void *data, u64 val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int err;
+
+	if (val > 2)
+		return -EINVAL;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+	intel_dp->link.force_train_failure = val;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
+			 i915_dp_force_link_training_failure_show,
+			 i915_dp_force_link_training_failure_write, "%llu\n");
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1818,4 +1865,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
 			    connector, &i915_dp_max_lane_count_fops);
+
+	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
+			    connector, &i915_dp_force_link_training_failure_fops);
 }
-- 
2.43.3

