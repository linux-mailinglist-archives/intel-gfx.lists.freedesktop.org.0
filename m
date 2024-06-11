Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7978903BA5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 14:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E55C10E60E;
	Tue, 11 Jun 2024 12:13:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ie2G+pwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E362810E60E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 12:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718108001; x=1749644001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zRrjuR1WJto5CrAlQOly9/e1ioS4R0TLcQApRZFhx58=;
 b=ie2G+pwRv+S49mQg/Cb0Thb8I3jy5mu8v9nvRmF0jcNS8vxW61bcAGic
 7QwHaxLf2WBjY+emM4mciZMrzYkajwQmH6DHoPFn55SE0WsOX5l/oIHx/
 KwoG0T5hwIO4/2pO6/civ0B4xNPIk5RAD0iwana07bMHA+DYckQcmvd8/
 718ofDjiv516iFBMgbDx2ag9HqlaVXbPCCD65gWfxWe0ONPv0hHPc8/rJ
 Fs/5BYE2M5SmDKeqW0LASzxJxkSsLs1ld27LUNo0VINlFCB+x5ASP1Kyl
 c3G+wr0sCu9URGmf2tZpPqmIqNaNAfc36jz2HjfedujtCk3GnMTagoDD6 w==;
X-CSE-ConnectionGUID: Gf13gH6bR2Syqkb2QOa1qw==
X-CSE-MsgGUID: PMjOO8ekSLirLrBaP8MSvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="32296856"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="32296856"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:21 -0700
X-CSE-ConnectionGUID: cj7JSLXgQlOpn6ezoqiiXA==
X-CSE-MsgGUID: ud5JdLjLRhKaH7bt2GnBIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="40118738"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.164])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 05:13:19 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v7 11/18] drm/i915/psr: Perfrom psr2 checks related to ALPM
 for Panel Replay
Date: Tue, 11 Jun 2024 15:12:36 +0300
Message-Id: <20240611121243.3366990-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240611121243.3366990-1-jouni.hogander@intel.com>
References: <20240611121243.3366990-1-jouni.hogander@intel.com>
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

eDP1.5 support ALPM with Panel Replay as well. We need to check ALPM
related things for Panel Replay as well.

Bspec: 68920

v4:
  - do not move _compute_psr2_sdp_prior_scanline_indication
  - move ALPM related checks to separate function
v3: move vblank check as well
v2: do not move Vblank >= PSR2_CTL Block Count Number maximum line count
    check

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 35 ++++++++++++++++--------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3eceec72334d..fcaf3ef39523 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1306,6 +1306,26 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 	return true;
 }
 
+static bool alpm_config_valid(struct intel_dp *intel_dp,
+			      const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "PSR2/Panel Replay  not enabled, Unable to use long enough wake times\n");
+		return false;
+	}
+
+	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state)) {
+		drm_dbg_kms(&i915->drm,
+			    "PSR2/Panel Replay not enabled, too short vblank time\n");
+		return false;
+	}
+
+	return true;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -1389,18 +1409,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	if (!intel_alpm_compute_params(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, Unable to use long enough wake times\n");
+	if (!alpm_config_valid(intel_dp, crtc_state))
 		return false;
-	}
-
-	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, too short vblank time\n");
-		return false;
-	}
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
@@ -1529,6 +1539,9 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (!alpm_config_valid(intel_dp, crtc_state))
+		return false;
+
 	return true;
 }
 
-- 
2.34.1

