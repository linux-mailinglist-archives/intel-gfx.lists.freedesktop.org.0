Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 632BA6C477E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CF010E8E8;
	Wed, 22 Mar 2023 10:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2A910E8E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679480552; x=1711016552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SHqJTNezq5S0JSPCgndAizLqZOoJo3UGkGmKHSoc/N8=;
 b=gJHLTscPuJiF+TvZS7kbc0PHmtk+CiLgKmsjM//O3UR0q3EHs9pe8kR9
 ua5qOsjB3vqgrgQjzeMtRGNzYyfziXmLqY8CS1zv3QBCvDu14U1p90rOs
 HXP8xRh6BSm74krejZzkkYCEH/eOvwcxsO4+hUY6WxI5sqxtsh5sV8I2c
 CnSvhd4AGvTdogcBxeAvYipVesBssZO94+bLDm0kXMMBRmfOriUXhdFCE
 MvdDYs9A1Uyu/klBjk87YNucUo16+acHJgPuedltZK3kmuiCOMOMcWKpv
 n/itHiKWbrqk4afGWDXGcdyNX0cNDMFilkeEFQkLHLMqyZ2dTQ05egLM7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340714783"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340714783"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="1011309819"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="1011309819"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:22:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:22:01 +0200
Message-Id: <20230322102204.116056-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322102204.116056-1-jouni.hogander@intel.com>
References: <20230322102204.116056-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/5] drm/i915/psr: Implement Wa_14015648006
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

v3
 - Split patch
v2
 - set/clear chicken bit in post_plane_update
 - apply for ICL as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 10 +++++++++-
 drivers/gpu/drm/i915/display/skl_watermark.c       |  7 +++++--
 3 files changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c32bfba06ca1..60504c390408 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1152,6 +1152,7 @@ struct intel_crtc_state {
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
+	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	struct drm_dp_vsc_sdp psr_vsc;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e66677e0554b..dfac546d983b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1347,8 +1347,9 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/*
 	 * Wa_16013835468
+	 * Wa_14015648006
 	 */
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
@@ -1929,6 +1930,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 
 /*
  * Wa_16013835468
+ * Wa_14015648006
  */
 static void wm_optimization_wa(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state)
@@ -1936,6 +1938,11 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	bool set_wa_bit = false;
 
+	/* Wa_14015648006 */
+	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	    IS_DISPLAY_VER(dev_priv, 11, 13))
+		set_wa_bit |= crtc_state->wm_level_disabled;
+
 	/* Wa_16013835468 */
 	if (DISPLAY_VER(dev_priv) >= 12)
 		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
@@ -1978,6 +1985,7 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 
 		/*
 		 * Wa_16013835468
+		 * Wa_14015648006
 		 */
 		wm_optimization_wa(intel_dp, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50a9a6adbe32..afb751c024ba 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2273,9 +2273,12 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
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

