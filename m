Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Em4NYR0ymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:03:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6629A35B955
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 15:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2E210E76C;
	Mon, 30 Mar 2026 13:02:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QZ7wOHqz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D1310E76D;
 Mon, 30 Mar 2026 13:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774875777; x=1806411777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sjcbpykhPDHeLqywRayJK5cszjmHiB2Fg+3xPC7zf18=;
 b=QZ7wOHqzvuSaCgrG2NTXQj729DG4ToD5KhWGZ0D67cHvqMl0+/UecrIy
 xDcLJ6I2qLwzYKqi+c5B4kVnY2pnAII3QV2joUwSSNi22X2XJzYoHY8g1
 bt+dgD7RYIMBz2LZ0O3zZQIk4fy4OQStVsne61qi0oA360P+hbIpF+4eJ
 IOlFHDj/JwLxfdBNOMees9qlIW8ZLxF3JFARPabOnwFJMubxQw5YlUsdI
 fyXl97MrxuvFhJZmLbOoMnJDymX/1oOMhTD5ZkjrDhApytqF3s5jUsiUc
 hIYgoEz7I39Y4Iwq4YDI2pQuSUgMMsokO9nPuJ6ZWQtY68vjaLHCbslnk w==;
X-CSE-ConnectionGUID: AvsEy+8+Q56B4uC/wF3JQA==
X-CSE-MsgGUID: 6IW/KAvsShqQOl0ogCvJ5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11743"; a="78462879"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="78462879"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:56 -0700
X-CSE-ConnectionGUID: 6MTjCL+eRDmdEKMJ+hTnJw==
X-CSE-MsgGUID: Bkmlc+5mStWjwbMTIOXNnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="263988747"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 06:02:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/3] drm/i915/display: switch to including common step file
 directly
Date: Mon, 30 Mar 2026 16:02:36 +0300
Message-ID: <83b5f13b7f863b9cbc61499bcff22af5cd822a0b.1774875688.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1774875688.git.jani.nikula@intel.com>
References: <cover.1774875688.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 6629A35B955
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Instead of using the proxy intel_step.h in display, just include the
common step file directly where needed. This allows us to remove the
compat intel_step.h header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c           |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c            |  2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c  |  2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 11 -----------
 14 files changed, 13 insertions(+), 24 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 121a12c5b8ac..099acca9d0c8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -28,6 +28,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/step.h>
 
 #include "hsw_ips.h"
 #include "intel_atomic.h"
@@ -46,7 +47,6 @@
 #include "intel_pci_config.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
-#include "intel_step.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ebefa889bc8c..178074316a2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -33,6 +33,7 @@
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_print.h>
 #include <drm/drm_privacy_screen_consumer.h>
+#include <drm/intel/step.h>
 
 #include "icl_dsi.h"
 #include "intel_alpm.h"
@@ -81,7 +82,6 @@
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
-#include "intel_step.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index be55ef8ea617..7260990038dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -9,6 +9,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_print.h>
 #include <drm/intel/pciids.h>
+#include <drm/intel/step.h>
 
 #include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
@@ -21,7 +22,6 @@
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
 #include "intel_fbc.h"
-#include "intel_step.h"
 
 __diag_push();
 __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ec96b141c74c..1a2de99ad78f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/step.h>
 
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
@@ -30,7 +31,6 @@
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
-#include "intel_step.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 081a4092cd13..7d3d63a59882 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -4,12 +4,12 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
-#include "intel_step.h"
 
 static void gen11_display_wa_apply(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 887b6de14e46..96c5bcf7e21e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -32,6 +32,7 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/intel/step.h>
 
 #include "intel_atomic.h"
 #include "intel_audio.h"
@@ -56,7 +57,6 @@
 #include "intel_link_bw.h"
 #include "intel_pfit.h"
 #include "intel_psr.h"
-#include "intel_step.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index f5d4f7146fbc..e97b38f5d98e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -25,6 +25,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "bxt_dpio_phy_regs.h"
 #include "intel_cx0_phy.h"
@@ -41,7 +42,6 @@
 #include "intel_lt_phy.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
-#include "intel_step.h"
 #include "intel_tc.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ea0ce00c8474..55cb3ceb3523 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -44,6 +44,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "i9xx_plane_regs.h"
 #include "intel_de.h"
@@ -58,7 +59,6 @@
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
 #include "intel_parent.h"
-#include "intel_step.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 253dc2e96d2d..333d28faf4ca 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -6,6 +6,7 @@
 #include <linux/pci.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -17,7 +18,6 @@
 #include "intel_dmc_regs.h"
 #include "intel_dsb.h"
 #include "intel_flipq.h"
-#include "intel_step.h"
 #include "intel_vblank.h"
 #include "intel_vrr.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 892eab4b6f92..9b4ff3b80b05 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -18,6 +18,7 @@
 #include <drm/drm_print.h>
 #include <drm/intel/i915_component.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/step.h>
 
 #include "intel_connector.h"
 #include "intel_de.h"
@@ -33,7 +34,6 @@
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_parent.h"
-#include "intel_step.h"
 
 #define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >= 14)
 
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 244806a26da3..7819b724795b 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -6,6 +6,7 @@
 #include <linux/bitops.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "intel_atomic.h"
 #include "intel_bw.h"
@@ -17,7 +18,6 @@
 #include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_pmdemand.h"
-#include "intel_step.h"
 #include "skl_watermark.h"
 
 struct pmdemand_params {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2f1b48cd8efd..7750a0282d60 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -28,6 +28,7 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/step.h>
 
 #include "intel_alpm.h"
 #include "intel_atomic.h"
@@ -51,7 +52,6 @@
 #include "intel_psr_regs.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
-#include "intel_step.h"
 #include "intel_vblank.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 11ba42c67e3e..7a9d494334b5 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -8,6 +8,7 @@
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/step.h>
 
 #include "intel_bo.h"
 #include "intel_color.h"
@@ -25,7 +26,6 @@
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
-#include "intel_step.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_universal_plane_regs.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
deleted file mode 100644
index cb55a659856b..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_STEP_H__
-#define __INTEL_STEP_H__
-
-#include <drm/intel/step.h>
-
-#endif /* __INTEL_STEP_H__ */
-- 
2.47.3

