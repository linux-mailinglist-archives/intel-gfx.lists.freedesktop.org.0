Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A56B52217DA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 00:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7C96EC06;
	Wed, 15 Jul 2020 22:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 043E76EBF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 22:40:23 +0000 (UTC)
IronPort-SDR: ddaPWS+BHBNZl8GzU5L5yIb26ovUnvy4pT+i+ynT1WVmUtEuKH68hsd1mDjZlLwm+uVFoA5Qb5
 oxzSdd1xettw==
X-IronPort-AV: E=McAfee;i="6000,8403,9683"; a="167412051"
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="167412051"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 15:40:23 -0700
IronPort-SDR: gYxW5rR1Ox6XIkNA6KRUp3s8ZIHeNq/5RV7A2yPoAcy6ueLv0RJ6kzeS5l9SmvjMhINCN+KOMI
 avxdLOHRTpQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,357,1589266800"; d="scan'208";a="316850652"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2020 15:40:22 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 15:42:15 -0700
Message-Id: <20200715224222.7557-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200715224222.7557-1-manasi.d.navare@intel.com>
References: <20200715224222.7557-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 04/11] drm/i915/dp: Allow big joiner modes in
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
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 119 ++++++++++++++-----
 2 files changed, 91 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78cbfefbfa62..3ecb642805a6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -17400,7 +17400,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * too big for that.
 	 */
 	if (INTEL_GEN(dev_priv) >= 11) {
-		plane_width_max = 5120;
+		plane_width_max = 7680;
 		plane_height_max = 4320;
 	} else {
 		plane_width_max = 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d6295eb20b63..fbfea99fd804 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -248,25 +248,37 @@ intel_dp_max_data_rate(int max_link_clock, int max_lanes)
 	return max_link_clock * max_lanes;
 }
 
-static int
-intel_dp_downstream_max_dotclock(struct intel_dp *intel_dp)
+static int source_max_dotclock(struct intel_dp *intel_dp, bool allow_bigjoiner)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &intel_dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int max_dotclk = dev_priv->max_dotclk_freq;
-	int ds_max_dotclk;
 
+	if (allow_bigjoiner && INTEL_GEN(dev_priv) >= 11 && !intel_dp_is_edp(intel_dp))
+		return 2 * dev_priv->max_dotclk_freq;
+
+	return dev_priv->max_dotclk_freq;
+}
+
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
@@ -527,7 +539,8 @@ small_joiner_ram_size_bits(struct drm_i915_private *i915)
 
 static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				       u32 link_clock, u32 lane_count,
-				       u32 mode_clock, u32 mode_hdisplay)
+				       u32 mode_clock, u32 mode_hdisplay,
+				       bool bigjoiner)
 {
 	u32 bits_per_pixel, max_bpp_small_joiner_ram;
 	int i;
@@ -545,6 +558,10 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
 	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
 		mode_hdisplay;
+
+	if (bigjoiner)
+		max_bpp_small_joiner_ram *= 2;
+
 	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
 		    max_bpp_small_joiner_ram);
 
@@ -554,6 +571,15 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
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
@@ -576,7 +602,8 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 }
 
 static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
-				       int mode_clock, int mode_hdisplay)
+				       int mode_clock, int mode_hdisplay,
+				       bool bigjoiner)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 min_slice_count, i;
@@ -603,12 +630,20 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 
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
@@ -648,11 +683,15 @@ intel_dp_mode_valid(struct drm_connector *connector,
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
@@ -664,6 +703,21 @@ intel_dp_mode_valid(struct drm_connector *connector,
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
 
@@ -691,23 +745,28 @@ intel_dp_mode_valid(struct drm_connector *connector,
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
@@ -2204,11 +2263,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
