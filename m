Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yC5HF2xXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB322632D2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BC210E8C1;
	Wed, 11 Mar 2026 11:52:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5I/2Cri";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E924210E8C1;
 Wed, 11 Mar 2026 11:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229930; x=1804765930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T71xFQ0kn/1GZ1wJ/gZcmj2gzz2V+AX2NAAbN1HN5gE=;
 b=K5I/2CriPu2n51gvOIihodFENegXbFtP8/g6uSSwblXKjnx13nziOAH1
 ZsDEaJLUpuQAaAWoZsyho5bX7ARYrnailzuTlh301pLmWVDOLgEndhRqT
 7gSwYYcU4ou05dAwZRCj4rwA3/mIWHU3+wzU+soLJvnXXLBJs2+Jcm03i
 r1ObgLz0BzMzbTdF02lct4L+DHCnWEtlhIIu7ZkozeIvD7L6MDoFw7t3T
 6hOHn9Z+F9A9BkRDFYT9GU/MHs8XqOlVBV73UESKtBAmMzxAgl0lHVg52
 lbtc5oLu05+mY2khAQaNBOTQwlqcQHAb6F6T8y0oYkiBT/sekP40qxuLN w==;
X-CSE-ConnectionGUID: XndfAJ9xQ1aCERRjoGbEsw==
X-CSE-MsgGUID: 1CzAFytwRUKiuTRAhDz7Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74205001"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74205001"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:10 -0700
X-CSE-ConnectionGUID: A+EVs+CtS7Cog3OnIrxLrQ==
X-CSE-MsgGUID: XV9BKkulSUOyyTEBNejt1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602412"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 15/19] drm/i915/dp: Set relevant Downspread Ctrl DPCD bits for
 PR + Auxless ALPM
Date: Wed, 11 Mar 2026 17:06:07 +0530
Message-ID: <20260311113611.3393194-16-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 0FB322632D2
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

To support Panel Replay with Auxless-ALPM, the source must transmit
Adaptive-Sync SDPs for video timing synchronization while PR is active.
As per the DP spec v2.1, this requires setting DPCD 0x0107[6]
(FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE). This applies whether VRR is enabled
(AVT/FAVT) or fixed-timing mode is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_dp_link_training.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c           |  2 +-
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 54c585c59b90..136cabf06fd9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
 
+#include "intel_alpm.h"
 #include "intel_display_core.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_types.h"
@@ -710,11 +711,14 @@ static bool intel_dp_link_max_vswing_reached(struct intel_dp *intel_dp,
 	return true;
 }
 
-void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, bool is_vrr)
+void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate,
+				     bool is_vrr,
+				     bool is_pr_with_link_off)
 {
 	u8 link_config[2];
 
 	link_config[0] = is_vrr ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[0] |= is_pr_with_link_off ? DP_FIXED_VTOTAL_AS_SDP_EN_IN_PR_ACTIVE : 0;
 	link_config[1] = drm_dp_is_uhbr_rate(link_rate) ?
 			 DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
@@ -737,7 +741,9 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 	  * especially on the first real commit when clearing the inherited flag.
 	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.in_range);
+					crtc_state->port_clock,
+					crtc_state->vrr.in_range,
+					intel_alpm_is_alpm_aux_less(intel_dp, crtc_state));
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 1ba22ed6db08..3591210f8ee6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -18,7 +18,8 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
 bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp);
 
 void intel_dp_link_training_set_mode(struct intel_dp *intel_dp,
-				     int link_rate, bool is_vrr);
+				     int link_rate, bool is_vrr,
+				     bool is_pr_with_link_off);
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
 				   int link_bw, int rate_select, int lane_count,
 				   bool enhanced_framing);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 887b6de14e46..2201cf7ce015 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -2142,7 +2142,7 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 
 	intel_dp_compute_rate(intel_dp, link_rate, &link_bw, &rate_select);
 
-	intel_dp_link_training_set_mode(intel_dp, link_rate, false);
+	intel_dp_link_training_set_mode(intel_dp, link_rate, false, false);
 	intel_dp_link_training_set_bw(intel_dp, link_bw, rate_select, lane_count,
 				      drm_dp_enhanced_frame_cap(intel_dp->dpcd));
 
-- 
2.45.2

