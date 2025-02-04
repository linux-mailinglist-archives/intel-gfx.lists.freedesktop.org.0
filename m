Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8B8A27314
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3553810E34D;
	Tue,  4 Feb 2025 13:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnELRi6O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE1E410E34B;
 Tue,  4 Feb 2025 13:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738676557; x=1770212557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TS5D9M2A70euFRHYLBORCEesaUyd6/t854wz4BzwPtk=;
 b=jnELRi6O3PB759fIQyPNLYypUoRwwdeQZcGiHf66xCCfbvWWEKcam/s0
 Jk9Ehu7Jnfe/Plpul2bqMddzquD5f9H5XWdD1g16mFODWPKUNZvyNcBBc
 j/fviMCGU67kSfNJk6qzF0UnpQeSN3CGMycBoDchZUjZoaEh7EVS3tWv3
 618kF43fTYMhewrr+6/yfKEMJQO6bdYPj3ThVOVh1xDFmCNLsyWPOHnT6
 a3EInsdv7sFsT/8pjklxWgzd7VmRMF0EAjuCBGHDzkpl9ZCAYG8PuU1cn
 8zL6STUjFKuE3Axca/b0HeTcCko6DV9srdBDvvxLP7/ZiSy3KeLEGpAex w==;
X-CSE-ConnectionGUID: EFq/L5KzQUKmxa0bRn38rQ==
X-CSE-MsgGUID: S/GeKrxaQMSVPtix5KsstA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50622659"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50622659"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:35 -0800
X-CSE-ConnectionGUID: 0nFA/PsLQ4uBXJurUNMX2g==
X-CSE-MsgGUID: 7gWZZa6VR3eN6aEw4YASfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="111180977"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:42:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/display: convert intel_ddi_buf_trans.c to struct
 intel_display
Date: Tue,  4 Feb 2025 15:42:26 +0200
Message-Id: <20250204134228.2934744-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main device data structure
for display. Switch to it.

For MISSING_CASE(), log the PCI ID instead of the platform to get rid of
the i915_drv.h dependency.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 58 +++++++++++--------
 1 file changed, 33 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 9389b295036e..a238be5bc455 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -3,13 +3,13 @@
  * Copyright © 2020 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include "i915_utils.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
-#include "intel_cx0_phy.h"
 
 /* HDMI/DVI modes ignore everything but the last 2 items. So we share
  * them for both DP and FDI transports, allowing those ports to
@@ -1407,10 +1407,10 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
 			   int *n_entries)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
 	if (crtc_state->port_clock > 270000) {
-		if (IS_TIGERLAKE_UY(dev_priv)) {
+		if (display->platform.tigerlake_uy) {
 			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
 						   n_entries);
 		} else {
@@ -1709,59 +1709,67 @@ mtl_get_c20_buf_trans(struct intel_encoder *encoder,
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (DISPLAY_VER(i915) >= 14) {
+	if (DISPLAY_VER(display) >= 14) {
 		if (intel_encoder_is_c10phy(encoder))
 			encoder->get_buf_trans = mtl_get_c10_buf_trans;
 		else
 			encoder->get_buf_trans = mtl_get_c20_buf_trans;
-	} else if (IS_DG2(i915)) {
+	} else if (display->platform.dg2) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
-	} else if (IS_ALDERLAKE_P(i915)) {
+	} else if (display->platform.alderlake_p) {
 		if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = adlp_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = adlp_get_dkl_buf_trans;
-	} else if (IS_ALDERLAKE_S(i915)) {
+	} else if (display->platform.alderlake_s) {
 		encoder->get_buf_trans = adls_get_combo_buf_trans;
-	} else if (IS_ROCKETLAKE(i915)) {
+	} else if (display->platform.rocketlake) {
 		encoder->get_buf_trans = rkl_get_combo_buf_trans;
-	} else if (IS_DG1(i915)) {
+	} else if (display->platform.dg1) {
 		encoder->get_buf_trans = dg1_get_combo_buf_trans;
-	} else if (DISPLAY_VER(i915) >= 12) {
+	} else if (DISPLAY_VER(display) >= 12) {
 		if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = tgl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
-	} else if (DISPLAY_VER(i915) == 11) {
-		if (IS_JASPERLAKE(i915))
+	} else if (DISPLAY_VER(display) == 11) {
+		if (display->platform.jasperlake)
 			encoder->get_buf_trans = jsl_get_combo_buf_trans;
-		else if (IS_ELKHARTLAKE(i915))
+		else if (display->platform.elkhartlake)
 			encoder->get_buf_trans = ehl_get_combo_buf_trans;
 		else if (intel_encoder_is_combo(encoder))
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
 		else
 			encoder->get_buf_trans = icl_get_mg_buf_trans;
-	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
+	} else if (display->platform.geminilake || display->platform.broxton) {
 		encoder->get_buf_trans = bxt_get_buf_trans;
-	} else if (IS_COMETLAKE_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KABYLAKE_ULX(i915)) {
+	} else if (display->platform.cometlake_ulx ||
+		   display->platform.coffeelake_ulx ||
+		   display->platform.kabylake_ulx) {
 		encoder->get_buf_trans = kbl_y_get_buf_trans;
-	} else if (IS_COMETLAKE_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KABYLAKE_ULT(i915)) {
+	} else if (display->platform.cometlake_ult ||
+		   display->platform.coffeelake_ult ||
+		   display->platform.kabylake_ult) {
 		encoder->get_buf_trans = kbl_u_get_buf_trans;
-	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i915)) {
+	} else if (display->platform.cometlake ||
+		   display->platform.coffeelake ||
+		   display->platform.kabylake) {
 		encoder->get_buf_trans = kbl_get_buf_trans;
-	} else if (IS_SKYLAKE_ULX(i915)) {
+	} else if (display->platform.skylake_ulx) {
 		encoder->get_buf_trans = skl_y_get_buf_trans;
-	} else if (IS_SKYLAKE_ULT(i915)) {
+	} else if (display->platform.skylake_ult) {
 		encoder->get_buf_trans = skl_u_get_buf_trans;
-	} else if (IS_SKYLAKE(i915)) {
+	} else if (display->platform.skylake) {
 		encoder->get_buf_trans = skl_get_buf_trans;
-	} else if (IS_BROADWELL(i915)) {
+	} else if (display->platform.broadwell) {
 		encoder->get_buf_trans = bdw_get_buf_trans;
-	} else if (IS_HASWELL(i915)) {
+	} else if (display->platform.haswell) {
 		encoder->get_buf_trans = hsw_get_buf_trans;
 	} else {
-		MISSING_CASE(INTEL_INFO(i915)->platform);
+		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+
+		MISSING_CASE(pdev->device);
 	}
 }
-- 
2.39.5

