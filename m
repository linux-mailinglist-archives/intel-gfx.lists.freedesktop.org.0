Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5AA918C5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 12:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3D910EA97;
	Thu, 17 Apr 2025 10:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j+gydsH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E5610EA98;
 Thu, 17 Apr 2025 10:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744884315; x=1776420315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RPHtK5WZFXMDp/FaVeTBSIuNekDFpMoaxXGyU37h8Aw=;
 b=j+gydsH7ia95QUQ4OghXNcQlkfQ5GbhdXYTBefS7XnLHOu8lZZgkLVSK
 Xg3W1zyGqQgT8d2YiuZNmACNnLOUgb0N/kDhbGcrDICF/72sxL2ZxYpqw
 6JaXe6G6PjcRWA+jcgh+Mg65ZZvAh3WUgO1KiZ2lACwLtw2gL7uTWok3A
 TADKThkm3dNmOyWOIo3M2eL3GqaC2zOwh9N/Gwb0Fr5Vkh4XG9gEm4oWv
 wvlN+nwrurQ8G5H9lvWb7GUd2fBAYduFB3ZOPQCt6kIF04ZlPujg1qmrF
 mEcQ2283+UCB1J3VmaOdgna0sjH3R8pHenJJw53+25X3nCIRokUm9NIHC w==;
X-CSE-ConnectionGUID: 4Nx/R9hlRlSoajTwXX8w+g==
X-CSE-MsgGUID: simlJTcmSQGYmtlf1E8E9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57106753"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57106753"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 03:05:15 -0700
X-CSE-ConnectionGUID: PpV6BMHLTJKHEu8qMU/RzA==
X-CSE-MsgGUID: xX9gjWH9Ql2TFk4SrZdikw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="130745683"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa007.fm.intel.com with ESMTP; 17 Apr 2025 03:05:13 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 10/10] drm/i915/display: Disintegrate sink alpm enable from
 psr with lobf
Date: Thu, 17 Apr 2025 15:11:23 +0530
Message-Id: <20250417094123.1662424-11-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250417094123.1662424-1-animesh.manna@intel.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
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

Make a generic alpm enable function for sink which can be used for
PSR2/PR/Lobf.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 27 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 23 -------------------
 2 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 3d4459881e7c..f4d869953045 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -429,6 +429,29 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+static void intel_alpm_enable_sink(struct intel_dp *intel_dp,
+				   const struct intel_crtc_state *crtc_state)
+{
+	u8 val;
+
+	/*
+	 * eDP Panel Replay uses always ALPM
+	 * PSR2 uses ALPM but PSR1 doesn't
+	 */
+	if (!intel_dp_is_edp(intel_dp) || (!crtc_state->has_panel_replay &&
+					   !crtc_state->has_sel_update &&
+					   !crtc_state->has_lobf))
+		return;
+
+	val = DP_ALPM_ENABLE | DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE;
+
+	if (crtc_state->has_panel_replay || (crtc_state->has_lobf &&
+					     intel_alpm_aux_less_wake_supported(intel_dp)))
+		val |= DP_ALPM_MODE_AUX_LESS;
+
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, val);
+}
+
 void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
@@ -452,8 +475,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 
 		intel_dp = enc_to_intel_dp(encoder);
 
-		if (intel_dp_is_edp(intel_dp))
+		if (intel_dp_is_edp(intel_dp)) {
+			intel_alpm_enable_sink(intel_dp, crtc_state);
 			intel_alpm_configure(intel_dp, crtc_state);
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 43ed166007eb..68952f7bdd7c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -794,32 +794,9 @@ static void _psr_enable_sink(struct intel_dp *intel_dp,
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
 }
 
-static void intel_psr_enable_sink_alpm(struct intel_dp *intel_dp,
-				       const struct intel_crtc_state *crtc_state)
-{
-	u8 val;
-
-	/*
-	 * eDP Panel Replay uses always ALPM
-	 * PSR2 uses ALPM but PSR1 doesn't
-	 */
-	if (!intel_dp_is_edp(intel_dp) || (!crtc_state->has_panel_replay &&
-					   !crtc_state->has_sel_update))
-		return;
-
-	val = DP_ALPM_ENABLE | DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE;
-
-	if (crtc_state->has_panel_replay)
-		val |= DP_ALPM_MODE_AUX_LESS;
-
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, val);
-}
-
 static void intel_psr_enable_sink(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state)
 {
-	intel_psr_enable_sink_alpm(intel_dp, crtc_state);
-
 	crtc_state->has_panel_replay ?
 		_panel_replay_enable_sink(intel_dp, crtc_state) :
 		_psr_enable_sink(intel_dp, crtc_state);
-- 
2.29.0

