Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B69935835A2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37FC10E4D2;
	Wed, 27 Jul 2022 23:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB0A10E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 23:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658964451; x=1690500451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4t+QfcDNvW7hHii59kP12gvAyysXslEFOW2kKW7mEVM=;
 b=VxYc5s6oBZVkoaOTt8k+m4x6bWzHVFihbgYYfNYVW59W02TzVGOt5ued
 XUP3vF6eEl4LvEIaY1RNvfFHvCUkJa6uTiqYC5z3EwupToGyFu8Lrsg+F
 yJSke0sIeRqCnkVQ1d3FvaOkfRh7trTWu465cjaVgANS4I4xQo/EkzHj6
 Bt3bLAgnXVaBz89RydjkevK6VVhBjI4iq8aSy3mN/8yk0kciiUnmGFiMj
 oKPnEg87OFcNQigILuU5cIGmGf9gNrpdN+ujItfV76T+ioHWW0Hk3Tajg
 JISJz1u/qdqNQ/YlgnZCjn0FL6AdZcsiB+b2o5KOGJeYOJzj9skkOu9Ev Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288384984"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288384984"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="597595497"
Received: from unknown (HELO anushasr-mobl7.intel.com) ([10.212.185.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 16:26:43 -0700
Message-Id: <20220727232643.533884-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220727232643.533884-1-anusha.srivatsa@intel.com>
References: <20220727232643.533884-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/display: Add cdclk checks to
 atomic check
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

Checking cdclk conditions during atomic check and preparing
for commit phase so we can have atomic commit as simple
as possible. Add the specific steps to be taken during
cdclk changes, prepare for squashing, crawling and modeset
scenarios.

v2: Add intel_cdclk_modeset() similar to intel_cdclk_squash()
and intel_cdclk_crawl().

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 108 +++++++++++++++------
 1 file changed, 77 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index cb6e419562dd..2efc1f09abab 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1693,12 +1693,23 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct intel_atomic_state *state;
+	struct intel_cdclk_state *new_cdclk_state;
+	struct cdclk_step *cdclk_steps;
+	struct intel_cdclk_state *cdclk_state;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
+	u32 squash_ctl = 0;
 	u32 val;
 	u16 waveform;
 	int clock;
 	int ret;
+	int i;
+
+	cdclk_state =  to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+	state = cdclk_state->base.state;
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	cdclk_steps = new_cdclk_state->steps;
 
 	/* Inform power controller of upcoming frequency change. */
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -1721,40 +1732,42 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
-		if (dev_priv->cdclk.hw.vco != vco)
+	for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
+		switch (cdclk_steps[i].action) {
+		case INTEL_CDCLK_MODESET:
+			if (DISPLAY_VER(dev_priv) >= 11) {
+				if (dev_priv->cdclk.hw.vco != 0 &&
+				    dev_priv->cdclk.hw.vco != vco)
+					icl_cdclk_pll_disable(dev_priv);
+
+				if (dev_priv->cdclk.hw.vco != vco)
+					icl_cdclk_pll_enable(dev_priv, vco);
+			} else {
+				if (dev_priv->cdclk.hw.vco != 0 &&
+				    dev_priv->cdclk.hw.vco != vco)
+					bxt_de_pll_disable(dev_priv);
+
+				if (dev_priv->cdclk.hw.vco != vco)
+					bxt_de_pll_enable(dev_priv, vco);
+			}
+			clock = cdclk;
+			break;
+		case INTEL_CDCLK_CRAWL:
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
-			icl_cdclk_pll_disable(dev_priv);
-
-		if (dev_priv->cdclk.hw.vco != vco)
-			icl_cdclk_pll_enable(dev_priv, vco);
-	} else {
-		if (dev_priv->cdclk.hw.vco != 0 &&
-		    dev_priv->cdclk.hw.vco != vco)
-			bxt_de_pll_disable(dev_priv);
-
-		if (dev_priv->cdclk.hw.vco != vco)
-			bxt_de_pll_enable(dev_priv, vco);
-	}
-
-	waveform = cdclk_squash_waveform(dev_priv, cdclk);
-
-	if (waveform)
-		clock = vco / 2;
-	else
-		clock = cdclk;
-
-	if (has_cdclk_squasher(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
+			clock = cdclk;
+			break;
+		case INTEL_CDCLK_SQUASH:
+			waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
+			clock = vco / 2;
 			squash_ctl = CDCLK_SQUASH_ENABLE |
 				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			break;
+		case INTEL_CDCLK_NOOP:
+			break;
+		default:
+			break;
+		}
 	}
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
@@ -1949,6 +1962,7 @@ static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
 				  struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
+	struct cdclk_step *cdclk_transition = b->steps;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
 		return false;
@@ -1960,6 +1974,11 @@ static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
 	a_div = DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
 	b_div = DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
 
+	cdclk_transition[0].action = INTEL_CDCLK_CRAWL;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
+
 	return a->actual.vco != 0 && b->actual.vco != 0 &&
 		a->actual.vco != b->actual.vco &&
 		a_div == b_div &&
@@ -1971,6 +1990,7 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 			       struct intel_cdclk_state *b)
 {
 
+	struct cdclk_step *cdclk_transition = b->steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1980,12 +2000,35 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
+	cdclk_transition[0].action = INTEL_CDCLK_SQUASH;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
+
 	return a->actual.cdclk != b->actual.cdclk &&
 		a->actual.vco != 0 &&
 		a->actual.vco == b->actual.vco &&
 		a->actual.ref == b->actual.ref;
 }
 
+static void intel_cdclk_modeset(struct drm_i915_private *i915,
+				const struct intel_cdclk_config *a,
+				const struct intel_cdclk_config *b)
+{
+	struct intel_cdclk_state *new_cdclk_state;
+	struct cdclk_step *cdclk_transition;
+	struct intel_cdclk_state *cdclk_state =  to_intel_cdclk_state(i915->cdclk.obj.state);
+	struct intel_atomic_state *state = cdclk_state->base.state;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	cdclk_transition = new_cdclk_state->steps;
+
+	cdclk_transition[0].action = INTEL_CDCLK_MODESET;
+	cdclk_transition[0].cdclk = b->cdclk;
+	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->cdclk;
+}
+
 /**
  * intel_cdclk_needs_modeset - Determine if changong between the CDCLK
  *                             configurations requires a modeset on all pipes
@@ -1999,6 +2042,7 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
+
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
@@ -2777,6 +2821,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			    pipe_name(pipe));
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
+		intel_cdclk_modeset(dev_priv, &old_cdclk_state->actual,
+				    &new_cdclk_state->actual);
 		/* All pipes must be switched off while we change the cdclk. */
 		ret = intel_modeset_all_pipes(state);
 		if (ret)
-- 
2.25.1

