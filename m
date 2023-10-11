Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03BA7C5A18
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 19:15:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E92510E3CE;
	Wed, 11 Oct 2023 17:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6768110E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 17:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697044543; x=1728580543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xU+udYy1N0IuJsIj23QKIwNhCrRq4TxL7hS7cd7ML88=;
 b=dkizU7mT/PLfKj8euSA7FPpFx9sTY8sBKzieXAq1grd3iaDHBmFLUY8B
 9jhRrLUBzRSIHXgkpKvCa/3X7RWBGmH5LT2EFkgUmY0EE0ia0MCmd9Gdv
 bkveFMUOZdtIaaQGr/zvBXJIMAx4rZIHcq3dcWlSjuFzRFjq4d6tNyGaj
 TCow3OKX1utsXaKAF9P/sNZHyGca2GsH7+UaMdEGVMhN82C9XvJxdDAP3
 S/D95p7+1ubnId41pNJDllKMJXgyUlHIajbuJLUQFQV5q5UX/RTqEB/qg
 WJ6e0gZuqmdRFQIBMaUSF2gLPPxdaMzohrNYA2Ivp0OsHpQ9B5XW04tIc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="384571463"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="384571463"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:15:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1001206951"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="1001206951"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:15:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 20:16:05 +0300
Message-Id: <20231011171606.2540078-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010112504.2156789-2-imre.deak@intel.com>
References: <20231010112504.2156789-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/19] drm/i915/dp: Store DSC DPCD
 capabilities in the connector
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

In an MST topology the DSC capabilities are specific to each connector,
retrieved either from the sink if it decompresses the stream, or from a
branch device between the source and the sink in case this branch device
does the decompression. Accordingly each connector needs to cache its
own DSC DPCD and FEC capabilities, along with the AUX device through
which the decompression can be enabled. This patch prepares for that by
storing the capabilities and the DSC AUX device in the connector, for
now these just matching the version stored in intel_dp. The follow-up
patches will convert all users to look up these in the connector instead
of intel_dp, after which the intel_dp copies are removed.

v2:
- Rebased on intel_edp_get_dsc_sink_cap() addition in previous patch.
v3:
- Rebased on read-out fix for eDP in previous patch.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  6 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 58 +++++++++++++------
 2 files changed, 47 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8d8b2f8d37a99..d6600079bcf74 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -620,6 +620,12 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
+	struct {
+		struct drm_dp_aux *dsc_decompression_aux;
+		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
+		u8 fec_capability;
+	} dp;
+
 	/* Work struct to schedule a uevent on link train failure */
 	struct work_struct modeset_retry_work;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index be7de7b5616f1..fda09e7142512 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3483,7 +3483,8 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
-static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
+static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
+				      struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -3491,32 +3492,46 @@ static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
 	 * Clear the cached register set to avoid using stale values
 	 * for the sinks that do not support DSC.
 	 */
-	memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
+	memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
 
 	/* Clear fec_capable to avoid using stale values */
-	intel_dp->fec_capable = 0;
+	connector->dp.fec_capability = 0;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
 
-	intel_dp_read_dsc_dpcd(&intel_dp->aux, intel_dp->dsc_dpcd);
+	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
+			       connector->dp.dsc_dpcd);
 
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
-			      &intel_dp->fec_capable) < 0) {
+	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
+			      &connector->dp.fec_capability) < 0) {
 		drm_err(&i915->drm, "Failed to read FEC DPCD register\n");
 		return;
 	}
 
 	drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
-		    intel_dp->fec_capable);
+		    connector->dp.fec_capability);
+
+	/*
+	 * TODO: remove the following intel_dp copies once all users
+	 * are converted to look up DSC DPCD/FEC capability via the
+	 * connector.
+	 */
+	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
+	       sizeof(intel_dp->dsc_dpcd));
+	intel_dp->fec_capable = connector->dp.fec_capability;
 }
 
-static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_dp *intel_dp)
+static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_dp *intel_dp,
+				       struct intel_connector *connector)
 {
 	if (edp_dpcd_rev < DP_EDP_14)
 		return;
 
-	intel_dp_read_dsc_dpcd(&intel_dp->aux, intel_dp->dsc_dpcd);
+	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
+
+	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
+	       sizeof(intel_dp->dsc_dpcd));
 }
 
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
@@ -3608,7 +3623,7 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
 }
 
 static bool
-intel_edp_init_dpcd(struct intel_dp *intel_dp)
+intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv =
 		to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
@@ -3688,7 +3703,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	/* Read the eDP DSC DPCD registers */
 	if (HAS_DSC(dev_priv))
 		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   intel_dp);
+					   intel_dp,
+					   connector);
 
 	/*
 	 * If needed, program our source OUI so we can make various Intel-specific AUX services
@@ -5353,7 +5369,7 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 }
 
 static void
-intel_dp_detect_dsc_caps(struct intel_dp *intel_dp)
+intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
@@ -5363,10 +5379,10 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp)
 
 	if (intel_dp_is_edp(intel_dp))
 		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   intel_dp);
+					   intel_dp, connector);
 	else
 		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
-					  intel_dp);
+					  intel_dp, connector);
 }
 
 static int
@@ -5375,7 +5391,9 @@ intel_dp_detect(struct drm_connector *connector,
 		bool force)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *intel_connector =
+		to_intel_connector(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(intel_connector);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum drm_connector_status status;
@@ -5398,7 +5416,12 @@ intel_dp_detect(struct drm_connector *connector,
 
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
+		/*
+		 * TODO: Remove clearing the DPCD in intel_dp, once all
+		 * user are converted to using the DPCD in connector.
+		 */
 		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
+		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 
 		if (intel_dp->is_mst) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -5413,7 +5436,7 @@ intel_dp_detect(struct drm_connector *connector,
 		goto out;
 	}
 
-	intel_dp_detect_dsc_caps(intel_dp);
+	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
 	intel_dp_configure_mst(intel_dp);
 
@@ -6009,7 +6032,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_hpd_enable_detection(encoder);
 
 	/* Cache DPCD and EDID for edp. */
-	has_dpcd = intel_edp_init_dpcd(intel_dp);
+	has_dpcd = intel_edp_init_dpcd(intel_dp, intel_connector);
 
 	if (!has_dpcd) {
 		/* if this fails, presume the device is a ghost */
@@ -6183,6 +6206,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		intel_dp->pps.active_pipe = vlv_active_pipe(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
+	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Adding %s connector on [ENCODER:%d:%s]\n",
-- 
2.39.2

