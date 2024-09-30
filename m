Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C84AC989A68
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 08:04:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C09310E388;
	Mon, 30 Sep 2024 06:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1SRONYS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC16810E2D4;
 Mon, 30 Sep 2024 06:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727676243; x=1759212243;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uh/VbZd0l9xtNSw3M2d0HYCq0U/4gGBcv9wfHqa/mx4=;
 b=G1SRONYShjL+fiAxcWCog7DXxRchBMHJyvM+qv9Ivn4FRQdO0vieoDzo
 gT2ZbYfYqEoRZ6qf3Vy/0tVhA/WKtBP55thV+1GYmgWOlMsctFWTFhI5M
 Jx5xgzZOGnCUmHhy/EYoPQW3YQsEQsekN+c2LX2SLLKr9CmWvSgHtc36m
 b5uXQ1HLTnoGpWArd3neakSCg/+RB6Nf5+nBApvh7gDoJ+BINBV1xEGep
 eox8HaggX5YIv3PSIz1VaGjK8u30GhHVMTHjIBXztJBoYg+XAtZotISmg
 cwvygFAjWpOpwLuGE71CeBb0IeERBi1Hi1Ru3afVgIXSe4TBIhrnbHL2g Q==;
X-CSE-ConnectionGUID: 6KH+BHT2TA2WyT7o1Dci1Q==
X-CSE-MsgGUID: I5xJl5rxQriWrAXICMT14w==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="44265266"
X-IronPort-AV: E=Sophos;i="6.11,164,1725346800"; d="scan'208";a="44265266"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2024 23:04:02 -0700
X-CSE-ConnectionGUID: LqQkJuwzTS6PrRLFDvrNmw==
X-CSE-MsgGUID: MUMvDqdUSGW/frKBF6jR4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,164,1725346800"; d="scan'208";a="77695389"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa004.fm.intel.com with ESMTP; 29 Sep 2024 23:04:01 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/i915/dp: Guarantee a minimum HBlank time
Date: Mon, 30 Sep 2024 11:24:16 +0530
Message-Id: <20240930055416.2112473-1-arun.r.murthy@intel.com>
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 3 +++
 4 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 78ce402a5cd0..027ab45d4d38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2095,6 +2095,7 @@ void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
@@ -2102,6 +2103,11 @@ static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_st
 					       &crtc_state->dp_m_n);
 		intel_cpu_transcoder_set_m2_n2(crtc, cpu_transcoder,
 					       &crtc_state->dp_m2_n2);
+
+		if (DISPLAY_VER(i915) >= 20 && crtc_state->dp_m_n.min_hblank)
+			intel_de_write(i915,
+				       DP_MIN_HBLANK_CTL(i915, cpu_transcoder),
+				       crtc_state->dp_m_n.min_hblank);
 	}
 
 	intel_set_transcoder_timings(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fa03157554b2..8d18545a369f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1028,6 +1028,7 @@ struct intel_link_m_n {
 	u32 data_n;
 	u32 link_m;
 	u32 link_n;
+	u32 min_hblank;
 };
 
 struct intel_csc_matrix {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 15541932b809..c8f045142881 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -130,6 +130,8 @@ static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	u8 symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
+	u32 hblank;
 
 	/* TODO: Check WA 14013163432 to set data M/N for full BW utilization. */
 	intel_link_compute_m_n(bpp_x16, crtc_state->lane_count,
@@ -139,6 +141,13 @@ static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 			       m_n);
 
 	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
+
+	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
+	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
+	if (intel_dp_is_uhbr(crtc_state))
+		m_n->min_hblank = hblank > 5 ? hblank : 5;
+	else
+		m_n->min_hblank = hblank > 3 ? hblank : 3;
 }
 
 static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 41f4350a7c6c..65133efe728c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1109,6 +1109,7 @@
 #define _BCLRPAT_A		0x60020
 #define _TRANS_VSYNCSHIFT_A	0x60028
 #define _TRANS_MULT_A		0x6002c
+#define _DP_MIN_HBLANK_CTL_A	0x600ac
 
 /* Pipe/transcoder B timing regs */
 #define _TRANS_HTOTAL_B		0x61000
@@ -1121,6 +1122,7 @@
 #define _BCLRPAT_B		0x61020
 #define _TRANS_VSYNCSHIFT_B	0x61028
 #define _TRANS_MULT_B		0x6102c
+#define _DP_MIN_HBLANK_CTL_B	0x610ac
 
 /* DSI 0 timing regs */
 #define _TRANS_HTOTAL_DSI0	0x6b000
@@ -1146,6 +1148,7 @@
 #define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
 #define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
+#define DP_MIN_HBLANK_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _DP_MIN_HBLANK_CTL_A)
 
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
-- 
2.25.1

