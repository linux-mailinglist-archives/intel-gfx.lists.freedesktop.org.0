Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E06C7B18216
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 15:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0878C10E845;
	Fri,  1 Aug 2025 13:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PBd+/2cm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E86C10E845
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 13:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754053431; x=1785589431;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ctDC/9HG/WAxCS4AEPYDQP0F7L3MGjrq+eLLCXYzOiQ=;
 b=PBd+/2cm4ywlqBYcJTDD/LVS1+F4cjMNtqQy5kgzqEZ2Whn6Bf4CkWRI
 Hz4c88IF5iVqkMkyXU7aEJwTsZp+/xSecCII7nAH14KkTF5iWNBN+Omo8
 XDUlCsx5NFiZvuvCVJn3LhG+h+utggU+8VkcizwkVWEtzDQZr8A8LKu6m
 kFzy8kntUaF5KMarLh5EjdObMZi3t0UBAkv5MYh/L0880i7jxw+6db6ky
 Jpf84dGhnqN0eZbIFiuW0KGAIdjds4hLTpnQ/9DTxFG3qlnVSfngfPZV8
 W5jMWukFwvB2MYzbGg/88cox/mXiHh1tB0INkHYbotzpubrOKg6HzLQiX g==;
X-CSE-ConnectionGUID: +qgb5hfdSKaIhCknWw54sQ==
X-CSE-MsgGUID: 1jKXDtSGRBGy1EDmGQ4WSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56478857"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56478857"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 06:03:51 -0700
X-CSE-ConnectionGUID: DLgmGt3NTsmipTvwMZqtww==
X-CSE-MsgGUID: OL9Icyt/THeACUvb8cYMjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="167823209"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 01 Aug 2025 06:03:50 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: WA_14011503117
Date: Fri,  1 Aug 2025 18:28:35 +0530
Message-Id: <20250801125835.2337614-1-nemesa.garg@intel.com>
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

Mask the ERR_FATAL_MASK before scaler initialization.
After enabling the scaler and waiting for one frame,
unmask the previously masked bits, PS_ECC and
ERR_FATAL_MASK
Unmasking of ERR_FATAL_MASK bit is use for
validation purpose. There is no functional
impact.

v2: Remove intel_display_need_wa[Jani]
    Optimize the ecc_unmask call[Animesh]
v3: Add intel_display_wa[Jani]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 ++++
 .../gpu/drm/i915/display/intel_display_wa.c   |  8 +++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 29 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |  3 ++
 5 files changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..c1a3a95c65f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -76,6 +76,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -1081,6 +1082,11 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
 
+	if (intel_display_wa(display, 14011503117)) {
+		if (old_crtc_state->pch_pfit.enabled != new_crtc_state->pch_pfit.enabled)
+			adl_scaler_ecc_unmask(new_crtc_state);
+	}
+
 	intel_alpm_post_plane_update(state, crtc);
 
 	intel_psr_post_plane_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 399c08902413..31cd2c9cd488 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -52,6 +52,12 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
 }
 
+/*
+ * Wa_14011503117:
+ * Fixes: Before enabling the scaler DE fatal error is masked
+ * Workaround: Unmask the DE fatal error register after enabling the scaler
+ * and after waiting of at least 1 frame.
+ */
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
@@ -59,6 +65,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_14011503117:
+		return DISPLAY_VER(display) == 13;
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index aedea4cfa3ce..abc1df83f066 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -24,6 +24,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
 enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
+	INTEL_DISPLAY_WA_14011503117,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4cc55f4e1f9f..1374fa94ff5c 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -10,6 +10,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_fb.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
@@ -762,6 +763,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
 
+	if (intel_display_wa(display, 14011503117))
+		adl_scaler_ecc_mask(crtc_state);
+
 	drm_rect_init(&src, 0, 0,
 		      drm_rect_width(&crtc_state->pipe_src) << 16,
 		      drm_rect_height(&crtc_state->pipe_src) << 16);
@@ -938,3 +942,28 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
 }
+
+void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->pch_pfit.enabled)
+		return;
+
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+}
+
+void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int id;
+
+	if (!scaler_state && scaler_state->scaler_id == -1)
+		return;
+
+	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 692716dd7616..f6fd70af93f1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -44,4 +44,7 @@ skl_scaler_mode_valid(struct intel_display *display,
 		      enum intel_output_format output_format,
 		      int num_joined_pipes);
 
+void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
+
+void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
 #endif
-- 
2.25.1

