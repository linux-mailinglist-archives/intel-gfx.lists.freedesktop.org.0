Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D82644178
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27C2210E31E;
	Tue,  6 Dec 2022 10:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A463710E318
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323548; x=1701859548;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLL2DWEQes4rTTvYV908ACOwKzE2gQGVjMJPlGLwFjI=;
 b=DwCr0HEEjHR4PunvPNKj3CX+NtQ6NqBGwFw6NlEMU1sTuM2/Lx5dLPP6
 PV6OGOOsSBY4BsxkTqjVCdYOn86fEeEKIfEI+GO9H50wjbWg4JaZwVh6M
 wk9SSq9jL3vMbbao1JUIKJms0c4keWoMGEGsXBjDVvx94bwZc6u4wOsyv
 quZ0eb8zAYkKFtj+wD1m0T8/zZSWT2C2kaY0gc0Zpgej2W7U6RbDU95Jx
 oyiM8tX2KZAfhYaKj9nnE4YrIrEMtU+cdQiUX/0yfkTZvlPQ/Bh+0odT0
 TK2zeNHjNaRGYtv8gcVHndAbvFXIXsWJDu/fRk5b5BZM3vrwZV/7qMJ8b A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735393"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735393"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714758004"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714758004"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:46 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:25 +0530
Message-Id: <20221206104630.1263525-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 07/12] drm/i915/display: Consider fractional
 vdsc bpp while computing m_n values
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

MTL+ supports fractional compressed bits_per_pixel, with precision of
1/16. This compressed bpp is stored in U6.4 format.
Accommodate this precision while computing m_n values.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c     | 2 +-
 5 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32b257157186..51b801b0651d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2752,10 +2752,14 @@ void
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
index 714030136b7f..f3d32de9fa2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -506,7 +506,7 @@ u8 intel_calc_active_pipes(struct intel_atomic_state *state,
 void intel_link_compute_m_n(u16 bpp, int nlanes,
 			    int pixel_clock, int link_clock,
 			    struct intel_link_m_n *m_n,
-			    bool fec_enable);
+			    bool fec_enable, bool is_dsc_fractional_bpp);
 u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 009a3dc72d05..f1ccebe946b2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2135,7 +2135,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 
 	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
 			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       pipe_config->fec_enable);
+			       pipe_config->fec_enable, false);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
@@ -2275,7 +2275,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		intel_dp_limited_color_range(pipe_config, conn_state);
 
 	if (pipe_config->dsc.compression_enable)
-		output_bpp = dsc_integral_compressed_bpp(pipe_config->dsc.compressed_bpp);
+		output_bpp = pipe_config->dsc.compressed_bpp;
 	else
 		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
 						 pipe_config->pipe_bpp);
@@ -2307,7 +2307,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       pipe_config->port_clock,
 			       &pipe_config->dp_m_n,
-			       pipe_config->fec_enable);
+			       pipe_config->fec_enable,
+			       pipe_config->dsc.compression_enable);
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4077a979a924..4f8010285ebf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -100,7 +100,8 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
 			       &crtc_state->dp_m_n,
-			       crtc_state->fec_enable);
+			       crtc_state->fec_enable,
+			       false);
 	crtc_state->dp_m_n.tu = slots;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 063f1da4f229..5ab6c2e983d5 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -257,7 +257,7 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
 	pipe_config->fdi_lanes = lane;
 
 	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
-			       link_bw, &pipe_config->fdi_m_n, false);
+			       link_bw, &pipe_config->fdi_m_n, false, false);
 
 	ret = ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
 	if (ret == -EDEADLK)
-- 
2.25.1

