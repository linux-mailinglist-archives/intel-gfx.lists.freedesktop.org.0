Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C0878407A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408C910E340;
	Tue, 22 Aug 2023 12:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB9210E340
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706430; x=1724242430;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o8UkjB9zZ1sbCvdQKZeLvU7OnQ+V+lLMnbWKXDtPbiw=;
 b=h51L3g0Um6UfvyJErFUiUtRtckSLdESIan9dmt4k8B39YsthmPo72fTp
 vohz7GF8XgMkV3KIvXVU1wY7ALRW08tqsrLyB82lj67yVlGXXPArTH8AN
 xsGVoRuxpKAGxhKjWsLoXTQT4azU1OPvl75kxcTMZH194xlIcN7JppT7a
 C8RYWnMbmHOUy6SRd5AHrN+fumuHtz5cSHPPsFwLc8CsJzzEB0FzIXajq
 JUqWXYo6pNa+NTNHxsIgmN8YPJtjBz5RQe+kKYxLemVbQgn3Kcav3ygnv
 aYUs/K48UJtxzgIDOhRLONj4bLeKb3oC9Kie8yNWAyeUZAc43flq6TPU3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230300"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230300"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335270"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335270"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:27 +0530
Message-Id: <20230822121033.597447-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/display: Consider fractional vdsc
 bpp while computing m_n values
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL+ supports fractional compressed bits_per_pixel, with precision of
1/16. This compressed bpp is stored in U6.4 format.
Accommodate this precision while computing m_n values.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 6 ++++--
 drivers/gpu/drm/i915/display/intel_fdi.c     | 2 +-
 5 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8c81206ce90d..9af36e600c87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2380,10 +2380,14 @@ void
 intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 		       int pixel_clock, int link_clock,
 		       struct intel_link_m_n *m_n,
-		       bool fec_enable)
+		       bool fec_enable,
+		       bool is_dsc_fractional_bpp)
 {
 	u32 data_clock = bits_per_pixel * pixel_clock;
 
+	if (is_dsc_fractional_bpp)
+		data_clock = DIV_ROUND_UP(bits_per_pixel * pixel_clock, 16);
+
 	if (fec_enable)
 		data_clock = intel_dp_mode_to_fec_clock(data_clock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49ac8473b988..a4c4ca3cad65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -398,7 +398,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
-			    bool fec_enable);
+			    bool fec_enable, bool is_dsc_fractional_bpp);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32d0bee11f53..436889c601b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2557,7 +2557,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 
 	intel_link_compute_m_n(link_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       pipe_config->fec_enable);
+			       pipe_config->fec_enable, false);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2703,7 +2703,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		link_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
+		link_bpp = pipe_config->dsc.compressed_bpp;
 	else
 		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
 					       pipe_config->pipe_bpp);
@@ -2735,7 +2735,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
 			       &pipe_config->dp_m_n,
-			       pipe_config->fec_enable);
+			       pipe_config->fec_enable,
+			       pipe_config->dsc.compression_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3eb085fbc7c8..e224eebe7c17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -171,7 +171,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
 			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       crtc_state->fec_enable,
+			       false);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
@@ -265,7 +266,8 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
 			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       crtc_state->fec_enable,
+			       crtc_state->dsc.compression_enable);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index e12b46a84fa1..15fddabf7c2e 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -259,7 +259,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	pipe_config->fdi_lanes = lane;
 
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
-			       link_bw, &pipe_config->fdi_m_n, false);
+			       link_bw, &pipe_config->fdi_m_n, false, false);
 
 	ret = ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
 	if (ret == -EDEADLK)
-- 
2.40.1

