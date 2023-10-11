Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9C87C5A19
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 19:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0937010E1FD;
	Wed, 11 Oct 2023 17:15:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB7310E1FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 17:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697044543; x=1728580543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t/iMsOoauCL3wU82BQrJIsgYFsZrOneDdNf0pEZ3t+U=;
 b=Hdr5lu1B9/dv66BGxg2XEasB0kdTfdnW7aoMyMehDKhkETI9J29guAMa
 d6AmhAigXXFR4EIzdx1JLj3oxJ2jYJswkW9pqStAwFfdxdJnh6kPf65q3
 /zuzbXQqNBxGandBpVywCVi+rg1hDS+3EXG+jjlDd7wjZohCWyMVAs2/1
 /jAZR62quzLBmew5EtUuSs/hJEZ/9uefvEbO/EbOR7bbd0cyOzzG6IgXE
 HsFryaMBOtDeFNCz1DzU9TWM0Xst4hkubnaObki+pLPCgiyAUaHVApW2E
 L2PmotshJK50JXdAFL40DXOkJc/Z7o7vLj5jAi1KkgrvnPguPGa6/1xJ1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="384571461"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="384571461"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:15:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1001206908"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="1001206908"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:15:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 20:16:04 +0300
Message-Id: <20231011171606.2540078-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010112504.2156789-1-imre.deak@intel.com>
References: <20231010112504.2156789-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/19] drm/i915/dp: Sanitize DPCD revision
 check in intel_dp_get_dsc_sink_cap()
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

While at it use DP_DPCD_REV_14 instead of open coding it and for clarity
add a separate function to read out the DSC capability on eDP.

v2:
- Use DP_DPCD_REV_14 instead of open coding it. (Stan)
- Check EDP_DCPD_REV/DPCD_REV in a clearer way. (Ville)
v3:
- Fix the read-out for eDP in intel_dp_detect().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v2)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 81 +++++++++++++++++--------
 1 file changed, 55 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f6835a7578eb..be7de7b5616f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3467,7 +3467,23 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
 }
 
-static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
+static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
+				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
+{
+	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
+			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
+		drm_err(aux->drm_dev,
+			"Failed to read DPCD register 0x%x\n",
+			DP_DSC_SUPPORT);
+		return;
+	}
+
+	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
+		    DP_DSC_RECEIVER_CAP_SIZE,
+		    dsc_dpcd);
+}
+
+static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -3480,30 +3496,27 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	/* Clear fec_capable to avoid using stale values */
 	intel_dp->fec_capable = 0;
 
-	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
-	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
-	    intel_dp->edp_dpcd[0] >= DP_EDP_14) {
-		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
-				     intel_dp->dsc_dpcd,
-				     sizeof(intel_dp->dsc_dpcd)) < 0)
-			drm_err(&i915->drm,
-				"Failed to read DPCD register 0x%x\n",
-				DP_DSC_SUPPORT);
+	if (dpcd_rev < DP_DPCD_REV_14)
+		return;
 
-		drm_dbg_kms(&i915->drm, "DSC DPCD: %*ph\n",
-			    (int)sizeof(intel_dp->dsc_dpcd),
-			    intel_dp->dsc_dpcd);
+	intel_dp_read_dsc_dpcd(&intel_dp->aux, intel_dp->dsc_dpcd);
 
-		/* FEC is supported only on DP 1.4 */
-		if (!intel_dp_is_edp(intel_dp) &&
-		    drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
-				      &intel_dp->fec_capable) < 0)
-			drm_err(&i915->drm,
-				"Failed to read FEC DPCD register\n");
-
-		drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
-			    intel_dp->fec_capable);
+	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
+			      &intel_dp->fec_capable) < 0) {
+		drm_err(&i915->drm, "Failed to read FEC DPCD register\n");
+		return;
 	}
+
+	drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
+		    intel_dp->fec_capable);
+}
+
+static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_dp *intel_dp)
+{
+	if (edp_dpcd_rev < DP_EDP_14)
+		return;
+
+	intel_dp_read_dsc_dpcd(&intel_dp->aux, intel_dp->dsc_dpcd);
 }
 
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
@@ -3674,7 +3687,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 
 	/* Read the eDP DSC DPCD registers */
 	if (HAS_DSC(dev_priv))
-		intel_dp_get_dsc_sink_cap(intel_dp);
+		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
+					   intel_dp);
 
 	/*
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
@@ -5338,6 +5352,23 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 					       false);
 }
 
+static void
+intel_dp_detect_dsc_caps(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
+	if (!HAS_DSC(i915))
+		return;
+
+	if (intel_dp_is_edp(intel_dp))
+		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
+					   intel_dp);
+	else
+		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  intel_dp);
+}
+
 static int
 intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
@@ -5382,9 +5413,7 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out;
 	}
 
-	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
-	if (HAS_DSC(dev_priv))
-		intel_dp_get_dsc_sink_cap(intel_dp);
+	intel_dp_detect_dsc_caps(intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
 
-- 
2.39.2

