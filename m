Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F08CB39D0A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D080010E99A;
	Thu, 28 Aug 2025 12:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XXR3/b2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D3010E99A;
 Thu, 28 Aug 2025 12:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383720; x=1787919720;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=udFCbtq+QcPTTGV+njeP2lInN+kQe5NTi/jbxfyxg8Q=;
 b=XXR3/b2lCR+G8gWYxpZuWW4a4+/5grajWC2UBnnZQ1aS+725nn1Kl1H1
 AF7CqDmGRzP7ozmBMV0AABeTqLKy5VWya6FOPzbtY6w5SIT77fe/Gw2gV
 hcvJGMsfx545d0sAHJQPfCHb9Lxu/BnHroQkpNvcD69VEDUFVLPzvKiLa
 LmB/j0JX0dcwSdjliK7EBiFLE9UkOfEexl5ITCIuTUsvkN1pYvCqQSAwE
 /t+pgQCkFihzOM69NwPzXqVc2oNwbWF2iMz2kQt4+6xBbIz0H/5KW+aT7
 dfbIPdAf8sVOb0G17rN+vBvRo8HPCld4oBeLcqzOGM2PVf81xt1q37V9m g==;
X-CSE-ConnectionGUID: nBXTo0L2TRe6jtbfqg5w+w==
X-CSE-MsgGUID: CN+46OjnS9S4LWjdpLRYZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053241"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053241"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:00 -0700
X-CSE-ConnectionGUID: Kmg3JynHQECq6a9564C7rg==
X-CSE-MsgGUID: EMkj3bQfR4aWKM31I1qkjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271207"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:21:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 11/20] drm/i915/power-well: use generic poll_timeout_us()
 instead of wait_for() for VLV/CHV
Date: Thu, 28 Aug 2025 15:20:53 +0300
Message-ID: <c644b7b5611a3c047ea5d3d52acd91830b2fa6b4.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
100 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 29 ++++++++++---------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 275bc2708a0e..dc1a8c297d16 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -8,7 +8,6 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
@@ -1128,6 +1127,8 @@ static void vlv_set_power_well(struct intel_display *display,
 	u32 mask;
 	u32 state;
 	u32 ctrl;
+	u32 val;
+	int ret;
 
 	mask = PUNIT_PWRGT_MASK(pw_idx);
 	state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
@@ -1135,10 +1136,8 @@ static void vlv_set_power_well(struct intel_display *display,
 
 	vlv_punit_get(display->drm);
 
-#define COND \
-	((vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS) & mask) == state)
-
-	if (COND)
+	val = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS);
+	if ((val & mask) == state)
 		goto out;
 
 	ctrl = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL);
@@ -1146,14 +1145,15 @@ static void vlv_set_power_well(struct intel_display *display,
 	ctrl |= state;
 	vlv_punit_write(display->drm, PUNIT_REG_PWRGT_CTRL, ctrl);
 
-	if (wait_for(COND, 100))
+	ret = poll_timeout_us(val = vlv_punit_read(display->drm, PUNIT_REG_PWRGT_STATUS),
+			      (val & mask) == state,
+			      500, 100 * 1000, false);
+	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
 			vlv_punit_read(display->drm, PUNIT_REG_PWRGT_CTRL));
 
-#undef COND
-
 out:
 	vlv_punit_put(display->drm);
 }
@@ -1717,23 +1717,24 @@ static void chv_set_pipe_power_well(struct intel_display *display,
 	enum pipe pipe = PIPE_A;
 	u32 state;
 	u32 ctrl;
+	int ret;
 
 	state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
 
 	vlv_punit_get(display->drm);
 
-#define COND \
-	((vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM) & DP_SSS_MASK(pipe)) == state)
-
-	if (COND)
+	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
+	if ((ctrl & DP_SSS_MASK(pipe)) == state)
 		goto out;
 
-	ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 	ctrl &= ~DP_SSC_MASK(pipe);
 	ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
 	vlv_punit_write(display->drm, PUNIT_REG_DSPSSPM, ctrl);
 
-	if (wait_for(COND, 100))
+	ret = poll_timeout_us(ctrl = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM),
+			      (ctrl & DP_SSS_MASK(pipe)) == state,
+			      500, 100 * 1000, false);
+	if (ret)
 		drm_err(display->drm,
 			"timeout setting power well state %08x (%08x)\n",
 			state,
-- 
2.47.2

