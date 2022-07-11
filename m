Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC72A570003
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 13:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BBE112040;
	Mon, 11 Jul 2022 11:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA0E10FB54
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657538306; x=1689074306;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cg6g6GLveV6i9npwRkIpR80rdIxrGIVgQ7qcU1FuAUA=;
 b=QLgiPRKAH8OLT5sszAOiljvNoKZ46PT2oNJSbhtrBOVk5akikecxJJqd
 pbx+v/ENlACavJzCIBPXdQk+n2qK3KfzOIhgzyM9GX/xjsVIV1LgsXCkV
 16ivsOtl7W4ox8mvLUL+YZY49TXPj3kYQ293zVyhhSr0wv90mK89fDAhK
 m4ZmP7ev36hue2x2FLpxVSTY0vlfJpJ3LdHxK9GnIaOQUjAjZSTSpTLOm
 kwB+dfQHBT9B1SK1SQX42OIi7lDUYMhmbOiSsWrGOC0UN63xvRVqBFIvs
 wH1PjyRjF3dpLk1BKx45X0xS4plaRwSfP+VObWmKGHGJwybsQqw0B7TEA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="370944084"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="370944084"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 04:18:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="652415947"
Received: from weiglmat-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 04:18:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jul 2022 14:17:50 +0300
Message-Id: <20220711111750.881552-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets disabled
 if no encoders in new state
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

Currently PSR is left enabled when all planes are disabled if there
is no attached encoder in new state. This seems to be causing FIFO
underruns.

Fix this by checking if encoder exists in new crtc state and disable
PSR if it doesn't.

v2: Unify disable logic with existing

Cc: Mika Kahola <mika.kahola@intel.com>
Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 53 ++++++++++++++----------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6a870641cd2..90599dd1cb1b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1863,36 +1863,45 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder;
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
+	int i;
 
 	if (!HAS_PSR(i915))
 		return;
 
-	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-					     crtc_state->uapi.encoder_mask) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-		struct intel_psr *psr = &intel_dp->psr;
-		bool needs_to_disable = false;
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		struct intel_encoder *encoder;
+		u32 old_new_encoder_mask = old_crtc_state->uapi.encoder_mask |
+			new_crtc_state->uapi.encoder_mask;
 
-		mutex_lock(&psr->lock);
+		for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+						     old_new_encoder_mask) {
+			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+			struct intel_psr *psr = &intel_dp->psr;
+			bool needs_to_disable = false;
 
-		/*
-		 * Reasons to disable:
-		 * - PSR disabled in new state
-		 * - All planes will go inactive
-		 * - Changing between PSR versions
-		 */
-		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
-		needs_to_disable |= !crtc_state->has_psr;
-		needs_to_disable |= !crtc_state->active_planes;
-		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
+			mutex_lock(&psr->lock);
 
-		if (psr->enabled && needs_to_disable)
-			intel_psr_disable_locked(intel_dp);
+			/*
+			 * Reasons to disable:
+			 * - PSR disabled in new state
+			 * - All planes will go inactive
+			 * - Changing between PSR versions
+			 * - Encoder isn't present in new mask
+			 */
+			needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
+			needs_to_disable |= !new_crtc_state->has_psr;
+			needs_to_disable |= !new_crtc_state->active_planes;
+			needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+			needs_to_disable |= !(new_crtc_state->uapi.encoder_mask &
+					      drm_encoder_mask(&(encoder)->base));
 
-		mutex_unlock(&psr->lock);
+			if (psr->enabled && needs_to_disable)
+				intel_psr_disable_locked(intel_dp);
+
+			mutex_unlock(&psr->lock);
+		}
 	}
 }
 
-- 
2.25.1

