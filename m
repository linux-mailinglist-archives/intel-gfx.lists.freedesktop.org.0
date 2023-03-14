Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D6A6B8E09
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEAA10E744;
	Tue, 14 Mar 2023 09:02:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6A0A10E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678784537; x=1710320537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LzibEu+AcAuo4m/Y4qo7KPiYQOMup0QpDgYmAoU45a4=;
 b=Pj/mEI3dvjIBpNNpz0QMk8tjXmUjpRXDwg7lGP7rptLbUc2//Pt81Z50
 9RHWbmb+zxuWSWFDKfQw2mW3Me/suwCTe7LVmKQkvRCO/pq4J3AVwW8kL
 jn1ueCh1YvS3gldqtfBEQvuVYOM8fo7h0RiISIIe5MLLS+5YgsImda4Iu
 rGHcKtbmCY66vrpeVv0mb4ylKrv/m+yLu2LYgupYGdCO5a106+K8GtxhF
 dXR4AZkHj4QEF310qKt5t5cWA3sumtEfN32CJ/HcN0JjBe/NBc80JzUD5
 kn7ixyAcC6TyIkFTjVMyPJPRNF75a6lKd/YVLgNibfaQ5qJAzWWuztlSr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325734158"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="325734158"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:02:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="679016290"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="679016290"
Received: from cstoita-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.60.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:02:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 11:01:41 +0200
Message-Id: <20230314090142.947764-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314090142.947764-1-jouni.hogander@intel.com>
References: <20230314090142.947764-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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
disabled. Currently it's disabled always when using delayed vblank.

Bspec: 71580

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 12 +++++-------
 drivers/gpu/drm/i915/display/skl_watermark.c       |  7 +++++--
 3 files changed, 11 insertions(+), 9 deletions(-)

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
index 44610b20cd29..a6edd65b8edb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1177,13 +1177,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 * Wa_16013835468
 	 * Wa_14015648006
 	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
-		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
-		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
-				     wa_16013835468_bit_get(intel_dp));
-	}
+	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	     IS_DISPLAY_VER(dev_priv, 12, 13)) &&
+	    crtc_state->wm_level_disabled)
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+			     wa_16013835468_bit_get(intel_dp));
 
 	if (intel_dp->psr.psr2_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
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

