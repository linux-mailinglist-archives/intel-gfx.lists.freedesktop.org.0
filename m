Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB4E6830BB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:05:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DB810E371;
	Tue, 31 Jan 2023 15:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F7C10E36B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177553; x=1706713553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fs3r3CMd3EsjJLav2ylySIdmlp7P1TFyxKDBPYrnZDU=;
 b=d1c2yO3SdIDyqKSzZ8K/gDLeS3E+D7+2SO5Br8bZA77+Ih9WcnLvteYL
 NXaesfTkAfGAoSR9IzR+oUVYc6bKx/MUyqKhzEcCOINhSwHSrWS+dW4MR
 2tc4EleYMZQwSWvJPvHimwzTpxf3HYbs3RR9WI0Sov1QlfRqIX6YNmcMA
 Q8WHpJOdUy0jI/m8r84a9T+K/6dNKmlBf93fhVxWBnydLJkzqPk7itG+N
 Af7p+i7/6fVdwScMUwo3zU6Imc42mUjiQvmP6nZC33W1p/xs9DKglytcn
 ex7ftXCFh/9JIQLSGZ6ZMsMn7lEjoPhpYJBMIahFHXWJLIKciQe1OEutn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205491"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205491"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155288"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155288"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:51 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:32 +0200
Message-Id: <20230131150548.1614458-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/17] drm/i915/dp_mst: Add the MST topology
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
v3: Factor out intel_dp_mst_add_topology_state_for_connector() used
    later in the patchset.

Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: stable@vger.kernel.org # 6.1
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v2
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 61 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |  4 ++
 3 files changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 166662ade593c..38106cf63b3b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5936,6 +5936,10 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
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
index 8b0e4defa3f10..f3cb12dcfe0a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1223,3 +1223,64 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state)
 	return crtc_state->mst_master_transcoder != INVALID_TRANSCODER &&
 	       crtc_state->mst_master_transcoder != crtc_state->cpu_transcoder;
 }
+
+/**
+ * intel_dp_mst_add_topology_state_for_connector - add MST topology state for a connector
+ * @state: atomic state
+ * @connector: connector to add the state for
+ * @crtc: the CRTC @connector is attached to
+ *
+ * Add the MST topology state for @connector to @state.
+ *
+ * Returns 0 on success, negative error code on failure.
+ */
+static int
+intel_dp_mst_add_topology_state_for_connector(struct intel_atomic_state *state,
+					      struct intel_connector *connector,
+					      struct intel_crtc *crtc)
+{
+	struct drm_dp_mst_topology_state *mst_state;
+
+	if (!connector->mst_port)
+		return 0;
+
+	mst_state = drm_atomic_get_mst_topology_state(&state->base,
+						      &connector->mst_port->mst_mgr);
+	if (IS_ERR(mst_state))
+		return PTR_ERR(mst_state);
+
+	mst_state->pending_crtc_mask |= drm_crtc_mask(&crtc->base);
+
+	return 0;
+}
+
+/**
+ * intel_dp_mst_add_topology_state_for_crtc - add MST topology state for a CRTC
+ * @state: atomic state
+ * @crtc: CRTC to add the state for
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
+		struct intel_connector *connector = to_intel_connector(_connector);
+		int ret;
+
+		if (conn_state->crtc != &crtc->base)
+			continue;
+
+		ret = intel_dp_mst_add_topology_state_for_connector(state, connector, crtc);
+		if (ret)
+			return ret;
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

