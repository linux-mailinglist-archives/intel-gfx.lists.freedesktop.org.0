Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097B193B49D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 18:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A59A10E0FA;
	Wed, 24 Jul 2024 16:12:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MufBSCPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 676B810E0FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721837529; x=1753373529;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a5ZOzGKbCNQBlSXM6QVrleKLd1+BG9SC0KruZ22xeo4=;
 b=MufBSCPjnu1JLxgKPf46jJIVgGDx0NgwAPHwr2XgyAae+/1oa0FXZF2w
 pPuFvUfhqT9FaJod6udSh/I72B1+ItqGYQAYX4hH1feEBAS0zN7NUG24c
 GGZoAb9A+ewcB8huTaKftSoozb3SStmpRSwcWGXVWEzEg1kwUweuupkvl
 Kr9hICOIgV/6WfwZ6n5rC+lIxyh0YQmGHVR2vTMsp/O2v2vYGG27yGnsv
 Kp7RFLytUSjR/X16xtTXvGYk/fgTKbfe9auADK6alqQQX/QarDSAuXUlA
 BZtWxdJvAVncywLtaG5PPF2LfBqobJ13cey3iPGWtupKI4XMBLdAKEA4+ Q==;
X-CSE-ConnectionGUID: bQ/12aYgT6CJunsPomALig==
X-CSE-MsgGUID: qJaKvBLrRdixSkWo8fxjoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19338280"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="19338280"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:12:08 -0700
X-CSE-ConnectionGUID: RhgFTsCkSKmH0wWxC6npfQ==
X-CSE-MsgGUID: qeRDk9V6RWOy/YfqBc7syA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="75861936"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:12:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
Date: Wed, 24 Jul 2024 19:12:23 +0300
Message-ID: <20240724161223.2291853-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

In some cases the sink can reset itself after it was configured into MST
mode, without the driver noticing the disconnected state. For instance
the reset may happen in the middle of a modeset, or the (long) HPD pulse
generated may be not long enough for the encoder detect handler to
observe the HPD's deasserted state. In this case the sink's DPCD
register programmed to enable MST will be reset, while the driver still
assumes MST is still enabled. Detect this condition, which will tear
down and recreate/re-enable the MST topology.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
 3 files changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e43e32e05199..c621f6daf8235 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5878,6 +5878,9 @@ intel_dp_detect(struct drm_connector *connector,
 	else
 		status = connector_status_disconnected;
 
+	if (!intel_dp_mst_verify_dpcd_state(intel_dp))
+		status = connector_status_disconnected;
+
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 27ce5c3f5951e..89b147e37b400 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1998,3 +1998,33 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 
 	return false;
 }
+
+/**
+ * intel_dp_mst_verify_dpcd_state - verify the MST SW enabled state wrt. the DPCD
+ * @intel_dp: DP port object
+ *
+ * Verify if @intel_dp's MST enabled SW state matches the corresponding DPCD
+ * state. A long HPD pulse -not long enough to be detected as a disconnected
+ * state - could've reset the DPCD state, which requires tearing
+ * down/recreating the MST topology.
+ *
+ * Returns %true if the SW MST enabled and DPCD states match, %false
+ * otherwise.
+ */
+bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp)
+{
+	int ret;
+	u8 val;
+
+	if (!intel_dp->is_mst)
+		return true;
+
+	ret = drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL, &val);
+	if (ret < 0)
+		return false;
+
+	if (val != (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC))
+		return false;
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index 8ca1d599091c6..9e4c7679f1c3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
 				   struct intel_link_bw_limits *limits);
 bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
+bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.44.2

