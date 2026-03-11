Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gH8yI2dXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBF22632A7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69FD10E8BA;
	Wed, 11 Mar 2026 11:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEeF+3M9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58A3710E8B7;
 Wed, 11 Mar 2026 11:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229924; x=1804765924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2/Cbo1RpDq+zh9YNtwrTb2RjW3T68IPHeukd9K3f0Sc=;
 b=iEeF+3M9dd7qmCNA1kRNf2dRZG+E8xKa8JhbY8npjoFixi2xXmDU97iW
 FzGEmts6ZHjiG5oDvYIkqk1WL8udcJYvMlUBDC1hbjmuFhPpRqHSJShTL
 +Odg98PiCxJ313WgBuSDi0p069FHPf5RQ2hjsKA+hNdaJmARqUDrpRzFF
 NCUpd9uwLlHTV39yEOLxOmEVAgg1DjSzUWZ/C/3N8QC7TEod2cEYQDi28
 n4094ne0Fq3xnSlsRGcmtmq7ohs/RdsoH+RNuwOEbUp2a8lqNrddN0FKN
 w3QPbKT0RG2+wWud5Ffp3JTw0Xs/n0exmrdPPqWSZmHc3U1/Goe4hdiP6 g==;
X-CSE-ConnectionGUID: 6CEV/AitRQyq5uutibZWXw==
X-CSE-MsgGUID: uGg5G/P4T1iwo2Z9fwnozA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74204998"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74204998"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:04 -0700
X-CSE-ConnectionGUID: Rx9/FUItRzWGG+k9HD+iHA==
X-CSE-MsgGUID: V7tPZORHQCmnQOhmrj/fnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602391"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/19] drm/i915/display: Add helper for AS SDP transmission
 time selection
Date: Wed, 11 Mar 2026 17:06:05 +0530
Message-ID: <20260311113611.3393194-14-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 3CBF22632A7
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

AS SDP may be transmitted at T1 or T2 depending on Panel Replay and
Adaptive Sync SDP configuration as per DP 2.1. Current we are using
T1 only, but future PR/AS SDP modes/features may require T2 or dynamic
selection.

Introduce a helper to return the appropriate AS SDP transmission time so
that a single value is consistently used for programming PR_ALPM.
For now this returns T1.

v2: Avoid adding new member to crtc_state; use a helper. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c   |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_dp.h   |  2 ++
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index a7350ce8e716..0a6da3f926d3 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -11,6 +11,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_psr.h"
@@ -359,6 +360,23 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	crtc_state->has_lobf = true;
 }
 
+static int get_pr_alpm_as_sdp_transmission_time(const struct intel_crtc_state *crtc_state)
+{
+	int as_sdp_setup_time = intel_dp_as_sdp_transmission_time();
+
+	switch (as_sdp_setup_time) {
+	case DP_PR_AS_SDP_SETUP_TIME_T1:
+		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
+	case DP_PR_AS_SDP_SETUP_TIME_DYNAMIC:
+		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2;
+	case DP_PR_AS_SDP_SETUP_TIME_T2:
+		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2;
+	default:
+		MISSING_CASE(as_sdp_setup_time);
+		return PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
+	}
+}
+
 static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
@@ -382,7 +400,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_WAKE_TIME(crtc_state->alpm_state.aux_less_wake_lines);
 
 		if (intel_dp->as_sdp_supported) {
-			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
+			u32 pr_alpm_ctl = get_pr_alpm_as_sdp_transmission_time(crtc_state);
 
 			if (crtc_state->link_off_after_as_sdp_when_pr_active)
 				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e6148e7f0ebc..74a8af3cf18c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7439,3 +7439,12 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 	return true;
 }
+
+int intel_dp_as_sdp_transmission_time(void)
+{
+	/*
+	 * For now we use T1 as the transmission time.
+	 * This can be later changed as per requirements.
+	 */
+	return DP_PR_AS_SDP_SETUP_TIME_T1;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2849b9ecdc71..2e4609d9d05c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
 		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
 
+int intel_dp_as_sdp_transmission_time(void);
+
 #endif /* __INTEL_DP_H__ */
-- 
2.45.2

