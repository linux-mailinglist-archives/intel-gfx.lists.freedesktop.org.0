Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB2D6CEC71
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 17:11:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19A0A10EB22;
	Wed, 29 Mar 2023 15:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B438910E19A
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 15:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680102669; x=1711638669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4//gi2RvKs6gHNJOROpAkRiD4C7u8cjljpjMo2285yU=;
 b=OOfGX5BWVyi341M6DhjbgXReZJs7FODg+/87BsX5711WpzXQPyPVhtCg
 izGrddv4yhNfWwwForeRvrQHLRH3iwZxlQBHyMumS8mBIbuwePrkqMkK4
 Wyss7uZPASaXJjaR4dqi910B9CjOGqLbze4xpAshijPLaiY5e231XIxwK
 WaxikpXeEJGbCrx7rT234VDKJkEqu2Et61hkrPj3KlcmgC/Duq2zHeDqM
 MqzrHeB4dhyVc+vkxFQiZbcfXFNrBa2EJw5QBNWxVaCu1Vnww+SO0+l7f
 dX7fk/tZmjPip4lx3sb7pFTM4seH0SzP2tFFEC8caoPWlT3Fhw8kdPRD/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368672902"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="368672902"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="753626019"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="753626019"
Received: from pgarraul-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.223.204])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 08:07:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 18:07:00 +0300
Message-Id: <20230329150703.432072-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230329150703.432072-1-jouni.hogander@intel.com>
References: <20230329150703.432072-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 3/6] drm/i915/psr: Implement Wa_14015648006
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

PSR WM optimization should be disabled based on any wm level being
disabled. Also same WA should be applied for ICL as well.

Bspec: 71580

v5:
 - Set in pre plane hook and clear in post plane hook
v4:
 - Handle mode change in psr enable/disable
 - Handle wm_level_disable changes separately in pre plane hook
v3:
 - Split patch
v2:
 - set/clear chicken bit in post_plane_update
 - apply for ICL as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 +++++++++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.c     |  7 +++++--
 3 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ab146b5b68bd..4236ad751c2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1157,6 +1157,7 @@ struct intel_crtc_state {
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
+	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	struct drm_dp_vsc_sdp psr_vsc;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 770f6fea5499..98f48eb10c44 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1136,6 +1136,7 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 
 /*
  * Wa_16013835468
+ * Wa_14015648006
  */
 static void wm_optimization_wa(struct intel_dp *intel_dp,
 			       const struct intel_crtc_state *crtc_state)
@@ -1143,6 +1144,11 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	bool set_wa_bit = false;
 
+	/* Wa_14015648006 */
+	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	    IS_DISPLAY_VER(dev_priv, 11, 13))
+		set_wa_bit |= crtc_state->wm_level_disabled;
+
 	/* Wa_16013835468 */
 	if (DISPLAY_VER(dev_priv) == 12)
 		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
@@ -1197,6 +1203,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	/*
 	 * Wa_16013835468
+	 * Wa_14015648006
 	 */
 	wm_optimization_wa(intel_dp, crtc_state);
 
@@ -1374,8 +1381,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/*
 	 * Wa_16013835468
+	 * Wa_14015648006
 	 */
-	if (DISPLAY_VER(dev_priv) == 12)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
@@ -1949,6 +1957,9 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 		if (psr->enabled && needs_to_disable)
 			intel_psr_disable_locked(intel_dp);
+		else if (psr->enabled && new_crtc_state->wm_level_disabled)
+			/* Wa_14015648006 */
+			wm_optimization_wa(intel_dp, new_crtc_state);
 
 		mutex_unlock(&psr->lock);
 	}
@@ -1978,6 +1989,9 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
+		else if (psr->enabled && !crtc_state->wm_level_disabled)
+			/* Wa_14015648006 */
+			wm_optimization_wa(intel_dp, crtc_state);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ff70225c0263..7e2e76afbf2a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2276,9 +2276,12 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 		return level;
 
 	/*
-	 * FIXME PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
+	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
 	 * based on whether we're limited by the vblank duration.
-	 *
+	 */
+	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
+
+	/*
 	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
 	 * now) perhaps?
 	 */
-- 
2.34.1

