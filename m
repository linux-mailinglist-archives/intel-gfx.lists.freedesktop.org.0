Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E385A898636
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 13:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B665211B49E;
	Thu,  4 Apr 2024 11:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPfO8+Gj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACD011B499;
 Thu,  4 Apr 2024 11:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712230926; x=1743766926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mto8iMng7b75iTfFUPjPJ4Yjy1yqHNe4W+riUL47sEM=;
 b=FPfO8+Gjyt3d2J9TadngtqaoojW0QIci8E24i3uGUL/rJoLGWYyNiI9Z
 hyBsDNs0V9IaYSLXCPgCFy4BBBQJD5+Q3Lc0ifMgarBJcqTtQU2Buln8C
 MIUh7PBE8qGUjsm1wEx/Y17dUxLCzfL3xtVQvA8mipMzBUt18Ej67rwOF
 KZBs9Xj3u49NmGP8Gs4b+M+rPpX1GkuuXgXoJ1+KRA2jnMnQTjJv/YnsJ
 qU02yHqomzTMsAY58gDDx8UhxvRc7ZukXXGHDXLiuWQgjYQ3glHOG9kRD
 mv/MaW4Ddr9S+fIsMdsyFpDiTcggBlZtu5f87XsM4gJw5+UBB8jwbBjiB A==;
X-CSE-ConnectionGUID: uG4GsNvxSSmP07UHeT4kxQ==
X-CSE-MsgGUID: pHaeuQ1TSnm0fb6SKSz55g==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11279852"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11279852"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:06 -0700
X-CSE-ConnectionGUID: 8fa+cu46RdqKp3yI6RF9TQ==
X-CSE-MsgGUID: EAXwPPqfScO3sqZ8/kLorg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19199784"
Received: from tsonono-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.41.97])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 04:42:04 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v4 2/4] drm/i915/display: don't allow DMC wakelock on older
 hardware
Date: Thu,  4 Apr 2024 14:41:45 +0300
Message-Id: <20240404114147.236316-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404114147.236316-1-luciano.coelho@intel.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
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

Only allow running DMC wakelock code if the display version is 20 or
greater.  Also check if DMC is loaded before enabling.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 87dd07e0d138..e4015557af6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -198,6 +198,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
 	intel_fdi_init_hook(i915);
+	intel_dmc_wl_init(i915);
 }
 
 /* part #1: call before irq install */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 3d7cf47321c2..065652fc475c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -6,6 +6,7 @@
 #include <linux/kernel.h>
 
 #include "intel_de.h"
+#include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dmc_wl.h"
 
@@ -110,10 +111,23 @@ static bool intel_dmc_wl_check_range(u32 address)
 	return wl_needed;
 }
 
+static bool __intel_dmc_wl_supported(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) < 20 ||
+	    !intel_dmc_has_payload(i915))
+		return false;
+
+	return true;
+}
+
 void intel_dmc_wl_init(struct drm_i915_private *i915)
 {
 	struct intel_dmc_wl *wl = &i915->display.wl;
 
+	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
 	spin_lock_init(&wl->lock);
 	refcount_set(&wl->refcount, 0);
@@ -124,6 +138,9 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	spin_lock_irqsave(&wl->lock, flags);
 
 	if (wl->enabled)
@@ -148,6 +165,9 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	flush_delayed_work(&wl->work);
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -171,6 +191,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
@@ -215,6 +238,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
-- 
2.39.2

