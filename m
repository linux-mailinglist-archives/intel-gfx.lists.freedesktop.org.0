Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF09A23DF2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C867810EAA1;
	Fri, 31 Jan 2025 12:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IoDYbgGZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59C110EA9A;
 Fri, 31 Jan 2025 12:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327874; x=1769863874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jf5XCInE2bfgH9zC46aDkcbQ1MKt/rD+BOa0dp7Dhuo=;
 b=IoDYbgGZ30P2VbT/JzHTjba5jMq6KcCJTCbV795IowNRN1XUAhQMY6A2
 888lnTKZ70+OrcwhmSsgZ8YKuSFszq52xRQyGDSf5+k8ZMJPKHHszD09C
 19dGIj9lPJtkq6yjvWYPh7KDMxHKEy2coTzeZ3FYMzryEQDGJL4HOfIwk
 nrMfILdirUA7lOsuHUsVLaicWFF8NgjZU2c/duHymWawehVYJACi7/Bo8
 soCA3tfn8nHNvE+alerUE4Zr8MOCmgnjgk55XmcXYhp56QlC9Zq6cHRUK
 ba5b00Gsb0uA6lbkM0b1/mu0CU5aJnewrHgWlRmcQwdDat29KFayv2XQb w==;
X-CSE-ConnectionGUID: Z5KnxC3ERyS3h7i//LtNPQ==
X-CSE-MsgGUID: jCaNUzw4TWeyU/4fw2xfMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="42645184"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42645184"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:14 -0800
X-CSE-ConnectionGUID: lW7NceZvQziHT6CQWKDGXQ==
X-CSE-MsgGUID: 8DJlrTp1TlSjbT1kp6IUew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110194462"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 11/14] drm/i915/dp: Use int for compressed BPP in
 dsc_compute_link_config()
Date: Fri, 31 Jan 2025 14:50:04 +0200
Message-Id: <b8f9aebc4e40afeed3d723f98cae96c9c927a480.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Just use ints unless there are actual reasons to do otherwise. Here,
there are not.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7a8a4df1bf1e..7c6d277729d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1926,7 +1926,7 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_clock,
+static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
 					    u32 lane_count, u32 mode_clock,
 					    enum intel_output_format output_format,
 					    int timeslots)
@@ -1934,7 +1934,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
 	u32 available_bw, required_bw;
 
 	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
-	required_bw = compressed_bppx16 * (intel_dp_mode_to_fec_clock(mode_clock));
+	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
 
 	return available_bw > required_bw;
 }
@@ -1942,7 +1942,7 @@ static bool is_bw_sufficient_for_dsc_config(u16 compressed_bppx16, u32 link_cloc
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   const struct link_config_limits *limits,
-				   u16 compressed_bppx16,
+				   int dsc_bpp_x16,
 				   int timeslots)
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -1957,7 +1957,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		for (lane_count = limits->min_lane_count;
 		     lane_count <= limits->max_lane_count;
 		     lane_count <<= 1) {
-			if (!is_bw_sufficient_for_dsc_config(compressed_bppx16, link_rate,
+			if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
 							     lane_count, adjusted_mode->clock,
 							     pipe_config->output_format,
 							     timeslots))
-- 
2.39.5

