Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B46FBA95C9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 15:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22DAB10E1BC;
	Mon, 29 Sep 2025 13:34:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9mPhXg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF6910E1BC
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Sep 2025 13:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759152865; x=1790688865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gvnB1epQIbVJs0N1/EWVAbpk86+kbeuJLn+LefS2IME=;
 b=P9mPhXg8R4cCla/ckbCrOtU36tVFvWPj7QDLV/w+rsUiZ42/Ys69FWrn
 sqP3g+FUh37P+/A7011neP2bGVHYKPhXBKkXfRp035+npHAeCTvlZqrH/
 9DZ9at2/7UxbbDxVL9qnFFlEUpsN6/wyauGPkecJwUaWTuEtu3Qr+e8Dn
 bwhoY54qpWmn+TM9OcxvTrsnaFxNeEF2tDdwetdcI966HMHY0pRmIHANC
 sQIqchAg0H0O+GU7CCOTHSVxPK3CN5/AOD+pIyglb8hDxGgwNxWPFyol1
 JNMx5gPcdLJmXBF5XoAOREZSZ4lWS566+A7MqsgLzBunvO5F17KY6Zlc8 w==;
X-CSE-ConnectionGUID: EnhFPDoGQJyKocq999LOMw==
X-CSE-MsgGUID: PMZUYbzIT/2bACBBMzgWQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="61558700"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61558700"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:34:24 -0700
X-CSE-ConnectionGUID: h/iaHsR+RPa4t1QWnT8CJQ==
X-CSE-MsgGUID: v5a4xDUfQ+e798nZsIOEOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="177357977"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 06:34:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/irq: duplicate HAS_FBC() for irq error mask usage
Date: Mon, 29 Sep 2025 16:34:18 +0300
Message-ID: <20250929133418.2033006-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The error irq handling needs to mask page table errors on gen 2/3 with
FBC. See commit e7e12f6ec8bf ("drm/i915: Mask page table errors on
gen2/3 with FBC") for details.

We want to avoid using display feature checks in i915 core code. Since
FBC can't be fused off on gen 2/3, just list the platforms that support
FBC. Add a macro purely for making the code self-documenting.

With this, we can drop the intel_display_core.h include, and make struct
intel_display opaque inside i915_irq.c.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 11a727b74849..e0a0bd687f1b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -33,7 +33,6 @@
 
 #include <drm/drm_drv.h>
 
-#include "display/intel_display_core.h"
 #include "display/intel_display_irq.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
@@ -794,9 +793,10 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 }
 
+#define I9XX_HAS_FBC(i915) (IS_I85X(i915) || IS_I865G(i915) || IS_I915GM(i915) || IS_I945GM(i915))
+
 static u32 i9xx_error_mask(struct drm_i915_private *i915)
 {
-	struct intel_display *display = i915->display;
 	/*
 	 * On gen2/3 FBC generates (seemingly spurious)
 	 * display INVALID_GTT/INVALID_GTT_PTE table errors.
@@ -809,7 +809,7 @@ static u32 i9xx_error_mask(struct drm_i915_private *i915)
 	 * Unfortunately we can't mask off individual PGTBL_ER bits,
 	 * so we just have to mask off all page table errors via EMR.
 	 */
-	if (HAS_FBC(display))
+	if (I9XX_HAS_FBC(i915))
 		return I915_ERROR_MEMORY_REFRESH;
 	else
 		return I915_ERROR_PAGE_TABLE |
-- 
2.47.3

