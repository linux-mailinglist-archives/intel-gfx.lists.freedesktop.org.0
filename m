Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FC18C7339
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC3B10EC03;
	Thu, 16 May 2024 08:50:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fwD6Pi+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B897510EC03
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715849429; x=1747385429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GeQYiMaVQG1A+lxUsG0gTnCLuz7UKdOdJ6TS2ZC+yyg=;
 b=fwD6Pi+K9vWFoCAMK1jKS49ZFney30lV5D9ok5ru4w/85/eyy6lZ+3PU
 3zmNZe5/CKTu5627fxer5XJ9DkoapDZrL1f9o/vKtDjH8ysEPVknyxrgz
 fs21VTuF23wBRCIKy10bsxxS1gsTbKafXklKXlzORjgfsbO03LJuSOF0M
 PflXc/gCt37tBamzjs/EeHHg+ueSraUjrAa+QcWJnmM2Nc8blVAAaAM2E
 GO628eAwWRUJzWX2ryvy0CiGuMs8kzJP45x5GaaPwGBHbm39ayfF5X8+I
 U7nq1/NE/148G4oPIoZ0Oi/FoUxHXsCmwOSk4M7tHdS4lujBNmyEvM1QL Q==;
X-CSE-ConnectionGUID: 7nCIsbaNSAG13xpUEuDoBg==
X-CSE-MsgGUID: ip1vwnOBSgyfSIy/RT1tUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11756086"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11756086"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:29 -0700
X-CSE-ConnectionGUID: TkfKTmy6Sg2S69Srv4u3uA==
X-CSE-MsgGUID: pNSG3E3rQLmeblub70YVWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="31398199"
Received: from tlonnber-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.12])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:50:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 12/17] drm/i915/psr: Check panel Early Transport capability
 for eDP PR
Date: Thu, 16 May 2024 11:49:52 +0300
Message-Id: <20240516084957.1557028-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Our HW doesn't support panel replay without Early Transport on eDP.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d01170ccf603..daba46aa1149 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -549,12 +549,19 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, u8 alpm_caps)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (intel_dp_is_edp(intel_dp) &&
-	    (!(alpm_caps & DP_ALPM_CAP) ||
-	     !(alpm_caps & DP_ALPM_AUX_LESS_CAP))) {
-		drm_dbg_kms(&i915->drm,
-			    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
-		return;
+	if (intel_dp_is_edp(intel_dp)) {
+		if (!(alpm_caps & DP_ALPM_CAP) ||
+		    !(alpm_caps & DP_ALPM_AUX_LESS_CAP)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support AUX-less ALPM, eDP Panel Replay not possible\n");
+			return;
+		}
+
+		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
+			drm_dbg_kms(&i915->drm,
+				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
+			return;
+		}
 	}
 
 	intel_dp->psr.sink_panel_replay_support = true;
-- 
2.34.1

