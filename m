Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0839B7DBD33
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 16:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F4B10E322;
	Mon, 30 Oct 2023 15:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D52010E328
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 15:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698681536; x=1730217536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F7PS1RXeGozyY2qwvLdYHUl6xzyyrW/86LMi671B7Y4=;
 b=NmDxi1Vs1xvCPx/cYQiGpFEvgvy0DQDZcE2m9e3MYo4Rt+DAD4SW2XGl
 dlJzHBx+8UHuNnijJieWLQfPtGXX+/d/da7kSfYOiM/eFxEDcbjnUyiQ3
 k5xt3a1HKvYrFpyxcgXfcWIXaSS818vTYHYWdo52bNpqBuqGix68xrkBa
 aLm0fMf0udmaJ9WNOMXGSYgotwTmicpVugEHKjkOdM2xpV1+42WDBby7I
 Y0BpKPSmi1Ark851qCsPFjcsjH/Fg1hnan9vXQ7iN7NtbXK6ArlK4IU6m
 rS3JM4F2lvQgANgm50rBvX4b2inaAjSN9/UXXin+w178klvRCAyc9bOE8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="974529"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="974529"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="789494056"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="789494056"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 08:58:54 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Oct 2023 17:58:40 +0200
Message-Id: <20231030155843.2251023-28-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 27/30] drm/i915/dp_mst: Force modeset CRTC if
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 88 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |  2 +
 3 files changed, 94 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d27afda0cfaa6..2d614180b6bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6489,6 +6489,10 @@ int intel_atomic_check(struct drm_device *dev,
 		if (!new_crtc_state->hw.enable || intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
+		if (intel_dp_mst_crtc_needs_modeset(state, crtc))
+			intel_modeset_pipes_in_mask_early(state, "MST topology",
+							  BIT(crtc->pipe));
+
 		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
 			enum transcoder master = new_crtc_state->mst_master_transcoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9037e11ec6e0d..2313844456961 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1596,3 +1596,91 @@ int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
 
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

