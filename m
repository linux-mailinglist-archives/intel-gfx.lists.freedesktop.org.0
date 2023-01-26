Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B4A67C6AD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 10:13:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F9F10E492;
	Thu, 26 Jan 2023 09:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE12A10E296
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 09:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674724407; x=1706260407;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VsZWhdqB85k2P9NLeqJzlNhBP5936T79d29vBu+UcrU=;
 b=DFDYcQbQ59liNhcV89Nvh+MJzLxJbSPOX4d1A0OtKcZLH8yEQ3HsZwx/
 nexCdS3cmZ+J6JDksPdwU29EbXrZHTVPG/WVUA/MZLq16hGL4jv8HiS5S
 2pEa4PRoHIECsYfhPrxcF5QsDLgBDp4qByrXumXgeFMGJw74DmfEKKgGL
 wr2LYK3MbwmoMAehdoKCH1B/Q6foy/AyO+xk6DEGuu75aHfwF2sh+tC/E
 xNazbsPzKZmEEEO6bEuVpAai6b9ZRaM02LHtC/fGSKBe1hcJV0HNvY1Go
 pUgKEsSIqKtN24x56t8eL7D8dF7VTXJKJRlP0PRjzMA04/vbf62sR1AfO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="328852745"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="328852745"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:13:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="640244072"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="640244072"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 01:13:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Jan 2023 11:13:10 +0200
Message-Id: <20230126091310.1154148-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230125114852.748337-2-imre.deak@intel.com>
References: <20230125114852.748337-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/dp_mst: Add the MST topology
 state for modesetted CRTCs
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the MST topology for a CRTC to the atomic state if the driver
needs to force a modeset on the CRTC after the encoder compute config
functions are called.

Later the MST encoder's disable hook also adds the state, but that isn't
guaranteed to work (since in that hook getting the state may fail, which
can't be handled there). This should fix that, while a later patch fixes
the use of the MST state in the disable hook.

v2: Add missing forward struct declartions, caught by hdrtest.

Cc: Lyude Paul <lyude@redhat.com>
Cc: stable@vger.kernel.org # 6.1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 37 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |  4 +++
 3 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 717ca3d7890d3..d3994e2a7d636 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5934,6 +5934,10 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 		if (ret)
 			return ret;
 
+		ret = intel_dp_mst_add_topology_state_for_crtc(state, crtc);
+		if (ret)
+			return ret;
+
 		ret = intel_atomic_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8b0e4defa3f10..ba29c294b7c1b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1223,3 +1223,40 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state)
 	return crtc_state->mst_master_transcoder != INVALID_TRANSCODER &&
 	       crtc_state->mst_master_transcoder != crtc_state->cpu_transcoder;
 }
+
+/**
+ * intel_dp_mst_add_topology_state_for_crtc - add MST topology state for a CRTC
+ * @state: atomic state
+ * @crtc: CRTC
+ *
+ * Add the MST topology state for @crtc to @state.
+ *
+ * Returns 0 on success, negative error code on failure.
+ */
+int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc)
+{
+	struct drm_connector *_connector;
+	struct drm_connector_state *conn_state;
+	int i;
+
+	for_each_new_connector_in_state(&state->base, _connector, conn_state, i) {
+		struct drm_dp_mst_topology_state *mst_state;
+		struct intel_connector *connector = to_intel_connector(_connector);
+
+		if (conn_state->crtc != &crtc->base)
+			continue;
+
+		if (!connector->mst_port)
+			continue;
+
+		mst_state = drm_atomic_get_mst_topology_state(&state->base,
+							      &connector->mst_port->mst_mgr);
+		if (IS_ERR(mst_state))
+			return PTR_ERR(mst_state);
+
+		mst_state->pending_crtc_mask |= drm_crtc_mask(&crtc->base);
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index f7301de6cdfb3..f1815bb722672 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_dp;
@@ -18,5 +20,7 @@ int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
+int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.37.1

