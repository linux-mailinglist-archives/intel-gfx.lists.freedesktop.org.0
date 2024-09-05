Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6995B96D7AA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 13:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0127610E879;
	Thu,  5 Sep 2024 11:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Unq/nAGL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C876910E876;
 Thu,  5 Sep 2024 11:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725537214; x=1757073214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PL0ZwFyX4xDR00R4q/1Qj8Lr+ncgc4IhlKs+33EEcBU=;
 b=Unq/nAGLX9HaCXDtVSCjt+ztHwvVSes6hFpFKRKyjgTITSgMKRkGTlpa
 P/TPDzIXmaT1fkCeG7fqH84+GHQwUm7byALY1kEmxQj3VhGJCzndKcxgh
 heVHVKo4+RApQoUtDvrOQtvTILGqirv78/4PWdqGXVJNGA/6TbwUk9urX
 BzljLUayR7eX9wM/sN/6m/E0A4gkYDcVMfxMgDccOlMgPSYJml/bdBQxF
 /bPF/AxUT/hkTAd3Q0wc48pgh9YWN/DIjdggR9+hsoXVXfHKCYe+noMoD
 QmHxuzxmt76U3dtBt48sFZ1+BtAS1zTS/1H3YUy/5DXK+pwdi22ZeWdV0 g==;
X-CSE-ConnectionGUID: 5CVFx+aqRrmUej4y3JNxeA==
X-CSE-MsgGUID: qCes0vkJRVe0lJO6giTOqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24406124"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24406124"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:34 -0700
X-CSE-ConnectionGUID: jj810jN4ScCABoA5pSB3GQ==
X-CSE-MsgGUID: gub1ev0dTx2AMqLyBC/K5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65918173"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:33 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 4/5] drm/i915/display: Implement Wa_14021768792 for BMG DP for
 link_m/n ratio > 10
Date: Thu,  5 Sep 2024 17:25:04 +0530
Message-ID: <20240905115505.3629087-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.h |  4 +++
 drivers/gpu/drm/i915/display/intel_dp.c      | 31 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h      |  5 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++-
 5 files changed, 42 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d23f90096b0e..f55a85f04ce5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3430,7 +3430,6 @@ void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
 		m_n->bypass_m_n_ratio_limit = true;
 }
 
-static
 int bmg_can_bypass_m_n_limit(struct intel_display *display,
 			     int m_n_ratio,
 			     enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 483a8f6cd69b..caf7549a3352 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -589,4 +589,8 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
+int bmg_can_bypass_m_n_limit(struct intel_display *display,
+			     int m_n_ratio,
+			     enum pipe pipe);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d0c819807bfc..c741b3409fa6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2847,6 +2847,27 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
+bool
+intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+			      struct intel_link_m_n *m_n,
+			      enum pipe pipe)
+{
+	int m_n_ratio, m_n_frac;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (!bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		return false;
+
+	m_n_frac = m_n->link_m % m_n->link_n;
+
+	m_n->link_n_ext = m_n_ratio | (m_n_ratio + (m_n_frac  > 0 ? 1 : 0)) << 4;
+
+	m_n->bypass_m_n_ratio_limit = true;
+
+	return true;
+}
+
 static int
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
@@ -2856,6 +2877,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int pixel_clock;
 	int ret;
 
@@ -2885,7 +2908,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m2_n2);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m2_n2, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
@@ -3021,6 +3045,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret = 0, link_bpp_x16;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -3103,7 +3129,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m_n);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m_n, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 1b9aaddd8c35..92acb6a9eb4b 100644
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
@@ -203,5 +205,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
+bool intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+				   struct intel_link_m_n *m_n,
+				   enum pipe pipe);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 317eb04bd8c6..817895b427ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -131,6 +131,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(connector);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret;
 
 	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
@@ -138,7 +140,8 @@ static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
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

