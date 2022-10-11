Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 240015FACE3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 08:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023A410E7BE;
	Tue, 11 Oct 2022 06:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9238310E7BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 06:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665470086; x=1697006086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MEY7eWR5G+h7Ub0FOLykAE167aAG6joDYf2PdrmU3fY=;
 b=KNonAmMy/wE0lMXnPGBrKMqZ2kZX03ZQ2iVaJMxxEENgGgRXlGnIlIBf
 5yqBaH1NI+XAjLp/kZP5YUYPDzGPrGn0rub8+MmVJFMgLL6Mm21PyubYB
 OncvY57EkOL3BeKwjtKH++tK7BE5kyZYh1UKRff7jK4sBGYVve4tBw5eA
 hVT0AbV7mPdSVQzx4A/6OTrHdz/WrOxiR+bPxUpFQRZI3pHHgEmiIJIVv
 lQo7H/MJxxFBQAk8BjJByxIhwn9iLWStNau5vjTz8LlJeFl36uJm4J9jm
 T5HvV7HAoUDriGo7Qbo3tRVnaZcyqb5wvk4WTl92OcM/7my3Kyo7jSxg9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="302031844"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="302031844"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:44 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="768680363"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="768680363"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 23:34:42 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:04:44 +0530
Message-Id: <20221011063447.904649-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/8] drm/i915/dp: Use sink_format in
 dp_is_ycbcr420
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

Use the new crtc_state member sink_format to check if DP DFP will use
YCBCR420.
The earlier intel_dp->dfp members are not required as decision to use
color format conversion by the PCON is computed and stored in
crtc_state. Also drop the intel_dp argument in the helper function.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 99d72b345907..d8ef4dccf0c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1177,19 +1177,16 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
 }
 
-static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
-				 const struct intel_crtc_state *crtc_state)
+static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		 intel_dp->dfp.ycbcr_444_to_420);
+	return crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420;
 }
 
 static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     int bpc, bool respect_downstream_limits)
 {
-	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
+	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
 	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
 
 	/*
@@ -1986,7 +1983,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 
 	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
 
-	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
+	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
 		drm_dbg_kms(&i915->drm,
 			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
 		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
@@ -2001,7 +1998,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
 					   respect_downstream_limits);
 	if (ret) {
-		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
+		if (intel_dp_is_ycbcr420(crtc_state) ||
 		    !connector->base.ycbcr_420_allowed ||
 		    !drm_mode_is_420_also(info, adjusted_mode))
 			return ret;
-- 
2.25.1

