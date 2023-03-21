Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ABC6C3D55
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 23:01:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DE8E10E88E;
	Tue, 21 Mar 2023 22:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3904310E879
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 22:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679436069; x=1710972069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/4zvyE9m58tPDiUmcBK1+Hwt4U99KJkKRDIsm8ggS8M=;
 b=HOB6GKO/a+xq7hTTEcnzzRYgerXBEK7sA85vd2igByqwViNzI8Sk6EDH
 fT1DBufBN1m5vpXFdoPE5gmQLlLb3IU3jpFqwLsdmutqUvkV+NOXo7YTq
 sAj3d+WkbIoGq1kBCcAtnaPDYN8leYpY84VhurR8dJFxr/IZ+DyndZkY7
 s4Aymo62PnjEBPIbUe/fn1JWzU0hU4dVteuOmQ4JZHsbCemaioGWKONRh
 rWJhFjErBkj6ZnZHWOh+RUaRSaEVelI/OTwBtx5d/V3p7hFNbK9ZkO3VW
 OBplUCd7G5UirvigW6okgKOICuuPMxJ56wcpCQphLRWh4+x1gIKxHIak2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336573812"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="336573812"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="805584626"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="805584626"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 15:01:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 00:01:00 +0200
Message-Id: <20230321220101.983366-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-14-imre.deak@intel.com>
References: <20230316131724.359612-14-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/14] drm/i915/tc: Factor out a function
 querying active links on a TC port
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

For clarity factor out the function to determine if there are active
links on a TC port. This prepares for the next patch also checking the
port's PLL type.

While at it pass crtc_state to intel_tc_port_sanitize_mode(), and check
hw.active in that, instead of the deprecated crtc->active flag.

v2: Check crtc_state->hw.active instead of crtc->active. (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c |  3 +-
 drivers/gpu/drm/i915/display/intel_tc.c  | 39 +++++++++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.h  |  4 ++-
 3 files changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6f48a7b8dcffa..73240cf78c8bf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3642,7 +3642,8 @@ static void intel_ddi_sync_state(struct intel_encoder *encoder,
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
 	if (intel_phy_is_tc(i915, phy))
-		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder));
+		intel_tc_port_sanitize_mode(enc_to_dig_port(encoder),
+					    crtc_state);
 
 	if (crtc_state && intel_crtc_has_dp_encoder(crtc_state))
 		intel_dp_sync_state(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 5d040f0c5f630..c5bfd9f11d7de 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -872,36 +872,47 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	mutex_unlock(&dig_port->tc_lock);
 }
 
+static bool tc_port_has_active_links(struct intel_digital_port *dig_port,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	int active_links = 0;
+
+	if (dig_port->dp.is_mst) {
+		active_links = intel_dp_mst_encoder_active_links(dig_port);
+	} else if (crtc_state && crtc_state->hw.active) {
+		active_links = 1;
+	}
+
+	if (active_links && !icl_tc_phy_is_connected(dig_port))
+		drm_err(&i915->drm,
+			"Port %s: PHY disconnected with %d active link(s)\n",
+			dig_port->tc_port_name, active_links);
+
+	return active_links;
+}
+
 /**
  * intel_tc_port_sanitize_mode: Sanitize the given port's TypeC mode
  * @dig_port: digital port
+ * @crtc_state: atomic state of CRTC connected to @dig_port
  *
  * Sanitize @dig_port's TypeC mode wrt. the encoder's state right after driver
  * loading and system resume:
  * If the encoder is enabled keep the TypeC mode/PHY connected state locked until
  * the encoder is disabled.
  * If the encoder is disabled make sure the PHY is disconnected.
+ * @crtc_state is valid if @dig_port is enabled, NULL otherwise.
  */
-void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
+void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
+				 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_encoder *encoder = &dig_port->base;
-	int active_links = 0;
 
 	mutex_lock(&dig_port->tc_lock);
 
-	if (dig_port->dp.is_mst)
-		active_links = intel_dp_mst_encoder_active_links(dig_port);
-	else if (encoder->base.crtc)
-		active_links = to_intel_crtc(encoder->base.crtc)->active;
-
 	drm_WARN_ON(&i915->drm, dig_port->tc_link_refcount != 1);
-	if (active_links) {
-		if (!icl_tc_phy_is_connected(dig_port))
-			drm_dbg_kms(&i915->drm,
-				    "Port %s: PHY disconnected with %d active link(s)\n",
-				    dig_port->tc_port_name, active_links);
-	} else {
+	if (!tc_port_has_active_links(dig_port, crtc_state)) {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
 		 * held (regardless of the sink's connected live state), so
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 93813056043a5..79667d977508c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -9,6 +9,7 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 
+struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
@@ -26,7 +27,8 @@ void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
 
 void intel_tc_port_init_mode(struct intel_digital_port *dig_port);
-void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port);
+void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
+				 const struct intel_crtc_state *crtc_state);
 void intel_tc_port_lock(struct intel_digital_port *dig_port);
 void intel_tc_port_unlock(struct intel_digital_port *dig_port);
 void intel_tc_port_flush_work(struct intel_digital_port *dig_port);
-- 
2.37.1

