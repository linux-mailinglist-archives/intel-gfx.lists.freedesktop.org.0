Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B513B7BF99D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7781810E1E0;
	Tue, 10 Oct 2023 11:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B4710E1DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937081; x=1728473081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Vm8dum1QcXW8RhwpvDKNy6psIrv9Pr5JATFCxQlKcI=;
 b=QHoLSG8ZvOvkLsUq64sGAh/n8WSCj7MMK6L/7rHLSOkDIae6TcaoqTkE
 39lhXAKWVyc8OULOL8bUejjL1waotMo1u/stUQRxCwSaYpYfBAL7lEEBp
 R22IsT2isGQLdTCb6VtDLmxfygM8CBxGWujGRrmMd19HqD57fIqHuaBgp
 BVb1HYEitG8SXNQCnNcbPxmRsfsvMhRzkg6PaP+sEMzVN2az/lqvozEIH
 dRiDQ3koPyplOcZMykL7Ub71unnFegKIXH7OmBbvAivzg8g9yZ080GW1e
 dP7KYUInsFJmhQumAGxF73q//MdZDguO1GSDgQK+PvylZT5vrBEenj5/s Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387206345"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="387206345"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="757078023"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="757078023"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:38 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:25:01 +0300
Message-Id: <20231010112504.2156789-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-2-imre.deak@intel.com>
References: <20231006133727.1822579-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/19] drm/i915/dp: Sanitize DPCD revision
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 63 +++++++++++++++----------
 1 file changed, 39 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ef7cb8134b66..f92dff32a174a 100644
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
@@ -5384,7 +5398,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
 	if (HAS_DSC(dev_priv))
-		intel_dp_get_dsc_sink_cap(intel_dp);
+		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
+					  intel_dp);
 
 	intel_dp_configure_mst(intel_dp);
 
-- 
2.39.2

