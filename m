Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F204FE9B1
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 22:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C259C10E008;
	Tue, 12 Apr 2022 20:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94ABD10E008
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 20:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649796841; x=1681332841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4n4GFzTeSWIxtBj83St1hA/fNL3D3nPoEL5NGmmo7EY=;
 b=YRWXuk8fK4O3TeutNUsIuPQMtJMQpz5b0wsYaYA+twQS/x+JuswBO6O+
 r+vkDMz7Ns3l+eitsoNLEG4ZFsVLMQ1cyeDupiFoOnX+UnODabgORq8FV
 yZbnZm2tLJwhbQ88IOCrd4dOjQqG+5f3cHMRE+P5XK9BMr/fkVwZ693pa
 jZauJWyXHTirv0fNpllw7smrZmFoQUgnvRkSfsTIoMYc+BudBdn9r98i7
 3afxzmtpIjW8V/8e1YSM9F1XmKy2ZLKR2Nlt6l8QDxaqXNfzvzRTR3MRD
 AoEHyk3PId7cLItw/EZNfWszqLN3zvnUrOkn4OzLpyo7iTTJ8wzv7m4LT w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="244387759"
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="244387759"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 13:54:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,254,1643702400"; d="scan'208";a="551904088"
Received: from klo15-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.134.75.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 13:53:59 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Apr 2022 13:55:26 -0700
Message-Id: <20220412205527.174685-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/psr: Unset
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

