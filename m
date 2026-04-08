Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DLTN7wY1mk+BAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9117F3B97DF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF1F10E5E6;
	Wed,  8 Apr 2026 08:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9K/7mMq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C083810E5E4;
 Wed,  8 Apr 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638714; x=1807174714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FoI6/2OhrqrDcLtncJ7ZmHx7eL3Cf3kywTmxtju5+AM=;
 b=C9K/7mMqvRh9GkzbIEV6t7SZ4ngPRO2hixwkAeODfc+nB4UGPrREQQ6Y
 YM3paYRwB5bf+MBjDfFXK5C6ZVvJOY+HE3qP23uosOJwOGsEI+S/4SwOR
 gKObgVerevz/lnhSG0jRQSZ6kAyq0PS0p7eg9mewSjSkgpkpjYrZJy6pn
 6YaJTUBRqVVDmGGgwzD0I7t/88JTipRvlHs7r61AepSZM5rKKT0eA3krd
 6oYQ1wApTSwHQD3jmNdNC0u+SiEJLfQqCg221u21tNcay6R/jVLEfxIn+
 5gmpMZjT2jPZ5kCT6cdEdgsb5AauzBgKIUIGbCcrF5s5QtaxD8LXPtBxs Q==;
X-CSE-ConnectionGUID: RzeMWi/LR/WakjtcbiyqBQ==
X-CSE-MsgGUID: RM7f+bo0TzSE/8rxPtEk9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76516715"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76516715"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:33 -0700
X-CSE-ConnectionGUID: pUU0eqGSTg+3NBlhThPFtA==
X-CSE-MsgGUID: 5uFthv1WStKydtGPxihkWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227572641"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 22/26] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for
 PR + Auxless ALPM
Date: Wed,  8 Apr 2026 14:12:34 +0530
Message-ID: <20260408084239.1295325-23-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
References: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9117F3B97DF
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 +++++++++++++--
 .../gpu/drm/i915/display/intel_dp_link_training.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c       |  2 +-
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f78..d0b033d2cfb4 100644
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
@@ -710,11 +712,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
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
@@ -723,6 +728,10 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	bool pr_with_as_sdp_enable =
+		intel_psr_needs_alpm_aux_less(intel_dp, crtc_state) &&
+		crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
+
 	 /*
 	  * Currently, we set the MSA ignore bit based on vrr.in_range.
 	  * We can't really read that out during driver load since we don't have
@@ -737,7 +746,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 	  * especially on the first real commit when clearing the inherited flag.
 	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.in_range);
+					crtc_state->port_clock,
+					crtc_state->vrr.in_range,
+					pr_with_as_sdp_enable);
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
index e8de17834dcd..ffd1cf0aad9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 
 	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
 
-	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
+	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
 	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
 				      drm_dp_enhanced_frame_cap(intel_dp->dpcd), false);
 
-- 
2.45.2

