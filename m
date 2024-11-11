Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B974F9C3AF5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008DA10E0E0;
	Mon, 11 Nov 2024 09:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSL9LDBx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE4C10E455;
 Mon, 11 Nov 2024 09:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731317749; x=1762853749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4WFlBEcAQRtjYfnX+09TSOQscnYgL7f5RYFlFWy0+v4=;
 b=CSL9LDBxJjsxJkCsBbq4cTMsQ0al1lPtqkEE35443jSbVCN/u6ietfS/
 gtsvPgDPz7EgzOhRfoGeoFA5s8Z5/POMFW+5z8VA+S0jcBo7hR90P3MCD
 sFIIy+Sja+IAxyeu93h+hPGyfFkoncmfjd16Rr3OvsdyzHLbNxbVN1fju
 twz5dxM5qjBpe6KFVCBLtXZPVQgapPPdwKzhm+6IWJb2b3EvZPF/sP3Ho
 c9d7hKivdlgsNDb195Wm/Smwp2EQdsGI4LwS9zfkQsxMtU6+kJsz3EXHj
 Ho9HXOAbWTj5AAc0c2+M12osfCDXdaX4zTXzZs8pZ7+v+HJW/BhpGtHhm A==;
X-CSE-ConnectionGUID: 7OknJ1NFRtqto+YzApp5gQ==
X-CSE-MsgGUID: ITSUsG4aRMO99unSOhxYHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42213882"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42213882"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:35:49 -0800
X-CSE-ConnectionGUID: pWVHuSrxQN+35Ob5vr0ftg==
X-CSE-MsgGUID: OlUvVnDqQjuRqvdEJwzPNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86992883"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa006.jf.intel.com with ESMTP; 11 Nov 2024 01:35:47 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Date: Mon, 11 Nov 2024 14:56:08 +0530
Message-Id: <20241111092608.129410-1-arun.r.murthy@intel.com>
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
v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
    (Jani)
    Limit hblank to 511 and accomodate BS/BE in calculated value
    (Srikanth)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 35 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  4 +++
 4 files changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..f8c1d1dd66a3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -258,6 +258,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->has_sel_update),
 			   str_enabled_disabled(pipe_config->has_panel_replay),
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
+		drm_printf(&p, "minimum HBlank: %d\n", pipe_config->min_hblank);
 	}
 
 	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d3a1aa7c919f..d2716addf88e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1075,6 +1075,7 @@ struct intel_crtc_state {
 
 	int max_link_bpp_x16;	/* in 1/16 bpp units */
 	int pipe_bpp;		/* in 1 bpp units */
+	int min_hblank;		/* min HBlank for DP2.1 */
 	struct intel_link_m_n dp_m_n;
 
 	/* m2_n2 for eDP downclock */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 13449c85162d..1e7482efe95c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -161,6 +161,35 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
+static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
+					    struct intel_connector *connector,
+					    int bpp_x16)
+{
+	struct intel_encoder *encoder = connector->encoder;
+	struct intel_display *display = to_intel_display(encoder);
+	const struct drm_display_mode *adjusted_mode =
+					&crtc_state->hw.adjusted_mode;
+	int symbol_size = intel_dp_is_uhbr(crtc_state) ? 32 : 8;
+	int hblank;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST & 128b/132b */
+	hblank = DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal - adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
+
+	/* bit 8:0 minimum hblank symbol cylce count, i.e maximul value would be 511 */
+	hblank = min(511, hblank);
+
+	/* Software needs to adjust the BS/BE framing control from the valculated value */
+	hblank = hblank - 2;
+
+	if (intel_dp_is_uhbr(crtc_state))
+		crtc_state->min_hblank = max(hblank, 5);
+	else
+		crtc_state->min_hblank = max(hblank, 3);
+}
+
 static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						struct intel_crtc_state *crtc_state,
 						int max_bpp,
@@ -238,6 +267,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		remote_bw_overhead = intel_dp_mst_bw_overhead(crtc_state, connector,
 							      true, dsc_slice_count, link_bpp_x16);
 
+		intel_dp_mst_compute_min_hblank(crtc_state, connector, link_bpp_x16);
+
 		intel_dp_mst_compute_m_n(crtc_state, connector,
 					 local_bw_overhead,
 					 link_bpp_x16,
@@ -1295,6 +1326,10 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
 	}
 
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, DP_MIN_HBLANK_CTL(trans),
+			       pipe_config->min_hblank);
+
 	enable_bs_jitter_was(pipe_config);
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c160e087972a..0bd123276b9e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3485,6 +3485,10 @@
 #define _TRANS_DP2_VFREQLOW_D			0x630a8
 #define TRANS_DP2_VFREQLOW(trans)		_MMIO_TRANS(trans, _TRANS_DP2_VFREQLOW_A, _TRANS_DP2_VFREQLOW_B)
 
+#define _DP_MIN_HBLANK_CTL_A			0x600ac
+#define _DP_MIN_HBLANK_CTL_B			0x610ac
+#define DP_MIN_HBLANK_CTL(trans)		_MMIO_TRANS(trans, _DP_MIN_HBLANK_CTL_A, _DP_MIN_HBLANK_CTL_B)
+
 /* SNB eDP training params */
 /* SNB A-stepping */
 #define  EDP_LINK_TRAIN_400MV_0DB_SNB_A		(0x38 << 22)
-- 
2.25.1

