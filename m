Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94AA819CE2
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 11:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E9810E549;
	Wed, 20 Dec 2023 10:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167FD10E354
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 10:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703068594; x=1734604594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=odWCTcxsoHL+GqHbGTKxw+39kTGl2OaJQw/y3mkSuIE=;
 b=F1rxscS4zE1332puT/ViPyazVDvxfwAtNTZJzlqu0kisAXby6r7V8N6m
 XvKG2VU8FAe69X3mmBqynBvX6SK08wq8Y+BgLSJig9YpBt0rs96y0eBB0
 2c76/sx9JY/awVgcclExeutr+ym0SLjSzXH69ERwcro4EmWHeTs8q+c0+
 vWeiwm8Y+cHeZLAKj8//NM2YHu371uXZvYgYm7/6qXJm1VT5HCzT5s2eX
 OGKcJag1pOmKRn/8SG3a2D9MN4s6QjHIxWkBlhh03IhQ82VgpmamzL/P1
 Tw6fP+i9nBpBip7TPcQ5ZnkAP3EuTnn8EiXCRXRt26W2q2LpAPM+xzWG6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="2631982"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="2631982"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="1107686261"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="1107686261"
Received: from sparrish-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.221])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 02:36:33 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/7] drm/i915/display: Move colorimetry_support from
 intel_psr to intel_dp
Date: Wed, 20 Dec 2023 12:36:04 +0200
Message-Id: <20231220103609.1384523-3-jouni.hogander@intel.com>
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

Colorimetry support is not really a PSR specific thing. Move it to intel_dp
struct and use it also when preparing vsc sdp for non-PSR case.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Tested-by: Shawn Lee <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp.c            | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_psr.c           |  5 +----
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bbdc2041a990..b9b9d9f2bc0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1701,7 +1701,6 @@ struct intel_psr {
 	unsigned int busy_frontbuffer_bits;
 	bool sink_psr2_support;
 	bool link_standby;
-	bool colorimetry_support;
 	bool psr2_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
@@ -1832,6 +1831,8 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+
+	bool colorimetry_support;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3dfca8d88a6f..77fa4dcc4fb7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2622,7 +2622,8 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
-	if (!intel_dp_needs_vsc_sdp(crtc_state, conn_state))
+	if (!intel_dp->colorimetry_support ||
+	    !intel_dp_needs_vsc_sdp(crtc_state, conn_state))
 		return;
 
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
@@ -2639,7 +2640,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 	vsc->sdp_type = DP_SDP_VSC;
 
 	if (crtc_state->has_psr2) {
-		if (intel_dp->psr.colorimetry_support &&
+		if (intel_dp->colorimetry_support &&
 		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 			/* [PSR2, +Colorimetry] */
 			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
@@ -2654,7 +2655,7 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 			vsc->length = 0xe;
 		}
 	} else if (crtc_state->has_panel_replay) {
-		if (intel_dp->psr.colorimetry_support &&
+		if (intel_dp->colorimetry_support &&
 		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
 			/* [Panel Replay with colorimetry info] */
 			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
@@ -6543,6 +6544,9 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    "HDCP init failed, skipping.\n");
 	}
 
+	intel_dp->colorimetry_support =
+		intel_dp_get_colorimetry_status(intel_dp);
+
 	intel_dp->frl.is_trained = false;
 	intel_dp->frl.trained_rate_gbps = 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d5dc3fb6f20..d9fffc802335 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -560,11 +560,8 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
 	if (intel_dp->psr_dpcd[0])
 		_psr_init_dpcd(intel_dp);
 
-	if (intel_dp->psr.sink_psr2_support) {
-		intel_dp->psr.colorimetry_support =
-			intel_dp_get_colorimetry_status(intel_dp);
+	if (intel_dp->psr.sink_psr2_support)
 		intel_dp_get_su_granularity(intel_dp);
-	}
 }
 
 static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
-- 
2.34.1

