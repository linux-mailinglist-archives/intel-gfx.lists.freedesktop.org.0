Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40D38C5B9B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC46310EA58;
	Tue, 14 May 2024 19:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RUO4VW6d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0AC10EB2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714073; x=1747250073;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7Hn2Y+j3alXTCrg+006gC7FKz8hD4Sf8OILl0DVCkYk=;
 b=RUO4VW6d5Sz1XmQkZdlthD2epXamGXfyCH6XyDItkP6jj1N/yCQBYQH5
 e/WxMvQWWdHHp1ksD7cPrx1UDJo1lxIrdx04MhUnRytM4MG/4o2BXq+Qe
 5f4rMl6Gp67Ih+RJ2G7jcqWpRz2TpcY8Dz6rVp/hEjrKeBv+ltNyJRBsm
 U5+xyrh1HzsrRFBmgEKTT+KGmy20Krt6TneYYS23sHKqlCGDbm+c3l0QN
 rp+sM7+BoYSeFou+NbqehArAPB7vB+wE9N24alxEV9NrgIC7mSBmg5/OT
 ab1/ST6axoKLGXhiQyLOgVRE1xwcYxF43JYFkZXW2lRAS+b88b4UWpu70 w==;
X-CSE-ConnectionGUID: NVwCQMpSQdeAZAQSsnaX1A==
X-CSE-MsgGUID: 8RJ84ppwQvitsH+95QgXIg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23125002"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23125002"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:33 -0700
X-CSE-ConnectionGUID: bEqIrKHdR7epQ+PSwagt3A==
X-CSE-MsgGUID: qqFykcGNT165hthDAjIITw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724644"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 18/20] drm/i915/dp: Add debugfs entry to force link training
 failure
Date: Tue, 14 May 2024 22:14:16 +0300
Message-ID: <20240514191418.2863344-19-imre.deak@intel.com>
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

Add a connector debugfs entry to force a failure during the following
1-2 link training. The entry will auto-reset after the specified link
training events are complete.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 .../drm/i915/display/intel_dp_link_training.c |  5 +-
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 521721a20358f..098d0f5190723 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1525,6 +1525,50 @@ static ssize_t i915_dp_requested_lane_count_write(struct file *file,
 }
 DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_requested_lane_count);
 
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
+	*val = intel_dp->link_train.force_failure;
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
+	intel_dp->link_train.force_failure = val;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_training_failure_fops,
+			 i915_dp_force_link_training_failure_show,
+			 i915_dp_force_link_training_failure_write, "%llu\n");
+
 static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1739,6 +1783,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 
 		debugfs_create_file("i915_dp_lane_count", 0644, root,
 				    connector, &i915_dp_requested_lane_count_fops);
+
+		debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
+				    connector, &i915_dp_force_link_training_failure_fops);
 	}
 
 	if (DISPLAY_VER(i915) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 351c445d3cb5b..62acec5236052 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1768,6 +1768,7 @@ struct intel_dp {
 		bool retrain_disabled;
 		/* Sequential failures after a passing LT */
 		int seq_failures;
+		int force_failure;
 	} link_train;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 352c77f46015e..c260299c53b7c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1484,7 +1484,10 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
-	if (passed) {
+	if (intel_dp->link_train.force_failure) {
+		intel_dp->link_train.force_failure--;
+		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
+	} else if (passed) {
 		intel_dp->link_train.seq_failures = 0;
 		intel_dp_queue_link_check(intel_dp, 2000);
 		return;
-- 
2.43.3

