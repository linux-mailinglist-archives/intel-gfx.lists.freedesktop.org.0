Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2267A8D1A15
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 13:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5176B10E289;
	Tue, 28 May 2024 11:47:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBGAJirW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9EC10E289
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 11:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716896822; x=1748432822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dT6KmXNyGvxJSlO06uJW7mkq1KHLb2lnL0h27nz4hGE=;
 b=bBGAJirWNI5kyTZ8kNPlqGieLIcMne4zt2ht1K558V9orXmFkLatFZdC
 89BZ1mnISpHpFWKWfvLgOBjRZ1TnSFTZLXndAmJvH5HGymXrv2my3iTgr
 quX8PLeJ4hE2CcTovcRKJTYvKeO8TcVT8aG2in91qKPX1UEGRdqh8txc8
 eKkcboIORwzcYZMnqJb2wJ8AaWNHpIzyohQdLE3rcLKYd1VUmvLbkzHhr
 9hIVqg0LzEViG91viKMpFrlGR7RtfH7ubcP9hsHOyDy7ViTQBUNILTPYj
 ImsW4w9mErA87iWp5QbHVcPd7jb3SjUtcOm76RSO+qrKiYpCLLN/bfGbk A==;
X-CSE-ConnectionGUID: 0TbsHFh/RgSBsC8S2dBosQ==
X-CSE-MsgGUID: 8S2+6/8XRFOv400lExxCxg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="30759829"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="30759829"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:02 -0700
X-CSE-ConnectionGUID: O8gVQXfNQKChSclnRQQ4iA==
X-CSE-MsgGUID: Vcf/IPgAT5y+FTbAlaoZHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="65879202"
Received: from vmanek-mobl1.amr.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.212.75])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 04:47:01 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH 1/5] drm/i915/psr: Store pr_dpcd in intel_dp
Date: Tue, 28 May 2024 14:44:51 +0300
Message-Id: <20240528114455.175961-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240528114455.175961-1-jouni.hogander@intel.com>
References: <20240528114455.175961-1-jouni.hogander@intel.com>
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

We need pr_dpcd contents for early transport validity check on eDP Panel
Replay and in debugfs interface to dump out panel early transport
capability. Also remove unnecessarily printing out "Panel replay is not
supported by panel"

v2: commit message modified

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 19 ++++++-------------
 2 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9678c2b157f6..6fbfe8a18f45 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1743,6 +1743,7 @@ struct intel_dp {
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
+	u8 pr_dpcd;
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f59238d3d484..08d3c8c81585 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -559,20 +559,10 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 pr_dpcd = 0;
-
-	intel_dp->psr.sink_panel_replay_support = false;
-	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP, &pr_dpcd);
-
-	if (!(pr_dpcd & DP_PANEL_REPLAY_SUPPORT)) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel replay is not supported by panel\n");
-		return;
-	}
 
 	intel_dp->psr.sink_panel_replay_support = true;
 
-	if (pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
+	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
 	drm_dbg_kms(&i915->drm,
@@ -630,10 +620,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 {
-	_panel_replay_init_dpcd(intel_dp);
-
 	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
 			 sizeof(intel_dp->psr_dpcd));
+	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
+			  &intel_dp->pr_dpcd);
+
+	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SUPPORT)
+		_panel_replay_init_dpcd(intel_dp);
 
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
-- 
2.34.1

