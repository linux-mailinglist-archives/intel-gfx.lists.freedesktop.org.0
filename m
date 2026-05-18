Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oL3tJx6jCmop4gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:26:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6CC566266
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 07:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5D710E670;
	Mon, 18 May 2026 05:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XMnxGaln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A121B10E5C6;
 Mon, 18 May 2026 05:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779082011; x=1810618011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VR7l0OKbEUgzK3qw/pSPDV+UOTiOZ7E/GDF4l4Bk8sw=;
 b=XMnxGalnIbi7/rVWK9V6ks2Y+9beMy6KBpRXCLL6UniXgopMonsYOA8P
 7t9+fw/ZP4hAyYlOo6V8M+73P0lmVKsDtPOa1wCMvxsf1GPkl6La42WpT
 0GfxR3Gq3rNAavEax8XCe9rWO+s4k0lndt5yBH6EypIw6JfSGzp3klNKA
 9gkwkjw8kYY2IvRNXR5Vr+oFm9EqWqHX2dod1YzL5JkCVeqGXpZvdINIZ
 Y6EfQAgeYPy1egV1i1e9JmrBvHZmoyy1/eE1G7r3O8iY22rJMZljXRBRg
 F15yDPy0jCNwoNB1U3iQOaRr/lm+Fsn5VJ3+eMjW3gaUFLTDlu4YlgGYL g==;
X-CSE-ConnectionGUID: /97ob2erQW+soFL6An67Lg==
X-CSE-MsgGUID: CGhRY0SzQuaZmdEGTRJF6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79064915"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79064915"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:26:51 -0700
X-CSE-ConnectionGUID: Sb000TwZR1OcxvavI0Ufyw==
X-CSE-MsgGUID: XeQ8HsKbSV+M3uJLv7ji4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="243606185"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 22:26:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/12] drm/i915/psr: Write the PR config DPCDs in burst mode
Date: Mon, 18 May 2026 10:42:07 +0530
Message-ID: <20260518051216.2936634-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260518051216.2936634-1-ankit.k.nautiyal@intel.com>
References: <20260518051216.2936634-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 4F6CC566266
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
reducing AUX transactions.

v2: Drop extra conditions, and optimize variables. (Ville)
v3: Drop the error check after write. (Ville)

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 26 ++++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 431468103f51..363349bdb529 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -786,27 +786,27 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state)
 {
-	u8 val = DP_PANEL_REPLAY_ENABLE |
-		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
-		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
-		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
-		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
-	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
+	u8 panel_replay_config[2];
+
+	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
+				 DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
+				 DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
+				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
+				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
+	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
 
 	if (crtc_state->has_sel_update)
-		val |= DP_PANEL_REPLAY_SU_ENABLE;
+		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
 
 	if (crtc_state->enable_psr2_su_region_et)
-		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
+		panel_replay_config[0] |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
-		panel_replay_config2 |=
+		panel_replay_config[1] |=
 			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
-
-	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
-			   panel_replay_config2);
+	drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+			  panel_replay_config, sizeof(panel_replay_config));
 }
 
 static void _psr_enable_sink(struct intel_dp *intel_dp,
-- 
2.45.2

