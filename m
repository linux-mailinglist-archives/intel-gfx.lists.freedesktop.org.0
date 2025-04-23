Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB463A98665
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E2E10E670;
	Wed, 23 Apr 2025 09:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZyWxgpT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A2DE10E65F;
 Wed, 23 Apr 2025 09:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745401638; x=1776937638;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B+keq1QL3PGyTgDS7B/sct8EaEoPmWn5PzxQ3yt+kyE=;
 b=XZyWxgpTq+SIeo36YmKf3eR6R4YtZe+N9L2c+2IsKY2GlSRUpjX/a0tD
 TamluvWCexDIG4qinugpQRGptIEF6ndI1pKUDma9fo87XxDPfe1xtHZu5
 ZeDQYzbBFRe59963QLENXz0CgnuMAiZmzZ7Ew0CoWgsXcdY87Fjp816IU
 b9CEgGTH9UB8G0zS0N8sdmuFjVs1XCF1k8mPTDVcFz/7aG4wrTOh3ljkc
 pHOLJ47pjj+//Hn4WfTGda2D3/LCz6VI0A+HjfXrzzabk/Fxtk1iLZwkH
 HWftsDZjO5s/LQPA8fWHxQIIm6ULU7WD0PE6/R+Islq+iA52X3kfJEbv5 g==;
X-CSE-ConnectionGUID: pZEV+osnRfCYjQroaiS7zg==
X-CSE-MsgGUID: 5c5+UZgwTKS+ZVBXeWh5VQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="58358027"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="58358027"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:47:15 -0700
X-CSE-ConnectionGUID: cweKkNbRRgOj//ZuRX+UVQ==
X-CSE-MsgGUID: he6ugolPTFaEsjuj45XOMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132811253"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 23 Apr 2025 02:47:13 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 11/11] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Date: Wed, 23 Apr 2025 14:53:34 +0530
Message-Id: <20250423092334.2294483-12-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250423092334.2294483-1-animesh.manna@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
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
 drivers/gpu/drm/i915/display/intel_alpm.c | 25 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.c  | 23 ---------------------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index c4b6da2e6ccf..d1f3852e51b5 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -426,6 +426,27 @@ void intel_alpm_pre_plane_update(struct intel_atomic_state *state,
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
+	if (!intel_psr_needs_alpm(intel_dp, crtc_state) && !crtc_state->has_lobf)
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
@@ -449,8 +470,10 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 
 		intel_dp = enc_to_intel_dp(encoder);
 
-		if (intel_dp_is_edp(intel_dp))
+		if (intel_dp_is_edp(intel_dp)) {
+			intel_alpm_enable_sink(intel_dp, crtc_state);
 			intel_alpm_configure(intel_dp, crtc_state);
+		}
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1c5ec3f0b066..b034cb2e0975 100644
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

