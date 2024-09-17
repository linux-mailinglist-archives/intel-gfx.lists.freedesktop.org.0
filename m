Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4761297B3B8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D936D10E4DE;
	Tue, 17 Sep 2024 17:40:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkNrFq15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C68C10E4F1;
 Tue, 17 Sep 2024 17:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726594819; x=1758130819;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=btY0U6wtiXk7bkKAsdE0g4ze6vw0OvqSxYitYQBu6/s=;
 b=YkNrFq15Mu7i4mjLT5VD9nkekme7PTsRY/Rou3Vy2hhyeB7KiD8rBdNe
 r/APUwJHTajjR4rti5mJO5n93ai+EuB87aauHUz4lmTPO04pvvFKKHtcS
 3HY9OTRzWlKNWQGJAZzl0Wzr/1KM30JpzIZq/Fa8OFcLa78PbpGRiQfMP
 v9+UJg6eHH/Vy5QeO8he6Fwg1y3ko2P7pcmTWO8e0lNUwGsXDXLhIJPdi
 hc7QucHFOD5t8y9mVDmNeshJWQnOuRIqoTO0svS1x/DTcHxZecSJ09lpM
 HyMxFEfj8iKvb00zebZwmVS5xP4zQVD/nqCoJiLbJq++jhc+j3tzX2lAX w==;
X-CSE-ConnectionGUID: 8YxsjeW6R2aCCOzC17gKAA==
X-CSE-MsgGUID: sKhjGdE8TR6/U8N95MYlww==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13560983"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13560983"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:19 -0700
X-CSE-ConnectionGUID: 7zVe+a67TCOJlhqTjh3B0Q==
X-CSE-MsgGUID: DQsBn7CuS8WwoUhP8l4E0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69486180"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:40:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 4/4] drm/i915/display: Implement Wa_14021768792 for BMG DP for
 link_m/n ratio > 10
Date: Tue, 17 Sep 2024 23:12:00 +0530
Message-ID: <20240917174200.2563528-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
References: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c      | 27 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.h      |  5 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++-
 5 files changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index abb499de1c56..cca3b4781bba 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3448,7 +3448,6 @@ void bmg_bypass_m_n_limit_read(struct intel_crtc *crtc,
 		m_n->bypass_m_n_ratio_limit = true;
 }
 
-static
 int bmg_can_bypass_m_n_limit(struct intel_display *display,
 			     int m_n_ratio,
 			     enum pipe pipe)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index a8214787b115..cb847d4eae6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -576,4 +576,8 @@ bool assert_port_valid(struct drm_i915_private *i915, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
 
+int bmg_can_bypass_m_n_limit(struct intel_display *display,
+			     int m_n_ratio,
+			     enum pipe pipe);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 211d37353d99..a127b3da3568 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2861,6 +2861,23 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
+bool
+intel_dp_bmg_bypass_m_n_limit(struct intel_display *display,
+			      struct intel_link_m_n *m_n,
+			      enum pipe pipe)
+{
+	int m_n_ratio;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (!bmg_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		return false;
+
+	m_n->bypass_m_n_ratio_limit = true;
+
+	return true;
+}
+
 static int
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
@@ -2870,6 +2887,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	const struct drm_display_mode *downclock_mode =
 		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int pixel_clock;
 	int ret;
 
@@ -2899,7 +2918,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 				     pipe_config->port_clock,
 				     intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				     &pipe_config->dp_m2_n2);
-	if (ret)
+
+	if (ret && !intel_dp_bmg_bypass_m_n_limit(display, &pipe_config->dp_m2_n2, pipe))
 		return ret;
 
 	/* FIXME: abstract this better */
@@ -3035,6 +3055,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	const struct drm_display_mode *fixed_mode;
 	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
 	int ret = 0, link_bpp_x16;
 
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
@@ -3117,7 +3139,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
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

