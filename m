Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7818A35A9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2529910F7AD;
	Fri, 12 Apr 2024 18:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELCoUFgn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A331810F7A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946465; x=1744482465;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UVW62l0LR4vy3WHSRt7ChmUzVkF5J2Ydp4sZrIS6yIw=;
 b=ELCoUFgnALVFbu1yCszH5R80DonR7a8e1ixKJ7NX7mdITA6ElDhRGgjy
 kdTHJ9UghJOoGrYqNp7LDY2R1veNxiZpcP86WZaBq63veKAbGA5Nwo+Mn
 UkebSS4qHqfJ7AktPVF2bYFZXVp/6DCQhMmE9/8bYoBHRUxa7o0q+1NpB
 cuKnBvizbZqbdfMNO2uGhFs/OdZT+3Noy6Fz20UWsO9asB/Sa0plBw2ed
 MYmgNSmrMVI7WawLO2rTP0OS0FxGbFiTbWc7YGBkEoXK2GdyUFhBVYfai
 yywYSrNxNqoGs+Dq9bqmqoE2E18JZkh+DnQRXIrZGghjOXz+bY/7TRryj g==;
X-CSE-ConnectionGUID: jgeYN0xfTkOuREpFMPsA8w==
X-CSE-MsgGUID: YZ+SihOgSRmy122bckzBog==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560580"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560580"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:44 -0700
X-CSE-ConnectionGUID: GLumUtL0S2K+DVN+AdlxTA==
X-CSE-MsgGUID: ueXNSP/8QVaW5FqB0CR/nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394839"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/18] drm/i915: Drop pointless 'crtc' argument from
 *_crtc_clock_get()
Date: Fri, 12 Apr 2024 21:26:58 +0300
Message-ID: <20240412182703.19916-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

We are alreayd passing the crtc_state to *_crtc_clock_get().
Passing the crtc as well is 100% redundant, so don't do it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 21 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_dpll.h     |  9 +++-----
 .../gpu/drm/i915/display/intel_pch_display.c  |  2 +-
 4 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ba8a9c671e..806595cf8f97 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3092,11 +3092,11 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 	if (IS_CHERRYVIEW(dev_priv))
-		chv_crtc_clock_get(crtc, pipe_config);
+		chv_crtc_clock_get(pipe_config);
 	else if (IS_VALLEYVIEW(dev_priv))
-		vlv_crtc_clock_get(crtc, pipe_config);
+		vlv_crtc_clock_get(pipe_config);
 	else
-		i9xx_crtc_clock_get(crtc, pipe_config);
+		i9xx_crtc_clock_get(pipe_config);
 
 	/*
 	 * Normally the dotclock is filled in by the encoder .get_config()
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 5246b8a8d461..9d57262ac577 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -415,11 +415,10 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
 }
 
 /* Returns the clock of the currently programmed mode of the given pipe. */
-void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-			 struct intel_crtc_state *pipe_config)
+void i9xx_crtc_clock_get(struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dpll = pipe_config->dpll_hw_state.dpll;
 	u32 fp;
 	struct dpll clock;
@@ -507,11 +506,10 @@ void i9xx_crtc_clock_get(struct intel_crtc *crtc,
 	pipe_config->port_clock = port_clock;
 }
 
-void vlv_crtc_clock_get(struct intel_crtc *crtc,
-			struct intel_crtc_state *pipe_config)
+void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	struct dpll clock;
 	u32 mdiv;
@@ -534,11 +532,10 @@ void vlv_crtc_clock_get(struct intel_crtc *crtc,
 	pipe_config->port_clock = vlv_calc_dpll_params(refclk, &clock);
 }
 
-void chv_crtc_clock_get(struct intel_crtc *crtc,
-			struct intel_crtc_state *pipe_config)
+void chv_crtc_clock_get(struct intel_crtc_state *pipe_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum dpio_channel port = vlv_pipe_to_channel(crtc->pipe);
 	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
 	struct dpll clock;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.h b/drivers/gpu/drm/i915/display/intel_dpll.h
index c11c18277266..dc47affba2ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll.h
@@ -42,12 +42,9 @@ bool bxt_find_best_dpll(struct intel_crtc_state *crtc_state,
 			struct dpll *best_clock);
 int chv_calc_dpll_params(int refclk, struct dpll *pll_clock);
 
-void i9xx_crtc_clock_get(struct intel_crtc *crtc,
-			 struct intel_crtc_state *pipe_config);
-void vlv_crtc_clock_get(struct intel_crtc *crtc,
-			struct intel_crtc_state *pipe_config);
-void chv_crtc_clock_get(struct intel_crtc *crtc,
-			struct intel_crtc_state *pipe_config);
+void i9xx_crtc_clock_get(struct intel_crtc_state *pipe_config);
+void vlv_crtc_clock_get(struct intel_crtc_state *pipe_config);
+void chv_crtc_clock_get(struct intel_crtc_state *pipe_config);
 
 void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe);
 void assert_pll_disabled(struct drm_i915_private *i915, enum pipe pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index baf679759e00..252483581c96 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -474,7 +474,7 @@ static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	/* read out port_clock from the DPLL */
-	i9xx_crtc_clock_get(crtc, crtc_state);
+	i9xx_crtc_clock_get(crtc_state);
 
 	/*
 	 * In case there is an active pipe without active ports,
-- 
2.43.2

