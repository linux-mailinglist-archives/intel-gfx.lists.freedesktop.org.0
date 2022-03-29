Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFA84EAFEF
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBA110E8C0;
	Tue, 29 Mar 2022 15:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A473A10F0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566495; x=1680102495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=COZ76qlV3YHtCzTSuewLRqqO9wfHdkNrEUPjEn2eW88=;
 b=aatz70JALYV1F96PA/gylKbCQKb4CIw0/izbJ/rspXBiSasAPywaUWwA
 Eic6SGX9qFgsubS414fRimWVWxhhIdZKZrOX3uHVe/ieG9clt90bTmWLW
 dcqz+/D0Pk8wAWxcBUCs5mIQGTdWH9fkCtrTwphmBhsg4xoFIas5pvnyI
 nilrl3PaRW9WsvdXL9x7n1NL0iq8yXprRXMzA1vweGqWljfwjy6p+HDRe
 QdlyTO3m1r2tLDvo0ZbQzL1/KNQdtmiTeBYYpGHTlDDU85iwld0Oyk6G8
 dG5qHIbAWNABt9ulQKUwm38gAqZ1BFbd+qab31Qtu8bCOnadjP/TR/krR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="246762259"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="246762259"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="554291425"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 29 Mar 2022 08:08:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:41 +0300
Message-Id: <20220329150742.31783-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Allow static DRRS on all eDP
 ports
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Only seamless DRRS has specific hardware requirements so
we can allow static DRRS on any eDP port.

And we can replace these port checks and whatnot with
a simple check to make sure the transcoder(s) we're
about to use are capable of seamless DRRS.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 54 +++++++++----------------
 1 file changed, 20 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 92c0c24517b3..c2e1bcfefae6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1764,10 +1764,22 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
+				    enum transcoder cpu_transcoder)
+{
+	/* M1/N1 is double buffered */
+	if (DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
+		return true;
+
+	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
+}
+
 static bool can_enable_drrs(struct intel_connector *connector,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_display_mode *downclock_mode)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
 	if (pipe_config->vrr.enable)
 		return false;
 
@@ -1780,6 +1792,13 @@ static bool can_enable_drrs(struct intel_connector *connector,
 	if (pipe_config->has_psr)
 		return false;
 
+	/* FIXME missing FDI M2/N2 etc. */
+	if (pipe_config->has_pch_encoder)
+		return false;
+
+	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
+		return false;
+
 	return downclock_mode &&
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
@@ -5024,39 +5043,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 						       fixed_mode->vdisplay);
 }
 
-static bool
-intel_edp_has_drrs(struct intel_dp *intel_dp)
-{
-	struct intel_connector *connector = intel_dp->attached_connector;
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-
-	if (DISPLAY_VER(i915) < 5) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
-			    connector->base.base.id, connector->base.name);
-		return false;
-	}
-
-	if ((DISPLAY_VER(i915) < 8 && !HAS_GMCH(i915)) &&
-	    encoder->port != PORT_A) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported on [ENCODER:%d:%s]\n",
-			    connector->base.base.id, connector->base.name,
-			    encoder->base.base.id, encoder->base.name);
-		return false;
-	}
-
-	if (i915->vbt.drrs_type == DRRS_TYPE_NONE) {
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
-			    connector->base.base.id, connector->base.name);
-		return false;
-	}
-
-	return true;
-}
-
 static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 				     struct intel_connector *intel_connector)
 {
@@ -5121,7 +5107,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->edid = edid;
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_edp_has_drrs(intel_dp));
+					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
-- 
2.34.1

