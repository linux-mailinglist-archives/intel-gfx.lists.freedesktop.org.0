Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8F4A0B4D7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF21110E641;
	Mon, 13 Jan 2025 10:54:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gAhk+QTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3780010E640;
 Mon, 13 Jan 2025 10:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736765650; x=1768301650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LjIfeBlc5vpb3KgWLJ/vkvhsHg3FOL/Wnsf3gc+VQF8=;
 b=gAhk+QTqW66/mWMVeHyY3cFaW/M7UEJ9//ENMtTHCcFU0gDGLcMW7gD1
 upxCbJLN/OaNRCxYB9uCe/Flwu2WV3S2S2aiEHcg6DmhXEgbRPqMFaz34
 ZXLa9kbQ8OOZSZ0r39ZJ/0oS+PecDX9TFghPDmRak/YhyWZu0znwImWuu
 oEcclv4hiAi48h1URlHtS1GMu5WOkxoFfa9px1gcB6XbMrAAAN7jpMUqa
 04Se6ypwFI6WbimPpbVif5fhKv5QEqHA0wZvHol1OFSv2UyFEXvkbO0qq
 WBefdEaBSgfIkn81kETY2052hYmtw9iT3QlUPEvhnT3NmV/4AZ+jSwdEH Q==;
X-CSE-ConnectionGUID: XNa3A3OpTzW6TTMuE0+xXA==
X-CSE-MsgGUID: 0hGrlWjbSRGgRgkqm1bYPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="54565118"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54565118"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:54:09 -0800
X-CSE-ConnectionGUID: 0blJYazuSgSNz7KnaOC4kg==
X-CSE-MsgGUID: Y0XDQ6cqQyKkszV5Ufkq4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104955014"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2025 02:54:07 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
Subject: [PATCH 2/6] drm/i915/display: Compute the scaler filter coefficients
Date: Mon, 13 Jan 2025 16:19:32 +0530
Message-Id: <20250113104936.1338290-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113104936.1338290-1-nemesa.garg@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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

The sharpness property requires the use of one of the scaler
so need to set the sharpness scaler coefficient values.
These values are based on experiments and vary for different
tap value/win size. These values are normalized by taking the
sum of all values and then dividing each value with a sum.

v2: Fix ifndef header naming issue reported by kernel test robot
v3: Rename file name[Arun]
    Replace array size number with macro[Arun]
v4: Correct the register format[Jani]
    Add brief comment and expalin about file[Jani]
    Remove coefficient value from crtc_state[Jani]
v5: Fix build issue
v6: Add new function for writing coefficients[Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_casf.c     | 142 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  16 ++
 .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
 drivers/gpu/drm/i915/display/intel_display.c  |   3 +
 .../drm/i915/display/intel_display_types.h    |  13 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 7 files changed, 195 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3dda9f0eda82..6f7f47af894e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -286,6 +286,7 @@ i915-y += \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
+	display/intel_casf.o \
 	display/intel_sprite.o \
 	display/intel_sprite_uapi.o \
 	display/intel_tc.o \
diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
new file mode 100644
index 000000000000..b507401457bf
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ *
+ */
+#include "i915_reg.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_casf.h"
+#include "intel_casf_regs.h"
+#include "skl_scaler.h"
+
+#define FILTER_COEFF_0_125 125
+#define FILTER_COEFF_0_25 250
+#define FILTER_COEFF_0_5 500
+#define FILTER_COEFF_1_0 1000
+#define FILTER_COEFF_0_0 0
+#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
+
+/**
+ * DOC: Content Adaptive Sharpness Filter (CASF)
+ *
+ * From LNL onwards the display engine based adaptive
+ * sharpening filter is supported. This helps in
+ * improving the image quality. The display hardware
+ * uses one of the pipe scaler for implementing casf.
+ * It works on a region of pixels depending on the
+ * tap size. The coefficients are used to generate an
+ * alpha value which is used to blend the sharpened image
+ * to original image.
+ */
+
+const u16 filtercoeff_1[] = {
+		FILTER_COEFF_0_0, FILTER_COEFF_0_0, FILTER_COEFF_0_5,
+		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_0,
+		FILTER_COEFF_0_0,
+		};
+
+const u16 filtercoeff_2[] = {
+		FILTER_COEFF_0_0, FILTER_COEFF_0_25, FILTER_COEFF_0_5,
+		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25,
+		FILTER_COEFF_0_0,
+		};
+
+const u16 filtercoeff_3[] = {
+		FILTER_COEFF_0_125, FILTER_COEFF_0_25, FILTER_COEFF_0_5,
+		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25,
+		FILTER_COEFF_0_125,
+		};
+
+static int casf_coef_tap(int i)
+{
+	return i % 7;
+}
+
+static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)
+{
+	struct scaler_filter_coeff value;
+	u16 coeff;
+
+	value = crtc_state->hw.casf_params.coeff[t];
+	coeff = SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) | MANTISSA(value.mantissa);
+
+	return coeff;
+}
+
+static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int id = crtc_state->scaler_state.scaler_id;
+	int i;
+
+	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 0),
+			  PS_COEF_INDEX_AUTO_INC);
+
+	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 1),
+			  PS_COEF_INDEX_AUTO_INC);
+
+	for (i = 0; i < 17 * 7; i += 2) {
+		u32 tmp;
+		int t;
+
+		t = casf_coef_tap(i);
+		tmp = casf_coef(crtc_state, t);
+
+		t = casf_coef_tap(i + 1);
+		tmp |= casf_coef(crtc_state, t) << 16;
+
+		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 0),
+				  tmp);
+		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 1),
+				  tmp);
+	}
+}
+
+void intel_casf_enable(struct intel_crtc_state *crtc_state)
+{
+	intel_casf_write_coeff(crtc_state);
+}
+
+static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
+					  u16 coefficient)
+{
+	if (coefficient < 25) {
+		coeff->mantissa = (coefficient * 2048) / 100;
+		coeff->exp = 3;
+	} else if (coefficient < 50) {
+		coeff->mantissa = (coefficient * 1024) / 100;
+		coeff->exp = 2;
+	} else if (coefficient < 100) {
+		coeff->mantissa = (coefficient * 512) / 100;
+		coeff->exp = 1;
+	} else {
+		coeff->mantissa = (coefficient * 256) / 100;
+		coeff->exp = 0;
+	}
+}
+
+void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
+{
+	const u16 *filtercoeff;
+	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
+	u16 sumcoeff = 0;
+	u8 i;
+
+	if (crtc_state->hw.casf_params.win_size == 0)
+		filtercoeff = filtercoeff_1;
+	else if (crtc_state->hw.casf_params.win_size == 1)
+		filtercoeff = filtercoeff_2;
+	else
+		filtercoeff = filtercoeff_3;
+
+	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++)
+		sumcoeff += *(filtercoeff + i);
+
+	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
+		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
+		convert_sharpness_coef_binary(&crtc_state->hw.casf_params.coeff[i],
+					      filter_coeff[i]);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
new file mode 100644
index 000000000000..8e0b67a2fd99
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CASF_H__
+#define __INTEL_CASF_H__
+
+#include <linux/types.h>
+
+struct intel_crtc_state;
+
+void intel_casf_enable(struct intel_crtc_state *crtc_state);
+void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
+
+#endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
new file mode 100644
index 000000000000..0b3fcdb22c0c
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CASF_REGS_H__
+#define __INTEL_CASF_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* Scaler Coefficient structure */
+#define SIGN				REG_BIT(15)
+#define EXPONENT_MASK			REG_GENMASK(13, 12)
+#define EXPONENT(x)			REG_FIELD_PREP(EXPONENT_MASK, (x))
+#define MANTISSA_MASK			REG_GENMASK(11, 3)
+#define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
+
+#endif /* __INTEL_CASF_REGS__ */
+
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4271da219b41..413b7fd7e287 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -111,6 +111,7 @@
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_sdvo.h"
+#include "intel_casf.h"
 #include "intel_snps_phy.h"
 #include "intel_tc.h"
 #include "intel_tdf.h"
@@ -6176,6 +6177,8 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 		if (ret)
 			return ret;
 
+		intel_casf_scaler_compute_config(new_crtc_state);
+
 		/*
 		 * On some platforms the number of active planes affects
 		 * the planes' minimum cdclk calculation. Add such planes
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8271e50e3644..7cb58bf56907 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -929,6 +929,18 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
+struct scaler_filter_coeff {
+	u16 sign;
+	u16 exp;
+	u16 mantissa;
+};
+
+struct intel_casf {
+#define SCALER_FILTER_NUM_TAPS 7
+	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
+	u8 win_size;
+};
+
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
 
 typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
@@ -969,6 +981,7 @@ struct intel_crtc_state {
 		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
 		struct drm_display_mode mode, pipe_mode, adjusted_mode;
 		enum drm_scaling_filter scaling_filter;
+		struct intel_casf casf_params;
 	} hw;
 
 	/* actual state of LUTs */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 5c97ad6ed738..fca8cdb70ce6 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_psr.o \
 	i915-display/intel_qp_tables.o \
 	i915-display/intel_quirks.o \
+	i915-display/intel_casf.o \
 	i915-display/intel_snps_phy.o \
 	i915-display/intel_tc.o \
 	i915-display/intel_vblank.o \
-- 
2.25.1

