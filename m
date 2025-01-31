Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC101A23DF4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D4710EA9E;
	Fri, 31 Jan 2025 12:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yys9s0gs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CDB10EA9E;
 Fri, 31 Jan 2025 12:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327884; x=1769863884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m5jPD2XJFZDpLNCDqF+Ka2JZEBaop8oIC41meYEJfQc=;
 b=Yys9s0gs/L6rCRjvJN7XFpil26NTV8FAKxE/EI2DkriErN1d3sbVL67u
 cVd/tZsY+RDTseXM7W9a4UVHN/JN8OBlHNq3h4sDzExZgr7Wvl/3Wbs03
 lW9JKyfMqXY+uk5j5C5GM4kSTNQFbZyIG46KxS+TdMpk+b39regmBf8Nb
 mAE8tdJnWHXWOzOF3B3dichODQHgonrCEcJm0Xgu4Lk+bSvQmBQtSfZr0
 gZzOL47q0YMGn1uJWff/qKkdMkJJ8y0npKahXsiX5l1ZWLAj6RSd7BUDD
 8QltUMKqdBuCNoXoW0KJwfkRHO35HvsrNFZ7poNHj6q2tqFZKT/c4Ja76 w==;
X-CSE-ConnectionGUID: bQqKwRlDStiHZVhuvwgsFA==
X-CSE-MsgGUID: iuaXKnrFQx2gPq+9n1p4FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="42645189"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="42645189"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:24 -0800
X-CSE-ConnectionGUID: 4TUnJ/YrT8y5ZhnjwIPWWw==
X-CSE-MsgGUID: cYt1lqdnRVyKo18Uj7oGdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110194493"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:51:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 13/14] drm/i915/dp: Pass connector state all the way to
 dsc_compute_link_config()
Date: Fri, 31 Jan 2025 14:50:06 +0200
Message-Id: <645d950a80df5fd4441d69aba4893ab263b3e555.1738327620.git.jani.nikula@intel.com>
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

Going forward, we'll need the connector state in
dsc_compute_link_config(). Pass it along through the chain. Maintain the
same parameter order where relevant.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0f1fa4afb808..25160a5d12eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1941,6 +1941,7 @@ static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
 
 static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
+				   struct drm_connector_state *conn_state,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16,
 				   int timeslots)
@@ -2098,13 +2099,14 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
  * try depend on the source (platform) and sink.
  */
 static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
-				      const struct intel_connector *connector,
 				      struct intel_crtc_state *pipe_config,
+				      struct drm_connector_state *conn_state,
 				      const struct link_config_limits *limits,
 				      int pipe_bpp,
 				      int timeslots)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int output_bpp;
 	int dsc_min_bpp;
@@ -2138,6 +2140,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
+					      conn_state,
 					      limits,
 					      bpp_x16,
 					      timeslots);
@@ -2209,7 +2212,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
 	if (forced_bpp) {
-		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
+		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
 						 limits, forced_bpp, timeslots);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = forced_bpp;
@@ -2227,7 +2230,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
 			continue;
 
-		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
+		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
 						 limits, pipe_bpp, timeslots);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = pipe_bpp;
-- 
2.39.5

