Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3974ED881
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF1B10F31C;
	Thu, 31 Mar 2022 11:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43C910F2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726134; x=1680262134;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O43xiF5Id74Ohraf6KHRYG/8vP4C4VeqmTl4zcjo/YY=;
 b=G6N5OAfFPg8nXD/hMkhcSQHHG+RM+USNXx3ZFWEor3ouQRJfJ5rep6N9
 /+E9tcTCH3hDSdz7Y8/Hx3qS4qOxkc9kDfCqu/Q5alC5z+eenPyIY0K/s
 Ejdgh4RyT6TdZsfk6nn0GydAcTasSk/JhbX338AreDRf7470hHtb7i62i
 poL2fPS8h1oDKigLeMv8Spf4vTr/+BubvKPfqxIkeMAK5lDpnKwPfriWK
 47aVN+wtygqiUK/FQIEqEnvpHlC90CAre0QO2fTJVEU/D/qvKngFCaC4P
 L0objVWir2NpsEsIxQthywuyeSg0Pz90pQW0nTjA5wSlrHBX1xKPKVnhM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259514040"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259514040"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="520444519"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 31 Mar 2022 04:28:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:21 +0300
Message-Id: <20220331112822.11462-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915: Allow static DRRS on all eDP
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
index da1fd626c3fb..b0b4bdaf3b9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1769,10 +1769,22 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
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
 
@@ -1785,6 +1797,13 @@ static bool can_enable_drrs(struct intel_connector *connector,
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
@@ -5029,39 +5048,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
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
@@ -5126,7 +5112,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->edid = edid;
 
 	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_edp_has_drrs(intel_dp));
+					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
-- 
2.34.1

