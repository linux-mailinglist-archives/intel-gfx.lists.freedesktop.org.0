Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3D142F3FF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933706EDBC;
	Fri, 15 Oct 2021 13:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881D36EDBD
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:40:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="215077421"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="215077421"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:40:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="528039479"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 15 Oct 2021 06:40:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:40:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Date: Fri, 15 Oct 2021 16:39:20 +0300
Message-Id: <20211015133921.4609-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/20] drm/i915/dp: Fix DFP rgb->ycbcr
 conversion matrix
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

Our YCbCr output is always supposed to be limited range BT.709.
That's what we send with native HDMI. The conn_state->colorspace
stuff is entirely independent of that and is not supposed to alter
the generated output in any way. If we want a way to do that then
we need a new proprty for it.

Make it so that the RGB->YCbCr conversion when performed by the
DPF will match the BT.709 we would transmit with native HDMI.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 38 ++-----------------------
 1 file changed, 3 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dfd3ab385b0f..29b12456c461 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2456,38 +2456,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    enabledisable(intel_dp->dfp.ycbcr_444_to_420));
 
-	tmp = 0;
-	if (intel_dp->dfp.rgb_to_ycbcr) {
-		bool bt2020, bt709;
-
-		/*
-		 * FIXME: Currently if userspace selects BT2020 or BT709, but PCON supports only
-		 * RGB->YCbCr for BT601 colorspace, we go ahead with BT601, as default.
-		 *
-		 */
-		tmp = DP_CONVERSION_BT601_RGB_YCBCR_ENABLE;
-
-		bt2020 = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
-								   intel_dp->downstream_ports,
-								   DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
-		bt709 = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
-								  intel_dp->downstream_ports,
-								  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
-		switch (crtc_state->infoframes.vsc.colorimetry) {
-		case DP_COLORIMETRY_BT2020_RGB:
-		case DP_COLORIMETRY_BT2020_YCC:
-			if (bt2020)
-				tmp = DP_CONVERSION_BT2020_RGB_YCBCR_ENABLE;
-			break;
-		case DP_COLORIMETRY_BT709_YCC:
-		case DP_COLORIMETRY_XVYCC_709:
-			if (bt709)
-				tmp = DP_CONVERSION_BT709_RGB_YCBCR_ENABLE;
-			break;
-		default:
-			break;
-		}
-	}
+	tmp = intel_dp->dfp.rgb_to_ycbcr ?
+		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
 
 	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
 		drm_dbg_kms(&i915->drm,
@@ -4290,9 +4260,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 							intel_dp->downstream_ports);
 	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
 								 intel_dp->downstream_ports,
-								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV |
-								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
-								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
+								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
 
 	if (DISPLAY_VER(i915) >= 11) {
 		/* Let PCON convert from RGB->YCbCr if possible */
-- 
2.32.0

