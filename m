Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B2AB0C03E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEEA910E4C2;
	Mon, 21 Jul 2025 09:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIgNVU3e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1234210E4C2;
 Mon, 21 Jul 2025 09:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089960; x=1784625960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oAo6vsXXvNW6ygTqyIxGCJiDRef6QoLCrJL4c9cJANE=;
 b=bIgNVU3eUwdveCdBSJlKU5H2BYcb0Egg/EGJ3hx5FeH8iB9vl+RKDwxC
 nqA9ChFht9c0LC8lHE/ZOiMNtY3qQSDZJF09ifDiHkZpyn1rviF6q2vQ+
 OoeGdS1ytOGnfo2WH7o+C1U8hruQTAXkI6MRcx7krFi5Y8CqUuuc1AS1L
 JPZemAglv87Da0ydkCpqLggdlYlRU+yTKjEkhiLzFkBa2FzZM2SDOa2yt
 kgGMHgxXP3VfocnvG3l+BjfbUX43WotI2eOZHwhqo0CWn5sE1Hkc6KhTB
 pZdmwNxGljDP8n6hkFKh0G28PGXvEAw1x7fr89A7psH13/OetDaEqpspo A==;
X-CSE-ConnectionGUID: n8XLRyjbT1So4G2SSAIE3Q==
X-CSE-MsgGUID: 8sBBHnqXQiKYrZcLK0u6og==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455381"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455381"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:59 -0700
X-CSE-ConnectionGUID: h/JvDsv/QfO9jxx9HQo1cg==
X-CSE-MsgGUID: QM83fT5PRcWkVzXhV4x20Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335151"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:57 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/9] drm/i915/dp: Add M/N ratio check with warning for DP link
 config
Date: Mon, 21 Jul 2025 14:45:24 +0530
Message-ID: <20250721091529.3864004-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

Introduce intel_dp_check_m_n_ratio() to validate the computed link
M/N ratio against the maximum allowed value. If the ratio exceeds the
limit, a warning is issued via drm_WARN().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
 drivers/gpu/drm/i915/display/intel_fdi.c    |  2 ++
 4 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1077a7ba7da..a1114d1059dd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3001,6 +3001,23 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
+void intel_dp_check_m_n_ratio(struct intel_crtc_state *crtc_state,
+			      struct intel_link_m_n *m_n)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	int m_n_ratio;
+
+	if (!m_n || !m_n->link_n)
+		return;
+
+	m_n_ratio = DIV_ROUND_UP(m_n->link_m, m_n->link_n);
+
+	if (m_n_ratio > intel_dp_get_max_m_n_ratio())
+		drm_WARN(display->drm, 1,
+			 "Link M/N ratio (%d) exceeds max allowed (%d)\n",
+			 m_n_ratio, intel_dp_get_max_m_n_ratio());
+}
+
 static void
 intel_dp_drrs_compute_config(struct intel_connector *connector,
 			     struct intel_crtc_state *pipe_config,
@@ -3039,6 +3056,8 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 			       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 			       &pipe_config->dp_m2_n2);
 
+	intel_dp_check_m_n_ratio(pipe_config, &pipe_config->dp_m2_n2);
+
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
 		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
@@ -3316,6 +3335,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 				       pipe_config->port_clock,
 				       intel_dp_bw_fec_overhead(pipe_config->fec_enable),
 				       &pipe_config->dp_m_n);
+
+		intel_dp_check_m_n_ratio(pipe_config, &pipe_config->dp_m_n);
 	}
 
 	ret = intel_dp_compute_min_hblank(pipe_config, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 16555a9c53c4..a197eb0a7fc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -22,6 +22,7 @@ struct intel_digital_port;
 struct intel_display;
 struct intel_dp;
 struct intel_encoder;
+struct intel_link_m_n;
 
 struct link_config_limits {
 	int min_rate, max_rate;
@@ -215,5 +216,7 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_can_support_m_n(int pixel_clock, int link_rate);
+void intel_dp_check_m_n_ratio(struct intel_crtc_state *crtc_state,
+			      struct intel_link_m_n *m_n);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 62da0cb70607..45b72a2c8588 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -347,6 +347,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
 
+		intel_dp_check_m_n_ratio(crtc_state, &crtc_state->dp_m_n);
+
 		if (is_mst) {
 			int remote_bw_overhead;
 			int remote_tu;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 8039a84671cc..d8e9d6e108e8 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -349,6 +349,8 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 			       intel_dp_bw_fec_overhead(false),
 			       &pipe_config->fdi_m_n);
 
+	intel_dp_check_m_n_ratio(pipe_config, &pipe_config->dp_m_n);
+
 	return 0;
 }
 
-- 
2.45.2

