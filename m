Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA37CC627C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB2710EB78;
	Wed, 17 Dec 2025 06:10:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMkp0vh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A6910EB6B;
 Wed, 17 Dec 2025 06:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951828; x=1797487828;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YKtmhXZSpaCvkD/O3lbNrUlEg+fb3Cq0+eEbBpEytLQ=;
 b=bMkp0vh+PvU2lhG47r1t75OSkfL72FwzCdAWBRUeUbyvmAJDgC/Oz7Hm
 GRBQSL8qZ99u+EbtRQYsRbdrjNxg5xkH0ds2fGoG99kYnlqdp4soY+kof
 4fBZLqcTs3v36U/YxU8AwaC/M1+EDg8dYf81zzCyvh9NYNYqF9G4DmLxl
 a4bW/yllt7G5nKXeDGjap1Uf+FPSInotpNB9Xu1Y88yNgw4L3nU3YG+Jv
 XFWKIKJs6MYder+rzKzZB1rrfbAfiNXS8/vHq8Ge5PUchDKmvZqXsrnPc
 0oPa9GqOs912Y77jB+/1BbEsrFznectAlKCl9YbdPs7j2TREqNyBwsfeg g==;
X-CSE-ConnectionGUID: toWlOM29TfSakl71NwulvA==
X-CSE-MsgGUID: Afzd1fbCRe+F5ByOzN7yww==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471150"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471150"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:28 -0800
X-CSE-ConnectionGUID: 6epy83WDRtuioz+cJqRhIg==
X-CSE-MsgGUID: UiRtVrt2RbCDnOgMtgoHsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105165"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:26 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 06/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_display_device.c
Date: Wed, 17 Dec 2025 11:51:56 +0530
Message-ID: <20251217062209.852324-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
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

Move GU_CNTL_PROTECTED to common header, this helps
intel_display_device.c free from i915_reg.h dependency.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_regs.h   | 3 +++
 drivers/gpu/drm/i915/i915_reg.h                     | 8 --------
 include/drm/intel/intel_gmd_common_regs.h           | 5 +++++
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 471f236c9ddf..f7cc4198a870 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -9,8 +9,8 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_print.h>
 #include <drm/intel/pciids.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 566de308e482..8d0badea5cad 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -6,6 +6,9 @@
 
 #include "intel_display_reg_defs.h"
 
+#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
+#define   DEPRESENT			REG_BIT(9)
+
 #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
 #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
 #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 35122c997b8a..fac24a649d61 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -117,9 +117,6 @@
  *  #define GEN8_BAR                    _MMIO(0xb888)
  */
 
-#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
-#define   DEPRESENT			REG_BIT(9)
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 #define   DRIVERFLR			REG_BIT(31)
@@ -925,11 +922,6 @@
 #define   MASK_WAKEMEM				REG_BIT(13)
 #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
-#define GMD_ID_DISPLAY				_MMIO(0x510a0)
-#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
-#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
-#define   GMD_ID_STEP				REG_GENMASK(5, 0)
-
 /* PCH */
 
 #define SDEISR  _MMIO(0xc4000)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 5d156d7cfdbe..d4f91703e8a0 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -191,4 +191,9 @@
 #define     PCODE_MBOX_DOMAIN_NONE		0x0
 #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
 
+#define GMD_ID_DISPLAY				_MMIO(0x510a0)
+#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
+#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
+#define   GMD_ID_STEP				REG_GENMASK(5, 0)
+
 #endif
-- 
2.50.1

