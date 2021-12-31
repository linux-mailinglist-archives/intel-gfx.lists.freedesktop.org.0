Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430E248243A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Dec 2021 14:42:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E6589E5A;
	Fri, 31 Dec 2021 13:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEC889E5A
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Dec 2021 13:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640958173; x=1672494173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AlQy6Zvz7Zt5nixcEQQySlPDeUeGiyj3TuwcqeEhSq4=;
 b=JOKG4M0nzAKK9gWnZWFrp/47nO4tvOkO2Rd4UnVyCeVJUp1cpHtOQ5J4
 nQJRUQVAkHx9CeFdoVHPDQdA/ak+JKou3nKtWSS8/47w2RIerpf4XQIgl
 BknrPM85UAGqpxMc+c92rHV/ilDcjyQtmanXVijqi6Patl8sdcJVMEYYf
 DT9vF09IqNxYoaG0grS1IDkD2yPmpxhltwn2jjYwjaf/BmOEQbCi/kdgJ
 2m+5/IKq5Rpn6lGV8eNFRaDfO4fVqaajKcqMWoraahOuqN580hypfNRur
 94PbHg8W2KpKoGfDtQAYr4Uc+SYWvhVKpDQKFQBcy2iAi/vDoM0UE+Xk/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="239355318"
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="239355318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 05:42:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,251,1635231600"; d="scan'208";a="524742113"
Received: from arudakov-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.25.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2021 05:42:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Fri, 31 Dec 2021 15:42:43 +0200
Message-Id: <20211231134243.1319853-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211216140548.1255782-1-jani.nikula@intel.com>
References: <20211216140548.1255782-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mst: update slot information for
 128b/132b
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
Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

128b/132b supports using 64 slots starting from 0, while 8b/10b reserves
slot 0 for metadata.

Commit d6c6a76f80a1 ("drm: Update MST First Link Slot Information Based
on Encoding Format") added support for updating the topology state
accordingly, and commit 41724ea273cd ("drm/amd/display: Add DP 2.0 MST
DM Support") started using it in the amd driver.

This feels more than a little cumbersome, especially updating the
information in atomic check. For i915, add the update to MST connector
.compute_config hook rather than iterating over all MST managers and
connectors in global mode config .atomic_check. Fingers crossed.

v2:
- Update in .compute_config() not .atomic_check (Ville)

Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 +++++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b8bc7d397c81..ff75e22bde5c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -99,6 +99,27 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 	return 0;
 }
 
+static void intel_dp_mst_update_slots(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state,
+				      struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
+	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
+	struct drm_dp_mst_topology_state *topology_state;
+	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
+		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
+
+	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
+	if (IS_ERR(topology_state)) {
+		drm_dbg_kms(&i915->drm, "slot update failed\n");
+		return;
+	}
+
+	drm_dp_mst_update_slots(topology_state, link_coding_cap);
+}
+
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -155,6 +176,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
+	intel_dp_mst_update_slots(encoder, pipe_config, conn_state);
+
 	pipe_config->limited_color_range =
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
@@ -357,6 +380,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int start_slot = intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "active links %d\n",
@@ -366,7 +390,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
+	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
 	}
@@ -475,6 +499,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	int start_slot = intel_dp_is_uhbr(pipe_config) ? 0 : 1;
 	int ret;
 	bool first_mst_stream;
 
@@ -509,7 +534,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_dp->active_mst_links++;
 
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
+	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
 
 	/*
 	 * Before Gen 12 this is not done as part of
-- 
2.30.2

