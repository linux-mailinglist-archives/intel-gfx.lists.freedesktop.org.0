Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FEA819CE1
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CF910E33C;
	Wed, 20 Dec 2023 10:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F34B10E33C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068592; x=1734604592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dDpc4dg5ck1vy51SLyKV7l3se2cWmXPxK5iwVqHTKUU=;
 b=UPXJjFsoQ7+G4aMTOkVoRWp6IVy/WQoVK9G3PnuISbQt5U7uh+CZp0wx
 YPUo0M2fn+cObGUUObhavK+gFljvc3eW7fRXIXAgE6dkEXTwTejUrS9FL
 yWGqJBROHJLLFzI3ALkkx+ZFBMcX/4FSu/TKJkLKE1LqhXJdaUiiWWmGE
 2eEgeI3c66TkF7ug7PoPByxbeXs49RKE1KNz+otbCSr2RLbJ4iPgFCRt0
 H/ek1ZG5+kqlQzzPvAfDpt8DxPrAgcYjkv+MngGiH929gaYXTjKG52la5
 pzIQrAEnM9vXvqJ5p1SLWDWrrAXpk9Ds15cdCnN0GoEeg0wfyjcbZgEGM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631977"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631977"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686246"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686246"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:31 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/7] drm/i915/display: Remove intel_crtc_state->psr_vsc
Date: Wed, 20 Dec 2023 12:36:03 +0200
Message-Id: <20231220103609.1384523-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220103609.1384523-1-jouni.hogander@intel.com>
References: <20231220103609.1384523-1-jouni.hogander@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There is no really need to have separate vsc for psr usage. Use
intel_crtc_state->infoframes.vsc instead.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_psr.c           | 4 ++--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3fdd8a517983..bbdc2041a990 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1218,7 +1218,6 @@ struct intel_crtc_state {
 	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
-	struct drm_dp_vsc_sdp psr_vsc;
 
 	/*
 	 * Frequence the dpll for the port should run at. Differs from the
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b6e2e70e1290..9d5dc3fb6f20 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1380,7 +1380,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
-				     &crtc_state->psr_vsc);
+				     &crtc_state->infoframes.vsc);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1652,7 +1652,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
 			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
-	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
+	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->infoframes.vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp, crtc_state);
-- 
2.34.1

