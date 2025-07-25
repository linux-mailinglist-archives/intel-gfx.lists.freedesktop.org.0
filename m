Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CC7B12346
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 19:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F03110EA02;
	Fri, 25 Jul 2025 17:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ToaYn+Ic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A3410EA05
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jul 2025 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753465928; x=1785001928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dv0yuVSAQvWlvK/lArhAcn2KBitshHnmYxoDlfW6dPU=;
 b=ToaYn+IcyINF8wpQQWkhrOd4rO5LEXJAyTUGQj292z6OmzvIT/2I3umn
 0ad0rtNAvL32OmS/ZN3Q/mOqGsyzSWc8hgNGvbL/8QrFjwUli3fe7P5zv
 KAnbvzAy1jtZmRvrUujOjZRMgWVS/kLFUBVtbEMyeE8zdULhDLMvMWe3h
 IkAo5xRBl4yK2dZ9ticjpLSY8Rs0A4cR6YxGpyrJzoqUGbCqGTkdWahpa
 bQudsA4mDSssg5BAFlXhVeKO1xqMgdvCQDhwuNtWVaeozmnKgAzGg/uva
 eo+tfDoXIxbH93FcfopKkr/YcnwqEy368UUEaT3jTk/5TMKqidHLlMBgv A==;
X-CSE-ConnectionGUID: WpUp9Ma3RGiKk2QyezkAXA==
X-CSE-MsgGUID: Ultlmh9kQQqAGBi2TjbMcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="73389114"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="73389114"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 10:52:07 -0700
X-CSE-ConnectionGUID: MfQva/TUQQW+KyXMCoLG5Q==
X-CSE-MsgGUID: dUXa5A6wQCC4dVA0Cbvv5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="165098118"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa003.fm.intel.com with ESMTP; 25 Jul 2025 10:52:06 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: WA_14011503117
Date: Fri, 25 Jul 2025 23:16:57 +0530
Message-Id: <20250725174657.688520-1-nemesa.garg@intel.com>
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

Before enabling the scaler mask the bit and after
enabling the scaler, in the later stage after
waiting for a frame unmask the PS_ECC bit and
ERR_FATAL_MASK bit.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +++
 .../gpu/drm/i915/display/intel_display_wa.c   | 13 ++++++++
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 drivers/gpu/drm/i915/display/skl_scaler.c     | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h     |  4 +++
 5 files changed, 53 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..97664fd1b9c3 100644
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
@@ -1081,6 +1082,9 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
 
+	if (intel_display_wa(display, 14011503117))
+		skl_scaler_ecc_unmask(new_crtc_state);
+
 	intel_alpm_post_plane_update(state, crtc);
 
 	intel_psr_post_plane_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 399c08902413..0366eedacf2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -52,6 +52,17 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 	return DISPLAY_VERx100(display) == 3000 || DISPLAY_VERx100(display) == 3002;
 }
 
+/*
+ * Wa_14011503117:
+ * Fixes: Before enabling the scaler DE fatal error is masked
+ * Workaround: Unmask the DE fatal error register after enabling the scaler
+ * and after waiting of at least 1 frame.
+ */
+static bool intel_display_needs_wa_14011503117(struct intel_display *display)
+{
+	return DISPLAY_VER(display) == 13;
+}
+
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
@@ -59,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
 		return intel_display_needs_wa_16025573575(display);
+	case INTEL_DISPLAY_WA_14011503117:
+		return intel_display_needs_wa_14011503117(display);
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
index 4cc55f4e1f9f..bbe84e4b71fa 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
 
+	if (DISPLAY_VER(display) == 13)
+		skl_scaler_ecc_mask(crtc_state);
+
 	drm_rect_init(&src, 0, 0,
 		      drm_rect_width(&crtc_state->pipe_src) << 16,
 		      drm_rect_height(&crtc_state->pipe_src) << 16);
@@ -938,3 +941,31 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
 }
+
+void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->pch_pfit.enabled)
+		return;
+
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+}
+
+void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int id;
+
+	if (scaler_state)
+		id = scaler_state->scaler_id;
+
+	if (!crtc_state->pch_pfit.enabled && id == -1)
+		return;
+
+	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 692716dd7616..ec0fd80a3933 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
 		      enum intel_output_format output_format,
 		      int num_joined_pipes);
 
+void skl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
+
+void skl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
+
 #endif
-- 
2.25.1

