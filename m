Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 688DC6BE78B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB74E10EED4;
	Fri, 17 Mar 2023 11:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F4A10EEE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051120; x=1710587120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LzibEu+AcAuo4m/Y4qo7KPiYQOMup0QpDgYmAoU45a4=;
 b=UlaTmRBE/zqAWBDJOAXs/5NjssigWF6QHFaxBEIANR9R3n/G+353BR1y
 9PaoBK51PmnSQJVgmRIlPzMQzoW5OP9mEXRBjeeIuaDX6IH0CtkZAW7zs
 EYgoOYovqcoavtQUOBx8ETknj84os62Xhg3A+fD6pR012hcp9A8d3/WvC
 Pa12Cb7SzwUbcx7InWpnor7ZF1MGJsAxRsHPFfXmM1+ywRNI78acGNiRh
 2spFIGxrD/vbbY8Sjb0Oy6ZMT5CIabdkQR6NLkmFVhyN+0zeIO30y5osP
 7MXhTG5qEE51H3vmKlQkaBxB9IlroUKKm5sfYXB39cEP+UMr0t0DOJBFU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="318634673"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="318634673"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744516977"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744516977"
Received: from nkiryuhi-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.188])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 13:04:35 +0200
Message-Id: <20230317110437.2780483-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230317110437.2780483-1-jouni.hogander@intel.com>
References: <20230317110437.2780483-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/psr: Fix Wa_16013835468 and
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

