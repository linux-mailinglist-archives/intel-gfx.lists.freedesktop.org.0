Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680F67B1F9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D6110E7AD;
	Wed, 25 Jan 2023 11:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8367810E7AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647350; x=1706183350;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=B+jh/vqqUdOWIovdhskiNjdHVGCOLiNRDgs+e1pgMQY=;
 b=eKYJK/hgpGNrcvILyM2LCayIuhkKEkSUWXCqR77icF5KeONA7VC3ZO0F
 T5vyDn1BR1CTgmad+YDGq0VwcbADp3ChilW9uNDEahklfK1Jf+lPgaJuU
 kVOn7bBpe5EeevowpA03VBbT4De5hN2tjEfS5qBuKW333ZjYVy8ZdPVGz
 Dv7iBpJttoRve0Y1QQTvu0fOTa8Pc6pty9FrnjxJ3eM0tm0smLAxq2W38
 4dZfCY88ZEERUXgfGiFU90BxB2W9m22d4K7A37hqBj3w06JXFFdVMt93Y
 STMgci2JwVtSneSkMQfkkvOqus+SnX+eyqwVMdDHV49fTgwM1UcvVbXBJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412769948"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412769948"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786399735"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786399735"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:09 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:48:52 +0200
Message-Id: <20230125114852.748337-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
References: <20230125114852.748337-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/dp_mst: Verify the MST state of
 modesetted outputs
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |  1 +
 .../drm/i915/display/intel_modeset_verify.c   |  2 ++
 6 files changed, 41 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b1e895b01c111..8efa3a29faafc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7537,8 +7537,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_check_cpu_fifo_underruns(dev_priv);
 	intel_check_pch_fifo_underruns(dev_priv);
 
-	if (state->modeset)
+	if (state->modeset) {
 		intel_verify_planes(state);
+		intel_dp_mst_verify_state(state);
+	}
 
 	intel_sagv_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 441fbbfa2d008..a87e3d04e5cb8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4086,7 +4086,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
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
index 6726fd36723d7..821d149151ef3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1252,3 +1252,36 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 
 	return 0;
 }
+
+/**
+ * intel_dp_mst_verify_state - Verify the MST state for all connectors in the atomic state
+ * @state: atomic state
+ *
+ * Verify the MST SW and sink state for all modesetted MST connector in @state.
+ */
+void intel_dp_mst_verify_state(struct intel_atomic_state *state)
+{
+	struct drm_connector *_connector;
+	struct drm_connector_state *conn_state;
+	u32 encoder_mask = 0;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, _connector, conn_state, i) {
+		struct intel_connector *connector = to_intel_connector(_connector);
+		struct intel_encoder *encoder;
+
+		if (!connector->mst_port ||
+		    !intel_connector_needs_modeset(state, &connector->base))
+			continue;
+
+		encoder = &dp_to_dig_port(connector->mst_port)->base;
+		if (encoder_mask & drm_encoder_index(&encoder->base))
+			continue;
+
+		encoder_mask |= drm_encoder_index(&encoder->base);
+
+		drm_dp_mst_verify_payload_state(&state->base,
+						&connector->mst_port->mst_mgr,
+						intel_dp_is_connected(connector->mst_port));
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index 0cd05a9a78a25..7f77e471ddfc3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -20,5 +20,6 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
 int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
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

