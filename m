Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJd4KWNXsWmGtwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7910826329F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F201C10E8B6;
	Wed, 11 Mar 2026 11:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XPArbzcB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8FE10E8AA;
 Wed, 11 Mar 2026 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773229922; x=1804765922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jrv2DXoYj6RuefpCatL8lehXlzmEKEUWB+Gtz3Vd4Fk=;
 b=XPArbzcB0Hh7MAWiUauXNZUcroqAVbt+zdtKFIlcvok/u1eIPu0oy4hN
 /Ep6gn0gBBP7jBahheirqZDCDmmsdfEmADyN+TNI+aB5w5mFZpOokvkUI
 PSWarRPO+YzJ5cC5nZZjIo5CifpmDjzXgl9D09XYvTxHAhMwJeDUIFLfr
 GH4AsAyDqOHvAtx/A6YwC8tqvZZOIAdJFHFcimvqgaE45YX06KWglE4hQ
 nWXXWWO3mpyR4ccqhsFp5UqXcmt9g7RqpyxmZkHOFCpvpv8WvJ62EsttB
 hOiG2AhKxzUXwyqKWwnRMK8XNvUM6gA8qbmjdgerHR7iamh4Ct1aFcLIy Q==;
X-CSE-ConnectionGUID: 0QhrTKCDRxGv87GjiMhs+w==
X-CSE-MsgGUID: bz3vuImzTgGcWqD66eTTWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="74204997"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74204997"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:52:01 -0700
X-CSE-ConnectionGUID: ar4eeJ4VQgmLqEBuCdwsUQ==
X-CSE-MsgGUID: hqTArtAsQ2qsEXxqTf67Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="224602384"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:51:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/19] drm/i915/psr: Write the PR config DPCDs in burst mode
Date: Wed, 11 Mar 2026 17:06:04 +0530
Message-ID: <20260311113611.3393194-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
References: <20260311113611.3393194-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 7910826329F
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Replace the consecutive single-byte writes to PANEL_REPLAY_CONFIG and
CONFIG2 with one drm_dp_dpcd_write() burst starting at PANEL_REPLAY_CONFIG,
reducing AUX transactions.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5041a5a138d1..ee6e26abd05e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -774,27 +774,33 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state)
 {
-	u8 val = DP_PANEL_REPLAY_ENABLE |
+	struct intel_display *display = to_intel_display(intel_dp);
+	u8 panel_replay_config = DP_PANEL_REPLAY_ENABLE |
 		DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
 		DP_PANEL_REPLAY_UNRECOVERABLE_ERROR_EN |
 		DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
 		DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
 	u8 panel_replay_config2 = DP_PANEL_REPLAY_CRC_VERIFICATION;
+	u8 buf[2];
+	int ret;
 
 	if (crtc_state->has_sel_update)
-		val |= DP_PANEL_REPLAY_SU_ENABLE;
+		panel_replay_config |= DP_PANEL_REPLAY_SU_ENABLE;
 
 	if (crtc_state->enable_psr2_su_region_et)
-		val |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
+		panel_replay_config |= DP_PANEL_REPLAY_ENABLE_SU_REGION_ET;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		panel_replay_config2 |=
 			DP_PANEL_REPLAY_SU_REGION_SCANLINE_CAPTURE;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG, val);
+	buf[0] = panel_replay_config;
+	buf[1] = panel_replay_config2;
+
+	ret = drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG, buf, sizeof(buf));
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG2,
-			   panel_replay_config2);
+	if (ret < 0 || ret != sizeof(buf))
+		drm_dbg_kms(display->drm, "Failed to write Panel Replay Configs\n");
 }
 
 static void _psr_enable_sink(struct intel_dp *intel_dp,
-- 
2.45.2

