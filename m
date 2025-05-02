Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7144AA6D32
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D25910E8C8;
	Fri,  2 May 2025 08:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GVl2IRjZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3291510E8C3;
 Fri,  2 May 2025 08:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746176366; x=1777712366;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4BhiicW9nRBRakNzydKxi/+LyY9PINH51XirukoYQCE=;
 b=GVl2IRjZJCCuICCqyY8345SmwgCiPOEqTgox6jBb1bVp5KuePk3B0cPL
 HUXjPmIbLPUofwyGimuQFZg9/InCBoZfrYdntvyIifw1fW/zhiahfKtfo
 //4usyZ+auUMPa1imh6acHp3Yg/Eaq2yjBJL4yf2ozAoeAwJOFo7788uo
 RhBx/avMaZyhtNJqRU5y3n68ceQwEkJLEvHjyODU4wF5HwpKpesxpDCYy
 RHOVMKaPtqTAD2/rw4tbtcv2Hu56AXDH7fqfhZWg9ZACHdHKhYXaGXm4J
 dKmUVrkGVLa2Qty514BfmxBVXctWRRQ/rEDdL46n6XKYndTP3xfymi2yU g==;
X-CSE-ConnectionGUID: z2JZMxrpSByjsHnuBxo6Og==
X-CSE-MsgGUID: Ar4Ltn44T3uDf3TfnMpCtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47943192"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47943192"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:25 -0700
X-CSE-ConnectionGUID: dqv6Ir6UQYOkUCoH8uA/wA==
X-CSE-MsgGUID: 2B/5YZFDTOW/7zSVp0WNmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="134346698"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.55])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:59:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 02/11] drm/i915/psr: Read both Panel Replay capability
 registers from DPCD
Date: Fri,  2 May 2025 11:58:53 +0300
Message-ID: <20250502085902.154740-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

There is a second Panel Replay capability register in DPCD. Read that as
well for later use.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7415564d058a2..356287309817e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1665,7 +1665,7 @@ struct intel_dp {
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
-	u8 pr_dpcd;
+	u8 pr_dpcd[2];
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ccd66bbc72f79..2d78d64b8db8d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -608,7 +608,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 			return;
 		}
 
-		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
+		if (!(intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
 			drm_dbg_kms(display->drm,
 				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
 			return;
@@ -617,7 +617,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 
 	intel_dp->psr.sink_panel_replay_support = true;
 
-	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
 	drm_dbg_kms(display->drm,
@@ -676,10 +676,10 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
 	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
 			 sizeof(intel_dp->psr_dpcd));
-	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
-			  &intel_dp->pr_dpcd);
+	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
+			 &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
 
-	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SUPPORT)
+	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_SUPPORT)
 		_panel_replay_init_dpcd(intel_dp);
 
 	if (intel_dp->psr_dpcd[0])
@@ -736,7 +736,7 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
 		return false;
 
 	return panel_replay ?
-		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
+		intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
 		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
 		psr2_su_region_et_global_enabled(intel_dp);
 }
@@ -3909,7 +3909,7 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
-	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
+	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
 	seq_printf(m, "\n");
 }
-- 
2.43.0

