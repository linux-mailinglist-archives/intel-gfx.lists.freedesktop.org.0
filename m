Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A303E87385F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A189210EE5B;
	Wed,  6 Mar 2024 14:07:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edJsW5YU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3C010EE5B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734046; x=1741270046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xaIxN90W3yHAr2vWFEA695NMipbxER106lqB4msgpw0=;
 b=edJsW5YU2hccZTK8GxN6UBmRXa4tJ0JubypjlDZrhMxEV1nUARgW7um5
 7CgWkXLHlz1PnNSXpYBg109GuaQBoeKEFwzEf7ZPu6/bqR+IrX6PtuHjI
 KMJevN8RCYq0L66Z2O4JJUQkLvdI60DtQhVsGeWjOHlFVU5Cru7kUvMAK
 UqZMqGquS2B5ZoZ346rJfaP5ghHswDKE8TDGVbaEWozcPpuLcUqf7fOGb
 AG6moIaGLNvO1GGGfyNIDgne3PGJkuzEBsc/1Czosjt+rQEgCcuGvCXmf
 c6/S0fHL42RR6UqjDx0CZXiJyVCpqWKGlJr3XSF055cvzWfu/NXrMSQTe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288452"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288452"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915234"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 1/6] drm/mst: read sideband messaging cap
Date: Wed,  6 Mar 2024 16:07:12 +0200
Message-Id: <42eb65e973ddf48157945c47da03f649abdd206d.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Amend drm_dp_read_mst_cap() to return an enum, indicating "SST", "SST
with sideband messaging", or "MST". Modify all call sites to take the
new return value into account.

v2:
- Rename enumerators (Ville)

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 ++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++--
 drivers/gpu/drm/nouveau/nouveau_dp.c          |  2 +-
 include/drm/display/drm_dp_mst_helper.h       | 23 ++++++++++++++++++-
 4 files changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 03d528209426..c193be3577f7 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -3608,24 +3608,30 @@ fixed20_12 drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
 EXPORT_SYMBOL(drm_dp_get_vc_payload_bw);
 
 /**
- * drm_dp_read_mst_cap() - check whether or not a sink supports MST
+ * drm_dp_read_mst_cap() - Read the sink's MST mode capability
  * @aux: The DP AUX channel to use
  * @dpcd: A cached copy of the DPCD capabilities for this sink
  *
- * Returns: %True if the sink supports MST, %false otherwise
+ * Returns: enum drm_dp_mst_mode to indicate MST mode capability
  */
-bool drm_dp_read_mst_cap(struct drm_dp_aux *aux,
-			 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
+enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux,
+					 const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	u8 mstm_cap;
 
 	if (dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return false;
+		return DRM_DP_SST;
 
 	if (drm_dp_dpcd_readb(aux, DP_MSTM_CAP, &mstm_cap) != 1)
-		return false;
+		return DRM_DP_SST;
+
+	if (mstm_cap & DP_MST_CAP)
+		return DRM_DP_MST;
+
+	if (mstm_cap & DP_SINGLE_STREAM_SIDEBAND_MSG)
+		return DRM_DP_SST_SIDEBAND_MSG;
 
-	return mstm_cap & DP_MST_CAP;
+	return DRM_DP_SST;
 }
 EXPORT_SYMBOL(drm_dp_read_mst_cap);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0c3ed37b350..717d5715e7bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4054,7 +4054,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
 
 	return i915->display.params.enable_dp_mst &&
 		intel_dp_mst_source_support(intel_dp) &&
-		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
+		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
 }
 
 static void
@@ -4063,7 +4063,7 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder =
 		&dp_to_dig_port(intel_dp)->base;
-	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
+	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
 
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
diff --git a/drivers/gpu/drm/nouveau/nouveau_dp.c b/drivers/gpu/drm/nouveau/nouveau_dp.c
index 7de7707ec6a8..fb06ee17d9e5 100644
--- a/drivers/gpu/drm/nouveau/nouveau_dp.c
+++ b/drivers/gpu/drm/nouveau/nouveau_dp.c
@@ -181,7 +181,7 @@ nouveau_dp_probe_dpcd(struct nouveau_connector *nv_connector,
 	if (nouveau_mst) {
 		mstm = outp->dp.mstm;
 		if (mstm)
-			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd);
+			mstm->can_mst = drm_dp_read_mst_cap(aux, dpcd) == DRM_DP_MST;
 	}
 
 	if (nouveau_dp_has_sink_count(connector, outp)) {
diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
index 9b19d8bd520a..3c9e128c444a 100644
--- a/include/drm/display/drm_dp_mst_helper.h
+++ b/include/drm/display/drm_dp_mst_helper.h
@@ -818,7 +818,28 @@ int drm_dp_mst_topology_mgr_init(struct drm_dp_mst_topology_mgr *mgr,
 
 void drm_dp_mst_topology_mgr_destroy(struct drm_dp_mst_topology_mgr *mgr);
 
-bool drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
+/**
+ * enum drm_dp_mst_mode - sink's MST mode capability
+ */
+enum drm_dp_mst_mode {
+	/**
+	 * @DRM_DP_SST: The sink does not support MST nor single stream sideband
+	 * messaging.
+	 */
+	DRM_DP_SST,
+	/**
+	 * @DRM_DP_MST: Sink supports MST, more than one stream and single
+	 * stream sideband messaging.
+	 */
+	DRM_DP_MST,
+	/**
+	 * @DRM_DP_SST_SIDEBAND_MSG: Sink supports only one stream and single
+	 * stream sideband messaging.
+	 */
+	DRM_DP_SST_SIDEBAND_MSG,
+};
+
+enum drm_dp_mst_mode drm_dp_read_mst_cap(struct drm_dp_aux *aux, const u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int drm_dp_mst_topology_mgr_set_mst(struct drm_dp_mst_topology_mgr *mgr, bool mst_state);
 
 int drm_dp_mst_hpd_irq_handle_event(struct drm_dp_mst_topology_mgr *mgr,
-- 
2.39.2

