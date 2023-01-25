Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ABF67B1E7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 12:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1104510E7A2;
	Wed, 25 Jan 2023 11:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFECA10E7A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674647337; x=1706183337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nq6BbtyAebV+C99wVuxR4fYny/kDOIuov9qj18HVtRk=;
 b=b7bx4iFDErVXwuCXDpfgKk2tIwemeIyuALxMAWy+igx/Qx7ymmyaV5lP
 91LC6oDkg8OxD3/ubf/KVs8qP7tSW5cO+I8na9QJzJN+LZWWpoK9MTpCC
 YMF1W5mVK1dUtbruuQI4E91h37AzORz1VaUqUWRTgHkahSDc9v22bPsJ2
 o1JQmtVo+cmf1TKDgpFPI8fPDP5cRUH2zvaTEQXOzOTMunABBHZpVQgGE
 BcfZWHtBQ8EtNvym9cOqZyvjrYp3qQiCSrcipaX8ux4mSxnJxkgMoQ4Vh
 YcoAsIYRss+dwQjgtOrXGhW8aWS5iduPapAUKX7O8vNOzUtwiWTLmEXge A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="412769876"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="412769876"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:48:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786399672"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786399672"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 03:48:56 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 13:48:44 +0200
Message-Id: <20230125114852.748337-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230125114852.748337-1-imre.deak@intel.com>
References: <20230125114852.748337-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915/dp_mst: Add the MST topology state
 for modesetted CRTCs
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

Cc: Lyude Paul <lyude@redhat.com>
Cc: stable@vger.kernel.org # 6.1
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 37 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h  |  2 ++
 3 files changed, 43 insertions(+)

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
index f7301de6cdfb3..0cd05a9a78a25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -18,5 +18,7 @@ int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
+int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
+					     struct intel_crtc *crtc);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.37.1

