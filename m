Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1518C5B9E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F21610EB33;
	Tue, 14 May 2024 19:14:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FeWij6a9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6F510EB2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714075; x=1747250075;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qFdtrXqgWgAUXf0xpeRBaYAJdQvJxTHsXaU7BUE4lgU=;
 b=FeWij6a9ew92Y49cnvcUtLg+ADTcWXcc68gvXQs/HMDOC7kNN6vmjzgI
 k5YBuECD4Qs7SAiphqZeLMwA2XzHu7ulH+gHStz95abypXyuIPjX4bMCL
 OeEyJ70jszwzwz/8Yu8G5ZCBvslxQ1AAU+Hz6OPmvjoNtfekgdYUVGf6E
 zADxF+oZLrG4t7UYHCxHozyLK5YQv9cUIBtOgVHUvnGmKND0S4Ysrio8b
 5HEDMQ2erAIBeEm54mwIJ5Q/INnyZR7Fe1rGIZbnEISxNKaT2pLAxdFmG
 uqkLbWGr5HMaLf4nEDSpUsEWaiVMAOS+2jbnUPuZYNGL44pLIMnUpwVJ5 g==;
X-CSE-ConnectionGUID: YS38B7C1Qo6dFO1xOc0x3A==
X-CSE-MsgGUID: 4RTU8StAQUaK0+hH9CetmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23125004"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23125004"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:35 -0700
X-CSE-ConnectionGUID: jRDVQjtvQbWpijIfzXo4mQ==
X-CSE-MsgGUID: MaB+N1fWRqW2c74LLgcnHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724654"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 20/20] drm/i915/dp: Add debugfs entry for link training info
Date: Tue, 14 May 2024 22:14:18 +0300
Message-ID: <20240514191418.2863344-21-imre.deak@intel.com>
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

Add counters for link training pass/failure events and a connector
debugfs entry showing these and relevant link training information. This
is meant to be used by automated testing of the driver's link retraining
and link parameter fallback functionality.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 38 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++-
 .../drm/i915/display/intel_dp_link_training.c |  3 ++
 4 files changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 4f19d30e6972f..b25af91883584 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1612,6 +1612,41 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_retrain_fops,
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
+		   "max_rate: %d\n"
+		   "max_lane_count: %d\n"
+		   "train_count: %d\n"
+		   "retrain_count: %d\n"
+		   "retrain_disabled: %s\n"
+		   "all_failures: %d\n"
+		   "seq_failures: %d\n",
+		   intel_dp->link_train.max_rate,
+		   intel_dp->link_train.max_lane_count,
+		   intel_dp->link_train.train_count,
+		   intel_dp->link_train.retrain_count,
+		   str_yes_no(intel_dp->link_train.retrain_disabled),
+		   intel_dp->link_train.all_failures,
+		   intel_dp->link_train.seq_failures);
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_dp_link_training_info);
+
 static int i915_dsc_output_format_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = m->private;
@@ -1832,6 +1867,9 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 
 		debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
 				    connector, &i915_dp_force_link_retrain_fops);
+
+		debugfs_create_file("i915_dp_link_training_info", 0444, root,
+				    connector, &i915_dp_link_training_info_fops);
 	}
 
 	if (DISPLAY_VER(i915) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 345e2883d9cfc..6ff1819fc225e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1765,7 +1765,10 @@ struct intel_dp {
 		int max_lane_count;
 		/* Max rate for the current link */
 		int max_rate;
+		int train_count;
+		int retrain_count;
 		bool retrain_disabled;
+		int all_failures;
 		/* Sequential failures after a passing LT */
 		int seq_failures;
 		int force_failure;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 28842ae51039a..0da081c457726 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2997,6 +2997,9 @@ void intel_dp_reset_link_train_params(struct intel_dp *intel_dp)
 	intel_dp->link_train.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link_train.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link_train.retrain_disabled = false;
+	intel_dp->link_train.train_count = 0;
+	intel_dp->link_train.retrain_count = 0;
+	intel_dp->link_train.all_failures = 0;
 	intel_dp->link_train.seq_failures = 0;
 }
 
@@ -5290,8 +5293,10 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	}
 
 out:
-	if (ret != -EDEADLK)
+	if (ret != -EDEADLK) {
+		intel_dp->link_train.retrain_count++;
 		intel_dp->link_train.force_retrain = false;
+	}
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c260299c53b7c..c43af290a4373 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1484,6 +1484,8 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
+	intel_dp->link_train.train_count++;
+
 	if (intel_dp->link_train.force_failure) {
 		intel_dp->link_train.force_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
@@ -1493,6 +1495,7 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
+	intel_dp->link_train.all_failures++;
 	intel_dp->link_train.seq_failures++;
 
 	/*
-- 
2.43.3

