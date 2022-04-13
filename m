Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2B04FFB8E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 18:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8360110E4BA;
	Wed, 13 Apr 2022 16:42:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C34710E4BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 16:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649868152; x=1681404152;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fuzK+vkQTM4uLnw/Cjua+xuWWmiTWzFs4rO1FCkRqeQ=;
 b=iS5yarckqEo0FcJej6mbVF1qNl0yiW71N/abbC5j29Hn5gzwBnsqgMLF
 ds/Yu4NT0J6sY2PUEkvi18rg+dKa4wSeaZMUI/1QQoy+mocDSZdtnImkX
 ihI3eR9lDk0AVEMRtbNlSChsjoj1eGxKsopI6GfvR8gd5cK3a6rQRDxdF
 2e4dj9vXLGkjmTZNRheo++TGW9NmjO78X9cwFhHCCYBXNL6Yd/mJzo254
 1Z14bkI7bljbzFRMV9y2Ml/ksQEANMq59eoQ42kLiDOSlKm3OyNa6tZZH
 0lduPHL5kNvO7wAfnJ2zCV/bJv+s8Caxl7UQIMAdFtBJzFfbPVob3N0pf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323159761"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323159761"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 09:42:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645237463"
Received: from josouza-mobl2.fso.intel.com (HELO josouza-mobl2.intel.com)
 ([10.230.19.149])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 09:42:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 09:43:50 -0700
Message-Id: <20220413164351.48986-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/display/psr: Unset
 enable_psr2_sel_fetch if other checks in intel_psr2_config_valid() fails
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

If any of the PSR2 checks after intel_psr2_sel_fetch_config_valid()
fails, enable_psr2_sel_fetch will be kept enabled causing problems
in the functions that only checks for it and not for has_psr2.

So here moving the check that do not depend on enable_psr2_sel_fetch
and for the remaning ones jumping to a section that unset
enable_psr2_sel_fetch in case of failure to support PSR2.

Fixes: 6e43e276b8c9 ("drm/i915: Initial implementation of PSR2 selective fetch")
Cc: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 38 +++++++++++++-----------
 1 file changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5a55010a9b2f7..8ec7c161284be 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -891,6 +891,20 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	/* Wa_16011303918:adl-p */
+	if (crtc_state->vrr.enable &&
+	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
+		return false;
+	}
+
+	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
+		return false;
+	}
+
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
 		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
 		    !HAS_PSR_HW_TRACKING(dev_priv)) {
@@ -904,12 +918,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	if (!crtc_state->enable_psr2_sel_fetch &&
 	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
-		return false;
+		goto unsupported;
 	}
 
 	if (!psr2_granularity_check(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
-		return false;
+		goto unsupported;
 	}
 
 	if (!crtc_state->enable_psr2_sel_fetch &&
@@ -918,25 +932,15 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 			    "PSR2 not enabled, resolution %dx%d > max supported %dx%d\n",
 			    crtc_hdisplay, crtc_vdisplay,
 			    psr_max_h, psr_max_v);
-		return false;
-	}
-
-	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, PSR2 SDP indication do not fit in hblank\n");
-		return false;
-	}
-
-	/* Wa_16011303918:adl-p */
-	if (crtc_state->vrr.enable &&
-	    IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR2 not enabled, not compatible with HW stepping + VRR\n");
-		return false;
+		goto unsupported;
 	}
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 	return true;
+
+unsupported:
+	crtc_state->enable_psr2_sel_fetch = false;
+	return false;
 }
 
 void intel_psr_compute_config(struct intel_dp *intel_dp,
-- 
2.35.1

