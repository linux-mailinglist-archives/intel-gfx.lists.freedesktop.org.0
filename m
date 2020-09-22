Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF14274270
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB766E148;
	Tue, 22 Sep 2020 12:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965C06E13F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:26 +0000 (UTC)
IronPort-SDR: HwEunXwy8a5dNDz5e9puLCXEDACeqMDOK9otWC02hf4lWgs1m2mSzoKNdhuJt3NjjwMAQKdSGF
 JKgq5Bq5C5CA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342804"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:26 -0700
IronPort-SDR: KCnZ0eAUcHNfKGFKWmTJvFyknKxOUKRmNWXtRpcNgvGi4hHR1kp/t5mNWjL+YVwFg1fB3IZfRU
 MT6DwZIA6G8Q==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485611"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:25 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:02 +0300
Message-Id: <20200922125106.30540-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Simplify the link training
 functions
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split the prepare, link training, fallback-handling steps into their own
functions for clarity and as a preparation for the upcoming LTTPR changes.

While at it also add some documentation to exported functions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 80 ++++++++++++++-----
 1 file changed, 62 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6d13d00db5e6..0c3809891bd2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -162,14 +162,13 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp)
 	return true;
 }
 
-/* Enable corresponding port and start training pattern 1 */
-static bool
-intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
+/*
+ * Prepare link training by configuring the link parameters and enabling the
+ * corresponding port.
+ */
+static void intel_dp_prepare_link_train(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 voltage;
-	int voltage_tries, cr_tries, max_cr_tries;
-	bool max_vswing_reached = false;
 	u8 link_config[2];
 	u8 link_bw, rate_select;
 
@@ -203,6 +202,16 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
 
 	intel_dp->DP |= DP_PORT_EN;
+}
+
+/* Perform the link training clock recovery phase using training pattern 1. */
+static bool
+intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 voltage;
+	int voltage_tries, cr_tries, max_cr_tries;
+	bool max_vswing_reached = false;
 
 	/* clock recovery */
 	if (!intel_dp_reset_link_train(intel_dp,
@@ -325,6 +334,10 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
 	return DP_TRAINING_PATTERN_2;
 }
 
+/*
+ * Perform the link training channel equalization phase using one of training
+ * pattern 2, 3 or 4 depending on the the source and sink capabilities.
+ */
 static bool
 intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 {
@@ -395,6 +408,15 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
 
 }
 
+/**
+ * intel_dp_stop_link_train - stop link training
+ * @intel_dp: DP struct
+ *
+ * Stop the link training of the @intel_dp port, programming the port to
+ * output an idle pattern on the link and  disabling the training pattern in
+ * the sink's DPCD.
+ * This function must be called after intel_dp_start_link_train().
+ */
 void intel_dp_stop_link_train(struct intel_dp *intel_dp)
 {
 	intel_dp->link_trained = true;
@@ -403,30 +425,37 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp)
 				DP_TRAINING_PATTERN_DISABLE);
 }
 
-void
-intel_dp_start_link_train(struct intel_dp *intel_dp)
+static bool
+intel_dp_link_train(struct intel_dp *intel_dp)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	bool ret = false;
+
+	intel_dp_prepare_link_train(intel_dp);
 
 	if (!intel_dp_link_training_clock_recovery(intel_dp))
-		goto failure_handling;
+		goto out;
+
 	if (!intel_dp_link_training_channel_equalization(intel_dp))
-		goto failure_handling;
+		goto out;
 
-	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[CONNECTOR:%d:%s] Link Training Passed at Link Rate = %d, Lane count = %d",
-		    intel_connector->base.base.id,
-		    intel_connector->base.name,
-		    intel_dp->link_rate, intel_dp->lane_count);
-	return;
+	ret = true;
 
- failure_handling:
+out:
 	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
-		    "[CONNECTOR:%d:%s] Link Training failed at link rate = %d, lane count = %d",
+		    "[CONNECTOR:%d:%s] Link Training %s at Link Rate = %d, Lane count = %d",
 		    intel_connector->base.base.id,
 		    intel_connector->base.name,
+		    ret ? "passed" : "failed",
 		    intel_dp->link_rate, intel_dp->lane_count);
 
+	return ret;
+}
+
+static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp)
+{
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+
 	if (intel_dp->hobl_active) {
 		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
 			    "Link Training failed with HOBL active, not enabling it from now on");
@@ -440,3 +469,18 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
 	schedule_work(&intel_connector->modeset_retry_work);
 }
+
+/**
+ * intel_dp_start_link_train - start link training
+ * @intel_dp: DP struct
+ *
+ * Start the link training of the @intel_dp port, scheduling a fallback
+ * retraining with reduced link rate/lane parameters if the link training
+ * fails.
+ * After calling this function intel_dp_stop_link_train() must be called.
+ */
+void intel_dp_start_link_train(struct intel_dp *intel_dp)
+{
+	if (!intel_dp_link_train(intel_dp))
+		intel_dp_schedule_fallback_link_training(intel_dp);
+}
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
