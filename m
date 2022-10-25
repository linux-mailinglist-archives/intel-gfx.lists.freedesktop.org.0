Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A1D60CA03
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 12:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE9010E33C;
	Tue, 25 Oct 2022 10:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F59F10E33C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666693612; x=1698229612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kaUGWP9Ft/BEhpEYM6wba8Id8CuY66h1+Oi+efRC1Tk=;
 b=lfQHaHCM1lPcozjpU3vTsJMDFDNxJLv2Se7pUirVRySmB5cjEpdZkbrT
 eKFsoQHCFmxHlsLeNDw65eBllYMdCAFkW0WCsbCnXjqKgGltOx0jgNbDL
 Kr7xURrEGlsPFn9vvPOE5Vb9zY67vVGmw7wUfw9cG/y4n+qTz8FHYXOPj
 WOfp+qqbBI+yf8FcGcbLvgtxyJc/EYLPJOlp9oJPe/t5syR+X6myUMScK
 1KkKcnkugVCatrDUq9DRkHGQWbXNs+jQpODxEC6Y6FbFvb7U+wABJNQG3
 csZx0YknilokDbW/SYQZI2Eo8TCF1is/Dnuvem2piAe8BWgE1D/ez0w75 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305253713"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="305253713"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 03:26:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="720806788"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="720806788"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 03:26:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 13:26:42 +0300
Message-Id: <20221025102644.2123988-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221025102644.2123988-1-imre.deak@intel.com>
References: <20221025102644.2123988-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915: Rename intel_tc_phy_regs.h to
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
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
index 8bbc2b5e50ed9..eb4decd8c68bf 100644
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

