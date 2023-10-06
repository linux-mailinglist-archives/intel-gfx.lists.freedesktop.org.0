Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A71B7BB93F
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248CD10E4FF;
	Fri,  6 Oct 2023 13:37:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC1B710E4F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599439; x=1728135439;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uUg0H8/knh4NLQ7yz4qFbG4U/uFxzYRVz5gIUevpAA4=;
 b=gqzuBaLTern32R9kwimox6WBcyNZZTIocemlJXe7ls2k8tK/OaHT1L/m
 1vb5ZpC5X0N0fDkqFvtQt0LhXNXbyQoFQK4gAP23d5xXH4ft8UyWiaURC
 Z9M2nLU5DjfEnHA0HXKgMVr8gvl7pBcwtEpQ6TWaZtK1cCQItA6otuAqQ
 3+m4w8pK+GLv7raCc8S83GF0MrYN2Ml8JqaCdzXmZwioBDzZP4iok3x2H
 kzBzcqCSu4gn02/jYgP2okUkZePektNNsYh1QWrSUZgzLAdhQLu+cJrKX
 daBjAkMt2T/UjRWYjl4bhNvidpkD57pT8kNIuiluzTarpOUMQ5YSCMAvW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019107"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019107"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841435"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841435"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:17 +0300
Message-Id: <20231006133727.1822579-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_dsc_max_sink_compressed_bppx16()
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

Use the connector's DSC DPCD capabilities in
intel_dp_dsc_max_sink_compressed_bppx16().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 437bd972fb040..ff4090a602b4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1767,11 +1767,11 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 }
 
 static
-u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
+u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connector,
 					    struct intel_crtc_state *pipe_config,
 					    int bpc)
 {
-	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd);
+	u16 max_bppx16 = drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd);
 
 	if (max_bppx16)
 		return max_bppx16;
@@ -1810,11 +1810,11 @@ static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 	return 0;
 }
 
-static int dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
+static int dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
 				       struct intel_crtc_state *pipe_config,
 				       int bpc)
 {
-	return intel_dp_dsc_max_sink_compressed_bppx16(intel_dp,
+	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
 						       pipe_config, bpc) >> 4;
 }
 
@@ -1913,6 +1913,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 }
 
 static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
+				      const struct intel_connector *connector,
 				      struct intel_crtc_state *pipe_config,
 				      struct link_config_limits *limits,
 				      int pipe_bpp,
@@ -1930,7 +1931,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
@@ -2002,6 +2003,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 int timeslots)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	const struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 	u8 max_req_bpc = conn_state->max_requested_bpc;
 	u8 dsc_max_bpc, dsc_max_bpp;
 	u8 dsc_min_bpc, dsc_min_bpp;
@@ -2012,7 +2015,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, conn_state, limits);
 
 	if (forced_bpp) {
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
+		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
 						 limits, forced_bpp, timeslots);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = forced_bpp;
@@ -2041,7 +2044,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 			break;
 		if (pipe_bpp > dsc_max_bpp)
 			continue;
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
+		ret = dsc_compute_compressed_bpp(intel_dp, connector, pipe_config,
 						 limits, pipe_bpp, timeslots);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = pipe_bpp;
@@ -2088,7 +2091,7 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
-- 
2.39.2

