Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7344C57B57
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E60510E152;
	Thu, 13 Nov 2025 13:38:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5GaqnMk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7ECB10E152;
 Thu, 13 Nov 2025 13:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041084; x=1794577084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eGg/JHFR0hn5joBnkUXVLoOX7mcdYRkM7Ik+JsHBN+s=;
 b=j5GaqnMkNibtMd4PzzWUQsO3+LHWplALZLzGjq0ahgs/dNrfd+8UIxkt
 sGrmw3IO4+hjpgQy843Ilw+sefX2+zXtk0QAqi9SnAmRaGV0AtaG9tn3j
 brDjzvEtHhtVeeC0Kw62u4tj90hHiUmgTxYhpEcoltlUhCopd5qvbZmle
 A0qrBU7ysdhDIJyroMu1drWFWYay+gEv4cfUq2CluutNy5oBe10AhYF0d
 y1VXpyltnjCwKbopXpz0pTrLigMGjbFeEOGkJSS6UGDMMD4u4KkCwZ2Lg
 xKh/hLCzRtT1J1jpOokAqwTvKVYGiUegsar6s4s3KTaA21Dv9QsiD6CDw A==;
X-CSE-ConnectionGUID: GLley9U2Txyt2xul6siZuA==
X-CSE-MsgGUID: WqLimy1qSAyyL2O31UNxKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65004460"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65004460"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:04 -0800
X-CSE-ConnectionGUID: d1n+FGNYRD6Dbu75kE3GQw==
X-CSE-MsgGUID: pOCpAQ0oTxiPTUc5YIPfjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="212901831"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH] drm/i915/gmch: convert intel_gmch.c to struct intel_display
Date: Thu, 13 Nov 2025 15:37:58 +0200
Message-ID: <20251113133758.696746-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Convert most of intel_gmch.[ch] to struct intel_display. The
i915->gmch.pdev remains for now, but add a local variable for it.

intel_gmch_vga_set_state() is only used internally, make it static while
at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmch.c | 18 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_gmch.h |  2 --
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmch.c b/drivers/gpu/drm/i915/display/intel_gmch.c
index 7797c7341047..475f2b6ce39e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmch.c
+++ b/drivers/gpu/drm/i915/display/intel_gmch.c
@@ -11,17 +11,19 @@
 
 #include "i915_drv.h"
 #include "intel_display_core.h"
+#include "intel_display_types.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
 
-int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
+static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
-	struct intel_display *display = i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct pci_dev *bridge = i915->gmch.pdev;
 	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
-	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to read control word\n");
+	if (pci_read_config_word(bridge, reg, &gmch_ctrl)) {
+		drm_err(display->drm, "failed to read control word\n");
 		return -EIO;
 	}
 
@@ -33,8 +35,8 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 	else
 		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 
-	if (pci_write_config_word(i915->gmch.pdev, reg, gmch_ctrl)) {
-		drm_err(&i915->drm, "failed to write control word\n");
+	if (pci_write_config_word(bridge, reg, gmch_ctrl)) {
+		drm_err(display->drm, "failed to write control word\n");
 		return -EIO;
 	}
 
@@ -43,9 +45,9 @@ int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
 {
-	struct drm_i915_private *i915 = pdev_to_i915(pdev);
+	struct intel_display *display = to_intel_display(pdev);
 
-	intel_gmch_vga_set_state(i915, enable_decode);
+	intel_gmch_vga_set_state(display, enable_decode);
 
 	if (enable_decode)
 		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
diff --git a/drivers/gpu/drm/i915/display/intel_gmch.h b/drivers/gpu/drm/i915/display/intel_gmch.h
index 907e1ae921e0..bc3421ab5ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_gmch.h
+++ b/drivers/gpu/drm/i915/display/intel_gmch.h
@@ -9,9 +9,7 @@
 #include <linux/types.h>
 
 struct pci_dev;
-struct drm_i915_private;
 
-int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
 #endif /* __INTEL_GMCH_H__ */
-- 
2.47.3

