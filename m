Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA571C0AD3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:08:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C291E6EA3C;
	Thu, 30 Apr 2020 23:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193446EA3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 23:08:32 +0000 (UTC)
IronPort-SDR: xKxW5RQBAVIG8qjSa3ODsjg4rd3RQhjyB2rhbCtYoMNW881Y0XOyewtIpJ8fTEcoBUXUsX/bfr
 omlXlYEiheow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 16:08:30 -0700
IronPort-SDR: kUYj8qUy6fNL9Os5kATAmt2xVYl5QsDJisBU1MK1DPh5QeFBnEgGshCNtkyjEk+mGkOTzK8nkn
 ih1cvfmFXiFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="405581159"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2020 16:08:30 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 16:09:44 -0700
Message-Id: <20200430230951.2508-5-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200430230951.2508-1-manasi.d.navare@intel.com>
References: <20200430230951.2508-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 04/11] drm/i915/dp: Allow big joiner modes in
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

eDP does not support bigjoiner, so do not expose bigjoiner only
modes on the eDP port.

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
 drivers/gpu/drm/i915/display/intel_dp.c | 117 ++++++++++++++++++------
 1 file changed, 89 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6952b0295096..bca1f1547c74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -248,25 +248,37 @@ intel_dp_max_data_rate(int max_link_clock, int max_lanes)
 	return max_link_clock * max_lanes;
 }
 
-static int
-intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
+static int source_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
 {
 	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &intel_dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int max_dotclk = dev_priv->max_dotclk_freq;
-	int ds_max_dotclk;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (allow_bigjoiner && INTEL_GEN(i915) >= 11 && !intel_dp_is_edp(intel_dp))
+		return 2 * i915->max_dotclk_freq;
+
+	return i915->max_dotclk_freq;
+}
 
+static int downstream_max_dotclock(struct intel_dp *intel_dp)
+{
 	int type = intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MASK;
 
 	if (type != DP_DS_PORT_TYPE_VGA)
-		return max_dotclk;
+		return 0;
 
-	ds_max_dotclk = drm_dp_downstream_max_clock(intel_dp->dpcd,
-						    intel_dp->downstream_ports);
+	return drm_dp_downstream_max_clock(intel_dp->dpcd,
+					   intel_dp->downstream_ports);
+}
+
+static int
+intel_dp_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
+{
+	int max_dotclk = source_max_dotclock(intel_dp, allow_bigjoiner);
+	int ds_max_dotclk = downstream_max_dotclock(intel_dp);
 
 	if (ds_max_dotclk != 0)
-		max_dotclk = min(max_dotclk, ds_max_dotclk);
+		return min(max_dotclk, ds_max_dotclk);
 
 	return max_dotclk;
 }
@@ -515,7 +527,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 
 static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				       u32 link_clock, u32 lane_count,
-				       u32 mode_clock, u32 mode_hdisplay)
+				       u32 mode_clock, u32 mode_hdisplay,
+				       bool bigjoiner)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -533,6 +546,10 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
 		mode_hdisplay;
+
+	if (bigjoiner)
+		max_bpp_small_joiner_ram *= 2;
+
 	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
 		    max_bpp_small_joiner_ram);
 
@@ -542,6 +559,15 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
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
@@ -564,7 +590,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 }
 
 static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
-				       int mode_clock, int mode_hdisplay)
+				       int mode_clock, int mode_hdisplay,
+				       bool bigjoiner)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 min_slice_count, i;
@@ -591,12 +618,20 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		if (valid_dsc_slicecount[i] >
-		    drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
-						    false))
+		u8 test_slice_count = bigjoiner ?
+			2 * valid_dsc_slicecount[i] :
+			valid_dsc_slicecount[i];
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
@@ -636,11 +671,15 @@ intel_dp_mode_valid(struct drm_connector *connector,
 	int max_dotclk;
 	u16 dsc_max_output_bpp = 0;
 	u8 dsc_slice_count = 0;
+	bool dsc = false, bigjoiner = false;
 
 	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return MODE_NO_DBLESCAN;
 
-	max_dotclk = intel_dp_downstream_max_dotclock(intel_dp);
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_H_ILLEGAL;
+
+	max_dotclk = intel_dp_max_dotclock(intel_dp, false);
 
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		if (mode->hdisplay > fixed_mode->hdisplay)
@@ -652,6 +691,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		target_clock = fixed_mode->clock;
 	}
 
+	if (mode->clock < 10000)
+		return MODE_CLOCK_LOW;
+
+	if (target_clock > max_dotclk) {
+		if (intel_dp_is_edp(intel_dp))
+			return MODE_CLOCK_HIGH;
+
+		max_dotclk = intel_dp_max_dotclock(intel_dp, true);
+
+		if (target_clock > max_dotclk)
+			return MODE_CLOCK_HIGH;
+
+		bigjoiner = true;
+	}
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -679,23 +733,28 @@ intel_dp_mode_valid(struct drm_connector *connector,
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
+	if (bigjoiner && !dsc) {
+		DRM_DEBUG_KMS("Link clock needs bigjoiner, but DSC or FEC not available\n");
 		return MODE_CLOCK_HIGH;
+	}
 
-	if (mode->clock < 10000)
-		return MODE_CLOCK_LOW;
-
-	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
-		return MODE_H_ILLEGAL;
+	if (mode_rate > max_rate && !dsc) {
+		DRM_DEBUG_KMS("Cannot drive without DSC\n");
+		return MODE_CLOCK_HIGH;
+	}
 
 	return intel_mode_valid_max_plane_size(dev_priv, mode);
 }
@@ -2188,11 +2247,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
