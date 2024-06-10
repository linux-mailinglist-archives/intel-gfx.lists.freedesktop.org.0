Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E69E902718
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2171E10E4E9;
	Mon, 10 Jun 2024 16:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EeYy6WLu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1268710E34E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038190; x=1749574190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kk5lqnxNgezHjCMSEJ5gyGqfzV/1RvoP2/58r19UXj0=;
 b=EeYy6WLuC8WQ4syJRCQxKeH5Uo7rtZs7iJElkfFpE2Q2HIDjmiy6XiK4
 gx2IbeLKQZG0+H5J7dODEfGPcaMn4ue8GQYZFiWOHLsLmEEkQ9NXbOlAj
 NTNO5OAsGznHQ2BGYLm148giWGdKKI3y2ABLNV9Jbs72A2WOT2/3KIM8s
 NeCOJgoZ3SanWkZ5zydDxUArIqxZl/AnPgslTE6NWzsX9DzMN9hjjQKLI
 Fk6J3p5vHTGQEw861Hz9QCCmcUdBQzuxhQ80z68fVIB//PbI0L8TEdbEM
 4nRLaXwF02S2MFNPlpWJtfd551PnzdmMzpsa+v/Umm184nWO4BLQmvMYp Q==;
X-CSE-ConnectionGUID: 2h3B7vOTQA21EtJzryqDLQ==
X-CSE-MsgGUID: 51ySHBklQAyI6XfQQdw0Eg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494022"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494022"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:49 -0700
X-CSE-ConnectionGUID: cPp4xu0RRL6L3CRhiOE3hA==
X-CSE-MsgGUID: 96HPv63hSruOMsZrsVr30g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060615"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 19/21] drm/i915/dp: Add debugfs entry to force link
 training failure
Date: Mon, 10 Jun 2024 19:49:31 +0300
Message-ID: <20240610164933.2947366-20-imre.deak@intel.com>
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

Add a connector debugfs entry to force a failure during the following
1-2 link training. The entry will auto-reset after the specified link
training events are complete.

v2: Add the entry from intel_dp_link_training.c (Jani)
v3: Lock connection_mutex only for the required intel_dp state. (Ville)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++++-
 2 files changed, 54 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2ece5f0d86cec..1e234da03c4f2 100644
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
index 184206067fa61..a6ea92b54c2f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1504,7 +1504,10 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
-	if (passed) {
+	if (intel_dp->link.force_train_failure) {
+		intel_dp->link.force_train_failure--;
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
+	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
 		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
@@ -1539,7 +1542,10 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 
 	intel_dp->link.retrain_disabled = true;
 
-	lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
+	if (!passed)
+		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
+	else
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after forced failure\n");
 }
 
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
@@ -1808,6 +1814,48 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 }
 DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
 
+static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
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
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	if (val > 2)
+		return -EINVAL;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
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
@@ -1827,4 +1875,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
 			    connector, &i915_dp_max_lane_count_fops);
+
+	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
+			    connector, &i915_dp_force_link_training_failure_fops);
 }
-- 
2.43.3

