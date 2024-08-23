Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C0895D364
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2024 18:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3224210EC70;
	Fri, 23 Aug 2024 16:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8NZ5yXe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BF010EC70
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2024 16:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724430540; x=1755966540;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mSr8EHOPVIl1bro3w6AIZ6BqWJplG8ume4e2DUkHh/Q=;
 b=g8NZ5yXeENxdk0uF/Q5xUxwDCsHG+cfNFCVmY0rbv69C94rzM+Jpd/E2
 atPnirWxhCFytB13Kt3NOfRYBHG220Bq7hG2eDGAn7Lp0ulwuHiqRiKCJ
 8TWQDzkIu5a4vXYkvzBryZZdvLoZsdR3DyLfEMRzZElVSWFFrYO2A3g+y
 PO2ByQ1E3PszJIGN7TDZlFZCbPcg1gnhkFCMtLn240XlAybhNAgz4eZf2
 FUBGy8eQXdGmWlxm3LzgnrSYokayWL7bD+WQPE+ITxEr1aI72QzmLkMCN
 0AhAVISkbiqYU85j40X4P5mEV2xxc3Yi0PvXXwooNm4J3De47ubGjjqjJ w==;
X-CSE-ConnectionGUID: nU2kyab0Qzq+q1mCoO68Lg==
X-CSE-MsgGUID: qZc6NW/NTFmVO8Oupe+ziA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="48300251"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="48300251"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 09:29:00 -0700
X-CSE-ConnectionGUID: O8fkD6P1SgmSGOMO9KknMg==
X-CSE-MsgGUID: a/2TZWI1TNSxCPnIxnXmAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="99365096"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 09:28:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2] drm/i915/dp_mst: Fix MST state after a sink reset
Date: Fri, 23 Aug 2024 19:29:18 +0300
Message-ID: <20240823162918.1211875-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240724161223.2291853-1-imre.deak@intel.com>
References: <20240724161223.2291853-1-imre.deak@intel.com>
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

v2:
- Add a code comment about adjusting the expected DP_MSTM_CTRL register
  value for SST + SideBand. (Suraj, Jani)
- Print a debug message about detecting the link reset. (Jani)
- Verify the DPCD MST state only if it wasn't already determined that
  the sink is disconnected.

Cc: stable@vger.kernel.org
Cc: Jani Nikula <jani.nikula@intel.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 40 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
 3 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6a0c7ae654f40..789c2f78826d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5999,6 +5999,18 @@ intel_dp_detect(struct drm_connector *connector,
 	else
 		status = connector_status_disconnected;
 
+	if (status != connector_status_disconnected &&
+	    !intel_dp_mst_verify_dpcd_state(intel_dp))
+		/*
+		 * This requires retrying detection for instance to re-enable
+		 * the MST mode that got reset via a long HPD pulse. The retry
+		 * will happen either via the hotplug handler's retry logic,
+		 * ensured by setting the connector here to SST/disconnected,
+		 * or via a userspace connector probing in response to the
+		 * hotplug uevent sent when removing the MST connectors.
+		 */
+		status = connector_status_disconnected;
+
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 45d2230d1801b..15541932b809e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -2062,3 +2062,43 @@ void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 
 	intel_mst_set_probed_link_params(intel_dp, link_rate, lane_count);
 }
+
+/*
+ * intel_dp_mst_verify_dpcd_state - verify the MST SW enabled state wrt. the DPCD
+ * @intel_dp: DP port object
+ *
+ * Verify if @intel_dp's MST enabled SW state matches the corresponding DPCD
+ * state. A long HPD pulse - not long enough to be detected as a disconnected
+ * state - could've reset the DPCD state, which requires tearing
+ * down/recreating the MST topology.
+ *
+ * Returns %true if the SW MST enabled and DPCD states match, %false
+ * otherwise.
+ */
+bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
+	int ret;
+	u8 val;
+
+	if (!intel_dp->is_mst)
+		return true;
+
+	ret = drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL, &val);
+
+	/* Adjust the expected register value for SST + SideBand. */
+	if (ret < 0 || val != (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC)) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] MST mode got reset, removing topology (ret=%d, ctrl=0x%02x)\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name,
+			    ret, val);
+
+		return false;
+	}
+
+	return true;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index fba76454fa67f..8343804ce3f8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -28,5 +28,6 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
 bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp);
+bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
 
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.44.2

