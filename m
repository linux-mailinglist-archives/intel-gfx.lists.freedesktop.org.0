Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D5598A6EE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 16:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F0010E3F6;
	Mon, 30 Sep 2024 14:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLR6G5gY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D905910E3F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 14:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727706348; x=1759242348;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xlx9ng+SGWhoyXszQASns3w/pnrrmuhkwoxSAq1/jrE=;
 b=SLR6G5gYjP9ATPFL3ByLufsZzicvEZwIFc9pMq9gj/9fqLWA5G6rdh6C
 RtqY90WcU1RY9XttFkODh9Vf6lZOeSwAi3m2/TPA15714iAa0GYM3qElJ
 OtebYemXP4/vytYRCNFmLZVONHV4dD7N5YQ+wIX19TyQV8niChTVFpNod
 OVBwNKVTwfosZdmq0n5t+f8h/nb1QJsWhebfYbaSwmOGfkRJfetjSb4QU
 Fw1mhRAkurtw1Ouxxs6YSOcLab+6onicSCwhcTx2qx8tFRGgbY6fC2/fA
 eGPYTLxDvX177RDKIswuwJ/urG45rzs5JLK21c8g5G0CIL0eDNg+JECjC A==;
X-CSE-ConnectionGUID: Ujhbsmf4RfOPxmLKjHWjOA==
X-CSE-MsgGUID: +lljKJ2NSnW5JAJTvq4aHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="38183632"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="38183632"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:25:48 -0700
X-CSE-ConnectionGUID: 2TidyluLQQeGSnk+I7owhg==
X-CSE-MsgGUID: rSUfcTFvS9qcWFmUh3XEVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73590055"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 07:25:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/dp: Track source OUI validity explicitly
Date: Mon, 30 Sep 2024 17:26:11 +0300
Message-ID: <20240930142612.214061-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
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

While updating the source OUI on the sink the driver should avoid
writing the OUI if it's already up-to-date to prevent the sink from
resetting itself in response to the update. On eDP - the only output
type where the OUI was updated so far - the driver ensured this by
comparing the current source OUI DPCD register values with the expected
Intel OUI value, skipping the update in case of a match. On some non-eDP
sinks - at least on Synaptics branch devices - this method doesn't work,
since the source OUI DPCD registers read back as all 0, even after
updating the registers.

Handle the above kind of sinks by tracking when the OUI was updated and
so should be valid, regardless of what the DPCD registers contain.

This is required by the next patch updating the source OUI on non-eDP
sink types as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 25 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 5 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 440fb3002f286..596e926ef0894 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1251,6 +1251,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
 
 	intel_dp->reset_link_params = true;
+	intel_dp_invalidate_source_oui(intel_dp);
 
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		vlv_pps_pipe_reset(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index fe1ded6707f90..465f245a53c48 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4392,6 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 
 	intel_dp->reset_link_params = true;
+	intel_dp_invalidate_source_oui(intel_dp);
 
 	intel_pps_encoder_reset(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7ff97e5b83dd5..ad84ffa31c97f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1757,6 +1757,7 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+	bool oui_valid;
 
 	bool colorimetry_support;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 16dc1d26d2a25..ab6c917052b5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3335,28 +3335,40 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
 }
 
 static void
-intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
+intel_dp_init_source_oui(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
 	u8 buf[3] = {};
 
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
 	/*
 	 * During driver init, we want to be careful and avoid changing the source OUI if it's
 	 * already set to what we want, so as to avoid clearing any state by accident
 	 */
-	if (careful) {
+	if (!intel_dp->oui_valid) {
 		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
 			drm_err(&i915->drm, "Failed to read source OUI\n");
 
 		if (memcmp(oui, buf, sizeof(oui)) == 0)
-			return;
+			intel_dp->oui_valid = true;
 	}
 
+	if (intel_dp->oui_valid)
+		return;
+
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
 		drm_err(&i915->drm, "Failed to write source OUI\n");
 
 	intel_dp->last_oui_write = jiffies;
+	intel_dp->oui_valid = true;
+}
+
+void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
+{
+	intel_dp->oui_valid = false;
 }
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
@@ -3387,6 +3399,8 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		if (downstream_hpd_needs_d0(intel_dp))
 			return;
 
+		intel_dp_invalidate_source_oui(intel_dp);
+
 		ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
 	} else {
 		struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
@@ -3394,8 +3408,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		lspcon_resume(dp_to_dig_port(intel_dp));
 
 		/* Write the source OUI as early as possible */
-		if (intel_dp_is_edp(intel_dp))
-			intel_edp_init_source_oui(intel_dp, false);
+		intel_dp_init_source_oui(intel_dp);
 
 		/*
 		 * When turning on, we need to retry for 1ms to give the sink
@@ -4112,7 +4125,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
 	 * available (such as HDR backlight controls)
 	 */
-	intel_edp_init_source_oui(intel_dp, true);
+	intel_dp_init_source_oui(intel_dp);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3b869429e5756..0449d1d3f175d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -189,6 +189,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp);
 void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 
+void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
-- 
2.44.2

