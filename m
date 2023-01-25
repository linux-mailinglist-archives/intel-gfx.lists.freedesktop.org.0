Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED24167B1F1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54AE10E7B0;
	Wed, 25 Jan 2023 11:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF68710E7AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647347; x=1706183347;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ecwOdAfmY1AciHA0z/YEYBYLzvkHL/e2hsy9rwozORI=;
 b=HhImjow5FNx23teibf/nIYgIIJvb+yF7kABF91XzNyDEHaamGgtTTrsy
 YxmdLut9iHySaXsKc6asHuOfvZO8Pce5VDaC+8NMlEhtLxfZptkuUKoX9
 hD0B8+4M/tLHmbFkOLzhE39FseWRMG25knxyVhxjAXKwcRulAvGPgiW74
 R1BGOZMziWUm0ZsxB7x15/xiwem5EQxALbJIJZhI7bjOawfH5mThLvi3g
 44F96LDE2FQBTSCThtbJG7lAVB2dAubvvRZVf2X2yYE1K5Fx5cAm/EYcv
 KJRlK3tUiC+w2glY7o26R4jM6piesX4/u5Thx1rNMoriZAv0z3aS7Xz1t Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412769940"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412769940"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786399727"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786399727"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:49:06 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:48:50 +0200
Message-Id: <20230125114852.748337-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
References: <20230125114852.748337-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/dp_mst: Move getting the MST
 topology state earlier to connector check
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

Atm, the MST topology state for modesetted CRTCs may get added only in
the encoder's compute config function. To make this more consistent with
other encoders add these states already earlier in the connector atomic
check function and just get the new MST state in the encoder's compute
config function which shouldn't fail.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++++++++++++-------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5790fabc39e7e..6726fd36723d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -66,9 +66,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	int bpp, slots = -EINVAL;
 	int ret = 0;
 
-	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
-	if (IS_ERR(mst_state))
-		return PTR_ERR(mst_state);
+	mst_state = drm_atomic_get_new_mst_topology_state(state, &intel_dp->mst_mgr);
+	if (drm_WARN_ON(&i915->drm, !mst_state))
+		return -EINVAL;
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
@@ -254,11 +254,9 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
 		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
 
-	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
-	if (IS_ERR(topology_state)) {
-		drm_dbg_kms(&i915->drm, "slot update failed\n");
-		return PTR_ERR(topology_state);
-	}
+	topology_state = drm_atomic_get_new_mst_topology_state(conn_state->state, mgr);
+	if (drm_WARN_ON(&i915->drm, !topology_state))
+		return -EINVAL;
 
 	drm_dp_mst_update_slots(topology_state, link_coding_cap);
 
@@ -465,6 +463,15 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
 	if (ret)
 		return ret;
 
+	if (intel_connector_needs_modeset(state, &intel_connector->base)) {
+		struct drm_dp_mst_topology_state *mst_state;
+
+		mst_state = drm_atomic_get_mst_topology_state(&state->base,
+							      &intel_connector->mst_port->mst_mgr);
+		if (IS_ERR(mst_state))
+			return PTR_ERR(mst_state);
+	}
+
 	return drm_dp_atomic_release_time_slots(&state->base,
 						&intel_connector->mst_port->mst_mgr,
 						intel_connector->port);
-- 
2.37.1

