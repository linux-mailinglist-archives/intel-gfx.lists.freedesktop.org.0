Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30FD98B633
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 09:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F638911A;
	Tue,  1 Oct 2024 07:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YeSs/gGm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6429D10E5F2;
 Tue,  1 Oct 2024 07:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727769218; x=1759305218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UnBApAP5YrRFQ2dH0ilfdeVDpb7XYWgceY5CHpg8rvs=;
 b=YeSs/gGmkQWZBZSyCHjWrIYnDgCACGm+2OU+Nnhee9aysSbxp4eSQFfP
 AX2vTX5lCV1UFgeFtBmVUrU1Lmwhl8vBcCLCOqSnCUNM/qvqxGgs2FpaF
 Gph/2aaDhHvFIiTa+NhwSVV2yCu27XR0LtdMi0jvAtQsBt5QGtjdkz+U6
 cq3U1LkSDi1kKu5dvVi0ur5dSJTXS3GW6licXBkDstxkOLsnOSOsVgrx2
 YmDIpHYZEav0HZXiJgVbkTwyqK3vxMlOZnWoRkfLAxGOBsKHyTxDv4qqZ
 mU2c03oYuiAl7QfZqdzsuBAIED7PYM61sCiDxGpwAssQaoahwT5dN4ewP Q==;
X-CSE-ConnectionGUID: XePs4DpRRqC4FR8k+eyeKw==
X-CSE-MsgGUID: TM7ohks7RzS6lnAwrlHrAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44414538"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="44414538"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 00:53:37 -0700
X-CSE-ConnectionGUID: gfXLW3/ITQ2jbk50ChrNCA==
X-CSE-MsgGUID: Er5O4+wqTTyipNMPRlBbQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="78426852"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa003.jf.intel.com with ESMTP; 01 Oct 2024 00:53:36 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time
Date: Tue,  1 Oct 2024 13:13:48 +0530
Message-Id: <20241001074348.2193502-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

Mandate a minimum Hblank symbol cycle count between BS and BE in 8b/10b
MST and 12b/132b mode.
Spec: DP2.1a

v2: Affine calculation/updation of min HBlank to dp_mst (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  4 +++
 3 files changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 17fc21f6ae36..5f151ad9b878 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1770,6 +1770,8 @@ struct intel_dp {
 
 	u8 alpm_dpcd;
 
+	u32 min_hblank;
+
 	struct {
 		unsigned long mask;
 	} quirks;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4765bda154c1..45c8be7cd7b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -156,6 +156,30 @@ static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
 	return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);
 }
 
+static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
+					    struct intel_connector *intel_connector,
+					    int bpp_x16)
+{
+	struct intel_encoder *intel_encoder = intel_connector->encoder;
+	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(intel_encoder);
+	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	struct intel_display *intel_display = to_intel_display(intel_encoder);
+	const struct drm_display_mode *adjusted_mode =
+					&crtc_state->hw.adjusted_mode;
+	u32 symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
+	u32 hblank;
+
+	if (DISPLAY_VER(intel_display) < 20)
+		return;
+
+	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
+	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
+	if (intel_dp_is_uhbr(crtc_state))
+		intel_dp->min_hblank = hblank > 5 ? hblank : 5;
+	else
+		intel_dp->min_hblank = hblank > 3 ? hblank : 3;
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -228,6 +252,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
 
+		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
+
 		/*
 		 * The TU size programmed to the HW determines which slots in
 		 * an MTP frame are used for this stream, which needs to match
@@ -1274,6 +1300,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_de_write(dev_priv, DP_MIN_HBLANK_CTL(dev_priv, trans),
+			       intel_dp->min_hblank);
+
 	enable_bs_jitter_was(pipe_config);
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7396fc630e29..b321d136e1b0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1138,6 +1138,10 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
+#define _DP_MIN_HBLANK_CTL_A	0x600ac
+#define _DP_MIN_HBLANK_CTL_B	0x610ac
+#define DP_MIN_HBLANK_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _DP_MIN_HBLANK_CTL_A)
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
-- 
2.25.1

