Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F652606533
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB6B310E474;
	Thu, 20 Oct 2022 16:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B2B10E455
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 16:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666281632; x=1697817632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=olsL0wDjbt73i8xvMCgFZQgm8mumaZxIglx37iaQ/bU=;
 b=OuG8B6Ob6LyIgtuT9OzscZSsGfJSDZFKnf9HH2qSZPbSr4ZjyINBgUUl
 umWNc2rceuo7yImLftybQ3jmcG/ObwFsgxyyZKFn46ooj+bOe5Oh1WkIB
 iHBzBM+zMGW6F+EH96df65La+bLzisFGLkgq8WV9RGl+g9uDUqGsmku8+
 3QVCieimW+UU41Z9+lUEnO4E9z6iwYLbKw2WvD1/KjkyOjGt6WI7IrzHh
 fgsGXStAr8PbOr2TllRz+MloeHbI79ylwCtTxpzPA3fQbAP9bGA7FA3op
 grqR58vpZpglafIHq/mkGp7rjbk9SIR2H8Dp18kIa8w6YnMeTSocajgtr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="308433704"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="308433704"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="755219850"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="755219850"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:00:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 19:00:20 +0300
Message-Id: <20221020160022.1823365-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221020160022.1823365-1-imre.deak@intel.com>
References: <20221020160022.1823365-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Rename intel_tc_phy_regs.h to
 intel_mg_phy_regs.h
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

An upcoming patch moves the DKL PHY register definitions to
intel_dkl_phy_regs.h, so for consistency rename intel_tc_phy_regs.h
containing only MG PHY register definitions to intel_mg_phy_regs.h.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c                    | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c               | 2 +-
 .../display/{intel_tc_phy_regs.h => intel_mg_phy_regs.h}    | 6 +++---
 drivers/gpu/drm/i915/display/intel_tc.c                     | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_tc_phy_regs.h => intel_mg_phy_regs.h} (99%)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7708ccbbdeb75..37272c6e4269d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -56,13 +56,13 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_lspcon.h"
+#include "intel_mg_phy_regs.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
 #include "intel_snps_phy.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
-#include "intel_tc_phy_regs.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 58e5c6f7de750..38d686389e1bb 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -29,9 +29,9 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_tc.h"
-#include "intel_tc_phy_regs.h"
 
 /**
  * DOC: Display PLLs
diff --git a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
similarity index 99%
rename from drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
rename to drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
index 5a545086f9599..07978f8d5fb74 100644
--- a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
@@ -3,8 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#ifndef __INTEL_TC_PHY_REGS__
-#define __INTEL_TC_PHY_REGS__
+#ifndef __INTEL_MG_PHY_REGS__
+#define __INTEL_MG_PHY_REGS__
 
 #include "i915_reg_defs.h"
 
@@ -277,4 +277,4 @@
 						   _MG_PLL_TDC_COLDST_BIAS_PORT1, \
 						   _MG_PLL_TDC_COLDST_BIAS_PORT2)
 
-#endif /* __INTEL_TC_PHY_REGS__ */
+#endif /* __INTEL_MG_PHY_REGS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 8cecd41ed0033..351709725cd04 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -9,8 +9,8 @@
 #include "intel_display_power_map.h"
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
+#include "intel_mg_phy_regs.h"
 #include "intel_tc.h"
-#include "intel_tc_phy_regs.h"
 
 static const char *tc_port_mode_name(enum tc_port_mode mode)
 {
-- 
2.37.1

