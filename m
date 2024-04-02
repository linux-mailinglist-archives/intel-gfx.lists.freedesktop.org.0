Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A11B8955C8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B43410FD42;
	Tue,  2 Apr 2024 13:52:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCLRStWm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF17710FD42
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065921; x=1743601921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7aABdvC0GqfDx8YCpeKqwXNl8AThX7V/cuRNuHNghNc=;
 b=mCLRStWm4LLz3FqeU21DzayIWhxveJz5SLHlHhKAYVdNEQ8nVRPjGNcs
 0M3QtZPpYHgvU+PBQOPIs+t3Ltkrj4IUSfSdt2UkkEK3ltZqPHAb7uZVx
 +f37CUrO8LbPMZa7kdtG8Q1/dI4nMsinlKVSGELQLwd79+hnEYuF/5HHL
 OK4PCFtNinTG1cQAbsuAhK1vbs6AjXnMQ9Uw14E8xH7YPQVg5bKOXsfZG
 nGUDh54eMiE7WdhXAtPP17ll3Bwa+DTeePiStuJibCwJ9ry4YKxqx0Y1S
 KikBAgRrDDD+Tp300olHLVgRNoSgOWf1nBtyvkEKnKwXQREvW2xlg3S/Q g==;
X-CSE-ConnectionGUID: kzgHpmc7SBO6NxQuzuyS0Q==
X-CSE-MsgGUID: n103jlWgRP+r6G0IWExnvw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804643"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804643"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:52:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789389"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:51:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:51:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH 3/7] drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
Date: Tue,  2 Apr 2024 16:51:44 +0300
Message-ID: <20240402135148.23011-4-ville.syrjala@linux.intel.com>
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

glk_pipe_scaler_clock_gating_wa() is messy. Clean it up via
intel_de_rmw(), and also just pass in the whole crtc so the
caller doesn't have to dance around so much.

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 614e60420a29..8f9d1a9caba2 100644
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

