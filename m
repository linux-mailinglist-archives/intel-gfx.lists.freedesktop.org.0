Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A3873860
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FA91131F4;
	Wed,  6 Mar 2024 14:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WXShWh5W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19011131F4
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734050; x=1741270050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wJT0D1U5zza9Zw3XkMrI0WsrRuydS2WEuUz0uizt8Pg=;
 b=WXShWh5WhydgNfwGg1xe74LIqFO9rTuT9ghMMM964tPOOiOvLP9McUL2
 MpF8RAYlLq4NbY0dhBfBIM+loHoL0GyGxQyWiUSFgFWv7C3SaceOpqiEK
 8+X604fTdLPlOD+sfNwCD7mcBv3Kz9u+MylCk121hPl8NQuLJEVi/f7uM
 LPNUmRsBU/YTVmQdu+qxaOiiu+5hIH1zoHuTnE6sFlEe/XZDQ5QaoIqea
 JlFFALhNmH9aX5wtp5A1VZzVb44XDQqCy9pQ/MrJdSfFqoETwjSLPMdGt
 E80ptrNFR/TrPMJhBro8XaP5IZURiYmstET4uCNg3ZhAAt4TXZHb+kmrh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288460"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288460"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915258"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 2/6] drm/i915/mst: improve debug logging of DP MST mode
 detect
Date: Wed,  6 Mar 2024 16:07:13 +0200
Message-Id: <e7a8f15c34ac8d7452252aac9f951e5ec459aa4d.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
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

Rename intel_dp_can_mst() to intel_dp_mst_detect(), and move all DP MST
detect debug logging there. Debug log the sink's MST capability,
including single-stream sideband messaging support, and the decision
whether to enable MST mode or not. Do this regardless of whether we're
actually enabling MST or not.

We need to detect MST in intel_dp_detect_dpcd() before the earlier
returns, but try not to change the logic otherwise.

v2:
- Use "MST", "SST w/ sideband messaging", and "SST" for logging (Ville)
- Return MST mode from intel_dp_mst_detect()
- Do MST detect before early returns from intel_dp_detect_dpcd()

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 52 ++++++++++++++++++-------
 1 file changed, 37 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 717d5715e7bf..cef65a300154 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4047,31 +4047,50 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 					   intel_dp->downstream_ports) == 0;
 }
 
-static bool
-intel_dp_can_mst(struct intel_dp *intel_dp)
+static const char *intel_dp_mst_mode_str(enum drm_dp_mst_mode mst_mode)
+{
+	if (mst_mode == DRM_DP_MST)
+		return "MST";
+	else if (mst_mode == DRM_DP_SST_SIDEBAND_MSG)
+		return "SST w/ sideband messaging";
+	else
+		return "SST";
+}
+
+static enum drm_dp_mst_mode
+intel_dp_mst_detect(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	enum drm_dp_mst_mode sink_mst_mode;
+	enum drm_dp_mst_mode mst_detect;
+
+	sink_mst_mode = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
+
+	if (i915->display.params.enable_dp_mst &&
+	    intel_dp_mst_source_support(intel_dp) &&
+	    sink_mst_mode == DRM_DP_MST)
+		mst_detect = DRM_DP_MST;
+	else
+		mst_detect = DRM_DP_SST;
 
-	return i915->display.params.enable_dp_mst &&
-		intel_dp_mst_source_support(intel_dp) &&
-		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
+	drm_dbg_kms(&i915->drm,
+		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s -> enable: %s\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
+		    intel_dp_mst_mode_str(sink_mst_mode),
+		    str_yes_no(i915->display.params.enable_dp_mst),
+		    intel_dp_mst_mode_str(mst_detect));
+
+	return mst_detect;
 }
 
 static void
 intel_dp_configure_mst(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_encoder *encoder =
-		&dp_to_dig_port(intel_dp)->base;
 	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
 
-	drm_dbg_kms(&i915->drm,
-		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
-		    encoder->base.base.id, encoder->base.name,
-		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
-		    str_yes_no(sink_can_mst),
-		    str_yes_no(i915->display.params.enable_dp_mst));
-
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
@@ -5360,6 +5379,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum drm_dp_mst_mode mst_detect;
 	u8 *dpcd = intel_dp->dpcd;
 	u8 type;
 
@@ -5371,6 +5391,8 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
 
+	mst_detect = intel_dp_mst_detect(intel_dp);
+
 	/* if there's no downstream port, we're done */
 	if (!drm_dp_is_branch(dpcd))
 		return connector_status_connected;
@@ -5382,7 +5404,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 		connector_status_connected : connector_status_disconnected;
 	}
 
-	if (intel_dp_can_mst(intel_dp))
+	if (mst_detect == DRM_DP_MST)
 		return connector_status_connected;
 
 	/* If no HPD, poke DDC gently */
-- 
2.39.2

