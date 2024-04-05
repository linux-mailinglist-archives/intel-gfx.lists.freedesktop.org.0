Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E172899BF8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBAD113B4A;
	Fri,  5 Apr 2024 11:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mdu168SG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEE8113B49
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712317009; x=1743853009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zg38i+U9ygVhmB8EJZ1JYjXZ4Imsq0mcu02pGLZ13Z0=;
 b=Mdu168SGAKpG2wzkrfF5lw1jbKNp7MA7Id0uTDSjrl+iawckcEohvmx/
 Od6YpZtDAU5E1+TM5DHhDbuiV9ReckhTR1KNAEx0l8zOLf7iZNga5P94T
 SfjwTtnAzB2/NAl6ENk5/Q2JnGJzkmNzQ4BFq0abh311mdmayeRVSrWZn
 OKfW/0ukAJyAERfg+kZFKnnWmJ0DEVujxC+KyzrQJaHjIrNQSmQ3j/Anu
 r728pRqUDL0XWnPsvc93+CSsBPrKoNc/wPwwHOaUnJsdQvxF31E+03AQ+
 b8ISAeDX97/vXxBtXz/tphT+2zY9uZFbp8ZRSDsYGxiQhhlgEj4EL0msB w==;
X-CSE-ConnectionGUID: YZEwFaCoRgOzXLNNLAwafA==
X-CSE-MsgGUID: 1hxhejuMTwWzuL104f16HA==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="30116559"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="30116559"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:49 -0700
X-CSE-ConnectionGUID: RfXuBDbORfW+k7zjwZADBw==
X-CSE-MsgGUID: 0P/xtmq6SgixbCDIFJYi+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23858774"
Received: from ctiouajx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.82])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:36:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 6/8] drm/i915/psr: Do not write registers/bits not applicable
 for panel replay
Date: Fri,  5 Apr 2024 14:36:00 +0300
Message-Id: <20240405113602.992714-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240405113602.992714-1-jouni.hogander@intel.com>
References: <20240405113602.992714-1-jouni.hogander@intel.com>
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

Bspec is saying this
mask register: Only PSR_MASK[Mask FBC modify] and PSR_MASK[Mask Hotplug]
are used in panel replay mode.

Status register: Only SRD_STATUS[SRD state] field is used in panel replay
mode.

Due to this stop writing and reading registers and bits not used by panel
replay if panel replay is used.

Bspec: 53370, 68920

v2:
  - use intel_dp_is_edp with PSR_MASK register
  - handle LunarLake as well
  - hanle ALPM configuration as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 70 +++++++++++++++---------
 1 file changed, 45 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d7547eefc2fa..b7538a4405b8 100644
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
@@ -1783,7 +1786,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
-	u32 mask;
+	u32 mask = 0;
 
 	/*
 	 * Only HSW and BDW have PSR AUX registers that need to be setup.
@@ -1797,34 +1800,46 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * mask LPSP to avoid dependency on other drivers that might block
 	 * runtime_pm besides preventing  other hw tracking issues now we
 	 * can rely on frontbuffer tracking.
+	 *
+	 * From bspec prior LunarLake:
+	 * Only PSR_MASK[Mask FBC modify] and PSR_MASK[Mask Hotplug] are used in
+	 * panel replay mode.
+	 *
+	 * From bspec beyod LunarLake:
+	 * Panel Replay on DP: No bits are applicable
+	 * Panel Replay on eDP: All bits are applicable
 	 */
-	mask = EDP_PSR_DEBUG_MASK_MEMUP |
-	       EDP_PSR_DEBUG_MASK_HPD;
+	if (DISPLAY_VER(dev_priv) < 20 || intel_dp_is_edp(intel_dp))
+		mask = EDP_PSR_DEBUG_MASK_HPD;
 
-	/*
-	 * For some unknown reason on HSW non-ULT (or at least on
-	 * Dell Latitude E6540) external displays start to flicker
-	 * when PSR is enabled on the eDP. SR/PC6 residency is much
-	 * higher than should be possible with an external display.
-	 * As a workaround leave LPSP unmasked to prevent PSR entry
-	 * when external displays are active.
-	 */
-	if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL_ULT(dev_priv))
-		mask |= EDP_PSR_DEBUG_MASK_LPSP;
+	if (intel_dp_is_edp(intel_dp)) {
+		mask |= EDP_PSR_DEBUG_MASK_MEMUP;
 
-	if (DISPLAY_VER(dev_priv) < 20)
-		mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+		/*
+		 * For some unknown reason on HSW non-ULT (or at least on
+		 * Dell Latitude E6540) external displays start to flicker
+		 * when PSR is enabled on the eDP. SR/PC6 residency is much
+		 * higher than should be possible with an external display.
+		 * As a workaround leave LPSP unmasked to prevent PSR entry
+		 * when external displays are active.
+		 */
+		if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL_ULT(dev_priv))
+			mask |= EDP_PSR_DEBUG_MASK_LPSP;
 
-	/*
-	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
-	 * registers in order to keep the CURSURFLIVE tricks working :(
-	 */
-	if (IS_DISPLAY_VER(dev_priv, 9, 10))
-		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
+		if (DISPLAY_VER(dev_priv) < 20)
+			mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
-	/* allow PSR with sprite enabled */
-	if (IS_HASWELL(dev_priv))
-		mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
+		/*
+		 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
+		 * registers in order to keep the CURSURFLIVE tricks working :(
+		 */
+		if (IS_DISPLAY_VER(dev_priv, 9, 10))
+			mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
+
+		/* allow PSR with sprite enabled */
+		if (IS_HASWELL(dev_priv))
+			mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
+	}
 
 	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
 
@@ -1843,7 +1858,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
-	lnl_alpm_configure(intel_dp);
+	if (intel_dp_is_edp(intel_dp))
+		lnl_alpm_configure(intel_dp);
 
 	/*
 	 * Wa_16013835468
@@ -1884,6 +1900,9 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
+	if (intel_dp->psr.panel_replay_enabled)
+		goto no_err;
+
 	/*
 	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
 	 * will still keep the error set even after the reset done in the
@@ -1901,6 +1920,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 		return false;
 	}
 
+no_err:
 	return true;
 }
 
-- 
2.34.1

