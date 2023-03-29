Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361366CD6BF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 11:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64EBF10EA60;
	Wed, 29 Mar 2023 09:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07D0B10EA50
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 09:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680083178; x=1711619178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8lT39a3o3pRDQ+KnDlUx78mg5wroB8V2jICafu4roxU=;
 b=FVJqvOXUxIyPZ8EgfbvM/9ZtcgCcnukdQ3SN+JGZGsDyJ4zSsf5kkShv
 7qP0bPWq63pN4EsRxjOQYdYhR5uPIiVaxod731Yyg997kYbtiT2cxEFL+
 70XtK3/w7dJwoiGjF0Z6j1RPYy679nomoTe8IAOskKup04LYPK2iTSXLz
 s3r2ZQO6KTAW1E+RM61mU7CaQUSrIX6iNKnXCY+oSGXhKcPubTSEiioIL
 UwieiKaKrkuhz9sEshWWTMFKvE/QWjmhnCARFGVNgrWaB7YM6Rfo8FT+N
 w7sJOdwA4VZvZpAW/GWoI1kBAgINVdeyTLdrCDbCcr4Nf9RBhksj5wHrY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="342424863"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="342424863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="677724758"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="677724758"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:46:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 12:45:28 +0300
Message-Id: <20230329094532.221450-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329094532.221450-1-jouni.hogander@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/6] drm/i915/psr: Modify/Fix Wa_16013835468
 and prepare for Wa_14015648006
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

Wa_16013835468 is a separate from Wa_14015648006 and needs to be
applied for TGL onwards. Fix this by removing all the references to
Wa_14015648006 and apply Wa_16013835468 according to Bspec.

Also move workaround into separate function as a preparation for
Wa_14015648006 implementation.

Bspec: 55378

v2:
 - keep applying the wa in intel_psr_enable_source

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 35 ++++++++++++++++--------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8dbf452d63c2..26ad4365960f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1134,6 +1134,28 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 	}
 }
 
+/*
+ * Wa_16013835468
+ */
+static void wm_optimization_wa(struct intel_dp *intel_dp,
+			       const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	bool set_wa_bit = false;
+
+	/* Wa_16013835468 */
+	if (DISPLAY_VER(dev_priv) >= 12)
+		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+			crtc_state->hw.adjusted_mode.crtc_vdisplay;
+
+	if (set_wa_bit)
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+			     wa_16013835468_bit_get(intel_dp));
+	else
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     wa_16013835468_bit_get(intel_dp), 0);
+}
+
 static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				    const struct intel_crtc_state *crtc_state)
 {
@@ -1175,15 +1197,8 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	/*
 	 * Wa_16013835468
-	 * Wa_14015648006
 	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
-		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
-		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
-				     wa_16013835468_bit_get(intel_dp));
-	}
+	wm_optimization_wa(intel_dp, crtc_state);
 
 	if (intel_dp->psr.psr2_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
@@ -1359,10 +1374,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/*
 	 * Wa_16013835468
-	 * Wa_14015648006
 	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13))
+	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
-- 
2.34.1

