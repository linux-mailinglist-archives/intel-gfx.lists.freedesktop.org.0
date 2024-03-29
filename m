Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F5F891031
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563A210E79D;
	Fri, 29 Mar 2024 01:13:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZF9GE2+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8EE810E872
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674798; x=1743210798;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k6VRwUjv0NRN8YQsBdE3TqL6ZL7JuhKmB35yrBFpe+I=;
 b=ZF9GE2+IPwjz3vu/JwqVX91R/QQpTw2qnVwDPCFgA5ldM+CuM++a8q/M
 L0a8NZiRs9IlhNmBLqNyUbcBD6/SLGd2yKi/0gZPr+QqQZ8ZYrrV1fVsm
 VqNvrHAPIN6SaJHXf/kFeypvwVIWxzp+cXJ9OMn6GKWIqIJWcmvsxSlgm
 FenTrtW/ajJl3PqOkz26kJN1eT05qd4l7Ijp/tYDMjyDE8DPK8Quba/9D
 1ScqjzhI+c8v8jA+Vgl60TM3ZQBRz0mmlGxGUlC4P93F5b51oqRZZ/oNp
 D7H2PST27l8eZnIxWMZbaBPGRYklbCpzdxKkLPlCQfub/YP6n3nfmRmZM A==;
X-CSE-ConnectionGUID: XCGBNQ7/QQGP11W5IrMtGQ==
X-CSE-MsgGUID: 6vFKQ1cQQcS4glPbFcUqcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756304"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756304"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786771"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786771"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/22] drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
Date: Fri, 29 Mar 2024 03:12:39 +0200
Message-ID: <20240329011254.24160-8-ville.syrjala@linux.intel.com>
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

glk_pipe_scaler_clock_gating_wa() is messy. Clean it up via
intel_de_rmw(), and also just pass in the whole crtc so the
caller doesn't dance around so much.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 08705042b4f8..83474fcf4131 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1551,18 +1551,13 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
 }
 
-static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
-					    enum pipe pipe, bool apply)
+static void glk_pipe_scaler_clock_gating_wa(struct intel_crtc *crtc, bool enable)
 {
-	u32 val = intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe));
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 mask = DPF_GATING_DIS | DPF_RAM_GATING_DIS | DPFR_GATING_DIS;
 
-	if (apply)
-		val |= mask;
-	else
-		val &= ~mask;
-
-	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
+	intel_de_rmw(i915, CLKGATE_DIS_PSL(crtc->pipe),
+		     mask, enable ? mask : 0);
 }
 
 static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
@@ -1638,8 +1633,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
 	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
+	enum pipe hsw_workaround_pipe;
 	bool psl_clkgate_wa;
 
 	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
@@ -1677,7 +1672,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
 		new_crtc_state->pch_pfit.enabled;
 	if (psl_clkgate_wa)
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
+		glk_pipe_scaler_clock_gating_wa(crtc, true);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_pfit_enable(new_crtc_state);
@@ -1709,7 +1704,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	if (psl_clkgate_wa) {
 		intel_crtc_wait_for_next_vblank(crtc);
-		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
+		glk_pipe_scaler_clock_gating_wa(crtc, false);
 	}
 
 	/* If we change the relative order between pipe/planes enabling, we need
-- 
2.43.2

