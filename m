Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ECA9C0AF2
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39A010E87B;
	Thu,  7 Nov 2024 16:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ctwuo4cK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B67810E87B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995913; x=1762531913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P9TsUEf0EbSyYMHQsHRZEz0Qcf1eXFxGEfP7RIYMWLU=;
 b=Ctwuo4cKOLeBVK0AnxY9Q7nEyI2Bc38dfbYPuRWXB/Y+naAwZ1XIc4DD
 V1Nc6Z2mJJuvofBV02F0WuTbZfd9TIzTTGUzznq0U11a7WONv7YBacBGh
 KufZGqpWbhfb7kD2HzPL6tE3MCZRfT6eSaMP6xupkiWMYCC4ix7J/zFMZ
 3qm6QBI0tSLO9ljIMW+Q2NhINv6Qmx8yEVKmlPC2N4Yxkw3I6iF9pJUlD
 k1QLoWQgsZGkfrPuMAUcWzi51ntYQbtbFLnVXlss2vu1KO1cx7aaP/rM8
 ipDZyccMaWlYph6OSQLCn+JZ+JnPQ3sLHpmxR33tBxeTXmu0Ewzb23U9h g==;
X-CSE-ConnectionGUID: DdIiEf9yRgy+MyoZ1vDjMQ==
X-CSE-MsgGUID: ngoj0c5xSDihyZ2Tnn42ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443203"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443203"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:43 -0800
X-CSE-ConnectionGUID: +FtetY6/RHGSxvV2ZC4TaQ==
X-CSE-MsgGUID: XfU6nP9+Sk2lcs0VGdV8yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277859"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/10] drm/i915/crt: Extract intel_crt_regs.h
Date: Thu,  7 Nov 2024 18:11:19 +0200
Message-ID: <20241107161123.16269-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the analog port register definitions into their
own file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
 drivers/gpu/drm/i915/display/intel_crt_regs.h | 48 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 drivers/gpu/drm/i915/gvt/display.c            |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 38 ---------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 7 files changed, 53 insertions(+), 38 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_crt_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index e21e402f85c8..4784a858b4a2 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -38,6 +38,7 @@
 #include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
+#include "intel_crt_regs.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt_regs.h b/drivers/gpu/drm/i915/display/intel_crt_regs.h
new file mode 100644
index 000000000000..9a93020b9a7e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_crt_regs.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __INTEL_CRT_REGS_H__
+#define __INTEL_CRT_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define ADPA			_MMIO(0x61100)
+#define PCH_ADPA		_MMIO(0xe1100)
+#define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
+#define   ADPA_DAC_ENABLE			REG_BIT(31)
+#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
+#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe))
+#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
+#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT, (pipe))
+#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
+#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 3)
+#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 2)
+#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
+#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
+#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
+#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 2)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 3)
+#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
+#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
+#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
+#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
+#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
+#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
+#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
+
+#endif /* __INTEL_CRT_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 4210de87a0a2..cd48d3e6cf42 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -6,6 +6,7 @@
 #include "g4x_dp.h"
 #include "i915_reg.h"
 #include "intel_crt.h"
+#include "intel_crt_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 17f74cb244bb..b6136825d213 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -40,6 +40,7 @@
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
+#include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 9494d812c00a..25acb9ddb12c 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -45,6 +45,7 @@
 #include "intel_mchbar_regs.h"
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
+#include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6391f2e9d530..8a0a478051a6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1147,44 +1147,6 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
-/* VGA port control */
-#define ADPA			_MMIO(0x61100)
-#define PCH_ADPA                _MMIO(0xe1100)
-#define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
-#define   ADPA_DAC_ENABLE			REG_BIT(31)
-#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
-#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe))
-#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
-#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT, (pipe))
-#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 3)
-#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 2)
-#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
-#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
-#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 1)
-#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
-#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 1)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 1)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 1)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 2)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 3)
-#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
-#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 0)
-#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 1)
-#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
-#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
-#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
-#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
-#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
-#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
-
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
 #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 955c9a33212a..63849389f39a 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -8,6 +8,7 @@
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_color_regs.h"
+#include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
-- 
2.45.2

