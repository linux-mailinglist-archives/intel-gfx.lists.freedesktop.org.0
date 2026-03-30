Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEm5IYXcymkQAwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E12360F13
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 22:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E36710E7EC;
	Mon, 30 Mar 2026 20:26:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ezai6cJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1E310E7EB;
 Mon, 30 Mar 2026 20:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774902398; x=1806438398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oPwmRWX3sOUWVuNsvBQtI6vEDE16qsCKLgbYXK4EzHw=;
 b=Ezai6cJ+kcg/ZvHl+gMtd7gHctyEVxQ7W08GRcOsbF31rjEVJckIaKtu
 GSLqZ9pbXEg4pq2DXsMwPv95yirCuBt42igojq1NkaRVG+aMmw0X55cNp
 tA6pV3pT90OGIGPiPGFVSFOLCcHIBvVFNTwfxfkKwAVBxQfWOknjmuCkd
 A8j0AMUoSN4whuhzOhSDu6O5ttPMdyGR+8DRiZU/8KKBPQIx04z6IJxAw
 UPapAxGcvnuViI9lkU4ikHXwyjbGTWluXlzeRmGUYqBDoNv8ZLy4ef9UE
 FIDD8xRbjoW1q3ujy+8Z+7xiJ24vjT5ZehMsuLjGPng5fLky4U4nko+ER A==;
X-CSE-ConnectionGUID: CA9Wa3B/TpGeOxj6z1bQVg==
X-CSE-MsgGUID: Uyr1i5l2Rou3VbxrbBH2iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75922240"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75922240"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:38 -0700
X-CSE-ConnectionGUID: n7Pxkh1HTuCstBedc+L7ww==
X-CSE-MsgGUID: eyOC/nxkTOO+vQzYA9eNHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="226132419"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 13:26:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH v3 1/2] drm/i915/dp: Implement the POST_LT_ADJ_REQ sequence
Date: Mon, 30 Mar 2026 23:26:28 +0300
Message-ID: <20260330202629.28616-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
References: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: C6E12360F13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement the POST_LT_ADJ_REQ sequence, which should be used
to further fine tune the link if TPS4 is not supported.
The POST_LT_ADJ_REQ sequence will be performed after
the normal link training has succeeded.

Only the final hop between the last LTTPR and DPRX will
perform the POST_LT_ADJ_REQ adjustment. The earlier hops
will use TPS4 instead since it's mandatory for LTTPRs.

The sequence will terminate when the sink clears the
"in progress" flag, the vswing/pre-emphasis values have
changed six times, or the vswing/pre-emphasis values have
remained unchanged for 200 ms.

Tested-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 124 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   2 +-
 3 files changed, 124 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 54c585c59b90..a26094223f78 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -742,11 +742,14 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 				   int link_bw, int rate_select, int lane_count,
-				   bool enhanced_framing)
+				   bool enhanced_framing, bool post_lt_adj_req)
 {
 	if (enhanced_framing)
 		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
 
+	if (post_lt_adj_req)
+		lane_count |= DP_POST_LT_ADJ_REQ_GRANTED;
+
 	if (link_bw) {
 		/* DP and eDP v1.3 and earlier link bw set method. */
 		u8 link_config[] = { link_bw, lane_count };
@@ -825,12 +828,21 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 	return DP_TRAINING_PATTERN_2;
 }
 
+static bool intel_dp_use_post_lt_adj_req(struct intel_dp *intel_dp,
+					 const struct intel_crtc_state *crtc_state)
+{
+	return intel_dp->set_idle_link_train &&
+		drm_dp_post_lt_adj_req_supported(intel_dp->dpcd) &&
+		intel_dp_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX) != DP_TRAINING_PATTERN_4;
+}
+
 static void intel_dp_update_link_bw_set(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					u8 link_bw, u8 rate_select)
 {
 	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, crtc_state->lane_count,
-				      crtc_state->enhanced_framing);
+				      crtc_state->enhanced_framing,
+				      intel_dp_use_post_lt_adj_req(intel_dp, crtc_state));
 }
 
 /*
@@ -1091,6 +1103,109 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
 	return channel_eq;
 }
 
+static bool
+intel_dp_post_lt_adj_req(struct intel_dp *intel_dp,
+			 const struct intel_crtc_state *crtc_state)
+{
+	u8 link_status[DP_LINK_STATUS_SIZE];
+	unsigned long deadline;
+	bool timeout = false;
+	bool success = false;
+	int changes = 0;
+
+	if (!intel_dp_use_post_lt_adj_req(intel_dp, crtc_state))
+		return true;
+
+	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+					     link_status) < 0) {
+		lt_err(intel_dp, DP_PHY_DPRX, "Failed to get link status\n");
+		return false;
+	}
+
+	deadline = jiffies + msecs_to_jiffies_timeout(200);
+
+	for (;;) {
+		/* Make sure clock is still ok */
+		if (!drm_dp_clock_recovery_ok(link_status,
+					      crtc_state->lane_count)) {
+			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+			lt_dbg(intel_dp, DP_PHY_DPRX,
+			       "Clock recovery check failed, cannot continue POST_LT_ADJ_REQ\n");
+			break;
+		}
+
+		if (!drm_dp_channel_eq_ok(link_status,
+					  crtc_state->lane_count)) {
+			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+			lt_dbg(intel_dp, DP_PHY_DPRX, "Channel EQ check failed. cannot continue POST_LT_ADJ_REQ\n");
+			break;
+		}
+
+		if (!drm_dp_post_lt_adj_req_in_progress(link_status)) {
+			success = true;
+			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+			lt_dbg(intel_dp, DP_PHY_DPRX,
+			       "POST_LT_ADJ_REQ done (%d changes). DP Training successful\n", changes);
+			break;
+		}
+
+		if (changes == 6) {
+			success = true;
+			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+			lt_dbg(intel_dp, DP_PHY_DPRX,
+			       "POST_LT_ADJ_REQ limit reached (%d changes). DP Training successful\n", changes);
+			break;
+		}
+
+		if (timeout) {
+			success = true;
+			intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+			lt_dbg(intel_dp, DP_PHY_DPRX,
+			       "POST_LT_ADJ_REQ timeout reached (%d changes). DP Training successful\n", changes);
+			break;
+		}
+
+		fsleep(5000);
+
+		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						     link_status) < 0) {
+			lt_err(intel_dp, DP_PHY_DPRX, "Failed to get link status\n");
+			break;
+		}
+
+		/* Update training set as requested by target */
+		if (intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status)) {
+			deadline = jiffies + msecs_to_jiffies_timeout(200);
+			changes++;
+
+			if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {
+				lt_err(intel_dp, DP_PHY_DPRX, "Failed to update link training\n");
+				break;
+			}
+		} else if (time_after(jiffies, deadline)) {
+			timeout = true;
+		}
+	}
+
+	return success;
+}
+
+static void intel_dp_stop_post_lt_adj_req(struct intel_dp *intel_dp,
+					  const struct intel_crtc_state *crtc_state)
+{
+	u8 lane_count;
+
+	if (!intel_dp_use_post_lt_adj_req(intel_dp, crtc_state))
+		return;
+
+	/* clear DP_POST_LT_ADJ_REQ_GRANTED */
+	lane_count = crtc_state->lane_count;
+	if (crtc_state->enhanced_framing)
+		lane_count |= DP_LANE_COUNT_ENHANCED_FRAME_EN;
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_LANE_COUNT_SET, lane_count);
+}
+
 static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *intel_dp,
 						   enum drm_dp_phy dp_phy)
 {
@@ -1389,6 +1504,11 @@ intel_dp_link_train_all_phys(struct intel_dp *intel_dp,
 	intel_dp_disable_dpcd_training_pattern(intel_dp, DP_PHY_DPRX);
 	intel_dp->set_idle_link_train(intel_dp, crtc_state);
 
+	if (ret)
+		ret = intel_dp_post_lt_adj_req(intel_dp, crtc_state);
+
+	intel_dp_stop_post_lt_adj_req(intel_dp, crtc_state);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 1ba22ed6db08..33dcbde6a408 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -21,7 +21,7 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
 				     int link_rate, bool is_vrr);
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 				   int link_bw, int rate_select, int lane_count,
-				   bool enhanced_framing);
+				   bool enhanced_framing, bool post_lt_adj_req);
 
 bool intel_dp_get_adjust_train(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 887b6de14e46..e8de17834dcd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -2144,7 +2144,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 
 	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
 	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
-				      drm_dp_enhanced_frame_cap(intel_dp->dpcd));
+				      drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
 
 	intel_mst_set_probed_link_params(intel_dp, link_rate, lane_count);
 }
-- 
2.52.0

