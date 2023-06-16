Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BAB73332A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E301E10E635;
	Fri, 16 Jun 2023 14:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A576410E635
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 14:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686924540; x=1718460540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2WBM/HAe3m7SjzBjn0g7BzEv+VdxZKF11hEEe+niSvY=;
 b=aoNjanEo0R1JFVmppWQAygqideJphek7EaH28cpBUECoJ8Cq+zTbXLfQ
 z/ryCezi2jDPP1aziWDlWLE+SrEq4SlFmUfQwDnrJaw9KoJJIz1Y6+9J5
 uuYeltu265kVqTVD5mFSF8UldjCsn3uahRxKEVzkugEsNSE11HDGQVwl5
 p14bDAvF0GLRmTkqBBx+cNeubgEgyhwnhm0g4N8DtpNa+C+8QnYKSEnzD
 YA3s683v3LPrf+O2/wBo8ry+eHRjWe2Z5ssNONrViCSX4nmIapN/8+fgg
 Cooj33UEIVHxkJoodMG/e49rU98Jy8F5QrtP/AaQCAbfLIJNGz4loIKaO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343957856"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="343957856"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 07:08:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712883083"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="712883083"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2023 07:08:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Jun 2023 17:08:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:08:17 +0300
Message-Id: <20230616140820.11726-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/7] drm/i915: Assert that the port being
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index 112d91d81fdc..c58a3f249a01 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1259,6 +1259,9 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
+	if (!assert_port_valid(dev_priv, port))
+		return false;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5c187e6e0472..59704939c111 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -667,6 +667,9 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
+	if (!assert_port_valid(dev_priv, port))
+		return;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index ab7cd5e60a0a..809074758687 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1064,6 +1064,8 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	}
 
 	if (HAS_DDI(dev_priv)) {
+		assert_port_valid(dev_priv, PORT_E);
+
 		crt->base.port = PORT_E;
 		crt->base.get_config = hsw_crt_get_config;
 		crt->base.get_hw_state = intel_ddi_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 090f242e610c..62bf6cc136ad 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4661,6 +4661,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
+	if (!assert_port_valid(dev_priv, port))
+		return;
+
 	/*
 	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
 	 * have taken over some of the PHYs and made them unavailable to the
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 27ace4aa8402..669e0cb6e392 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7388,6 +7388,12 @@ static bool intel_ddi_crt_present(struct drm_i915_private *dev_priv)
 	return true;
 }
 
+bool assert_port_valid(struct drm_i915_private *i915, enum port port)
+{
+	return !drm_WARN(&i915->drm, !(DISPLAY_RUNTIME_INFO(i915)->port_mask & BIT(port)),
+			 "Platform does not support port %c\n", port_name(port));
+}
+
 void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index c744c021af23..53ca0e4e2357 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -539,6 +539,8 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 #define assert_transcoder_enabled(d, t) assert_transcoder(d, t, true)
 #define assert_transcoder_disabled(d, t) assert_transcoder(d, t, false)
 
+bool assert_port_valid(struct drm_i915_private *i915, enum port port);
+
 /*
  * Use I915_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw state sanity
  * checks to check for unexpected conditions which may not necessarily be a user
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 9884678743b6..b386894c3a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -509,6 +509,8 @@ void intel_dvo_init(struct drm_i915_private *i915)
 		return;
 	}
 
+	assert_port_valid(i915, intel_dvo->dev.port);
+
 	encoder->type = INTEL_OUTPUT_DVO;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
 	encoder->port = intel_dvo->dev.port;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 21f92123c844..d269726a832e 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3329,6 +3329,9 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	struct intel_sdvo *intel_sdvo;
 	int i;
 
+	if (!assert_port_valid(dev_priv, port))
+		return false;
+
 	assert_sdvo_port_valid(dev_priv, port);
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
-- 
2.39.3

