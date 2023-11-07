Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0387E321E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D6C10E498;
	Tue,  7 Nov 2023 00:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE16F10E495
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316119; x=1730852119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2BDpAsFGoje3LCRlhV2JLKe+7LVI0zGpMOIB3rYYIwE=;
 b=QPm9hzm9Oa+hJrZ8HMrAevGr0rZ9CABD4b1TR932xc9yL7ZYaPTQCw17
 /8h3LY5qxN9OU7PvApUJ/cT6iGsJmki/yNXPIeFzdCiQNzGMKyFhKM1qO
 EyEbbhsiUl24DTXmlACWqkVkZYciDZm7tEccejFhvsZxy1YIXJ6DeRiuC
 DnGYRGTz5aRS+LFNqxKi42vCJHo0tOuvfZvOEeb+OWQHFdyGnU23K46x5
 mwzkY+vOUj1v0yeCs+jX9F2O+3WNmXYi/cCYuWpS6hzJVdJv60Qew0gCM
 XRA+ovw1LiW87F7s0GKAw33KExqz/6CWWGxMInMgVJeniiAMr88yUAgRa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596213"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596213"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853178020"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853178020"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:15:05 +0200
Message-Id: <20231107001505.3370108-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-28-imre.deak@intel.com>
References: <20231030155843.2251023-28-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 27/30] drm/i915/dp_mst: Force modeset CRTC if
 DSC toggling requires it
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

Enabling / disabling DSC decompression in the branch device downstream
of the source may reset the whole branch device. To avoid this while the
streams are still active, force a modeset on all CRTC/ports connected to
this branch device.

v2:
- Check the CRTC state for each connector in the topology, instead of
  the CRTC being checked for a modeset requirement. (Ville)
- Add DocBook for the new function.
v3:
- Rebased on a change not to use
  intel_modeset_pipes_in_mask_early().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  3 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 88 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |  2 +
 3 files changed, 93 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index afa5613fd847c..c4cb0e2273a00 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6481,6 +6481,9 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!new_crtc_state->hw.enable || intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
+		if (intel_dp_mst_crtc_needs_modeset(state, crtc))
+			intel_crtc_flag_modeset(new_crtc_state);
+
 		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
 			enum transcoder master = new_crtc_state->mst_master_transcoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b3d952bbb3cf0..079986b09f8bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1628,3 +1628,91 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 
 	return 0;
 }
+
+static struct intel_connector *
+get_connector_in_state_for_crtc(struct intel_atomic_state *state,
+				const struct intel_crtc *crtc)
+{
+	struct drm_connector_state *old_conn_state;
+	struct drm_connector_state *new_conn_state;
+	struct drm_connector *_connector;
+	int i;
+
+	for_each_oldnew_connector_in_state(&state->base, _connector,
+					   old_conn_state, new_conn_state, i) {
+		struct intel_connector *connector =
+			to_intel_connector(_connector);
+
+		if (old_conn_state->crtc == &crtc->base ||
+		    new_conn_state->crtc == &crtc->base)
+			return connector;
+	}
+
+	return NULL;
+}
+
+/**
+ * intel_dp_mst_crtc_needs_modeset - check if changes in topology need to modeset the given CRTC
+ * @state: atomic state
+ * @crtc: CRTC for which to check the modeset requirement
+ *
+ * Check if any change in a MST topology requires a forced modeset on @crtc in
+ * this topology. One such change is enabling/disabling the DSC decompression
+ * state in the first branch device's UFP DPCD as required by one CRTC, while
+ * the other @crtc in the same topology is still active, requiring a full modeset
+ * on @crtc.
+ */
+bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	const struct intel_connector *crtc_connector;
+	const struct drm_connector_state *conn_state;
+	const struct drm_connector *_connector;
+	int i;
+
+	if (!intel_crtc_has_type(intel_atomic_get_new_crtc_state(state, crtc),
+				 INTEL_OUTPUT_DP_MST))
+		return false;
+
+	crtc_connector = get_connector_in_state_for_crtc(state, crtc);
+
+	if (!crtc_connector)
+		/* None of the connectors in the topology needs modeset */
+		return false;
+
+	for_each_new_connector_in_state(&state->base, _connector, conn_state, i) {
+		const struct intel_connector *connector =
+			to_intel_connector(_connector);
+		const struct intel_crtc_state *new_crtc_state;
+		const struct intel_crtc_state *old_crtc_state;
+		struct intel_crtc *crtc_iter;
+
+		if (connector->mst_port != crtc_connector->mst_port ||
+		    !conn_state->crtc)
+			continue;
+
+		crtc_iter = to_intel_crtc(conn_state->crtc);
+
+		new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc_iter);
+		old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc_iter);
+
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (old_crtc_state->dsc.compression_enable ==
+		    new_crtc_state->dsc.compression_enable)
+			continue;
+		/*
+		 * Toggling the decompression flag because of this stream in
+		 * the first downstream branch device's UFP DPCD may reset the
+		 * whole branch device. To avoid the reset while other streams
+		 * are also active modeset the whole MST topology in this
+		 * case.
+		 */
+		if (connector->dp.dsc_decompression_aux ==
+		    &connector->mst_port->aux)
+			return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index f1815bb722672..fc5e85776a858 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -22,5 +22,7 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
 int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 					     struct intel_crtc *crtc);
+bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.39.2

