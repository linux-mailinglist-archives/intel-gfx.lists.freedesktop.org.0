Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5977BB929
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAA0910E4EB;
	Fri,  6 Oct 2023 13:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C6E10E4E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599429; x=1728135429;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LO+trEY430oHwBSxmbQj7+2vdsrS4ue1Gp5mvd9y3BE=;
 b=nszUZxE0ecvVCc6qOUU+AkURjlX8XfukSMKEWOv3/NqvIozSir14+ks8
 P00AXrHA65FU5lMGtAOMZnI0sY3KI3mQklyL1LF/gY4k3UXK+ZIhnUVh2
 CnEPWD6CvzAcg8i/ot3JFpeZBDwQYVBzm1anJd6T9NbstR3zpiE4IjRJM
 YA+y0jGFFTli6ePMP9QhKZE/pB/2Jp0F/HDXBwfghcxPIPrV1w3f6Rvgi
 GGXCZa032IhM7TaliQL54Cybey5vOkH50DqHtKDhDTI2BdoD1+5pV6ECY
 eezozdVtl0c9Xak1K+13HO/cgP6oEkchBpZAHcCDQ99X2kWR+HTjtiIaP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019075"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019075"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841346"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841346"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:09 +0300
Message-Id: <20231006133727.1822579-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/19] drm/i915/dp: Sanitize DPCD revision check
 in intel_dp_get_dsc_sink_cap()
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

Check only the eDP or the DP specific DPCD revision depending on the
sink type. Pass the corresponding revision to the function, which allows
getting the DSC caps of a branch device (in an MST topology, which has
its own DPCD and so DPCD revision).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ef7cb8134b66..1bd11f9e308c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3467,7 +3467,7 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
 }
 
-static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
+static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -3481,8 +3481,8 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	intel_dp->fec_capable = 0;
 
 	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
-	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
-	    intel_dp->edp_dpcd[0] >= DP_EDP_14) {
+	if ((intel_dp_is_edp(intel_dp) && dpcd_rev >= DP_EDP_14) ||
+	    (!intel_dp_is_edp(intel_dp) && dpcd_rev >= 0x14)) {
 		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
 				     intel_dp->dsc_dpcd,
 				     sizeof(intel_dp->dsc_dpcd)) < 0)
@@ -3674,7 +3674,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 
 	/* Read the eDP DSC DPCD registers */
 	if (HAS_DSC(dev_priv))
-		intel_dp_get_dsc_sink_cap(intel_dp);
+		intel_dp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
+					  intel_dp);
 
 	/*
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
@@ -5384,7 +5385,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
 	if (HAS_DSC(dev_priv))
-		intel_dp_get_dsc_sink_cap(intel_dp);
+		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
 
-- 
2.39.2

