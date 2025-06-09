Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09673AD1CB4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 13:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7F010E228;
	Mon,  9 Jun 2025 11:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="So1aHAE+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0642910E21C;
 Mon,  9 Jun 2025 11:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749470028; x=1781006028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W+9PRfaOIB21Eq0Ym2qJkBNGbCq/C0ru8P35d1dYxfs=;
 b=So1aHAE+yMRzAPlzMfhHcxLSF2zDlHj4TQcgcDzk4xC8wzogNGzwJXin
 6XqGiS0sZPWgxvhi3N1WDpplyVVjt3b96GwVS854II9F+AXXEvN0XDxMJ
 4C4Giqh0ZrBDVmIl4WZAbPvxzjnk7q7oZbUnaW4soBx1n8w7ZpKoG/zpp
 Ni9CR8oBPqkTSww2HT5/Gv7lHflzEmWkkA4aexiqvM3fiLFbnNQ4L6gxj
 9yYOcX0gM6Pa8vJNVIwBJHR5Ysig+joClRQBqf8jTfQeKe0ohtZ8cWyGa
 mEA4kqh1EY6Y+rW8MP6BrH1djDayY0yc54rU1NcDRH2WqJfRPaozrdmmp w==;
X-CSE-ConnectionGUID: qGVN/VYWRPusaxuGl9H1cw==
X-CSE-MsgGUID: AvDABC+UQpSpLW7I5j/g7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11458"; a="61808376"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="61808376"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:48 -0700
X-CSE-ConnectionGUID: 5tyFB60LSZegp8LndDPLww==
X-CSE-MsgGUID: 4ONa1z0IR6SG0sh9JH7v4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151367109"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 04:53:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/display: include intel_display_reg_defs.h from
 display regs files
Date: Mon,  9 Jun 2025 14:53:36 +0300
Message-Id: <06c24e1f6a7a2f6b4801b0a079eec3cc924402a7.1749469962.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749469962.git.jani.nikula@intel.com>
References: <cover.1749469962.git.jani.nikula@intel.com>
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

Some display register files include i915_reg_defs.h, some don't include
anything. Prefer intel_display_reg_defs.h in display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg_regs.h      | 2 +-
 drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 2 +-
 drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h   | 2 ++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h       | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus_regs.h     | 2 +-
 drivers/gpu/drm/i915/display/intel_hti_regs.h       | 2 +-
 drivers/gpu/drm/i915/display/intel_sbi_regs.h       | 2 +-
 8 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
index 668e41d65e86..945a35578284 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_CMTG_REGS_H__
 #define __INTEL_CMTG_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define CMTG_CLK_SEL			_MMIO(0x46160)
 #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
index ee41acdccf4e..3694f95376c2 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_COMBO_PHY_REGS__
 #define __INTEL_COMBO_PHY_REGS__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define _ICL_COMBOPHY_A				0x162000
 #define _ICL_COMBOPHY_B				0x6C000
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 580a43be195e..77eae1d845f7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -6,8 +6,8 @@
 #ifndef __INTEL_CX0_PHY_REGS_H__
 #define __INTEL_CX0_PHY_REGS_H__
 
-#include "i915_reg_defs.h"
 #include "intel_display_limits.h"
+#include "intel_display_reg_defs.h"
 
 /* DDI Buffer Control */
 #define _DDI_CLK_VALFREQ_A		0x64030
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
index 56085b32956d..3d8fa667cc73 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "intel_display_reg_defs.h"
+
 struct intel_dkl_phy_reg {
 	u32 reg:24;
 	u32 bank_idx:4;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index d8e715677454..6f406315dd65 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_DMC_REGS_H__
 #define __INTEL_DMC_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 enum dmc_event_id {
 	DMC_EVENT_TRUE = 0x0,
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
index 59bad1dda6d6..ab750562566b 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_GMBUS_REGS_H__
 #define __INTEL_GMBUS_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define __GMBUS_MMIO_BASE(__display) ((__display)->gmbus.mmio_base)
 
diff --git a/drivers/gpu/drm/i915/display/intel_hti_regs.h b/drivers/gpu/drm/i915/display/intel_hti_regs.h
index e206f2837fc8..39c046bd351c 100644
--- a/drivers/gpu/drm/i915/display/intel_hti_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_hti_regs.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_HTI_REGS_H__
 #define __INTEL_HTI_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 #define HDPORT_STATE			_MMIO(0x45050)
 #define   HDPORT_DPLL_USED_MASK		REG_GENMASK(15, 12)
diff --git a/drivers/gpu/drm/i915/display/intel_sbi_regs.h b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
index 6fd37574b805..ec76652de02d 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
@@ -4,7 +4,7 @@
 #ifndef __INTEL_SBI_REGS_H__
 #define __INTEL_SBI_REGS_H__
 
-#include "i915_reg_defs.h"
+#include "intel_display_reg_defs.h"
 
 /*
  * Sideband Interface (SBI) is programmed indirectly, via SBI_ADDR, which
-- 
2.39.5

