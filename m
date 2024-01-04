Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B23F8823D78
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE8010E3E1;
	Thu,  4 Jan 2024 08:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0B310E3DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357009; x=1735893009;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=G4WHEuERZfFsLNBgD4EEyesOR/A/Hg4TdI7j3bcbQGI=;
 b=dKEp4O2CT2OAebX4xtWzrE9bsZQkLoVNlhXiAgrdSodVsovHirIejd0G
 Tzwh+JDyg55W1xAOrPZMvpk4t7H1Cp30IlAaf2S2+FeaWPrCSLmHodppf
 JFG+OESh8CvtcndARP7GJvSkHA+UquWMOfOaGt138T0jUr83cKAMhlctd
 GtPmizn4kvyCw5uw6k74YWE6v3l2rLQKnbbcZ3B5oKyXz7dLFMB7ElnmM
 TZjUJvpjkeAgmbaGGZJKFjq8PQIPhnNnoiXwppJn6lwc8hJLsezv1ZOyI
 MVkJylGJztX80VS7RsnWfryvjW7ZNVXpTdgTz/gTMRFn1DvzV+9GrCZMg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624563"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422699"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422699"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915: Add intel_digital_port lock/unlock hooks
Date: Thu,  4 Jan 2024 10:30:06 +0200
Message-Id: <20240104083008.2715733-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Add hooks to intel_digital_port to lock and unlock the port and add a
helper to check the connector's detect status while the port is locked
already. This simplifies checking the connector detect status in
intel_dp_aux_xfer() and intel_digital_port_connected() in the next two
patches aborting AUX transfers on all DP connectors (except eDP) and
filtering HPD glitches.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 ++
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 ++
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 28 +++++++--------
 drivers/gpu/drm/i915/display/intel_tc.c       | 15 +-------
 drivers/gpu/drm/i915/display/intel_tc.h       |  1 -
 7 files changed, 56 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2746655bcb264..922194b957be2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5117,6 +5117,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 		encoder->suspend_complete = intel_ddi_tc_encoder_suspend_complete;
 		encoder->shutdown_complete = intel_ddi_tc_encoder_shutdown_complete;
 
+		dig_port->lock = intel_tc_port_lock;
+		dig_port->unlock = intel_tc_port_unlock;
+
 		if (intel_tc_port_init(dig_port, is_legacy) < 0)
 			goto err;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b9b9d9f2bc0ba..3556ccedbe4c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1890,6 +1890,9 @@ struct intel_digital_port {
 	u32 (*infoframes_enabled)(struct intel_encoder *encoder,
 				  const struct intel_crtc_state *pipe_config);
 	bool (*connected)(struct intel_encoder *encoder);
+
+	void (*lock)(struct intel_digital_port *dig_port);
+	void (*unlock)(struct intel_digital_port *dig_port);
 };
 
 struct intel_dp_mst_encoder {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 61c11f475f54a..f04926d4aa80d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5426,8 +5426,24 @@ edp_detect(struct intel_dp *intel_dp)
 	return connector_status_connected;
 }
 
+void intel_digital_port_lock(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (dig_port->lock)
+		dig_port->lock(dig_port);
+}
+
+void intel_digital_port_unlock(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (dig_port->unlock)
+		dig_port->unlock(dig_port);
+}
+
 /*
- * intel_digital_port_connected - is the specified port connected?
+ * intel_digital_port_connected_locked - is the specified port connected?
  * @encoder: intel_encoder
  *
  * In cases where there's a connector physically connected but it can't be used
@@ -5435,9 +5451,12 @@ edp_detect(struct intel_dp *intel_dp)
  * pretty much treat the port as disconnected. This is relevant for type-C
  * (starting on ICL) where there's ownership involved.
  *
+ * The caller must hold the lock acquired by calling intel_digital_port_lock()
+ * when calling this function.
+ *
  * Return %true if port is connected, %false otherwise.
  */
-bool intel_digital_port_connected(struct intel_encoder *encoder)
+bool intel_digital_port_connected_locked(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -5450,6 +5469,17 @@ bool intel_digital_port_connected(struct intel_encoder *encoder)
 	return is_connected;
 }
 
+bool intel_digital_port_connected(struct intel_encoder *encoder)
+{
+	bool ret;
+
+	intel_digital_port_lock(encoder);
+	ret = intel_digital_port_connected_locked(encoder);
+	intel_digital_port_unlock(encoder);
+
+	return ret;
+}
+
 static const struct drm_edid *
 intel_dp_get_edid(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b911706d2e95e..530cc97bc42f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -115,7 +115,10 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder, bool enable,
 void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type);
+void intel_digital_port_lock(struct intel_encoder *encoder);
+void intel_digital_port_unlock(struct intel_encoder *encoder);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
+bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 2e2af71bcd5a8..b36ef321e835e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -9,6 +9,7 @@
 #include "intel_bios.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_aux_regs.h"
 #include "intel_pps.h"
@@ -228,6 +229,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		  u32 aux_send_ctl_flags)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	bool is_tc_port = intel_phy_is_tc(i915, phy);
@@ -245,18 +247,17 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	for (i = 0; i < ARRAY_SIZE(ch_data); i++)
 		ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
 
-	if (is_tc_port) {
-		intel_tc_port_lock(dig_port);
-		/*
-		 * Abort transfers on a disconnected port as required by
-		 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
-		 * timeouts that would otherwise happen.
-		 * TODO: abort the transfer on non-TC ports as well.
-		 */
-		if (!intel_tc_port_connected_locked(&dig_port->base)) {
-			ret = -ENXIO;
-			goto out_unlock;
-		}
+	intel_digital_port_lock(encoder);
+	/*
+	 * Abort transfers on a disconnected port as required by
+	 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
+	 * timeouts that would otherwise happen.
+	 * TODO: abort the transfer on non-TC ports as well.
+	 */
+	if (is_tc_port &&
+	    !intel_digital_port_connected_locked(&dig_port->base)) {
+		ret = -ENXIO;
+		goto out_unlock;
 	}
 
 	aux_domain = intel_aux_power_domain(dig_port);
@@ -423,8 +424,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	intel_pps_unlock(intel_dp, pps_wakeref);
 	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
 out_unlock:
-	if (is_tc_port)
-		intel_tc_port_unlock(dig_port);
+	intel_digital_port_unlock(encoder);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index dcf05e00e5052..80aed9e87927a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1590,7 +1590,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
  * connected ports are usable, and avoids exposing to the users objects they
  * can't really use.
  */
-bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
+bool intel_tc_port_connected(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
@@ -1605,19 +1605,6 @@ bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
 	return tc_phy_hpd_live_status(tc) & mask;
 }
 
-bool intel_tc_port_connected(struct intel_encoder *encoder)
-{
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
-	bool is_connected;
-
-	mutex_lock(&tc->lock);
-	is_connected = intel_tc_port_connected_locked(encoder);
-	mutex_unlock(&tc->lock);
-
-	return is_connected;
-}
-
 static bool __intel_tc_port_link_needs_reset(struct intel_tc_port *tc)
 {
 	bool ret;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 80a61e52850ee..936fa2daaa74a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -17,7 +17,6 @@ bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
 
 bool intel_tc_port_connected(struct intel_encoder *encoder);
-bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
 int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
-- 
2.39.2

