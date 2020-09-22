Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F2D274271
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 14:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0776E149;
	Tue, 22 Sep 2020 12:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B816E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 12:51:23 +0000 (UTC)
IronPort-SDR: T11SqaPNwjQsizJIeqZpDdRyxxogHJWRFjab6p0kFST8njGiEuxTzif6LWtPQwWTlyvJWsK0yl
 Gkf/z58HwkDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="148342798"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="148342798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:23 -0700
IronPort-SDR: ZtTjqLJkNv9gHvKKAV7vch4lmEkQqzZhiXg4F5+hEd2YAe5vlsTYSu7FCS4sFeAOayNwdPkuq9
 XTrYVKu+Mljg==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="309485569"
Received: from ideak-desk.fi.intel.com (HELO localhost) ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 05:51:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 15:51:01 +0300
Message-Id: <20200922125106.30540-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922125106.30540-1-imre.deak@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Move intel_dp_get_link_status to
 intel_dp_link_training.c
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

The link status is used to communicate the parameters of the link
training with the DPRX and determine if the link training is successful
or a retraining is needed. Accordingly move the function to read the
link status to intel_dp_link_training.c

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c          | 11 -----------
 drivers/gpu/drm/i915/display/intel_dp.h          |  2 --
 .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h    |  3 +++
 4 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2a4a9c0e7427..ee93a00a4d5e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4126,17 +4126,6 @@ static void chv_dp_post_pll_disable(struct intel_atomic_state *state,
 	chv_phy_post_pll_disable(encoder, old_crtc_state);
 }
 
-/*
- * Fetch AUX CH registers 0x202 - 0x207 which contain
- * link status information
- */
-bool
-intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
-				DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
-}
-
 static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp)
 {
 	return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 08a1c0aa8b94..34ae7988a554 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -100,8 +100,6 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
 bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
 bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
-bool
-intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
 
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f8b53c5b5777..6d13d00db5e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -34,6 +34,22 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
 		      link_status[3], link_status[4], link_status[5]);
 }
 
+/**
+ * intel_dp_get_link_status - get the link status information for the DPRX
+ * @intel_dp: DP struct
+ * @link_status: buffer to return the status in
+ *
+ * Fetch the AUX DPCD registers for the DPRX link status.
+ *
+ * Returns true if the information was read successfully, false otherwise.
+ */
+bool
+intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
+				DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
+}
+
 static u8 dp_voltage_max(u8 preemph)
 {
 	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 01f1dabbb060..47c97f4a0d57 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -10,6 +10,9 @@
 
 struct intel_dp;
 
+bool intel_dp_get_link_status(struct intel_dp *intel_dp,
+			      u8 link_status[DP_LINK_STATUS_SIZE]);
+
 void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const u8 link_status[DP_LINK_STATUS_SIZE]);
 void intel_dp_start_link_train(struct intel_dp *intel_dp);
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
