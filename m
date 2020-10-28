Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFDC29D312
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6805A6E5C8;
	Wed, 28 Oct 2020 21:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA9F6E5C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:40:45 +0000 (UTC)
IronPort-SDR: CmdRt+MF08HjBel4oGMjm1oQ9I/Ohjs6KRDfUemrc8+fZTJN9I/652fEWVS80DfUU9AecVNb06
 jvzyzZDe1Ofw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="156115082"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="156115082"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:40:44 -0700
IronPort-SDR: hFJVCsEBm+iGtid2kR5BHcipahH+2jMXVQSnMqZDUWt3vLOedPq3tijF/XNRVahPiAPXaqDq4+
 lh6iKKayFu3g==
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="351171550"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 28 Oct 2020 14:40:43 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 14:42:32 -0700
Message-Id: <20201028214232.5631-6-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201028214232.5631-1-manasi.d.navare@intel.com>
References: <20201028214232.5631-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 6/6] drm/i915/dp: Allow big joiner modes in
 intel_dp_mode_valid(), v3.
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

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Small changes to intel_dp_mode_valid(), allow listing modes that
can only be supported in the bigjoiner configuration, which is
not supported yet.

v12:
* slice_count logic simplify (Ville)
* Fix unnecessary changes in downstream_mode_valid (Ville)
v11:
* Make intel_dp_can_bigjoiner non static
so it can be used in intel_display (Manasi)
v10:
* Simplify logic (Ville)
* Allow bigjoiner on edp (Ville)
v9:
* Restric Bigjoiner on PORT A (Ville)
v8:
* use source dotclock for max dotclock (Manasi)
v7:
* Add can_bigjoiner() helper (Ville)
* Pass bigjoiner to plane_size validation (Ville)
v6:
* Rebase after dp_downstream mode valid changes (Manasi)
v5:
* Increase max plane width to support 8K with bigjoiner (Maarten)
v4:
* Rebase (Manasi)

Changes since v1:
- Disallow bigjoiner on eDP.
Changes since v2:
- Rename intel_dp_downstream_max_dotclock to intel_dp_max_dotclock,
  and split off the downstream and source checking to its own function.
  (Ville)
v3:
* Rebase (Manasi)

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  5 +-
 drivers/gpu/drm/i915/display/intel_display.h |  3 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 77 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h      |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  2 +-
 7 files changed, 72 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 233bd894c5c3..45d8deafe89a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17770,7 +17770,8 @@ intel_mode_valid(struct drm_device *dev,
 
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
-				const struct drm_display_mode *mode)
+				const struct drm_display_mode *mode,
+				bool bigjoiner)
 {
 	int plane_width_max, plane_height_max;
 
@@ -17787,7 +17788,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (INTEL_GEN(dev_priv) >= 11) {
-		plane_width_max = 5120;
+		plane_width_max = 5120 << bigjoiner;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1b946209e06b..4f8dee9dfb4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -497,7 +497,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 bool intel_plane_can_remap(const struct intel_plane_state *plane_state);
 enum drm_mode_status
 intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
-				const struct drm_display_mode *mode);
+				const struct drm_display_mode *mode,
+				bool bigjoiner);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2c29e7f5281b..2336b204a3e9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -254,6 +254,17 @@ intel_dp_max_data_rate(int max_link_clock, int max_lanes)
 	return max_link_clock * max_lanes;
 }
 
+bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &intel_dig_port->base;
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	return INTEL_GEN(dev_priv) >= 12 ||
+		(INTEL_GEN(dev_priv) == 11 &&
+		 encoder->port != PORT_A);
+}
+
 static int cnl_max_source_rate(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -519,7 +530,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 
 static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				       u32 link_clock, u32 lane_count,
-				       u32 mode_clock, u32 mode_hdisplay)
+				       u32 mode_clock, u32 mode_hdisplay,
+				       bool bigjoiner)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -537,6 +549,10 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
 		mode_hdisplay;
+
+	if (bigjoiner)
+		max_bpp_small_joiner_ram *= 2;
+
 	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
 		    max_bpp_small_joiner_ram);
 
@@ -546,6 +562,15 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	 */
 	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
 
+	if (bigjoiner) {
+		u32 max_bpp_bigjoiner =
+			i915->max_cdclk_freq * 48 /
+			intel_dp_mode_to_fec_clock(mode_clock);
+
+		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
+		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
+	}
+
 	/* Error out if the max bpp is less than smallest allowed valid bpp */
 	if (bits_per_pixel < valid_dsc_bpp[0]) {
 		drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min %u\n",
@@ -568,7 +593,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 }
 
 static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
-				       int mode_clock, int mode_hdisplay)
+				       int mode_clock, int mode_hdisplay,
+				       bool bigjoiner)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 min_slice_count, i;
@@ -595,12 +621,18 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		if (valid_dsc_slicecount[i] >
-		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
-						    false))
+		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
+
+		if (test_slice_count >
+		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd, false))
 			break;
-		if (min_slice_count  <= valid_dsc_slicecount[i])
-			return valid_dsc_slicecount[i];
+
+		/* big joiner needs small joiner to be enabled */
+		if (bigjoiner && test_slice_count < 4)
+			continue;
+
+		if (min_slice_count <= test_slice_count)
+			return test_slice_count;
 	}
 
 	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
@@ -717,6 +749,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	u16 dsc_max_output_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
+	bool dsc = false, bigjoiner = false;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
@@ -737,6 +770,13 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (mode->clock < 10000)
 		return MODE_CLOCK_LOW;
 
+	if (target_clock > max_dotclk && intel_dp_can_bigjoiner(intel_dp)) {
+		bigjoiner = true;
+		max_dotclk *= 2;
+	}
+	if (target_clock > max_dotclk)
+		return MODE_CLOCK_HIGH;
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -765,16 +805,23 @@ intel_dp_mode_valid(struct drm_connector *connector,
 							    max_link_clock,
 							    max_lanes,
 							    target_clock,
-							    mode->hdisplay) >> 4;
+							    mode->hdisplay,
+							    bigjoiner) >> 4;
 			dsc_slice_count =
 				intel_dp_dsc_get_slice_count(intel_dp,
 							     target_clock,
-							     mode->hdisplay);
+							     mode->hdisplay,
+							     bigjoiner);
 		}
+
+		dsc = dsc_max_output_bpp && dsc_slice_count;
 	}
 
-	if ((mode_rate > max_rate && !(dsc_max_output_bpp && dsc_slice_count)) ||
-	    target_clock > max_dotclk)
+	/* big joiner configuration needs DSC */
+	if (bigjoiner && !dsc)
+		return MODE_CLOCK_HIGH;
+
+	if (mode_rate > max_rate && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	status = intel_dp_mode_valid_downstream(intel_connector,
@@ -782,7 +829,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
 }
 
 u32 intel_dp_pack_aux(const u8 *src, int src_bytes)
@@ -2297,11 +2344,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 						    pipe_config->port_clock,
 						    pipe_config->lane_count,
 						    adjusted_mode->crtc_clock,
-						    adjusted_mode->crtc_hdisplay);
+						    adjusted_mode->crtc_hdisplay,
+						    false);
 		dsc_dp_slice_count =
 			intel_dp_dsc_get_slice_count(intel_dp,
 						     adjusted_mode->crtc_clock,
-						     adjusted_mode->crtc_hdisplay);
+						     adjusted_mode->crtc_hdisplay,
+						     false);
 		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Compressed BPP/Slice Count not supported\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 3f862b4fd34f..b871a09b6901 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -106,6 +106,7 @@ bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_max_data_rate(int max_link_clock, int max_lanes);
+bool intel_dp_can_bigjoiner(struct intel_dp *intel_dp);
 bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c8fcec4d0788..0c8684634fca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -714,7 +714,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(dev_priv, mode);
+	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index afa4e6817e8c..f453ceb8d149 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -75,7 +75,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 			return MODE_CLOCK_HIGH;
 	}
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
 }
 
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f90838bc74fb..82674a8853c6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2274,7 +2274,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode);
+	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
 }
 
 bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
