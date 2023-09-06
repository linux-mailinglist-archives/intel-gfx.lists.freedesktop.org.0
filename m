Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D4B796DB1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 01:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3F610E73C;
	Wed,  6 Sep 2023 23:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B1A10E738
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 23:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694044063; x=1725580063;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NpqesWgq2H0hEB/owQXGBQyslad3/lqcNtxNsBiNV7o=;
 b=OlasvCfBheXy8YQkkdzx84/SyZN+nFy9nX8uKKoUKDIfan/thkRP2J2Q
 CoFRSs11MWJ7eOHeVJrxZ9iYtCuCagWGEvuj4ejTbzTk7KBCfR7lWpI3D
 nPbeqt8U3HDJR1FcL5uJhiEEvZHK8jzhFukJoYN0KDs0VcXbTpRKJ2jk6
 tTzGnv4VJYr+Zg1dlkaIUl+Ol52fit/XOC3X8FdTUAc/pH27oysBiCkLp
 /c/wvFeVzwnncqmd+s2OTNG/616I1/FYWU9ECho8Sr8cphKMMZzeWISQD
 OJD/Q5h4WWT5QB98RbSTBFfOosdP7A3KtukDqzXPvUCaKXggrSwwxb6Lk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="357526298"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="357526298"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="865363210"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="865363210"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 16:47:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 16:47:37 -0700
Message-ID: <20230906234732.3728630-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230906234732.3728630-6-matthew.d.roper@intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Apply workarounds during
 display init
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rather than applying display workarounds as part of
intel_clock_gating_init() (which in turn is confusingly called from
i915_gem_init during device probe), handle them at the point we're
actually initializing the display hardware.  This will also ensure that
these workarounds are properly applied during display initialization on
the Xe driver, which re-uses i915's display code, but does not call
i915's gem init.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 3 +++
 drivers/gpu/drm/i915/intel_clock_gating.c           | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 8f144d4d3c39..9d9b034b9bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -31,6 +31,7 @@
 #include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_dkl_phy.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
@@ -88,6 +89,8 @@ void intel_display_driver_init_hw(struct drm_i915_private *i915)
 	intel_update_cdclk(i915);
 	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
 	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
+
+	intel_display_wa_apply(i915);
 }
 
 static const struct drm_mode_config_funcs intel_mode_funcs = {
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index abfb6bdbd367..9c21ce69bd98 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -28,7 +28,6 @@
 #include "display/intel_de.h"
 #include "display/intel_display.h"
 #include "display/intel_display_trace.h"
-#include "display/intel_display_wa.h"
 #include "display/skl_watermark.h"
 
 #include "gt/intel_engine_regs.h"
@@ -750,8 +749,6 @@ static void i830_init_clock_gating(struct drm_i915_private *i915)
 void intel_clock_gating_init(struct drm_i915_private *i915)
 {
 	i915->clock_gating_funcs->init_clock_gating(i915);
-
-	intel_display_wa_apply(i915);
 }
 
 static void nop_init_clock_gating(struct drm_i915_private *i915)
-- 
2.41.0

