Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9E598ED2B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 12:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7D110E7EF;
	Thu,  3 Oct 2024 10:41:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PyGCVnsd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E931910E7EE;
 Thu,  3 Oct 2024 10:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727952108; x=1759488108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kks/LoN37sV7HsPaJYrzGkhBjS18fueaA1vI/EqMWyE=;
 b=PyGCVnsdL+uc3taw1ZXiAfbaxJUn9d3oNXJLm7zBctSkItKaV40jqNyM
 mJUfQc04qmbVL1XcM9rCCMsM7d6K6/b7FmDcAMzk8bC6gd7WsElMfL7Lz
 cfi+VpP5Ns8G21Pec5fjAMTRX0bkMooztMDPdpGUiDyaI8WeMZFL0V5za
 B6F9LE2E0t9WCITKC8XlZ4A4NC+4dKzZkGW1qeKT4nexT6jo1K+t83O4L
 h0AJ3g0sLDPgZwe23UrpJg7hZViOTu9EQ9JK07VgTnmL3webesUfc3DMI
 bHrYkBOchJY1qiHgXs57IAgH3xB8JGmg+sxj3ZvD6U88v1ky3/vqYfqty Q==;
X-CSE-ConnectionGUID: 3CYE1RQ2Q924zx9bJyw8tA==
X-CSE-MsgGUID: +o2cIpfFRI60VwjoYNSMqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27270773"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="27270773"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:48 -0700
X-CSE-ConnectionGUID: OWMWHcG5StqSLhF/Nq4uZw==
X-CSE-MsgGUID: nrvpDKgbR+KDqMWQXbKEmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="105142449"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 03:41:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH 2/7] drm/i915/dp: Return int from dsc_max/min_src_input_bpc
 helpers
Date: Thu,  3 Oct 2024 16:13:38 +0530
Message-ID: <20241003104343.984060-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
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

Use ints for dsc_max/min_bpc instead of u8 in
dsc_max/min_src_input_bpc helpers and their callers.
This will also help replace min_t/max_t macros with min/max ones.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c47748905506..cf09698b0ee9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1764,7 +1764,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
 	if (!HAS_DSC(i915))
 		return 0;
@@ -1784,14 +1784,14 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
-	u8 dsc_max_bpc;
+	int dsc_max_bpc;
 
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
 
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -2161,7 +2161,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
 	return HAS_DSC(i915) ? 8 : 0;
@@ -2173,7 +2173,7 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
+	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
@@ -2218,9 +2218,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	u8 max_req_bpc = conn_state->max_requested_bpc;
-	u8 dsc_max_bpc, dsc_max_bpp;
-	u8 dsc_min_bpc, dsc_min_bpp;
+	int max_req_bpc = conn_state->max_requested_bpc;
+	int dsc_max_bpc, dsc_max_bpp;
+	int dsc_min_bpc, dsc_min_bpp;
 	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
@@ -2240,7 +2240,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
-- 
2.45.2

