Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GvlA4v6yWlg3wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 06:22:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0CD3553BB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 06:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 274F610E35F;
	Mon, 30 Mar 2026 04:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/XuBUc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF95410E359;
 Mon, 30 Mar 2026 04:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774844552; x=1806380552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QVfXcKleT6dYsYcEeOqt4QD9KMhxsgzMxGBOGCs+wjI=;
 b=H/XuBUc0UgePiB0PY6T34SioXWR2VESMU98GYh4tpotpCEo4DKhbSbfP
 lNO6HfjaXqA8fL4PtzQN6qzhpNQVol0GxJxObwBJE/yLhCSSeCy/o5rju
 x0ILBICKmciNygxxY61pYvUZntkHK/MND9t/VSpqqs2DivSwSq3aHDNiB
 eEpDW5Xqldd3UpQ87prHsvJtlU7bqfm3MMkoopZrMiFQ9fnKYOcqU37A9
 zFj2A9xXFeMwaN5JJsK69kxdgy9mCfl6Vg0fJKNoebaBOnH8BvsIxMuEv
 pkvyiWpiIUC0UCzIkUrClQxrkC+XfAeAondpGGayhZuGYB3gCSp8s7rQV Q==;
X-CSE-ConnectionGUID: 1ed5OndZT5Cab6fca+ee9g==
X-CSE-MsgGUID: b9V3LcU9SOOpB3TkwPipUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="87218244"
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="87218244"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 21:22:31 -0700
X-CSE-ConnectionGUID: MZqY8Xs2TF2guI6d04WgSw==
X-CSE-MsgGUID: jiRTHTseTL2TCAGVaQtw1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,149,1770624000"; d="scan'208";a="263871295"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 21:22:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/19] drm/i915/psr: Write the PR config DPCDs in burst mode
Date: Mon, 30 Mar 2026 09:36:50 +0530
Message-ID: <20260330040656.4116502-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
References: <20260330040656.4116502-1-ankit.k.nautiyal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AF0CD3553BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
reducing AUX transactions.

v2: Drop extra conditions, and optimize variables. (Ville)

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 29 ++++++++++++++----------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2f1b48cd8efd..ca054135ca30 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -782,27 +782,32 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state)
 {
-	u8 val = DP_PANEL_REPLAY_ENABLE |
-		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
-		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
-		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
-		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
-	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
+	struct intel_display *display = to_intel_display(intel_dp);
+	u8 panel_replay_config[2];
+	int ret;
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
+	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+				panel_replay_config, sizeof(panel_replay_config));
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
-			   panel_replay_config2);
+	if (ret != sizeof(panel_replay_config))
+		drm_dbg_kms(display->drm, "Failed to write Panel Replay Configs\n");
 }
 
 static void _psr_enable_sink(struct intel_dp *intel_dp,
-- 
2.45.2

