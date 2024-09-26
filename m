Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53AE986CD8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 08:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D2A10EA96;
	Thu, 26 Sep 2024 06:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fc1caY9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7275F10EA9E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 06:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727333340; x=1758869340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sHr8INKIAsPumCP+6liYRAJ5mPLk3WeqDRJX60MkpzE=;
 b=fc1caY9GFqT0chKtFdvt9ENVOj47ZpkhmQHQyP5Cv340O2uj60h6G3yr
 hqLI2fCKH6MzHk7mLaYcimxc72Tjx9D3ZZGX4Ax5335g989sc6PpDAH3G
 2UhKvVfCr2AhGRU1VcAeoaezpnmew9nNosUFjEGAZHUx8uk/MDP/HAxbv
 cgmR01JmItD8aMG2NjzoNRQiiyjJ4mJTri4Ef+TxxOAUXzBC8HsKRZESz
 aFINXO785kZPHrh65CRdxHTnFbtZXBRvMJNXeWvpHpZTaHRZOMBi1EmfZ
 e1mYVfrcXY91dsseATa8wwKWvVnVCNPPG6QM7TXbdbicCyhBSnt6McGbQ A==;
X-CSE-ConnectionGUID: yFdKFxKnT8KpgrUF4QRZNg==
X-CSE-MsgGUID: Wdnu3aTmRsujfW9bOCDkuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37554774"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37554774"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:49:00 -0700
X-CSE-ConnectionGUID: Vvnn1G0bTL6ZFRnR7tPnGA==
X-CSE-MsgGUID: 1copIlx4QBG58JZ0hsW8Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72340296"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.145])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 23:48:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mika.kahola@intel.com, gustavo.sousa@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 1/2] drm/i915/psr: Add new SU area calculation helper to
 apply workarounds
Date: Thu, 26 Sep 2024 09:47:58 +0300
Message-Id: <20240926064759.1313335-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240926064759.1313335-1-jouni.hogander@intel.com>
References: <20240926064759.1313335-1-jouni.hogander@intel.com>
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

intel_psr2_sel_fetch_update is already quite long function. Now we are
about to add one more HW workaround. Let's split applying workarounds to
selective update area into a separate function.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 39aa46de15e43..f3db0f997ef31 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2611,11 +2611,24 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
 	return true;
 }
 
+static void
+intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* Wa_14014971492 */
+	if (!crtc_state->has_panel_replay &&
+	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
+	    crtc_state->splitter.enable)
+		crtc_state->psr2_su_area.y1 = 0;
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
@@ -2720,12 +2733,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-	/* Wa_14014971492 */
-	if (!crtc_state->has_panel_replay &&
-	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
-	    crtc_state->splitter.enable)
-		crtc_state->psr2_su_area.y1 = 0;
+	intel_psr_apply_su_area_workarounds(crtc_state);
 
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
-- 
2.34.1

