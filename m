Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9010757516E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jul 2022 17:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D1D113356;
	Thu, 14 Jul 2022 15:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D611D1132C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jul 2022 15:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657811337; x=1689347337;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sU7o5uxmYCTWb3lPOYzgkyJsNRN/jFaElfW8pfpX4DQ=;
 b=jlP/9SZ8OsElpXHfxfpAJdpV534yJwqnFv2WNE9ETQj49fNQ8zhSW2br
 KF0Vcyr9aaArTvfl3dGAIeco1Ez/rfLyXd1InovbN5F0If7Dr1W37nZuw
 3IqiTbnGJjdvJCBA27R76unTB+ixF5AS6GjDP6RPRFu1iej+I+w+A5KmT
 OZhh6ne5lmla4O/inzj4eIjIPw9DY1d5I02KNOOyTRMVmCWJ3yhKpTiQp
 7OzfM5rdDdZQXaVCjIqzKzSkvtjeL9N4AUtpc1T6QaKxm5yP2a3Qf79Xo
 1a3wCJj6v0k30eC63W3g6sZkH2pQX+HMpyo/NiWxGpx4NttFTH1AkWdRv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="371850905"
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="371850905"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 08:08:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,271,1650956400"; d="scan'208";a="623450401"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 08:08:06 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jul 2022 08:07:55 -0700
Message-Id: <20220714150755.154985-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220714150755.154985-1-jose.souza@intel.com>
References: <20220714150755.154985-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR before disable
 pipe
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

The issue here was on for_each_intel_encoder_mask_with_psr() over the
new_crtc_state encoder mask, so if the CRTC was being disabled mask
would be zero and it would not have any chance to disable PSR.

So here doing for_each_intel_encoder_mask_with_psr() over the
old_crtc_state encoder mask and then using the new_crtc_state to
check if PSR needs to be disabled.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6a870641cd25..98c3c8015a5c4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1863,7 +1863,9 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state =
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
@@ -1871,7 +1873,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-					     crtc_state->uapi.encoder_mask) {
+					     old_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
 		bool needs_to_disable = false;
@@ -1884,10 +1886,10 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		 * - All planes will go inactive
 		 * - Changing between PSR versions
 		 */
-		needs_to_disable |= intel_crtc_needs_modeset(crtc_state);
-		needs_to_disable |= !crtc_state->has_psr;
-		needs_to_disable |= !crtc_state->active_planes;
-		needs_to_disable |= crtc_state->has_psr2 != psr->psr2_enabled;
+		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
+		needs_to_disable |= !new_crtc_state->has_psr;
+		needs_to_disable |= !new_crtc_state->active_planes;
+		needs_to_disable |= new_crtc_state->has_psr2 != psr->psr2_enabled;
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
-- 
2.37.1

