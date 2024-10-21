Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D93A9A6B27
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21B210E516;
	Mon, 21 Oct 2024 13:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7Ib10lN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F34210E516;
 Mon, 21 Oct 2024 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518945; x=1761054945;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RumTBcgcV0j18jfw3XC6N4mHovxfij7oWeWuaPEbStA=;
 b=T7Ib10lN7oCE7WRN+WpheO45r/ZVQzucJxvF72d7Vnm8HmVsc26lCJad
 op7jk9JdtcbK6rnJuh+PXEXWMCULSQuVVFFulAxihnAL1cCF9J6pCajT1
 XxJ661gUWLCgVJQh0Wb2BmvX34237urCLoKpdVYF77mw1oegZrt9T1wxr
 CFzhAislFRm80Q6tszWjH8viJYVVsSNrdtpbeSnFkd55f8VvK1mhVJVKC
 q5jPbrBiJnJ9z6/MYKg7BwBxHQcSEUEiOXBTxXgPHLtu/kWNOUp40HjAZ
 p9QqeERykI5Si8wJD6J/p5L3qqUfjiMCodQWF/qzbOzjoEUlCZB+OZRkV A==;
X-CSE-ConnectionGUID: jXO4k2w3STGwKxTeFl8UoQ==
X-CSE-MsgGUID: OFPpZDHTToCSFLe5t/nMoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="28443946"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="28443946"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:36 -0700
X-CSE-ConnectionGUID: VjgBhSkwReq1mibKMA3onQ==
X-CSE-MsgGUID: zArPWx2nQMGprTBpvIZw/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79480447"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 13/15] drm/i915/tv: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Mon, 21 Oct 2024 16:54:14 +0300
Message-Id: <39a8ce57a5e410e77ee7a22d1c99c98d12db2ccc.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tv.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index e40aff490486..bfd16054ca05 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1093,7 +1093,6 @@ intel_tv_get_config(struct intel_encoder *encoder,
 		    struct intel_crtc_state *pipe_config)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct drm_display_mode mode = {};
@@ -1167,7 +1166,7 @@ intel_tv_get_config(struct intel_encoder *encoder,
 		adjusted_mode->crtc_clock /= 2;
 
 	/* pixel counter doesn't work on i965gm TV output */
-	if (IS_I965GM(dev_priv))
+	if (display->platform.i965gm)
 		pipe_config->mode_flags |=
 			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 }
@@ -1197,7 +1196,6 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	struct intel_atomic_state *state =
 		to_intel_atomic_state(pipe_config->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_tv_connector_state *tv_conn_state =
 		to_intel_tv_connector_state(conn_state);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(conn_state);
@@ -1349,7 +1347,7 @@ intel_tv_compute_config(struct intel_encoder *encoder,
 	adjusted_mode->name[0] = '\0';
 
 	/* pixel counter doesn't work on i965gm TV output */
-	if (IS_I965GM(dev_priv))
+	if (display->platform.i965gm)
 		pipe_config->mode_flags |=
 			I915_MODE_FLAG_USE_SCANLINE_COUNTER;
 
@@ -1525,7 +1523,7 @@ static void intel_tv_pre_enable(struct intel_atomic_state *state,
 		tv_mode->dda3_inc << TV_SCDDA3_INC_SHIFT;
 
 	/* Enable two fixes for the chips that need them. */
-	if (IS_I915GM(dev_priv))
+	if (display->platform.i915gm)
 		tv_ctl |= TV_ENC_C0_FIX | TV_ENC_SDP_FIX;
 
 	set_tv_mode_timings(display, tv_mode, burst_ena);
@@ -1627,7 +1625,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	 * The TV sense state should be cleared to zero on cantiga platform. Otherwise
 	 * the TV is misdetected. This is hardware requirement.
 	 */
-	if (IS_GM45(dev_priv))
+	if (display->platform.gm45)
 		tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
 			    TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);
 
-- 
2.39.5

