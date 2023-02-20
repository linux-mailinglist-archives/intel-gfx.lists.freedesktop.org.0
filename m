Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3144669D06E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 16:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8308010E251;
	Mon, 20 Feb 2023 15:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C89A10E251
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 15:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676906259; x=1708442259;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rq6fRIOgX4VoTESKoXlnwOwzeqfMzVqKTFdHCeibgpA=;
 b=Ws+B44iO/mYhzbfyQ2J52dRaysOKbHHZLNWnm10Xrr1G3Ogh6cd+zvHP
 88E8OzaYsVlG3bTuUrKSYgsimYhMh/+F/76OnjDah3A7FSr0xy5eOLSRu
 bwQtVVctoX0C5Gr66bVgAZJwUq6bTcF1dPWMWDswiwky3DJ8fSlSpTd+S
 M02qpap6ZA95Q8Yt9WkzGlZvfgVkKdn2eUANqOWpFtxPxbT15NolBGtRS
 AcfO8jXQ6PZPlkVWrtmJfxdulku1TKhOEwlzZpu7C8kcTiCcA5ZRWLDdC
 h1hBHYRCPs120GI4XjaJvVD89+QmTyzgW9ZiIF1JBQUTozS2irOUc/nju A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="418642974"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="418642974"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 07:17:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="703730711"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="703730711"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 20 Feb 2023 07:17:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 17:17:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:17:30 +0200
Message-Id: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix audio ELD handling for DP MST
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

I forgot to call intel_audio_compute_config() on DP MST, which
means ELD doesn't get populated and passed to the audio driver.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8097
Fixes: 5d986635e296 ("drm/i915/audio: Precompute the ELD")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 25 +++++++++++++--------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index de856f4375fb..a860cbc5dbea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -265,6 +265,19 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
+static bool intel_dp_mst_has_audio(const struct drm_connector_state *conn_state)
+{
+	const struct intel_digital_connector_state *intel_conn_state =
+		to_intel_digital_connector_state(conn_state);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+
+	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
+		return connector->port->has_audio;
+	else
+		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
+}
+
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -272,10 +285,6 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
-	struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
-	struct intel_digital_connector_state *intel_conn_state =
-		to_intel_digital_connector_state(conn_state);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
@@ -287,11 +296,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		pipe_config->has_audio = connector->port->has_audio;
-	else
-		pipe_config->has_audio =
-			intel_conn_state->force_audio == HDMI_AUDIO_ON;
+	pipe_config->has_audio =
+		intel_dp_mst_has_audio(conn_state) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	/*
 	 * for MST we always configure max link bw - the spec doesn't
-- 
2.39.2

