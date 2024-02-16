Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C44BC857F57
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 15:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218DF10EB6B;
	Fri, 16 Feb 2024 14:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLQiRH8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 758A510EB63;
 Fri, 16 Feb 2024 14:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708093652; x=1739629652;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wxR17ehsue9GKB4EIFuqpMTwfLVOUANpbIVGlt1fYUo=;
 b=XLQiRH8CoaVVLNNNcTh4LDCYYGep0+BxDRvYTYAQ5/Lu5n2k47GbnDpM
 uYeo4C9p75LNr9mP+e5xMveIazmZQGYAjunggIoz45lpJtD6wCd1ri5by
 NRkTRwkzM1L9Ihp7RxJpIe2imzR+Vd0OM6WTfl7kldov7diuLzHLoDOPD
 ubkqPpDkmY3GoxiSntbFDREO/jYsiVyH8DAMBni71dmb1rvq/YuOcurpw
 LntjMl8qRGABpE4v7571/3rN6D+w8h0xgUb+JupIHDaFTghrSgo2ng8vW
 G4PI0ZrqMYZL+I4L9B5sFk9TLEkyynwcdnvHDRYWXcT4UAu90ffFqGDRN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="2076827"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="2076827"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:27:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3818367"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa010.fm.intel.com with ESMTP; 16 Feb 2024 06:27:29 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dri-devel@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 5/6] drm/i915/display: Compute vrr_vsync params
Date: Fri, 16 Feb 2024 19:50:23 +0530
Message-Id: <20240216142024.1884258-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240216142024.1884258-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240216142024.1884258-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute vrr_vsync_start/end  which sets the position
for hardware to send the Vsync at a fixed position
relative to the end of the Vblank.

--v2:
- Update, VSYNC_START/END macros to VRR_VSYNC_START/END.(Ankit)
- Update bit fields of VRR_VSYNC_START/END.(Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c           |  7 +++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 11 +++++++++++
 3 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a6991bc3f07b..015ed846b896 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1414,6 +1414,7 @@ struct intel_crtc_state {
 		bool enable, in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
+		u32 vsync_end, vsync_start;
 	} vrr;
 
 	/* Stream Splitter for eDP MSO */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5d905f932cb4..2fa0004d00c7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -149,6 +149,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
+	crtc_state->vrr.vsync_start =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			VRR_VSYNC_START(crtc_state->hw.adjusted_mode.vsync_start));
+	crtc_state->vrr.vsync_end =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			(VRR_VSYNC_END(crtc_state->hw.adjusted_mode.vsync_end) >> 16));
+
 	/*
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c02ea07af4c2..f73e95b18819 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1955,6 +1955,10 @@
 #define   VSYNC_END(vsync_end)		REG_FIELD_PREP(VSYNC_END_MASK, (vsync_end))
 #define   VSYNC_START_MASK		REG_GENMASK(15, 0)
 #define   VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vsync_start))
+#define   VSYNC_END_MASK		REG_GENMASK(31, 16)
+#define   VSYNC_END(vsync_end)		REG_FIELD_PREP(VSYNC_END_MASK, (vsync_end))
+#define   VSYNC_START_MASK		REG_GENMASK(15, 0)
+#define   VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vsync_start))
 #define _TRANS_EXITLINE_A	0x60018
 #define _PIPEASRC		0x6001c
 #define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)
@@ -2007,7 +2011,9 @@
 #define _TRANS_VRR_CTL_B		0x61420
 #define _TRANS_VRR_CTL_C		0x62420
 #define _TRANS_VRR_CTL_D		0x63420
+#define _TRANS_VRR_VSYNC_A		0x60078
 #define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
+#define TRANS_VRR_VSYNC(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
@@ -2087,6 +2093,11 @@
 #define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(trans, _TRANS_VRR_STATUS2_A)
 #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
 
+#define   VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
+#define   VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VSYNC_END_MASK, (vsync_end))
+#define   VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
+#define   VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VSYNC_START_MASK, (vsync_start))
+
 #define _TRANS_PUSH_A			0x60A70
 #define _TRANS_PUSH_B			0x61A70
 #define _TRANS_PUSH_C			0x62A70
-- 
2.25.1

