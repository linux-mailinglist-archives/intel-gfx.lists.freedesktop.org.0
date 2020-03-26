Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2DE193E04
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 12:36:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414DA6E2F8;
	Thu, 26 Mar 2020 11:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1D326E2F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 11:36:04 +0000 (UTC)
IronPort-SDR: QQWilq/GUL+LbQNzoNScj0M8n6NcK7tHBYZpF7E6XkdQzIccNHtk9pVEgP7uKo0UUnShQnoTrL
 Y6EXkFdC5GuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 04:36:04 -0700
IronPort-SDR: DmTY3xG14o8TpgQ98axDyfIjWAonZwTnSEYBsdfxlcIcdV8Ga2Vj4tXE3rt9RgfndFPboOkzKW
 /AYyIw+YX3zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="271143816"
Received: from vipinana-nuc7i7bnh.iind.intel.com ([10.66.179.10])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2020 04:36:03 -0700
From: Vipin Anand <vipin.anand@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 17:04:43 +0530
Message-Id: <20200326113443.30110-1-vipin.anand@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm:i915:display: add checks for Gen9 devices
 with hdr capability
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

this patch adds hdr capabilities checks for Gen9 devices with
lspcon support.

Signed-off-by: Vipin Anand <vipin.anand@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c   | 17 +++++++++++++----
 drivers/gpu/drm/i915/display/intel_lspcon.c |  9 +++++++--
 2 files changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9ae2f88cc925..70d0d76ed606 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -833,9 +833,12 @@ intel_hdmi_compute_drm_infoframe(struct intel_encoder *encoder,
 {
 	struct hdmi_drm_infoframe *frame = &crtc_state->infoframes.drm.drm;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 	int ret;
 
-	if (!(INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)))
+	if (!(INTEL_GEN(dev_priv) >= 10 ||
+	      (((INTEL_GEN(dev_priv) >= 9)) &&
+	      intel_dig_port->lspcon.active)))
 		return true;
 
 	if (!crtc_state->has_infoframe)
@@ -2102,9 +2105,12 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	const struct ddi_vbt_port_info *info =
 		&dev_priv->vbt.ddi_port_info[encoder->port];
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 	int max_tmds_clock;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (INTEL_GEN(dev_priv) >= 10 ||
+	    (((INTEL_GEN(dev_priv) >= 9)) &&
+			 intel_dig_port->lspcon.active))
 		max_tmds_clock = 594000;
 	else if (INTEL_GEN(dev_priv) >= 8 || IS_HASWELL(dev_priv))
 		max_tmds_clock = 300000;
@@ -2423,6 +2429,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 	bool force_dvi = intel_conn_state->force_audio == HDMI_AUDIO_OFF_DVI;
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 	int ret;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
@@ -2469,7 +2476,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	pipe_config->lane_count = 4;
 
 	if (scdc->scrambling.supported && (INTEL_GEN(dev_priv) >= 10 ||
-					   IS_GEMINILAKE(dev_priv))) {
+					   (((INTEL_GEN(dev_priv) >= 9)) &&
+					    intel_dig_port->lspcon.active))) {
 		if (scdc->scrambling.low_rates)
 			pipe_config->hdmi_scrambling = true;
 
@@ -3171,7 +3179,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 	connector->doublescan_allowed = 0;
 	connector->stereo_allowed = 1;
 
-	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
+	if (INTEL_GEN(dev_priv) >= 10 ||
+	    (((INTEL_GEN(dev_priv) >= 9)) && intel_dig_port->lspcon.active))
 		connector->ycbcr_420_allowed = true;
 
 	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 5cede4f07f22..be074acd74f3 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -116,6 +116,8 @@ static bool lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 	if (lspcon->vendor == LSPCON_VENDOR_MCA)
 		ret = drm_dp_dpcd_read(&dp->aux, DPCD_MCA_LSPCON_HDR_STATUS,
 				       &hdr_caps, 1);
+	else if (lspcon->vendor == LSPCON_VENDOR_PARADE)
+		return true;
 	else
 		return false;
 
@@ -474,7 +476,8 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 	 * Todo: Add support for Parade later
 	 */
 	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
-	    lspcon->vendor != LSPCON_VENDOR_MCA)
+		(lspcon->vendor != LSPCON_VENDOR_MCA ||
+		 lspcon->vendor != LSPCON_VENDOR_PARADE))
 		return;
 
 	if (lspcon->vendor == LSPCON_VENDOR_MCA) {
@@ -646,7 +649,9 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
 		return false;
 	}
 
-	if (lspcon->vendor == LSPCON_VENDOR_MCA && lspcon->hdr_supported)
+	if ((lspcon->vendor == LSPCON_VENDOR_MCA ||
+	     lspcon->vendor == LSPCON_VENDOR_PARADE) &&
+	     lspcon->hdr_supported)
 		drm_object_attach_property(&connector->base,
 					   connector->dev->mode_config.hdr_output_metadata_property,
 					   0);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
