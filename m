Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B64A0B4DB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:54:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E3C310E649;
	Mon, 13 Jan 2025 10:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IpKA3/PK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F41A10E643;
 Mon, 13 Jan 2025 10:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736765665; x=1768301665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1k2oKOVcn1LtyRgAM8/bDvDrVbyFyfKTtlL63BWQF2k=;
 b=IpKA3/PK90FZZX1HJGl4u1kfXGpVRUyKD43L8QrrgKwFNIHSTfP1rMBL
 NvrrdxFR92nsKmNcqQXHDYW7Vl6cvD00UIdlwBqdCQNIy1NhrUrGJIwCN
 HSuJauramXXDBIpiM1ruvW47Ts+EPUQc3wFf8Pah1j6iaUKIgbZluetJS
 rpAnQ6Ndpkfum0VOqU7QPyILrN9/gyhaA5eoVlzPqRSTWLH+4A/ZIQ9Bx
 UTn72dz5FJ1VzaplD1LVa0fH5J6uG31rbVX1SoVWXiE+Rg7v/PAN1HUtQ
 ipAHnPoU0mhgZJZvnNTD3fwo9Qf83oFIV6ZBzuYnZI7fJlJcwHOmUjI5i w==;
X-CSE-ConnectionGUID: FfTD4bWmRuSf6X50WhKGQg==
X-CSE-MsgGUID: +t4WGHBuRHOwoA5z3Qi91A==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="54565179"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54565179"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:54:25 -0800
X-CSE-ConnectionGUID: /SnmMHHBQlmTDTSgnk3l7g==
X-CSE-MsgGUID: rycBhpMYS4usA61b7/f2fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104955154"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2025 02:54:23 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
Subject: [PATCH v4 6/6] drm/i915/display: Load the lut values and enable
 sharpness
Date: Mon, 13 Jan 2025 16:19:36 +0530
Message-Id: <20250113104936.1338290-7-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113104936.1338290-1-nemesa.garg@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
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

Load the lut values during pipe enable.

v2: Add the display version check
v3: Fix build issue
v4: Rebase

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c       |  6 ++++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
 drivers/gpu/drm/i915/display/skl_scaler.c          | 14 +++++++++++++-
 4 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index c910168602d2..f502530a98af 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -389,6 +389,9 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		drm_crtc_create_sharpness_strength_property(&crtc->base);
+
 	return 0;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7ab885fad189..52e8b6c86347 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1881,6 +1881,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 			intel_crtc_wait_for_next_vblank(wa_crtc);
 		}
 	}
+
+	if (new_crtc_state->hw.casf_params.strength_changed)
+		intel_filter_lut_load(crtc, new_crtc_state);
 }
 
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
@@ -7182,6 +7185,9 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
+	if (intel_casf_strength_changed(new_crtc_state, old_crtc_state))
+		intel_casf_enable(new_crtc_state);
+
 	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e5d28377bd0b..589596bfd8c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -940,6 +940,8 @@ struct intel_casf {
 	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
 	u8 win_size;
 	bool need_scaler;
+	bool strength_changed;
+	u8 strength;
 };
 
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 40584bc19dbb..60e2ec86ee90 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -9,6 +9,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
+#include "intel_casf_regs.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -896,7 +897,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 
 	/* find scaler attached to this pipe */
 	for (i = 0; i < crtc->num_scalers; i++) {
-		u32 ctl, pos, size;
+		u32 ctl, pos, size, sharp;
 
 		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
 		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
@@ -904,6 +905,17 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 
 		id = i;
 
+		if (DISPLAY_VER(display) >= 20) {
+			sharp = intel_de_read(display, SHARPNESS_CTL(crtc->pipe));
+			if (sharp & FILTER_EN) {
+				crtc_state->hw.casf_params.strength =
+					REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp) - 16;
+				crtc_state->hw.casf_params.need_scaler = true;
+				crtc_state->hw.casf_params.win_size =
+					REG_FIELD_GET(FILTER_SIZE_MASK, sharp);
+			}
+		}
+
 		if (!crtc_state->hw.casf_params.need_scaler)
 			crtc_state->pch_pfit.enabled = true;
 
-- 
2.25.1

