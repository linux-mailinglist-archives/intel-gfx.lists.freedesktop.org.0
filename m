Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DA14773ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 15:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B852112135;
	Thu, 16 Dec 2021 14:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EE5B112138
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 14:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639663558; x=1671199558;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mPzq1PvyXnIKjZkx7iVRGmDGGwPUfNNtUOSXW3vJIS8=;
 b=V4JJ2AjCKgSZeXLTv604wkR5yp2Yt6Azb1mcX1V/LUSt8KVjC5aS8Fd/
 z7O8rPLtx+kSteQQm11EntEtmyL9suNNmAS+RyJTJ7jwMw7Jx5Jus1zgz
 anFUolm/n4h7dRmRHUd/mYHn4rFlOLhfd2yDI23LyjQs4WjuH+2dZS8Ct
 DK8sC63Fe5PaopzghrfmQXGJz/z/l4Unv5O/R2PfPt1Nt/XgL7SkS4DXs
 ii86LmTShTeaHa4OT//285v9uekrnwFKmwdbQIFBM+yak8VUfDFoMW4nJ
 MszcZs7sShRqk0NuZn5pQTVZoUj9bF3JWnr19TurpJA9+35+1sqaatzUB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="237037250"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="237037250"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 06:05:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="466078575"
Received: from emnevill-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 06:05:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Dec 2021 16:05:48 +0200
Message-Id: <20211216140548.1255782-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mst: update slot information for
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
Cc: jani.nikula@intel.com, Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
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
.atomic_check hook rather than iterating over all MST managers and
connectors in global mode config .atomic_check. Fingers crossed.

Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b8bc7d397c81..d13c7952a8d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -302,6 +302,8 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 	if (!old_conn_state->crtc)
 		return 0;
 
+	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
+
 	/* We only want to free VCPI if this state disables the CRTC on this
 	 * connector
 	 */
@@ -309,6 +311,15 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 		struct intel_crtc *crtc = to_intel_crtc(new_crtc);
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_new_crtc_state(state, crtc);
+		struct drm_dp_mst_topology_state *topology_state;
+		u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
+			DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
+
+		topology_state = drm_atomic_get_mst_topology_state(&state->base, mgr);
+		if (IS_ERR(topology_state))
+			return PTR_ERR(topology_state);
+
+		drm_dp_mst_update_slots(topology_state, link_coding_cap);
 
 		if (!crtc_state ||
 		    !drm_atomic_crtc_needs_modeset(&crtc_state->uapi) ||
@@ -316,7 +327,6 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 			return 0;
 	}
 
-	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
 	ret = drm_dp_atomic_release_vcpi_slots(&state->base, mgr,
 					       intel_connector->port);
 
@@ -357,6 +367,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int start_slot = intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;
 	int ret;
 
 	drm_dbg_kms(&i915->drm, "active links %d\n",
@@ -366,7 +377,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 
 	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
 
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
+	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
 	if (ret) {
 		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
 	}
@@ -475,6 +486,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	int start_slot = intel_dp_is_uhbr(pipe_config) ? 0 : 1;
 	int ret;
 	bool first_mst_stream;
 
@@ -509,7 +521,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 
 	intel_dp->active_mst_links++;
 
-	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
+	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
 
 	/*
 	 * Before Gen 12 this is not done as part of
-- 
2.30.2

