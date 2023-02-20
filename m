Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C3D69D738
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE35D10E7E3;
	Mon, 20 Feb 2023 23:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C710810E7E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936492; x=1708472492;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BWCUdy//AqCAiRBMifCUvtxy3A6TbxLVLEFSmkPYouA=;
 b=KRHa88d5QTlNsZmVHzz0+nwDyEknKojpu1UpWDRF/3Gr1L8LZ05hzanH
 rAmmQtNxOSBLm2cQZS09u+pnlWutvhoBw1qFO1Xnm8mGRn3A2sZhzKd1Y
 wS7MKlIjAuA4qfSNvyTscQoPbg2/J35Y1aW8sTKu0ISmudGcJQXj/OBW7
 o94RfTf1VnpvyFepzpG+lgnnI9jSdqdbv1asfTxSp17Bof5di16XAaJ4v
 0Gbjd8ZKAcRB+eRyPSe2Y9GV5ognJfsyoSYrR6aoo0JsgIWmLGC3BNwMy
 Rxi0OJl1FPeug+51kvuRd/g0GwNV/4Bb+iS3kkTa2ui61DSv24nBjU1WP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394989091"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394989091"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769757"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769757"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:41:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:41:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:42 +0200
Message-Id: <20230220234046.29716-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/18] drm/i915: Assert that the port being
 initialized is valid
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

Sprinkle some asserts to catch any mishaps in the port_mask
vs. output init.

For DDI/DP/HDMI/SDVO I decided that we want to bail out for
an invalid port since those are the encoder types where
we might want consider driving the whole thing from the VBT
child device list, and bogus VBTs could be a real issue
(if for no other reason than the i915.vbt_firmware).

For DVO and HSW/BDW CRT port I just threw the assert in
there for good measure.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        | 3 +++
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 3 +++
 drivers/gpu/drm/i915/display/intel_crt.c     | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     | 3 +++
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 2 ++
 drivers/gpu/drm/i915/display/intel_dvo.c     | 2 ++
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +++
 8 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5e1892f9cd54..b5b0b323c1f4 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1258,8 +1258,11 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	struct intel_encoder *intel_encoder;
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
+	if (!assert_port_valid(dev_priv, port))
+		return false;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 	intel_bios_encoder_sanitize(devdata, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index d730cf79a402..8edbb0189a1c 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -553,8 +553,11 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
+	if (!assert_port_valid(dev_priv, port))
+		return;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 	intel_bios_encoder_sanitize(devdata, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8f2ebead0826..76b2e3d97096 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1057,8 +1057,10 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	}
 
 	if (HAS_DDI(dev_priv)) {
+		assert_port_valid(dev_priv, PORT_E);
+
 		crt->base.port = PORT_E;
 		crt->base.get_config = hsw_crt_get_config;
 		crt->base.get_hw_state = intel_ddi_get_hw_state;
 		crt->base.compute_config = hsw_crt_compute_config;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8a269fed3bd1..0aa8356bb484 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4264,8 +4264,11 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	struct intel_bios_encoder_data *devdata;
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
+	if (!assert_port_valid(dev_priv, port))
+		return;
+
 	/*
 	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
 	 * have taken over some of the PHYs and made them unavailable to the
 	 * driver.  In that case we should skip initializing the corresponding
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e3d503b964f5..1012f112f5f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7796,8 +7796,14 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 
 	return true;
 }
 
+bool assert_port_valid(struct drm_i915_private *i915, enum port port)
+{
+	return !drm_WARN(&i915->drm, !(RUNTIME_INFO(i915)->port_mask & BIT(port)),
+			 "Platform does not support port %c\n", port_name(port));
+}
+
 static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
 	bool dpd_is_edp = false;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 50285fb4fcf5..f474d57a7d64 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -553,8 +553,10 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 		       enum transcoder cpu_transcoder, bool state);
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
 #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
 
+bool assert_port_valid(struct drm_i915_private *i915, enum port port);
+
 /* Use I915_STATE_WARN(x) and I915_STATE_WARN_ON() (rather than WARN() and
  * WARN_ON()) for hw state sanity checks to check for unexpected conditions
  * which may not necessarily be a user visible problem.  This will either
  * WARN() or DRM_ERROR() depending on the verbose_checks moduleparam, to
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index eb2dcd866cc8..7f045cc6b75e 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -507,8 +507,10 @@ void intel_dvo_init(struct drm_i915_private *i915)
 		intel_connector_free(connector);
 		return;
 	}
 
+	assert_port_valid(i915, intel_dvo->dev.port);
+
 	encoder->type = INTEL_OUTPUT_DVO;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	encoder->port = intel_dvo->dev.port;
 	encoder->pipe_mask = ~0;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e12ba458636c..adce8b15612d 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3328,8 +3328,11 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	struct intel_encoder *intel_encoder;
 	struct intel_sdvo *intel_sdvo;
 	int i;
 
+	if (!assert_port_valid(dev_priv, port))
+		return false;
+
 	assert_sdvo_port_valid(dev_priv, port);
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
 	if (!intel_sdvo)
-- 
2.39.2

