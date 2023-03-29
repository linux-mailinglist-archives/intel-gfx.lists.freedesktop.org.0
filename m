Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 912566CEC6E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A886C10E19A;
	Wed, 29 Mar 2023 15:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7963A10E19A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102667; x=1711638667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ODnrb9aU8GH/krua95OW8dr4qt/Nrld+/n5Oo+46GBg=;
 b=DJltvfihJyJ7/GUkh1NNYA37FcqdpxxDEpaVpjkFtXAIrf+Uqyh9L+Z1
 aMPucWCauw+YCq3hyurQuS7le3t7lKkTyhsAIMljvBuZnZ3zepoyrlGFW
 KSIEDs7FL22ejoaVcrChQAvoMDYQluKynSQQYCvfVnq7vmqd6JplK2jAq
 X4XKgakDO+XzZ+YE4GdppU0OrQzTzv16A2+5ikOgVaunX+Uociu/gQ740
 QFlNrMHJGz6fiVhcgbYKffLYDtpHknC7Z/psjtZg9BqDwJpEUzBiag1X2
 vFuL0gIZ1C1z4Vpmby0j1z3Mp7LRIIQp6lSpTbIoBbUR1j5AUY0GerzJz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672877"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672877"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753626002"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753626002"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:42 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:06:59 +0300
Message-Id: <20230329150703.432072-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/6] drm/i915/psr: Modify/Fix Wa_16013835468
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
applied for display version 12. Fix this by removing all the
references to Wa_14015648006 and apply Wa_16013835468 according to
Bspec.

Also move workaround into separate function as a preparation for
Wa_14015648006 implementation.

Bspec: 55378

v3:
 - apply for display version 12 only
v2:
 - keep applying the wa in intel_psr_enable_source

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 35 ++++++++++++++++--------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8dbf452d63c2..770f6fea5499 100644
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
+	if (DISPLAY_VER(dev_priv) == 12)
+		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+			crtc_state->hw.adjusted_mode.crtc_vdisplay;
+
+	if (set_wa_bit)
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     0, wa_16013835468_bit_get(intel_dp));
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
+	if (DISPLAY_VER(dev_priv) == 12)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
-- 
2.34.1

