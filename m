Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B58977CE17
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 16:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8787F10E256;
	Tue, 15 Aug 2023 14:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC2B10E253
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 14:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692109782; x=1723645782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p3U6mGCAlozwvMlT8FoyGO9Vt2E90B28OcgHiEySl/A=;
 b=XvXnTFkU6j+GXPph+HhyQxL74t35JrJKaP2Piz1ij+CCBtLni0RVLrWK
 htUw9XG5YA52Jad/u919YfgqTHkeCoMY/okFpo6yVIn8yclcZ7wvH0zZR
 z6HM5BMOKA3eFO++yEUDu6gnbCdviD5acsMoJJ2Mdi/ToUyL1zZ8gR2gl
 grH5i1cvfrlPSyfpxXeOjIuy3gsJLZaf130fAK27wyoW3Taz1NxUWS7UG
 ih+lgI5EdaR3E8Nr2vwgZUU0XAu0v8c/C2o5NwZmNxTnZoA97R5Jc/3cj
 jN2LIjY9hphSh89MzAWwCvh3+e5M5Z3zqJ7vE2HoIIhvCQV06QYQE5N4O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376021547"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="376021547"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799210063"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="799210063"
Received: from emurares-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:40 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:29:20 +0300
Message-Id: <20230815142921.404127-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815142921.404127-1-vinod.govindapillai@intel.com>
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/display: combine DP audio
 compute config steps
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Combine all DP audio configs into a single function

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 97a14afbcfe8..0eb072a78d44 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2236,11 +2236,16 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 static void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
-			      struct drm_connector_state *conn_state)
+			      struct drm_connector_state *conn_state,
+			      struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct drm_connector *connector = conn_state->connector;
 
+	pipe_config->has_audio =
+		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
+		intel_audio_compute_config(encoder, pipe_config, conn_state);
+
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
 					intel_dp_is_uhbr(pipe_config);
 
@@ -2264,10 +2269,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
 		pipe_config->has_pch_encoder = true;
 
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state, intel_dp) &&
-		intel_audio_compute_config(encoder, pipe_config, conn_state);
-
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
 	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
 		ret = intel_panel_compute_config(connector, adjusted_mode);
@@ -2334,7 +2335,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= n;
 	}
 
-	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
+	intel_dp_audio_compute_config(encoder, pipe_config, conn_state, intel_dp);
 
 	intel_link_compute_m_n(output_bpp,
 			       pipe_config->lane_count,
-- 
2.34.1

