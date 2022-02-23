Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 822CF4C11D3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 12:48:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F6710EBA0;
	Wed, 23 Feb 2022 11:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9284B10EBA0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645616885; x=1677152885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U2m58QhCrXo/UBLioJleUhdz/3UxNpGVJZT4XhSK9Ys=;
 b=EGy+MqQ8bibXz+UpXveIn9BmASxleCiK5EZ3uprXno7BaieJGEBEoLBd
 o/hCYkqKs/PCmj7XmnkXNboeY3PKip+LLxzKom6XzG++20Qrq5TPCQl59
 o5UVWVNVvZS3BoiqAAF07BvKSU5av/Qmv34J3mo00BVeIAvLKU5JdusaH
 g28FokCrDg7N3A84vSa6hv3GM2YkSLLXanyWYa+s+I/4pvd/S2LTwqWMG
 7XMexdsF1sBkzkRRbRwnRRnf5+bTX6+r4uSzLeeJHkrFfKGGkifAxmym1
 lAz/LUlRLMkkFks4Xfwx1LprVph7wLl17AucRyWCusxdGShTjRSx46hbX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="252137800"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="252137800"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 03:48:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548207693"
Received: from sgadve-mobl3.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.34.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 03:48:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 13:47:12 +0200
Message-Id: <20220223114712.3238932-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Set "SF Partial Frame Enable"
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
Cc: Mihai Harpau <mishu@piatafinanciara.ro>
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

Reported-by: Lyude Paul <lyude@redhat.com>
Cc: Mihai Harpau <mishu@piatafinanciara.ro>
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

