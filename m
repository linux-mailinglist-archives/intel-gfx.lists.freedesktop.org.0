Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B59D387B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747DA10E6EB;
	Wed, 20 Nov 2024 10:35:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c2S6L0wj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97F910E6FB;
 Wed, 20 Nov 2024 10:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098943; x=1763634943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BhfPxwq9q+zMPqjHFVlYXIO1Jh7wkpRF35ff4IconyU=;
 b=c2S6L0wjUzkya6gyvpUwRRfRJCGlHeu9ThTdOAhIN5PTXrgVVCtMZFOY
 1PktqwHEw+6tFh5NHbAeFw0bcrogRL9227AUENN5btGbEu6AnIltkDCjP
 QYeb5akXkQOiotHtx36xCtXhfsIIN5ONqxgCNpL9B1mDXFIdG14qAWLJp
 VJhNPj7pwIDNRIDeFjxglUxlNSQEYjwWCc0f5PuaCi2RKFLvUU6XYnZop
 JTc7Wyq6FT7Mxh8grY6izmaF4Ttb0s0vQjx567gyckv09AwioFBYXAwkV
 g3n95t3Li0w/fy7FJITMhjGGGrwsiACGg5CnAK+IjvHQrEVcAGQXrHHBx w==;
X-CSE-ConnectionGUID: g3w2l6t5SRW7ce5XQbO0EA==
X-CSE-MsgGUID: 1YyEH9iESMSrdyf3CfaBDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520063"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520063"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:43 -0800
X-CSE-ConnectionGUID: Isc1ytDgQ9q+Tc35CSviEQ==
X-CSE-MsgGUID: 0ByA2Wm4RkWCDMbOrHnqUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674102"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 09/12] drm/i915/dp_mst: Refactor pipe_bpp limits with dsc for
 mst
Date: Wed, 20 Nov 2024 16:07:59 +0530
Message-ID: <20241120103802.134295-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Similar to DP, set the dsc limits->pipe.max/min_bpp early for MST too.
Use the limits while computing the compressed bpp.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
 3 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b6d5e8eb75f5..827368b6cdb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2512,7 +2512,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	return true;
 }
 
-static void
+void
 intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 				     struct link_config_limits *limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index e5a25e5cbc25..973b2aa0da1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -200,6 +200,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits);
+void
+intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
+				     struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9568924d143b..78cb65f7cb2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -366,14 +366,10 @@ static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
-
-	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
+	max_bpp = limits->pipe.max_bpp;
+	min_bpp = limits->pipe.min_bpp;
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -576,6 +572,9 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
+	if (dsc)
+		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
+
 	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
 						     crtc_state,
 						     dsc,
-- 
2.45.2

