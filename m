Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D4356D48C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 08:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F2F18BDAC;
	Mon, 11 Jul 2022 06:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA90318BDAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 06:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657520180; x=1689056180;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=55TQ5lGGoo1GmkZiDeYQnWYioeDq4NifkwixcUGbOmw=;
 b=ntpVJcCsv5OcGDbIiol1Rb5W2sJ117RIxJMJvxn8fiGHHY3wc9Zte92d
 A1UAZVicX2hvS4e4w48xabBu/H/qSjI6V+5mDuo5eKYVbXxowP3oTMGOa
 idv/5Qrm0YFgrNoN9zYbQqN/rFpps+bHRCw//ZbR7sfRALWbMEoRB6MjP
 3+Oem3wL5LSUlWxnbbJGVQfJbBmdlDzzofnftzUYpp3d5H20/Fdu+Womj
 8YFtXKHPIt4dOxgYiLzeIo0HXtx6vL3eusTkOvldMdKgrFY9evNGwcvk0
 xHd+M+njAtxdVfIhezGA59kvkYGhgBPY9Gy8wk7EQ3EgmV/FSsvWCqiBR w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="264360984"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="264360984"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:16:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="621947210"
Received: from weiglmat-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 23:16:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jul 2022 09:16:01 +0300
Message-Id: <20220711061601.654694-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Ensure PSR gets disabled if
 no encoders in new state
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

Fix this by checking if old and new crtc encoder masks are differing.
PSR is disabled for encoders not in new crtc state encoder mask.

Cc: Mika Kahola <mika.kahola@intel.com>
Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 72 +++++++++++++++++-------
 1 file changed, 51 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6a870641cd2..710cc31ace22 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1863,36 +1863,66 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	struct intel_psr *psr;
+	int i;
 
 	if (!HAS_PSR(i915))
 		return;
 
-	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-					     crtc_state->uapi.encoder_mask) {
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-		struct intel_psr *psr = &intel_dp->psr;
-		bool needs_to_disable = false;
-
-		mutex_lock(&psr->lock);
-
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
 		/*
-		 * Reasons to disable:
-		 * - PSR disabled in new state
-		 * - All planes will go inactive
-		 * - Changing between PSR versions
+		 * Check if encoder exists in new state and disable
+		 * psr if it doesn't. Otherwise we will end update
+		 * having all planes disabled and psr enabled which
+		 * seems to be causing problems.
 		 */
-		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
-		needs_to_disable |= !crtc_state->has_psr;
-		needs_to_disable |= !crtc_state->active_planes;
-		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
+		if (old_crtc_state->uapi.encoder_mask != new_crtc_state->uapi.encoder_mask) {
+			for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+							     old_crtc_state->uapi.encoder_mask) {
+				intel_dp = enc_to_intel_dp(encoder);
+				psr = &intel_dp->psr;
 
-		if (psr->enabled && needs_to_disable)
-			intel_psr_disable_locked(intel_dp);
+				if (new_crtc_state->uapi.encoder_mask &
+				    drm_encoder_mask(&(encoder)->base))
+					continue;
 
-		mutex_unlock(&psr->lock);
+				mutex_lock(&psr->lock);
+
+				if (psr->enabled)
+					intel_psr_disable_locked(intel_dp);
+
+				mutex_unlock(&psr->lock);
+			}
+		}
+		for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
+						     new_crtc_state->uapi.encoder_mask) {
+			bool needs_to_disable = false;
+
+			intel_dp = enc_to_intel_dp(encoder);
+			psr = &intel_dp->psr;
+
+			mutex_lock(&psr->lock);
+
+			/*
+			 * Reasons to disable:
+			 * - PSR disabled in new state
+			 * - All planes will go inactive
+			 * - Changing between PSR versions
+			 */
+			needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
+			needs_to_disable |= !new_crtc_state->has_psr;
+			needs_to_disable |= !new_crtc_state->active_planes;
+			needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
+
+			if (psr->enabled && needs_to_disable)
+				intel_psr_disable_locked(intel_dp);
+
+			mutex_unlock(&psr->lock);
+		}
 	}
 }
 
-- 
2.25.1

