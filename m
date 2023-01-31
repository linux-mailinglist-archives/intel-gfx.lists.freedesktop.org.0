Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D976830CE
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D8710E380;
	Tue, 31 Jan 2023 15:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C78710E37B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177568; x=1706713568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6z2d0j9dQq/+qVKfFAEAoWxeVljyBbcBre2Euk5XSZU=;
 b=RgBxnTrkQxB44ODsNPjJ3OvLgoMGCZXePU4oCHPPzoqu3ShIFjgt7Uuw
 Vq3ozZK+FcWpxHyboMMmcnf/VoWGl7cJ3cUqHVqCNgezwuSz9Axns9DvV
 FHc6EYwAKngRRTIzI2tTLe1XhqLG3dTwnl2moL7ZmHseTDKAFkd1PIlR7
 TVNTsh+excq/NDySt7+2PV5/hCtnhZaq8DEFnL6FGRmj9nijkc4S8nPWh
 rA1q2w6tDV/5PyAxEBv7vX3cf8gRegRziY2b+qNS/+NEZUUGXqqkd0JxG
 6nn4ewUt9xeGEhK3bzphZKo5fq5v/waQy9nA3tnoCKzKGiGncZ1rocHZL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205574"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205574"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155328"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155328"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:06:06 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:41 +0200
Message-Id: <20230131150548.1614458-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/17] drm/i915/dp_mst: Verify the MST state
 of modesetted outputs
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

Verify the MST state after disabling/enabling outputs during an atomic
commit.

v2: Iterate through the connectors in each MST topology to prepare
    for a follow-up patch adding HW state verification.

Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 37 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |  1 +
 .../drm/i915/display/intel_modeset_verify.c   |  2 +
 6 files changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 36269ae34075e..7976658771ab3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7539,8 +7539,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_check_cpu_fifo_underruns(dev_priv);
 	intel_check_pch_fifo_underruns(dev_priv);
 
-	if (state->modeset)
+	if (state->modeset) {
 		intel_verify_planes(state);
+		intel_dp_mst_verify_state(state);
+	}
 
 	intel_sagv_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 501163c5c590d..d6b0ef38f6563 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4085,7 +4085,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
 	return ret;
 }
 
-static bool intel_dp_is_connected(struct intel_dp *intel_dp)
+bool intel_dp_is_connected(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ef39e4f7a329e..1294384840190 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -102,6 +102,7 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		       struct intel_crtc_state *crtc_state,
 		       unsigned int type);
 bool intel_digital_port_connected(struct intel_encoder *encoder);
+bool intel_dp_is_connected(struct intel_dp *intel_dp);
 int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
 u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 				u32 link_clock, u32 lane_count,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 421a0f8c28229..08222fc6c5ecd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1276,3 +1276,40 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 
 	return 0;
 }
+
+/**
+ * intel_dp_mst_verify_state - Verify the MST state for all connectors in the atomic state
+ * @state: atomic state
+ *
+ * Verify the MST SW and sink state for all modesetted MST connectors in @state.
+ */
+void intel_dp_mst_verify_state(struct intel_atomic_state *state)
+{
+	struct drm_dp_mst_topology_state *mst_state;
+	struct drm_dp_mst_topology_mgr *mgr;
+	int i;
+
+	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
+		struct intel_dp *intel_dp = container_of(mgr, struct intel_dp, mst_mgr);
+		struct drm_connector *_connector;
+		struct drm_connector_state *_conn_state;
+		bool mst_needs_modeset = false;
+
+		for_each_new_connector_in_state(&state->base, _connector, _conn_state, i) {
+			struct intel_connector *connector = to_intel_connector(_connector);
+
+			if (!connector->mst_port ||
+			    !intel_connector_needs_modeset(state, &connector->base))
+				continue;
+
+			mst_needs_modeset = true;
+
+			break;
+		}
+
+		if (!mst_needs_modeset)
+			continue;
+
+		drm_dp_mst_verify_payload_state(&state->base, mgr, intel_dp_is_connected(intel_dp));
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index cd0ae661dc20b..74633390c280c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -26,5 +26,6 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 int intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
 						  struct intel_connector *connector,
 						  struct intel_crtc *crtc);
+void intel_dp_mst_verify_state(struct intel_atomic_state *state);
 
 #endif /* __INTEL_DP_MST_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 842d70f0dfd2a..45f0d9789ef8e 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -13,6 +13,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_dp_mst.h"
 #include "intel_fdi.h"
 #include "intel_modeset_verify.h"
 #include "intel_snps_phy.h"
@@ -244,4 +245,5 @@ void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
 	verify_encoder_state(dev_priv, state);
 	verify_connector_state(state, NULL);
 	intel_shared_dpll_verify_disabled(dev_priv);
+	intel_dp_mst_verify_state(state);
 }
-- 
2.37.1

