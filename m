Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0M47AiV8pWm6CAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 13:01:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFDE1D7FE6
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 13:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FA110E4A1;
	Mon,  2 Mar 2026 12:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0m7snwu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997CA10E4A1;
 Mon,  2 Mar 2026 12:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772452898; x=1803988898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3pEyU5h8vdfGlLZC0KpupUX4TtULeqJsvLnDTc1dP9k=;
 b=Z0m7snwux/qCAzrQ5N1URNzQcBzAqG54zlR3vQGNb3Dxo0O+k1RNVP9F
 +8g8C6Lduj2aR1vAC6iKBxlobWqph5JdNqXblam7/JjckVn/Zw6ZSajvB
 OT4NeRLLS3S615qlKwqcUZs6+4ewl+JE2dxt1mZOpU4R+tw3uGL3FKjCp
 uLyX5R1XZZmsywoReQbLcifwkafBcoYTMh0zLTYs/bRfIgcM77URNoKvT
 0MnCcCKTB7EaY9YiZrGEdZ2NTSM/KmOx01B/y9C+Cpz6/z+CdWc38plE+
 KMC5t7GBF3bxHrnKPoXGtLFM8AtvashX1HH9i5FTghrqkEVeWj2bRPN0X w==;
X-CSE-ConnectionGUID: 29XfS7ZiQx2WXttd+ynjog==
X-CSE-MsgGUID: 0urhjyCEQVKfCPyXn6SCKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="73325284"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="73325284"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 04:01:37 -0800
X-CSE-ConnectionGUID: u15AFJdPQouLqxJ59avVJw==
X-CSE-MsgGUID: YmA/FY3VQSCJL7JEMi8qhA==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 02 Mar 2026 04:01:35 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5] drm/i915/display: Panel Replay BW optimization for DP2.0
 tunneling
Date: Mon,  2 Mar 2026 17:01:53 +0530
Message-Id: <20260302113153.3225806-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 5CFDE1D7FE6
X-Rspamd-Action: no action

Unused bandwidth can be used by external display agents for Panel Replay
enabled DP panel during idleness with link on. Enable source to replace
dummy data from the display with data from another agent by programming
TRANS_DP2_CTL [Panel Replay Tunneling Enable].

v2:
- Enable pr bw optimization along with panel replay enable. [Jani]

v3:
- Write TRANS_DP2_CTL once for both bw optimization and panel replay
enable. [Jani]

v4:
- Read DPCD once in init() and store in panel_replay_caps. [Jouni]

v5:
- Avoid reading DPCD for edp. [Jouni]
- Use drm_dp_dpcd_read_byte() and some cosmetic changes. [Jani]

Bspec: 68920
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 35 +++++++++++++++++--
 4 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4746e9ebd920..dada8dc27ea4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2263,6 +2263,7 @@
 #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans, _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
 #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
 #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
+#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
 #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
 
 #define _TRANS_DP2_VFREQHIGH_A			0x600a4
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8a2b37c7bccf..fbf76ad2af1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -576,6 +576,7 @@ struct intel_connector {
 
 			bool support;
 			bool su_support;
+			bool optimization_support;
 			enum intel_panel_replay_dsc_support dsc_support;
 
 			u16 su_w_granularity;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a9..f35aafe1e86f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6250,6 +6250,7 @@ intel_dp_detect(struct drm_connector *_connector,
 		intel_dp->psr.sink_panel_replay_support = false;
 		connector->dp.panel_replay_caps.support = false;
 		connector->dp.panel_replay_caps.su_support = false;
+		connector->dp.panel_replay_caps.optimization_support = false;
 		connector->dp.panel_replay_caps.dsc_support =
 			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5bea2eda744b..27ba96ede8e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -43,6 +43,7 @@
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
+#include "intel_dp_tunnel.h"
 #include "intel_dsb.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
@@ -603,6 +604,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	int ret;
+	u8 val;
 
 	/* TODO: Enable Panel Replay on MST once it's properly implemented. */
 	if (intel_dp->mst_detect == DRM_DP_MST)
@@ -650,6 +652,15 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 		    connector->dp.panel_replay_caps.su_support ?
 		    "selective_update " : "",
 		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
+
+	if (intel_dp_is_edp(intel_dp))
+		return;
+
+	/* Rest is for DP only */
+
+	drm_dp_dpcd_read_byte(&intel_dp->aux, DP_TUNNELING_CAPABILITIES, &val);
+	connector->dp.panel_replay_caps.optimization_support = val &
+		DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT;
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
@@ -1022,11 +1033,29 @@ static u8 frames_before_su_entry(struct intel_dp *intel_dp)
 	return frames_before_su_entry;
 }
 
+static bool intel_psr_allow_pr_bw_optimization(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	if (DISPLAY_VER(display) < 35)
+		return false;
+
+	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return false;
+
+	if (!connector->dp.panel_replay_caps.optimization_support)
+		return false;
+
+	return true;
+}
+
 static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_psr *psr = &intel_dp->psr;
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	u32 dp2_ctl_val = TRANS_DP2_PANEL_REPLAY_ENABLE;
 
 	if (intel_dp_is_edp(intel_dp) && psr->sel_update_enabled) {
 		u32 val = psr->su_region_et_enabled ?
@@ -1039,12 +1068,14 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
 			       val);
 	}
 
+	if (!intel_dp_is_edp(intel_dp) && intel_psr_allow_pr_bw_optimization(intel_dp))
+		dp2_ctl_val |= TRANS_DP2_PR_TUNNELING_ENABLE;
+
 	intel_de_rmw(display,
 		     PSR2_MAN_TRK_CTL(display, intel_dp->psr.transcoder),
 		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
 
-	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
-		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0, dp2_ctl_val);
 }
 
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
-- 
2.29.0

