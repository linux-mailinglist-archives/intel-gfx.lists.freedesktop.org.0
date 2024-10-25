Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505849B0910
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9043910EB10;
	Fri, 25 Oct 2024 16:02:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzHxaD5T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E53210EB0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872153; x=1761408153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dzaZnI2uxq89jxOTaLb+kSjGXSwgAxsyebLW5IMlSo4=;
 b=IzHxaD5TM4YHcGxu9Ek4wOaGX6dEOxC2iUrGP+CfsbZ35x0GtXmlQJ3Z
 E1iN990aq7CNiZrZ65agFYDX8AfCI6jC+hNbT6F5VPnM3YUcSmTWnv4kr
 e0Qv4aYX5DqnluBIMJVCR3nK4DrJaNjAmpG0iQl/idxwi0bZCpeByeixX
 40uRyiKlJX2msR/+Sx8T6JIG+hh3yr54WOsVA8fjM2Dp1vuwJC58JYPyR
 v16iuogf37L63LQeYxv9ncF6fkY9SmzMI+rejdu82Ca1LRBhLVhY972mb
 G1zStpQXUZ+ZSu19NvUg2BPX8m/Yf+YkwxsIQAjhliCEo0ZXSsfkGZHoN A==;
X-CSE-ConnectionGUID: Gfm9MlohRwKFAKiq8vnEbw==
X-CSE-MsgGUID: B1paVQ+mTnG/jqKbPumfYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242388"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242388"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:33 -0700
X-CSE-ConnectionGUID: fDRsfAN3QdC2Lq/Mr+uUWg==
X-CSE-MsgGUID: SE3F3tbpSeini7rKUb5JZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783703"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 4/8] drm/i915/dp: Track source OUI validity explicitly
Date: Fri, 25 Oct 2024 19:02:55 +0300
Message-ID: <20241025160259.3088727-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

eDP sinks reset the written source OUI value when the panel power is
disabled, invalidate the OUI state accordingly.

This is required by a follow-up patch updating the source OUI for
non-eDP sink types as well.

v2: Fix setting intel_dp::oui_valid=true, if the DPCD register contains
    already the expected value.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 38 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  6 ++-
 6 files changed, 34 insertions(+), 14 deletions(-)

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
index ff4c633c85460..c4fa161e118dd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4392,6 +4392,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 
 	intel_dp->reset_link_params = true;
+	intel_dp_invalidate_source_oui(intel_dp);
 
 	intel_pps_encoder_reset(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2bb1fa64da2f1..9b46427806c6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1765,6 +1765,7 @@ struct intel_dp {
 
 	/* When we last wrote the OUI for eDP */
 	unsigned long last_oui_write;
+	bool oui_valid;
 
 	bool colorimetry_support;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 778cc33d3c690..ca5912f8057b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3401,33 +3401,46 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
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
+	if (READ_ONCE(intel_dp->oui_valid))
+		return;
+
+	WRITE_ONCE(intel_dp->oui_valid, true);
+
 	/*
 	 * During driver init, we want to be careful and avoid changing the source OUI if it's
 	 * already set to what we want, so as to avoid clearing any state by accident
 	 */
-	if (careful) {
-		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
-			drm_err(&i915->drm, "Failed to read source OUI\n");
+	if (drm_dp_dpcd_read(&intel_dp->aux, DP_SOURCE_OUI, buf, sizeof(buf)) < 0)
+		drm_err(&i915->drm, "Failed to read source OUI\n");
 
-		if (memcmp(oui, buf, sizeof(oui)) == 0) {
-			/* Assume the OUI was written now. */
-			intel_dp->last_oui_write = jiffies;
-			return;
-		}
+	if (memcmp(oui, buf, sizeof(oui)) == 0) {
+		/* Assume the OUI was written now. */
+		intel_dp->last_oui_write = jiffies;
+		return;
 	}
 
-	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0)
+	if (drm_dp_dpcd_write(&intel_dp->aux, DP_SOURCE_OUI, oui, sizeof(oui)) < 0) {
 		drm_err(&i915->drm, "Failed to write source OUI\n");
+		WRITE_ONCE(intel_dp->oui_valid, false);
+	}
 
 	intel_dp->last_oui_write = jiffies;
 }
 
+void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp)
+{
+	WRITE_ONCE(intel_dp->oui_valid, false);
+}
+
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
@@ -3463,8 +3476,7 @@ void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
 		lspcon_resume(dp_to_dig_port(intel_dp));
 
 		/* Write the source OUI as early as possible */
-		if (intel_dp_is_edp(intel_dp))
-			intel_edp_init_source_oui(intel_dp, false);
+		intel_dp_init_source_oui(intel_dp);
 
 		/*
 		 * When turning on, we need to retry for 1ms to give the sink
@@ -4185,7 +4197,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
 	 * available (such as HDR backlight controls)
 	 */
-	intel_edp_init_source_oui(intel_dp, true);
+	intel_dp_init_source_oui(intel_dp);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4efb9605a50e0..48f10876be656 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -189,6 +189,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp);
 void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 
+void intel_dp_invalidate_source_oui(struct intel_dp *intel_dp);
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 73a2c9bdd2add..017474a2a8574 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -862,8 +862,10 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 		    intel_de_read(display, pp_stat_reg),
 		    intel_de_read(display, pp_ctrl_reg));
 
-	if ((pp & PANEL_POWER_ON) == 0)
+	if ((pp & PANEL_POWER_ON) == 0) {
 		intel_dp->pps.panel_power_off_time = ktime_get_boottime();
+		intel_dp_invalidate_source_oui(intel_dp);
+	}
 
 	intel_display_power_put(dev_priv,
 				intel_aux_power_domain(dig_port),
@@ -1075,6 +1077,8 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	wait_panel_off(intel_dp);
 	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
 
+	intel_dp_invalidate_source_oui(intel_dp);
+
 	/* We got a reference when we enabled the VDD. */
 	intel_display_power_put(dev_priv,
 				intel_aux_power_domain(dig_port),
-- 
2.44.2

