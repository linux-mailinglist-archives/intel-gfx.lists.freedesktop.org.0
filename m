Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4774E3DFD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA8910E56E;
	Tue, 22 Mar 2022 12:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D2E10E56E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950451; x=1679486451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RLZkmg+TnuPfLB1AtKJ5IdwEQIGFrTik13bdIdPKYNs=;
 b=F+h4cZ2JZZZqGpuPfgmlFv+36LTRNNzqo22yzxvrkOZxICUjGshEG1NN
 ckLfYAF4tj48BEjlSYAtr8IQEMN97VcNjxvgG5aqV/q/QIK1QeoTZjO+r
 VrNmwC/hyX4JmlYb9ZhBiamEgTTqBAivsTOOJlCpWSnHn0oHsbaqj7LLG
 bEM1pY2fy6/lrqCV8dmHah3EC8ZP3Rs5Mg6QQtDbODDzkcmSjTOIbvPsx
 K9Sdf7VDYZhNnF+2P26/BOLnd33Wfy7hyqL7Vk5TflXUY504lAUvPedvG
 Ty3xRTKabl2+mt+rltDbzjc3OnCeWFyijyb/DMVYze8Ttd2+F9qN9IkgK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="318507370"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="318507370"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560355455"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 22 Mar 2022 05:00:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:14 +0200
Message-Id: <20220322120015.28074-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/12] drm/i915/dp: Fix DFP rgb->ycbcr
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
index 053853a3054e..d3d458b3267d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2574,38 +2574,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
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
@@ -4459,9 +4429,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
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
2.34.1

