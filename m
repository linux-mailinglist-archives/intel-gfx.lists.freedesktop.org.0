Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 067B269EAE6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5421210E3A6;
	Tue, 21 Feb 2023 23:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1424010E8FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020594; x=1708556594;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mat1aGZZZS6TCU4no/rV8/uAQ2SHd9nqmYZe8eRNRpw=;
 b=i3I7rPXS63+UC0BnPgBFVaNr3eKpxI/8m414PwGmIV0ZtP80ZBGQqWu4
 ZvoL9aUdJzWELpgg3uADpmvLscnCbMtxLBlLj2/ZMe1r9dAm7RV+DUG4j
 1pL9aC7etU0A0Ie1BZuaUOhRhJYpFlMxzBQLTFdnWyLmadaf+HpHijhDf
 KbH4+Rz54S5shGiX27FC7Jjb/ZtUkWx6qsZI8JsIRAgUP4xFi/LQ1xZbX
 pMmoJyY24I5IUkkhQuPt9Z/tCe40o0MlIan/hk6DMmkqlsdoZmqJFI7Wu
 rF+2lhz53YMJokYkAbi399egoc3+l0cM56ihsaEdjfzoBn3YI6VGXnxVi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501849"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501849"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690170"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690170"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:08 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:19 +0200
Message-Id: <20230221230227.6244-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 14/22] drm/i915: Assert that the port being
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
index f497a02a50ea..85fc450e0e44 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7819,8 +7819,14 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 
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

