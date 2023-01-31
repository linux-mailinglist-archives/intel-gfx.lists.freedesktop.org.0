Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 715086830C6
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:06:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D68B10E36D;
	Tue, 31 Jan 2023 15:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2029610E372
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 15:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675177559; x=1706713559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OVU92fLhhCnmsHRSjXxgmVjiG9w68pV/VSaJlXdgk/s=;
 b=Mb/nV9dLS6L+w7gXInyzBJ3l6J9TE+/s+O+Z2Ao1rXhoocM4noW9cu6Y
 brjgi3RsbOijK4mhlHcIEJakgvvvMSpR7cvSNJiSfnRAVro1LZ/0f0uvV
 8TkrBwzKz2XtAuE0zI57fj3x1/vkG526yBM8HbUIH2LEGiaVmJYst14LX
 dpnSqTrmXkxGONTrZl5GQm1m7Y+oPacphbLVUzkZdqebyITWWv7hQgumH
 n/M+8ImAxvinas+TGlhZtiVNmkCtvQJjphv9IZ0F29g17w3qauy6exRvg
 69a2sPpPLTs9N/x8O/6yFBAvKdcR7bEiJcNB5E3x35TU/RALh3fzx/fjt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="308205527"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="308205527"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="807155295"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807155295"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 07:05:57 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Jan 2023 17:05:35 +0200
Message-Id: <20230131150548.1614458-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/17] drm/i915/dp_mst: Fix payload removal
 during output disabling
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

Use the correct old/new topology and payload states in
intel_mst_disable_dp(). So far drm_atomic_get_mst_topology_state() it
used returned either the old state, in case the state was added already
earlier during the atomic check phase or otherwise the new state (but
the latter could fail, which can't be handled in the enable/disable
hooks). After the first patch in the patchset, the state should always
get added already during the check phase, so here we can get the
old/new states without a failure.

drm_dp_remove_payload() should use time_slots from the old payload state
and vc_start_slot in the new one. It should update the new payload
states to reflect the sink's current payload table after the payload is
removed. Pass the new topology state and the old and new payload states
accordingly.

This also fixes a problem where the payload allocations for multiple MST
streams on the same link got inconsistent after a few commits, as
during payload removal the old instead of the new payload state got
updated, so the subsequent enabling sequence and commits used a stale
payload state.

v2: Constify the old payload state pointer. (Ville)

Cc: Lyude Paul <lyude@redhat.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: stable@vger.kernel.org # 6.1
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index dc4e5ff1dbb31..054a009e800d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -524,10 +524,14 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_connector *connector =
 		to_intel_connector(old_conn_state->connector);
-	struct drm_dp_mst_topology_state *mst_state =
-		drm_atomic_get_mst_topology_state(&state->base, &intel_dp->mst_mgr);
-	struct drm_dp_mst_atomic_payload *payload =
-		drm_atomic_get_mst_payload_state(mst_state, connector->port);
+	struct drm_dp_mst_topology_state *old_mst_state =
+		drm_atomic_get_old_mst_topology_state(&state->base, &intel_dp->mst_mgr);
+	struct drm_dp_mst_topology_state *new_mst_state =
+		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
+	const struct drm_dp_mst_atomic_payload *old_payload =
+		drm_atomic_get_mst_payload_state(old_mst_state, connector->port);
+	struct drm_dp_mst_atomic_payload *new_payload =
+		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	drm_dbg_kms(&i915->drm, "active links %d\n",
@@ -535,8 +539,8 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
 
 	intel_hdcp_disable(intel_mst->connector);
 
-	drm_dp_remove_payload(&intel_dp->mst_mgr, mst_state,
-			      payload, payload);
+	drm_dp_remove_payload(&intel_dp->mst_mgr, new_mst_state,
+			      old_payload, new_payload);
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
 }
-- 
2.37.1

