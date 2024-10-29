Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD659B485E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:33:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8953110E635;
	Tue, 29 Oct 2024 11:33:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4CwbTR/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D956410E634;
 Tue, 29 Oct 2024 11:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730201582; x=1761737582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=A5SAkPEjvKF/S8qSBd5k/MLODacL5P0pht3IqsMDUwE=;
 b=R4CwbTR/iJhWHZP5QChmAIn18YITd55fMe3lmJ4RN0fbiv0f7Eul2+Nv
 W/bhKyWqhnbGtxjaa9wVALh1hECy1gaYabiq2aMSysTYaUWAXLpnco+xq
 b1balHajEEZ506As65sTqXHqQ2Z7i+UOjEee+386RUwE0SlUu45xc1vsx
 y2pKjEwsT0k7D7wR96KbsoQIUpO6GDHLXRvz5chQQMUtbTBCE1v8sZKsc
 me25cOZQdk+nVv92owqadJHNtAFJ5FTn/vbWI7PPYz6NKIndk8mU+YOmJ
 B8V+a+BZ00Gf7aafmiO8y+CC23I/nJ+wcGygUaEMzb01nFSpZrJldczMu w==;
X-CSE-ConnectionGUID: czYo0Un+SXiGoCSli1wrCg==
X-CSE-MsgGUID: fiEsJqIUQ1CjV6WHj1mUbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33535753"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33535753"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:33:02 -0700
X-CSE-ConnectionGUID: Xl8vIX9aQomkDkMluVT5qQ==
X-CSE-MsgGUID: j/WmA+RpReGs6nCDsFhxng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86699639"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:32:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/3] drm/i915/psr: add LATENCY_REPORTING_REMOVED() register
 bit helper
Date: Tue, 29 Oct 2024 13:32:48 +0200
Message-Id: <22934fee1ea37c777c35e4b520d5f11b6cd953d0.1730201504.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730201504.git.jani.nikula@intel.com>
References: <cover.1730201504.git.jani.nikula@intel.com>
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

Drop the wa_16013835468_bit_get() function in favour of the register
macro. It doesn't have to be so complicated, and we don't have to use
the workaround name in everything that's related to it.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 24 ++++--------------------
 drivers/gpu/drm/i915/i915_reg.h          | 13 +++++++++----
 2 files changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 880ea845207f..e018a0868009 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1773,23 +1773,6 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	intel_dp->psr.active = true;
 }
 
-static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
-{
-	switch (intel_dp->psr.pipe) {
-	case PIPE_A:
-		return LATENCY_REPORTING_REMOVED_PIPE_A;
-	case PIPE_B:
-		return LATENCY_REPORTING_REMOVED_PIPE_B;
-	case PIPE_C:
-		return LATENCY_REPORTING_REMOVED_PIPE_C;
-	case PIPE_D:
-		return LATENCY_REPORTING_REMOVED_PIPE_D;
-	default:
-		MISSING_CASE(intel_dp->psr.pipe);
-		return 0;
-	}
-}
-
 /*
  * Wa_16013835468
  * Wa_14015648006
@@ -1798,6 +1781,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	enum pipe pipe = intel_dp->psr.pipe;
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
@@ -1811,10 +1795,10 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 
 	if (set_wa_bit)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
-			     0, wa_16013835468_bit_get(intel_dp));
+			     0, LATENCY_REPORTING_REMOVED(pipe));
 	else
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
-			     wa_16013835468_bit_get(intel_dp), 0);
+			     LATENCY_REPORTING_REMOVED(pipe), 0);
 }
 
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
@@ -2105,7 +2089,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	 */
 	if (DISPLAY_VER(display) >= 11)
 		intel_de_rmw(display, GEN8_CHICKEN_DCPR_1,
-			     wa_16013835468_bit_get(intel_dp), 0);
+			     LATENCY_REPORTING_REMOVED(intel_dp->psr.pipe), 0);
 
 	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 405f409e9761..a51dab9c4978 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2861,11 +2861,16 @@
 #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
-#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
-#define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
-#define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-#define   LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
+#define   _LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
+#define   LATENCY_REPORTING_REMOVED(pipe)	_PICK((pipe), \
+						      _LATENCY_REPORTING_REMOVED_PIPE_A, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_B, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_C, \
+						      _LATENCY_REPORTING_REMOVED_PIPE_D)
 #define   ICL_DELAY_PMRSP			REG_BIT(22)
 #define   DISABLE_FLR_SRC			REG_BIT(15)
 #define   MASK_WAKEMEM				REG_BIT(13)
-- 
2.39.5

