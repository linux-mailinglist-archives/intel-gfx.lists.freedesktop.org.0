Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84056CC6285
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193E310EB81;
	Wed, 17 Dec 2025 06:10:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bblYvcYc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B19A10EB85;
 Wed, 17 Dec 2025 06:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951830; x=1797487830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pzzsf0XvOUFY+0X1x7GYNgFwgLahlyyA/OLjnb6iLxg=;
 b=bblYvcYc4TfR921VhPjx504wUOC2xHZbt/yhcpwc/0iEgP+gtips1qYh
 wG3bjRBRM/OI2wEqQ+lXvNxYo5BfhEQODurP1QWDa+EKzYsWntitYsy6K
 RTp+/sUItMrn0gc9B0F14H+53QNobkPtheZqO4ljoLqdYUvHmGYeR7JNX
 cV6BkDMVCNyjp2lBrR65mVH+f/49QcxQOvoT686Wpi7b8/+LejRNJz8js
 lmEa/KD3t+hAdmtXhnEELpRyQG9AfI0GRBpWOKN+Kwk0yXj7rc37M5nZ2
 M29fLlenj19q/ydn42DBMyfVCQw9kuXMn6V/VcDHoSTiwg6ypFUeyfivV g==;
X-CSE-ConnectionGUID: aGkmknR8RsGiEWhwIEfp5A==
X-CSE-MsgGUID: y6s65bBgSfWdFQ3knIrVwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471158"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471158"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:30 -0800
X-CSE-ConnectionGUID: S/IedZPsQh620kdUJdIQAg==
X-CSE-MsgGUID: xPuO3FWZQly3B1Jr2fYJCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105169"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:28 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 07/19] drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
Date: Wed, 17 Dec 2025 11:51:57 +0530
Message-ID: <20251217062209.852324-8-uma.shankar@intel.com>
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

Make intel_dram.c free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 6 +++++-
 drivers/gpu/drm/i915/display/intel_dram.c         | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h                   | 6 ------
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 8d0badea5cad..11952ce980ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2987,6 +2987,10 @@ enum skl_power_gate {
 #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
 #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
 
-
+#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
+#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
+#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
+#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
+#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
 
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 019a722a38bf..f0e75fa5feb2 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -7,11 +7,12 @@
 
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
+#include "intel_display_regs.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fac24a649d61..c9fb9af1a35c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1005,12 +1005,6 @@
 #define OROM_OFFSET				_MMIO(0x1020c0)
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
-#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
-#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
-#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
-#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
-
 #define MTL_MEDIA_GSI_BASE		0x380000
 
 #endif /* _I915_REG_H_ */
-- 
2.50.1

