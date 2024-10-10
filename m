Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1BE997BA4
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6E210E854;
	Thu, 10 Oct 2024 04:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXyfX2J3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC1A10E854;
 Thu, 10 Oct 2024 04:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533328; x=1760069328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SVwpd9z3PVy3AxktdlvMOgPP2cSyRHjeo+RHXGSeV0E=;
 b=DXyfX2J3FZF3zqMnzsd8O4Dt2djyj+kumcvkWNPS2N658DnV5mulYzcW
 UZub0GbYjzxQQRxDKZhCTO10z+76aOhy/3Llg2hQipd9+XrMrHZ8YQPX9
 FuEJ43m96Jl4i+nHyJVp4FPp8MarNbeCRrimapBUnKdsiqwMY27HbyE3P
 rVO1iTWilQA+3++q/7OZCFfCtleqNApgWR/gXFF4Y6JnVHEHwdD6kn9DZ
 D508ixSoAC/QdmNDF/4bhjw8brvG/M1QqdiKWn2R+6vCkx32CZANT+z6D
 Qo/zGvND9hu/33R5ONIa/1PwMUlD7Vy4RzNc7V7MfJBBzqEwc0CE0aBa3 w==;
X-CSE-ConnectionGUID: 72I+N0qITN6j/7zm0D25FA==
X-CSE-MsgGUID: Bi1vJyvRSTawj+EIU+w7jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986968"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986968"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:48 -0700
X-CSE-ConnectionGUID: VCkCn3aCSEq80q86ssP9Dw==
X-CSE-MsgGUID: BXZ5y8RIRL2BTNjAvq21Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782674"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:08:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH 4/4] drm/i915/display: Implement Wa_14021768792 for BMG DP for
 link_m/n ratio > 10
Date: Thu, 10 Oct 2024 09:40:45 +0530
Message-ID: <20241010041045.2014069-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
References: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.h      |  5 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++-
 5 files changed, 41 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 75274f567ee6..563eaee68cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3549,7 +3549,6 @@ void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
 		m_n->bypass_m_n_ratio_limit = true;
 }
 
-static
 int bmg_can_bypass_m_n_limit(struct intel_display *display,
 			     int m_n_ratio,
 			     enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 61f6943443a7..4eb0456fde85 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -603,5 +603,8 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+int bmg_can_bypass_m_n_limit(struct intel_display *display,
+			     int m_n_ratio,
+			     enum pipe pipe);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 45ab903a31b2..150375ff9d5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2890,6 +2890,27 @@ static bool can_enable_drrs(struct intel_connector *connector,
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
@@ -2899,6 +2920,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int pixel_clock;
 	int ret;
 
@@ -2928,7 +2951,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m2_n2);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m2_n2, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
@@ -3064,6 +3088,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret = 0, link_bpp_x16;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -3146,7 +3172,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m_n);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m_n, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 60baf4072dc9..b09b088cdfc8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,8 +20,10 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
+struct intel_link_m_n;
 
 struct link_config_limits {
 	int min_rate, max_rate;
@@ -204,5 +206,8 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+bool intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+				   struct intel_link_m_n *m_n,
+				   enum pipe pipe);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 915cf3a5cdc0..b04418a009ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -134,6 +134,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret;
 
 	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
@@ -141,7 +143,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
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

