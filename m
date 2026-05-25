Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP43C+LgE2pDHAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7C95C5FD6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 07:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DFC10E3E6;
	Mon, 25 May 2026 05:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bNuKdScF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD2F10E3CC;
 Mon, 25 May 2026 05:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779687646; x=1811223646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chlv2WCPrgvigzqXW23rQEe/AwdIez+zH47YpZRcaso=;
 b=bNuKdScF7fLsMBwg7urkRlDPml+eLDuLXDlyWGGkfdDKpiKLDRVou0ck
 NuFzX55FImW4Vgnofrj0qoOeD7L//9rwhgoYKqj/a5tQDzJxscrcv87V3
 p3qmuwLzfe9NdmSh/86wU6+4J3zecrPS4J+ioMx9uQ05jdaAGNHh4HsuL
 JQzPTYb5p7rn3vjj3ZEEmXSPIHzHFprmon0THlxA9F0IW7yvQkWSbVelD
 wP/ZaBBclkn6CJ+uBBfaXaxsXGhKW9yMPTBu6R4qPp4cS4KC7y/F5BtI0
 kDH/E1ePYRnx5K3MslnaYaSX5sXBN6GXpZM5xQUTc8IP7+V7DnotclONl Q==;
X-CSE-ConnectionGUID: NJgqkAchRzexVLNzEQTmpg==
X-CSE-MsgGUID: rGhK7kMxQFererR4H+z5EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="68030801"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="68030801"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:45 -0700
X-CSE-ConnectionGUID: k66+0yuCQJ+DU0NZmVXhcA==
X-CSE-MsgGUID: a1rMy23iS7m6rD/i/aEXng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="237306540"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2026 22:40:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/11] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for
 PR + Auxless ALPM
Date: Mon, 25 May 2026 10:52:31 +0530
Message-ID: <20260525052235.560741-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
References: <20260525052235.560741-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CE7C95C5FD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If a Panel Replay capable sink, supports Async Video timing in
PR active state, then source does not necessarily need to send AS SDPs
during PR active.

However, if asynchronous video timing is not supported, then for PR with
Aux-less ALPM, the source must transmit Adaptive-Sync SDPs for video
timing synchronization while PR is active.

If the source needs to send AS SDP during PR active, this requires setting
DPCD 0x0107[6] (FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether
VRR is enabled (AVT/FAVT) or fixed-timing mode is used.

This bit defines AS SDP timing behavior during PR Active, even if AS SDPs
are briefly suspended.

Program the relevant Downspread Ctrl DPCD bits accordingly.

v2: Instead of Panel Replay check simply use AS SDP enable check. (Ville)
v3: Since the bit is defined in context of Panel Replay and AS SDP, add
    a check for both. (Ville)
v4: Extract pr_with_as_sdp logic into helper function. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 20 +++++++++++++++++--
 .../drm/i915/display/intel_dp_link_training.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 3 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f78..e566f2b49594 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -34,8 +34,10 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_encoder.h"
+#include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_panel.h"
+#include "intel_psr.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
@@ -710,16 +712,28 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 	return true;
 }
 
-void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
+void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
+				     bool is_vrr,
+				     bool pr_with_as_sdp_enable)
 {
 	u8 link_config[2];
 
 	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[0] |= pr_with_as_sdp_enable ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
 	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
 			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
 }
 
+static bool
+intel_dp_pr_with_as_sdp_enabled(struct intel_dp *intel_dp,
+				const struct intel_crtc_state *crtc_state)
+{
+	return intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+		(crtc_state->infoframes.enable &
+		 intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));
+}
+
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
@@ -737,7 +751,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 	  * especially on the first real commit when clearing the inherited flag.
 	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.in_range);
+					crtc_state->port_clock,
+					crtc_state->vrr.in_range,
+					intel_dp_pr_with_as_sdp_enabled(intel_dp, crtc_state));
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 33dcbde6a408..18c34c1a472f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
 bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
 
 void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
-				     int link_rate, bool is_vrr);
+				     int link_rate, bool is_vrr,
+				     bool pr_with_as_sdp_enable);
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 				   int link_bw, int rate_select, int lane_count,
 				   bool enhanced_framing, bool post_lt_adj_req);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8f73e01db17c..a238f7948cec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -2145,7 +2145,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 
 	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
 
-	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
+	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
 	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
 				      drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
 
-- 
2.45.2

