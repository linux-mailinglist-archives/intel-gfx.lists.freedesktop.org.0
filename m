Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3145832763
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 11:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0765810E9DA;
	Fri, 19 Jan 2024 10:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5C510E9AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jan 2024 10:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705659060; x=1737195060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cApGBe3wySnKHSkpmSvTkn88IXQcHWyP9TsBp1IvkfE=;
 b=TpbISbZAfombhAdTfP+QPeIenpCjr7ZjvXZIxSK3NToU0t5toXBgye0o
 o5WMT48ZM/3uKfAJk0whpB3F1MW34ZH46QTUgNEGfnPNoZq9um0FB43tp
 dWLpyLTmgJeinv6S43OMVG11TIWI8aNQ5LNkkQLbxm9UcAra2rAearGvx
 XK999fF4WL8fEyr3u7bSncqUv6TPClDlo9K9X1FMag1oTTJ/TSk/ShGwG
 E8ieTmTEqWVJZmN4WRx1XdDLItqJX/9p7y4P5kH4wqGOdMKdy/vaKOwvD
 JjmPL8/QX2JVFG8dxjg/c52vc/cpi4GNW6xN72zPX9X9LAXa/U+CyodUk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="14070743"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208,223";a="14070743"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:11:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208,223";a="563222"
Received: from randiapp-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.39.12])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 02:10:59 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 07/21] drm/i915/psr: Do not write registers/bits not
 applicable for panel replay
Date: Fri, 19 Jan 2024 12:10:10 +0200
Message-Id: <20240119101024.1060812-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

From bspec:

Additional programming considerations (repurposed eDP registers)

mask register: Only PSR_MASK[Mask FBC modify] and PSR_MASK[Mask Hotplug]
are used in panel replay mode.

Status register: Only SRD_STATUS[SRD state] field is used in panel replay
mode.

Due to this stop writing and reading registers and bits not used by panel
replay if panel replay is used.

Bspec: 53370

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6d7ef74201d2..2d5d1c2ce246 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -346,6 +346,9 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
+	if (intel_dp->psr.panel_replay_enabled)
+		return;
+
 	mask = psr_irq_psr_error_bit_get(intel_dp);
 	if (intel_dp->psr.debug & I915_PSR_DEBUG_IRQ)
 		mask |= psr_irq_post_exit_bit_get(intel_dp) |
@@ -1559,13 +1562,19 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * mask LPSP to avoid dependency on other drivers that might block
 	 * runtime_pm besides preventing  other hw tracking issues now we
 	 * can rely on frontbuffer tracking.
+	 *
+	 * From bspec: Only PSR_MASK[Mask FBC modify] and PSR_MASK[Mask Hotplug]
+	 * are used in panel replay mode.
 	 */
-	mask = EDP_PSR_DEBUG_MASK_MEMUP |
-	       EDP_PSR_DEBUG_MASK_HPD |
-	       EDP_PSR_DEBUG_MASK_LPSP;
+	mask = EDP_PSR_DEBUG_MASK_HPD;
 
-	if (DISPLAY_VER(dev_priv) < 20)
-		mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+	if (!intel_dp->psr.panel_replay_enabled) {
+		mask |= EDP_PSR_DEBUG_MASK_MEMUP |
+			EDP_PSR_DEBUG_MASK_LPSP;
+
+		if (DISPLAY_VER(dev_priv) < 20)
+			mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+	}
 
 	/*
 	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
@@ -1634,6 +1643,9 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
+	if (intel_dp->psr.panel_replay_enabled)
+		goto no_err;
+
 	/*
 	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
 	 * will still keep the error set even after the reset done in the
@@ -1651,6 +1663,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 		return false;
 	}
 
+no_err:
 	return true;
 }
 
-- 
2.34.1

