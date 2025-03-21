Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FD4A6BA02
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 12:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593110E7B6;
	Fri, 21 Mar 2025 11:38:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMAb3FDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84C910E7B6;
 Fri, 21 Mar 2025 11:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742557130; x=1774093130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AZluORa4fZNx1bE1iM2tlNxr1PDgvhoeRX02YfKfFug=;
 b=gMAb3FDBoJDqvxtoW9Y1CNh8CXkp5MX7dYNuW3ElMluANse17Btz/nSl
 q0R+15z9qK25x9sFQGHpeDMZQrrrGv6kGSsj31ApCRb1KbsQEtNEl8ySh
 tZrlmUYWEXLQ7MloMfoV5Jfh3JhUuS2B23BlyEVm1uvSqoPooAvxuoNeF
 Xb9CZq+xmcGB7xcIg0rNfSPp7iB2WHrDiBKUORZzh2xKOaPXGyuoBaqE3
 jVW/z6BjgEEg6+yCpNeRJAEkbrFEqN7gkSBN7bhOwGnJCSVQ76RFkZltG
 UOS+ewww4X5HDJZ+mf9NY45Xda5LxYyfRLJiKV87gSe1+OLE/0kBseiz4 Q==;
X-CSE-ConnectionGUID: rTgzfGIUQOKqgUCCoEGsow==
X-CSE-MsgGUID: Df5fv/0/TtCJ16GUFIfI3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="61216885"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="61216885"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:50 -0700
X-CSE-ConnectionGUID: BaEHoI0uQVWlxMOqOQkIQw==
X-CSE-MsgGUID: 9payOdl+SEC41IwZacbdCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="128206611"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 04:38:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 4/4] drm/i915/display: Implement Wa_14021768792 for BMG DP for
 link_m/n ratio > 10
Date: Fri, 21 Mar 2025 16:56:50 +0530
Message-ID: <20250321112650.3594298-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
References: <20250321112650.3594298-1-ankit.k.nautiyal@intel.com>
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

Handle the bypass logic for the M/N ratio limit for DP.
Calculate the M/N ratio, check if it can bypass the limit, and set the
appropriate flags for the workaround.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 -
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/display/intel_dp.c      | 31 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h      |  4 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++-
 5 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8a6b9196ef9b..ede86012406b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3391,7 +3391,6 @@ void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
 		m_n->bypass_m_n_ratio_limit = true;
 }
 
-static
 int bmg_can_bypass_m_n_limit(struct intel_display *display,
 			     int m_n_ratio,
 			     enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7a33c57d5abe..651ec3eb8726 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -574,5 +574,8 @@ int intel_link_compute_m_n(struct intel_display *display,
 			   int pixel_clock, int link_clock,
 			   int bw_overhead,
 			   struct intel_link_m_n *m_n);
+int bmg_can_bypass_m_n_limit(struct intel_display *display,
+			     int m_n_ratio,
+			     enum pipe pipe);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 49a8f105ba26..56aebb23d8ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2937,6 +2937,27 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
+bool
+intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+			      struct intel_link_m_n *m_n,
+			      enum pipe pipe)
+{
+	int m_n_ratio;
+
+	if (!m_n->link_n)
+		return false;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (!bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		return false;
+
+	m_n->bypass_m_n_ratio_limit = true;
+	drm_dbg_kms(display->drm, "Bypassing Link_m/Link_n ratio limit\n");
+
+	return true;
+}
+
 static int
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
@@ -2945,6 +2966,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int pixel_clock;
 	int ret;
 
@@ -2975,7 +2998,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m2_n2);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m2_n2, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
@@ -3101,6 +3125,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret = 0, link_bpp_x16;
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
@@ -3130,7 +3156,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
 	if (ret)
 		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m_n, pipe))
 		return ret;
 
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9189db4c2594..16004a18b13e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -22,6 +22,7 @@ struct intel_digital_port;
 struct intel_display;
 struct intel_dp;
 struct intel_encoder;
+struct intel_link_m_n;
 
 struct link_config_limits {
 	int min_rate, max_rate;
@@ -208,5 +209,8 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
+bool intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+				   struct intel_link_m_n *m_n,
+				   enum pipe pipe);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 18d75634f902..f03a1c97cdcf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -175,6 +175,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret;
 
 	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
@@ -182,7 +184,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 				     adjusted_mode->crtc_clock,
 				     crtc_state->port_clock,
 				     overhead, m_n);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, m_n, pipe))
 		return ret;
 
 	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
-- 
2.45.2

