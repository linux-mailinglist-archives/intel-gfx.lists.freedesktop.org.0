Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2964D4C1326
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 13:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9636A10F211;
	Wed, 23 Feb 2022 12:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C925110F20E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 12:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645620534; x=1677156534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nlUcmFUc7freBg3H3j5F7qGwaoO7ljZ7SrqCOZ4s2W4=;
 b=jROxYbkw1XXU/NQjF+H9wD/3cKT5nN6RJGMshq0XRvY4T/aFkfCKmn5e
 VjzBpPQ2D8I1Yz0Vagv2aZ+kSKxfx0ld0wy3VDRhHb1u+hVAuP0xAb6QJ
 IDWY0qsndDvh7xmHe0MQp4td6uAcoeKJKBLxNjNJ3qprIcdtx3HptENDu
 fRuGjkqOPtl6d5hVAiP61CFnfhFgbugW5qXOaolsX+CjxIg/YGlTMMhMg
 XjeKazas7MVLRwtsXw0uwxAvwAe4eNpEu9KaH94KyHBb8NQuZCT6H56qj
 MezUvItQM+/yUl/WCqtqFzTYJtMtQp2UfRjQt5vK1Rr1b4iBktG/JRR4U Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251873063"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="251873063"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 04:48:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548230964"
Received: from sgadve-mobl3.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.34.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 04:48:51 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 14:48:07 +0200
Message-Id: <20220223124807.3284451-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/psr: Set "SF Partial Frame Enable"
 also on full update
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
Cc: Mihai Harpau <mharpau@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we are observing occasional screen flickering when
PSR2 selective fetch is enabled. More specifically glitch seems
to happen on full frame update when cursor moves to coords
x = -1 or y = -1.

According to Bspec SF Single full frame should not be set if
SF Partial Frame Enable is not set. This happened to be true for
ADLP as PSR2_MAN_TRK_CTL_ENABLE is always set and for ADLP it's
actually "SF Partial Frame Enable" (Bit 31).

Setting "SF Partial Frame Enable" bit also on full update seems to
fix screen flickering.

Also make code more clear by setting PSR2_MAN_TRK_CTL_ENABLE
only if not on ADLP as this bit doesn't exist in ADLP.

Bspec: 49274

v2: Fix Mihai Harpau email address

Reported-by: Lyude Paul <lyude@redhat.com>
Cc: Mihai Harpau <mharpau@gmail.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/5077
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2e0b092f4b6b..90aca75e05e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1439,6 +1439,13 @@ static inline u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private
 	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
 }
 
+static inline u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
+{
+	return IS_ALDERLAKE_P(dev_priv) ?
+	       ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE :
+	       PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
+}
+
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1543,7 +1550,17 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 val = PSR2_MAN_TRK_CTL_ENABLE;
+	u32 val = 0;
+
+	/*
+	 * ADL_P doesn't have HW tracking nor manual tracking enable
+	 * bit
+	 */
+	if (!IS_ALDERLAKE_P(dev_priv))
+		val = PSR2_MAN_TRK_CTL_ENABLE;
+
+	/* SF partial frame enable has to be set even on full update */
+	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
 
 	if (full_update) {
 		/*
@@ -1563,7 +1580,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	} else {
 		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
 
-		val |= PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE;
 		val |= PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1 / 4 + 1);
 		val |= PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 / 4 + 1);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2b8a3086ed35..89bbb64e520d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2316,6 +2316,7 @@
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)	REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK		REG_GENMASK(12, 0)
 #define  ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(val)		REG_FIELD_PREP(ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR_MASK, val)
+#define  ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE		REG_BIT(31)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME		REG_BIT(14)
 #define  ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME		REG_BIT(13)
 
-- 
2.25.1

