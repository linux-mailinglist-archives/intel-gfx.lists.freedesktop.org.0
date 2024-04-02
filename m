Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C2B8955C9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED77310FD43;
	Tue,  2 Apr 2024 13:52:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VsfD+HnA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E054E10FD43
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065924; x=1743601924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kxpIC3G2ni12Yh9flkhC9o69FWe96ISTAA64oOTZXqA=;
 b=VsfD+HnAAzNA0PwqHuSCNiG8+5POniu1fYlFc9KQknN5JH7H/GAen1AM
 c7yECcg+g4xascHg6ldjfZU7XqLBh4Ap26U1bnCkTJqmsoADvJqXXJLpd
 1geJK+7ERlF3hFHdYcBAigQgiIZ7zHl0yej0DRsX506EjqMdJWhAE4BRX
 PN+xGbNq1i0Gr0aaG9gEpcp+lGAi2qv8VK6phbWiUsAXWeog919WVoawz
 NbM3XljQraElr3J0SXMJyokSHtkDe2Wg35NQDwtf/GG7MdIQQKb9Itcxe
 iClFFID/tV751NIX24IkCLroE3fp3HEilBrEgo7vIfv/Js1eBqZ0IWkls Q==;
X-CSE-ConnectionGUID: iQYugD5FSvG2cH3euKVAvg==
X-CSE-MsgGUID: gzVEdbecQVi0ihTRMMhhNg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804654"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804654"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:52:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789394"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:52:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:52:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH 4/7] drm/i915: Extract glk_need_scaler_clock_gating_wa()
Date: Tue,  2 Apr 2024 16:51:45 +0300
Message-ID: <20240402135148.23011-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
References: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Simplify our life by extracting the "do we need the glk scaler
clock gating w/a?" check into a small helper.

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8f9d1a9caba2..02c377f61ed5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1551,6 +1551,14 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
 }
 
+/* Display WA #1180: WaDisableScalarClockGating: glk */
+static bool glk_need_scaler_clock_gating_wa(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	return DISPLAY_VER(i915) == 10 && crtc_state->pch_pfit.enabled;
+}
+
 static void glk_pipe_scaler_clock_gating_wa(struct intel_crtc *crtc, bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -1635,7 +1643,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 	enum pipe hsw_workaround_pipe;
-	bool psl_clkgate_wa;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
 		return;
@@ -1668,10 +1675,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	crtc->active = true;
 
-	/* Display WA #1180: WaDisableScalarClockGating: glk */
-	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
-		new_crtc_state->pch_pfit.enabled;
-	if (psl_clkgate_wa)
+	if (glk_need_scaler_clock_gating_wa(new_crtc_state))
 		glk_pipe_scaler_clock_gating_wa(crtc, true);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
@@ -1702,7 +1706,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_encoders_enable(state, crtc);
 
-	if (psl_clkgate_wa) {
+	if (glk_need_scaler_clock_gating_wa(new_crtc_state)) {
 		intel_crtc_wait_for_next_vblank(crtc);
 		glk_pipe_scaler_clock_gating_wa(crtc, false);
 	}
-- 
2.43.2

