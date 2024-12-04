Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B209E3670
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AA010E33E;
	Wed,  4 Dec 2024 09:24:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O18Wz/r8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C11810EC97;
 Wed,  4 Dec 2024 09:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304248; x=1764840248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3PKu1QBgA04Ox6F0ulaqTU9h9z5YVl5609+xePH80dY=;
 b=O18Wz/r8/su+zK+Xk7dkL/bSWZeyp/QnrtDMPJYgfYaozaVQNcWRfV9+
 zbcpTXiiu7D+vlWcFHN0+HCPHSvbjOO4hIZ+xO0QfU2nChhU24ykHU/Hg
 0VBnxPJ840A3+vbgdUhiZSEmqWVrdMQb8N/8itq37V0OQdWlVkGhQ+GG5
 B+A+7/0PR/+wTjINDmMysucQWuMf9qr0bcBuH6N/0BdkAY0R4ZR9yIsEQ
 pSLW+Kc4dl6bORTgx+QpJHzeH0VIL8m0JBqU4nBqmPAFD0vgAwFVDJNUR
 24zxbYWVs6qCNUBiMcVSTeQ0TibLY/Csi+a/iVh0CYrkcLWW7U9U/0/oZ w==;
X-CSE-ConnectionGUID: 3u79+8DhTs+796PUEWe+8Q==
X-CSE-MsgGUID: vo+TNAPdQfy3kl+82JTLoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038462"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038462"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:08 -0800
X-CSE-ConnectionGUID: xr2ynN6WS1OqUsnrvM1G2Q==
X-CSE-MsgGUID: 5aXQTpoQSOK1VGYPhSqaXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555128"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 06/14] drm/i915/dp: Return int from dsc_max/min_src_input_bpc
 helpers
Date: Wed,  4 Dec 2024 14:56:34 +0530
Message-ID: <20241204092642.1835807-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
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
index 3989873c9516..3767d3870a19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1781,7 +1781,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -1798,14 +1798,14 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
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
@@ -2184,7 +2184,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(void)
+int intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
 	return 8;
@@ -2196,7 +2196,7 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
+	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
@@ -2241,9 +2241,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2263,7 +2263,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
-- 
2.45.2

