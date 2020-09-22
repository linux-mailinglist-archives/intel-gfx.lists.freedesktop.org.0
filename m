Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EA7274276
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 510696E85F;
	Tue, 22 Sep 2020 12:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E47E6E31D
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:36 +0000 (UTC)
IronPort-SDR: PPF+Z8ub6rol3N2To1SVsMhPNyvEEVntkJ+9aXzczQDUAaja1UJ7eGbz3FO66bEn5d+Qm/iWcv
 ysKcmROVTjEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342822"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:36 -0700
IronPort-SDR: 14mqpDOL1YsiNHwefc1ObUYhv935cmpGYmmWH1Y5iZ/dQu7CldYVNLMQiMVUkbTbq0yv3TYvbK
 XI1W2JIaY3kg==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485642"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:05 +0300
Message-Id: <20200922125106.30540-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Switch to LTTPR transparent mode
 link training
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

By default LTTPRs should be in transparent link training mode,
nevertheless in this patch we switch to this default mode explicitly.

The DP Standard recommends this, supposedly because an LTTPR may be left
in the non-transparent mode (by BIOS, previous kernel, or after reset
due to a firmware bug). I haven't seen this happening, but let's follow
the DP Standard.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 ++
 .../drm/i915/display/intel_dp_link_training.c | 42 +++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |  1 +
 4 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3d4bf9b6a0a2..b04921eba73b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1280,6 +1280,7 @@ struct intel_dp {
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
 	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
+	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
 	u8 fec_capable;
 	/* source rates */
 	int num_source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ee93a00a4d5e..d88f327aa9ef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4721,6 +4721,9 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 {
 	int ret;
 
+	if (!intel_dp_is_edp(intel_dp))
+		intel_dp_read_lttpr_caps(intel_dp);
+
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd))
 		return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6994a32244dc..1485602659be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -50,6 +50,24 @@ intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATU
 				DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
 }
 
+/**
+ * intel_dp_read_lttpr_caps - read the LTTPR common capabilities
+ * @intel_dp: Intel DP struct
+ *
+ * Read the LTTPR common capabilities.
+ */
+void intel_dp_read_lttpr_caps(struct intel_dp *intel_dp)
+{
+	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
+					  intel_dp->lttpr_common_caps) < 0)
+		return;
+
+	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+		    "LTTPR common capabilities: %*ph\n",
+		    (int)sizeof(intel_dp->lttpr_common_caps),
+		    intel_dp->lttpr_common_caps);
+}
+
 static u8 dp_voltage_max(u8 preemph)
 {
 	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
@@ -474,6 +492,28 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp)
 	schedule_work(&intel_connector->modeset_retry_work);
 }
 
+static bool
+intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
+{
+	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
+			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
+
+	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
+}
+
+static void intel_dp_init_lttpr_mode(struct intel_dp *intel_dp)
+{
+	if (intel_dp_is_edp(intel_dp))
+		return;
+
+	/*
+	 * TODO: the following re-reading of LTTPR caps can be removed
+	 * after a proper connector HW readout is added.
+	 */
+	intel_dp_read_lttpr_caps(intel_dp);
+	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
+}
+
 /**
  * intel_dp_start_link_train - start link training
  * @intel_dp: DP struct
@@ -485,6 +525,8 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp)
  */
 void intel_dp_start_link_train(struct intel_dp *intel_dp)
 {
+	intel_dp_init_lttpr_mode(intel_dp);
+
 	if (!intel_dp_link_train(intel_dp))
 		intel_dp_schedule_fallback_link_training(intel_dp);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 47c97f4a0d57..c0be3ff709a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -12,6 +12,7 @@ struct intel_dp;
 
 bool intel_dp_get_link_status(struct intel_dp *intel_dp,
 			      u8 link_status[DP_LINK_STATUS_SIZE]);
+void intel_dp_read_lttpr_caps(struct intel_dp *intel_dp);
 
 void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const u8 link_status[DP_LINK_STATUS_SIZE]);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
