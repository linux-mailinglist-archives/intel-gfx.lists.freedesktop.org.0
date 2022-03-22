Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 379B74E3DF6
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE4C10E406;
	Tue, 22 Mar 2022 12:00:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2FAC10E55C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950427; x=1679486427;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ZbClmHlXheS+6ZlPP/dQzmRhXjxxyvOqln8w+8MbAZI=;
 b=HeGDjnHCLJ2P9hypMuKE4iBB0d38gaUd7VbUFytDhebf0Vo+SGMLRVd6
 lTppX2KlkJzB1b618yzrYgTSEwEPs8ZwS3Qnd7+Oz4h8HMOgxUIpHk1yH
 7KD3ypkwqcG/6bplVskUW4Xai92f91vPDTSSEnATCqIcEn/klCLmyY7eZ
 IvO25kZRzx9kUg83Qp0EGVqkavb7l0CKX1x7p//zYI1yU3m3OidI+xFIM
 xhsJIsK/+tKJAtDrhAvbP9hJojtK6xoR4rSqPMZmRF4/DStmNyDRSkzz6
 1VmY7pF28wl7d4hYDyN/w0wGABmVtoEs4tpBk+DVZGgoLX6TLfGWGbblj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="245273352"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="245273352"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="518853369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 22 Mar 2022 05:00:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:06 +0200
Message-Id: <20220322120015.28074-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/12] drm/i915/dp: Extract
 intel_dp_has_audio()
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

Declutter intel_dp_compute_config() a bit by moving the
has_audio computation into a helper. HDMI already does the same thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 30 ++++++++++++++++---------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3394e4951fef..fc50802c9997 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1798,6 +1798,24 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static bool intel_dp_has_audio(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	const struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
+
+	if (!intel_dp_port_has_audio(i915, encoder->port))
+		return false;
+
+	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
+		return intel_dp->has_audio;
+	else
+		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -1807,14 +1825,11 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
-	enum port port = encoder->port;
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct intel_digital_connector_state *intel_conn_state =
-		to_intel_digital_connector_state(conn_state);
 	bool constant_n = drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CONSTANT_N);
 	int ret = 0, output_bpp;
 
-	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && port != PORT_A)
+	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
 	pipe_config->output_format = intel_dp_output_format(&intel_connector->base,
@@ -1826,12 +1841,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			return ret;
 	}
 
-	if (!intel_dp_port_has_audio(dev_priv, port))
-		pipe_config->has_audio = false;
-	else if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		pipe_config->has_audio = intel_dp->has_audio;
-	else
-		pipe_config->has_audio = intel_conn_state->force_audio == HDMI_AUDIO_ON;
+	pipe_config->has_audio = intel_dp_has_audio(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(intel_connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-- 
2.34.1

