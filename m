Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD2B9D3875
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C375310E6EF;
	Wed, 20 Nov 2024 10:35:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mLzhABrv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67C110E6EA;
 Wed, 20 Nov 2024 10:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098936; x=1763634936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V1oEVJ7gGUPX8J24rATldrdExvnT9vx8G2C3khTNHzM=;
 b=mLzhABrvJvbBw/rkHyuOv3aFJWEMwehtyz6JrtNdjeQOD6IXT0lxszUn
 Tfkj0SResWGqT0fHvd0fqZMTEWbxws6cXtQI+DdWxfhidkeg+5omhj7Sj
 x8e7dHFfkpACj3GK8Dy9PQMUWlww0Faok51HBEAgsXftitbJ2JcSvTqh9
 wfhHvGeWTTR17P09G/glBhcBtBlKm/+SfzpPAk5yzMD/nuU9t4iZo4lmQ
 O4svQZ/CDI8rHozkcVxlc31GFeoVeAiS+cbYVgtuGxlQXkwdeuRD28bUE
 IxbEWLQklfH6KboleC8IzT+5gGwbQhRjBLW0TDxFaJJMKelsYiLgzNad6 Q==;
X-CSE-ConnectionGUID: PA873c1LSmSRnvc2F4yM0w==
X-CSE-MsgGUID: 71ZqTujYRUKA+e7/6DcI8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520054"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520054"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:35 -0800
X-CSE-ConnectionGUID: DkRNQLfKQguuLPPt7N21BA==
X-CSE-MsgGUID: WbaqU307RE+bSY+X1rUefg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674082"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:34 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 05/12] drm/i915/dp: Return int from dsc_max/min_src_input_bpc
 helpers
Date: Wed, 20 Nov 2024 16:07:55 +0530
Message-ID: <20241120103802.134295-6-ankit.k.nautiyal@intel.com>
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

Use ints for dsc_max/min_bpc instead of u8 in
dsc_max/min_src_input_bpc helpers and their callers.
This will also help replace min_t/max_t macros with min/max ones.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd60ca532ae3..10fb2b9e6bc1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1789,7 +1789,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -1806,14 +1806,14 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
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
@@ -2192,7 +2192,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 }
 
 static
-u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
+int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
 	return 8;
@@ -2204,7 +2204,7 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 				struct link_config_limits *limits,
 				int pipe_bpp)
 {
-	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
+	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
 	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
@@ -2249,9 +2249,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
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
@@ -2271,7 +2271,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
-- 
2.45.2

