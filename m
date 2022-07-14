Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E66A157516F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 17:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2308011339B;
	Thu, 14 Jul 2022 15:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A7811339B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 15:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657811337; x=1689347337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nxtcU7j0em4Zw+jLb9H0syJum4zOm0oHn+c/erJR5Jg=;
 b=ECu4Qe/El27jqQSdB29BZSBBjj2R3xZqAF1buqoDUNxZZNWGHsT6pE/V
 EQklLeIsX//A7ajnz3RRbH66dTMX4UxovwE76DkkhNJ+PZQol9O23bOGo
 u2GUrELBuEybwUcqu94Te/ccVN7IRlBEwJrDDgy7j3WdW3E1qcWN7naqS
 0pq4PEXcYbSsWDHIkzY2FK49m1di6kq5P6xW0BaKgrHLLA1UHfmBGjVok
 kLMqXh8v4S7/xOlLEyV0MGYF7l6riNs1iVOXWZ7xW+iUNkbjS51yUWpbD
 b88WKmsdLrtBBkv8FB2pyJ8q/UTjtGbCeXUyIHDhs1GdHqPiGi1aya7AF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="371850898"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="371850898"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 08:08:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="623450394"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 08:08:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jul 2022 08:07:54 -0700
Message-Id: <20220714150755.154985-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state"
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

This patches fixes a issue but not in the right way as
for_each_oldnew_intel_crtc_in_state() will interate over all CRTCs
not only the crtc passed as parameter, also this two for_each loops
are not necessary and only make code harder to understand.

Proper fix will be discussed in the next patch.

This reverts commit 75f664903d8672897333b86bb450335ec6486ad5.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 53 ++++++++++--------------
 1 file changed, 22 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 90599dd1cb1b5..e6a870641cd25 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1863,45 +1863,36 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	int i;
+	const struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_encoder *encoder;
 
 	if (!HAS_PSR(i915))
 		return;
 
-	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-					    new_crtc_state, i) {
-		struct intel_encoder *encoder;
-		u32 old_new_encoder_mask = old_crtc_state->uapi.encoder_mask |
-			new_crtc_state->uapi.encoder_mask;
-
-		for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-						     old_new_encoder_mask) {
-			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-			struct intel_psr *psr = &intel_dp->psr;
-			bool needs_to_disable = false;
+	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+		struct intel_psr *psr = &intel_dp->psr;
+		bool needs_to_disable = false;
 
-			mutex_lock(&psr->lock);
+		mutex_lock(&psr->lock);
 
-			/*
-			 * Reasons to disable:
-			 * - PSR disabled in new state
-			 * - All planes will go inactive
-			 * - Changing between PSR versions
-			 * - Encoder isn't present in new mask
-			 */
-			needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
-			needs_to_disable |= !new_crtc_state->has_psr;
-			needs_to_disable |= !new_crtc_state->active_planes;
-			needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
-			needs_to_disable |= !(new_crtc_state->uapi.encoder_mask &
-					      drm_encoder_mask(&(encoder)->base));
+		/*
+		 * Reasons to disable:
+		 * - PSR disabled in new state
+		 * - All planes will go inactive
+		 * - Changing between PSR versions
+		 */
+		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
+		needs_to_disable |= !crtc_state->has_psr;
+		needs_to_disable |= !crtc_state->active_planes;
+		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
 
-			if (psr->enabled && needs_to_disable)
-				intel_psr_disable_locked(intel_dp);
+		if (psr->enabled && needs_to_disable)
+			intel_psr_disable_locked(intel_dp);
 
-			mutex_unlock(&psr->lock);
-		}
+		mutex_unlock(&psr->lock);
 	}
 }
 
-- 
2.37.1

