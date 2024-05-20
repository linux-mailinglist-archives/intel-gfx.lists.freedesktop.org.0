Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F07A48CA26F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B789510E8E2;
	Mon, 20 May 2024 18:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3CE/C9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7C810E863
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231520; x=1747767520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MK4YnbxLH/VcD/4tyVl1A3WoBvn4ny16psfv3NJSYJU=;
 b=B3CE/C9xpNUZ2dgr4Dt80PsKnL7VngSYu0DMNCKxd69PhxawBql6fOPZ
 sI0pcpae4uuKStJBYojTuAkgnSQJHhlfD6sCruEPOSsZ9yfdTmlTkE/iB
 uBvnLw+KaPMfaWMBi6uxTGXuU/TgW9L3W3LU5kOrFbPU1ClbsFnYZ2T+j
 FfqU2lHxU1FM2VlOTLfsQG5fJcohAouD01kpiXS5DqXVBMN9jOLdeguGu
 wQub5CmAObBQ8eADp6DMnSpwCfkgA2MDoq7Dlr5nShVNnMpgn/hybKDcN
 GJ9NvaOQy6qEOU/GR1IjJTd3H1SAoSWUv9uD0e1S1eWmfWCme0Fbq5TqM w==;
X-CSE-ConnectionGUID: fZEym7huTgOboaHesxxTBw==
X-CSE-MsgGUID: wuJ+XpYyTM+xufVoOPNeuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218562"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218562"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:40 -0700
X-CSE-ConnectionGUID: h51ixuBFRQqjrJytdG8BNQ==
X-CSE-MsgGUID: gU0vZX5jTduyonM26fNPqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213915"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 21/21] drm/i915/dp: Add debugfs entry for link training info
Date: Mon, 20 May 2024 21:58:19 +0300
Message-ID: <20240520185822.3725844-22-imre.deak@intel.com>
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

Add counters for link training pass/failure events and a connector
debugfs entry showing these and relevant link training information. This
is meant to be used by automated testing of the driver's link retraining
and link parameter fallback functionality.

v2:
- Add the entry from intel_dp_link_training.c (Jani)
- Add separate entries for the max link rate/lane count.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++-
 .../drm/i915/display/intel_dp_link_training.c | 37 +++++++++++++++++++
 3 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 52c69c7eb52f5..6f37f2cca2e99 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1768,6 +1768,9 @@ struct intel_dp {
 		int requested_lane_count;
 		int requested_rate;
 		bool retrain_disabled;
+		int train_count;
+		int retrain_count;
+		int all_train_failures;
 		/* Sequential link training failures after a passing LT */
 		int seq_train_failures;
 		int force_train_failure;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 895074d548671..0337be8416082 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2996,6 +2996,9 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.retrain_disabled = false;
+	intel_dp->link.train_count = 0;
+	intel_dp->link.retrain_count = 0;
+	intel_dp->link.all_train_failures = 0;
 	intel_dp->link.seq_train_failures = 0;
 }
 
@@ -5298,8 +5301,10 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 	}
 
 out:
-	if (ret != -EDEADLK)
+	if (ret != -EDEADLK) {
+		intel_dp->link.retrain_count++;
 		intel_dp->link.force_retrain = false;
+	}
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6fac8421a6918..969a5fc4c7b2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1490,6 +1490,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
+	intel_dp->link.train_count++;
+
 	if (intel_dp->link.force_train_failure) {
 		intel_dp->link.force_train_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
@@ -1499,6 +1501,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
+	intel_dp->link.all_train_failures++;
 	intel_dp->link.seq_train_failures++;
 
 	/*
@@ -1890,6 +1893,37 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_retrain_fops,
 			 i915_dp_force_link_retrain_show,
 			 i915_dp_force_link_retrain_write, "%llu\n");
 
+static int i915_dp_link_training_info_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int ret;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+
+	seq_printf(m,
+		   "retrain_disabled: %s\n"
+		   "train_count: %d\n"
+		   "retrain_count: %d\n"
+		   "all_train_failures: %d\n"
+		   "seq_train_failures: %d\n",
+		   str_yes_no(intel_dp->link.retrain_disabled),
+		   intel_dp->link.train_count,
+		   intel_dp->link.retrain_count,
+		   intel_dp->link.all_train_failures,
+		   intel_dp->link.seq_train_failures);
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_dp_link_training_info);
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1915,4 +1949,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
 			    connector, &i915_dp_force_link_retrain_fops);
+
+	debugfs_create_file("i915_dp_link_training_info", 0444, root,
+			    connector, &i915_dp_link_training_info_fops);
 }
-- 
2.43.3

