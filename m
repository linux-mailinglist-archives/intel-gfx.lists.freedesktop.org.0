Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E53B8A2B67
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 11:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBA410F55D;
	Fri, 12 Apr 2024 09:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lyLU6S3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D85D10F546;
 Fri, 12 Apr 2024 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712914926; x=1744450926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hk7WiF1YDR/BOcZJ1xWpYajWLeqUWDegml1Z5JxZpZ4=;
 b=lyLU6S3Pxyn/DyQz9F/wa5hwzoqs6+rHV5duOR+6Pa6+Nsap8SC/paJL
 X3F2wkc5q/pafU68X3wpQVCItPVdX/mzW0Pc5SqYfNKc8kpYk7gsTYq6X
 ulIdcLTMLPy3OgjzUNDjqpE31Pc4zm9ktx5CiCKPl9WgaIL9pOzoCzbe/
 vfDFk29bVxubhjUDIxTW3QMyvb/y7pbjCK5jaGjbCAKRiY4fx+5bPcZyc
 DhObcdYtqY5BxSNKNqeZsEfassr8vt/AO36k9C4By3hnYIMTMPKBts7mv
 j1SErTUQ2qfF8+chEioLPFxzVCDcz75aRcXPsqfxgtylJwowPWIZBiNeO g==;
X-CSE-ConnectionGUID: qCumNXuERSazd1ooU47ACA==
X-CSE-MsgGUID: 6raZS6p+T0KI/fCIB+RtOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12156399"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12156399"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:05 -0700
X-CSE-ConnectionGUID: TqaMMzKYR9eiX6e00xY4Rg==
X-CSE-MsgGUID: StT/MhvaRiONcyYn9M72qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="25841381"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.215.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 02:42:03 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v5 2/4] drm/i915/display: don't allow DMC wakelock on older
 hardware
Date: Fri, 12 Apr 2024 12:41:46 +0300
Message-Id: <20240412094148.808179-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240412094148.808179-1-luciano.coelho@intel.com>
References: <20240412094148.808179-1-luciano.coelho@intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
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
index abe875690e70..bc3f3d6dfe10 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -6,6 +6,7 @@
 #include <linux/kernel.h>
 
 #include "intel_de.h"
+#include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dmc_wl.h"
 
@@ -105,10 +106,23 @@ static bool intel_dmc_wl_check_range(u32 address)
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
@@ -119,6 +133,9 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	spin_lock_irqsave(&wl->lock, flags);
 
 	if (wl->enabled)
@@ -143,6 +160,9 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	flush_delayed_work(&wl->work);
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -166,6 +186,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
@@ -211,6 +234,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (!__intel_dmc_wl_supported(i915))
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
-- 
2.39.2

