Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMgfE8MmzmnElAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F143F385DF0
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 10:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DB4010F169;
	Thu,  2 Apr 2026 08:20:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i3YbBS/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43AF10F167;
 Thu,  2 Apr 2026 08:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775118016; x=1806654016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WskZdfZZUNH2nB7YQHFtW0eM4E8In/vUU8MZl3LZ0pA=;
 b=i3YbBS/f5j1EGutYrcJi/ZZ+ZBh37CVV4s1U6A8vI8sVo99SsAqXfsst
 818NOl4VhaQlkZ6Z7a7Aq6RoAVf8h6DmGZgtCYdSFfgEH2ZimUX5N80If
 510/M9xdQ937VuTQL9lEuwasxlhqz+BdHUNScBYn1KgqleoWm2sxXSjB5
 V+YJwIQlAyIqSogYPq3myyYM5fHv3IYgOMREZMnvd6gCGfBSwAislPla8
 Og2k7KEdZMxNkg/fjXnfCmPW6Wx5wKtsvzXFVZu7MmVrC31C3vXIG/cN5
 k8UF2uM7StMK7wWByNOeC/4eawlpOJy8Ta4nfRV6haRO2AqqUgUlgILdT Q==;
X-CSE-ConnectionGUID: uDfOoD8BT2OQkAIkdYQpgQ==
X-CSE-MsgGUID: 5NAEzJu5S6aB3dp4C5hLRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="80060576"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="80060576"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:15 -0700
X-CSE-ConnectionGUID: AifSt+dNTnyKMo09SS2Rkw==
X-CSE-MsgGUID: cN+RLWeKQJSfkif8G6/luA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="226776279"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2026 01:20:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 16/23] drm/i915/psr: Write the PR config DPCDs in burst mode
Date: Thu,  2 Apr 2026 13:34:16 +0530
Message-ID: <20260402080425.548702-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
References: <20260402080425.548702-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: F143F385DF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 782e839b7396..3fe7691c8b77 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -782,27 +782,27 @@ static bool psr2_su_region_et_valid(struct intel_connector *connector, bool pane
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

