Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 843366C4782
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13A4310E8F4;
	Wed, 22 Mar 2023 10:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBE210E8EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679480558; x=1711016558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hL4hmWCuxEVs9QYUlnsa28PnbX3lplR32gMcNCZXF/g=;
 b=S4uf5IdxI9X0H3v5EX1lvJNUvxKXwV0Sb2RmMeEUxV8hA/D1WH2bSGU1
 ENoRZPpd1PJe7/x/MYwRgK8ZpdywID+bR4ky7k9sglHBa+ijWe1zX1iWk
 ZD31QQlxsJsiPpwknYmrlaOmnsbWJqxHll5ByXp53Uj6If5b72eDd3sz8
 zz9KM5P9csryKEHRHF3r6+wOKA20Uv9NMw9+EUXDOoqHcJBumAPc/+wvD
 RN9rXXVXzTJ890BxQ80lM/dQEYiyZOxNYh0C4KJ0htsZ16/nW8LRo1UPs
 ziWq0jiODMbej8K60EZbhzTJTx1PzGrTi6vgavZlRuoNDqPxa5m8c0Oo3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340714801"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340714801"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="1011309838"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="1011309838"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:22:04 +0200
Message-Id: <20230322102204.116056-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322102204.116056-1-jouni.hogander@intel.com>
References: <20230322102204.116056-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 5/5] drm/i915/psr: Implement Display WA #1136
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

Implement Display WA #1136 for SKL/BXT.

Bspec: 21664

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b53c71c06105..24c3f75bb9d8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1950,6 +1950,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 /*
  * Wa_16013835468
  * Wa_14015648006
+ * Display WA #1136: skl, bxt
  */
 static void wm_optimization_wa(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state)
@@ -1957,6 +1958,17 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	bool set_wa_bit = false;
 
+	/*
+	 * Display WA #1136: skl, bxt
+	 * skl/bxt do not have chicken bit: disable PSR
+	 */
+	if (DISPLAY_VER(dev_priv) <= 9) {
+		if (crtc_state->wm_level_disabled &&
+		    intel_dp->psr.enabled)
+			intel_psr_disable_locked(intel_dp);
+		return;
+	}
+
 	/* Wa_14015648006 */
 	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
@@ -1999,12 +2011,17 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		keep_disabled |= psr->sink_not_reliable;
 		keep_disabled |= !crtc_state->active_planes;
 
+		/* Display WA #1136: skl, bxt */
+		keep_disabled |= DISPLAY_VER(dev_priv) <= 9 &&
+			crtc_state->wm_level_disabled;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
 		/*
 		 * Wa_16013835468
 		 * Wa_14015648006
+		 * Display WA #1136: skl, bxt
 		 */
 		wm_optimization_wa(intel_dp, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index afb751c024ba..ced61da8b496 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2278,11 +2278,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
 
-	/*
-	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
-	 * now) perhaps?
-	 */
-
 	for (level++; level < i915->display.wm.num_levels; level++) {
 		enum plane_id plane_id;
 
-- 
2.34.1

