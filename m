Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C363F7B693D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 14:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 498E110E0E3;
	Tue,  3 Oct 2023 12:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99ADA10E0E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 12:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696336952; x=1727872952;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1IGom2Z2rAeP4TZyLCSc2vEmaZYXvyIXXmMg/1W9CZs=;
 b=BzHJJMSjgA8OrEs18G6cTK8omRJD+FchtTMUtnkeH7ewJ0VOclWNp7X1
 v6yYfbfTLthov5aLeApwKazSTJXJ71hTFrS6yMP03+C3SN0nWwttNqBNm
 YYrLa3gDHbJiiWDTb+eXvPE74Ab9kdGxUjWF0ism1G8WQZhqzzmYNjzlK
 94J9lE34wgUUfRQAPVQsBmCXWyY1z3TLtz2MSX/w+ndw4cLgfwvsNf2jU
 V+QDrkyjA3JnVqfc9BLEUdBwbT39n81HxIXcYk4joTnNgAB4HQ7G3hGV9
 Pmj0WPtZLfLMoWqIkvzeEQCEJtHfNtYvOKDH865aiAb098h/7LA3EaWYE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="447020634"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="447020634"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="727601604"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="727601604"
Received: from akorotox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.199])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 05:42:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 15:42:10 +0300
Message-Id: <1035800e623e13d5e7baf1215b07e7cdad5eb764.1696336887.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
References: <cover.1696336887.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: separate subplatform init and
 runtime feature init
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adjusting ->port_mask does not belong in
intel_device_info_subplatform_init(), but rather
intel_display_device_info_runtime_init().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 drivers/gpu/drm/i915/intel_device_info.c            | 5 -----
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 11f4a6c54cc7..9f0266318a41 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -948,6 +948,13 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
 
+	/* This covers both ULT and ULX */
+	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
+		display_runtime->port_mask &= ~BIT(PORT_D);
+
+	if (IS_ICL_WITH_PORT_F(i915))
+		display_runtime->port_mask |= BIT(PORT_F);
+
 	/* Wa_14011765242: adl-s A0,A1 */
 	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
 		for_each_pipe(i915, pipe)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index db3997cec6ff..59bea1398c91 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -27,7 +27,6 @@
 #include <drm/drm_print.h>
 #include <drm/i915_pciids.h>
 
-#include "display/intel_display_device.h"
 #include "gt/intel_gt_regs.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -232,19 +231,15 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	if (find_devid(devid, subplatform_ult_ids,
 		       ARRAY_SIZE(subplatform_ult_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULT);
-		if (IS_HASWELL(i915) || IS_BROADWELL(i915))
-			DISPLAY_RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 	} else if (find_devid(devid, subplatform_ulx_ids,
 			      ARRAY_SIZE(subplatform_ulx_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ULX);
 		if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
 			/* ULX machines are also considered ULT. */
 			mask |= BIT(INTEL_SUBPLATFORM_ULT);
-			DISPLAY_RUNTIME_INFO(i915)->port_mask &= ~BIT(PORT_D);
 		}
 	} else if (find_devid(devid, subplatform_portf_ids,
 			      ARRAY_SIZE(subplatform_portf_ids))) {
-		DISPLAY_RUNTIME_INFO(i915)->port_mask |= BIT(PORT_F);
 		mask = BIT(INTEL_SUBPLATFORM_PORTF);
 	} else if (find_devid(devid, subplatform_uy_ids,
 			   ARRAY_SIZE(subplatform_uy_ids))) {
-- 
2.39.2

