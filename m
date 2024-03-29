Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D9C891033
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C456E10E888;
	Fri, 29 Mar 2024 01:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PKTgWhrF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D102310E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674801; x=1743210801;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H7ZUV3oDD0mCSQBJGKDildnkHUwWHcNw7qc5iTHYHqc=;
 b=PKTgWhrFcRoMuQpRC6hkSvhGOwOj38CTwwOpSNMYstI/Ndc66CRQVPRN
 x7/1pl6P3mTWEYjiir45rg80TCsrZO41vnhvW0VFZSHDJpNqtroHb5vGB
 OHU5+FHoPy5mPwK1Y2TU0PdmG0uP7FpoO5Jcurs98wTLW6I5rT1JpszjQ
 iEINVi7Zdo0tZFwy5CXyIEcngq3n0xI7IX6d4JneX67JUAUQBPnTgreVm
 yBK9+tqtSri7zmStj+gbNiQO0iyg4GFJUSThcPZamsVlw6rHhm337JZMY
 snyhguU8FCK65HORr9AU3COSoakOv3FXNpnK9kBamtsYm5XDUZEl+fvFB w==;
X-CSE-ConnectionGUID: LUFvLfbeRaaEgcW8+UKEtw==
X-CSE-MsgGUID: nrvPx4OnTLyr7t4iUcbGng==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756308"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786772"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786772"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/22] drm/i915: Extract glk_need_scaler_clock_gating_wa()
Date: Fri, 29 Mar 2024 03:12:40 +0200
Message-ID: <20240329011254.24160-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 83474fcf4131..6197b62dac55 100644
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

