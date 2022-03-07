Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5174D06CA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 19:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C3A10E114;
	Mon,  7 Mar 2022 18:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6A9410E12A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 18:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646678783; x=1678214783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nkBg9fGiV5qwZqIrRWSjOYsaaOF7WCsZDJUmyfh3Qoo=;
 b=aF2GS67j9nIZppVzxM2b66URBvTSUFJ0+iTdrhUsLHd4CY8//JWivu/L
 hLi8Y1QxOmmLINB42U84krl6oXEpykzUXnpAJM/Dh5nM29ECTxSb5PhPj
 mqqmsJpT9x0cSQCS/Qxmed7VMYKfkrm+WvHAh6W4AfF0PaK8oivRrbi8t
 VkT/pkTcEuzkNsJ8QEOAxXuM7ZjrXUKwYx2QzbiOz4SZ8bE49jBhd5XLu
 5Q50w3ASzml9WRsNr/9rKjlkzDctzSWTunWfhr3qoKyQWGq9Qe5hdaRJs
 SYVN2JYO09rlMwufRgvRq4WeeWNJqVfoUNuTGIU87XdiOCSNRJKGYHXH0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254662271"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="254662271"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="537228297"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 10:46:23 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Mar 2022 10:43:30 -0800
Message-Id: <20220307184330.1635013-6-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
References: <20220307184330.1635013-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: Add cdclk checks to
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Checking cdclk conditions during atomic check and preparing
for commit phase so we can have atomic commit as simple
as possible. Add the specific steps to be taken during
cdclk changes, prepare for squashing, crawling and modeset
scenarios.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 111 ++++++++++++++-------
 1 file changed, 77 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2278b052d859..356631f5a16e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1700,12 +1700,23 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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
@@ -1728,45 +1739,48 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+			intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+			break;
+		case INTEL_CDCLK_NOOP:
+			break;
+		default:
+			MISSING_CASE(cdclk_steps[i].action);
+			break;
+		}
 	}
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
-		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
-		skl_cdclk_decimal(cdclk);
+	      bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
+	      skl_cdclk_decimal(cdclk);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
@@ -1956,6 +1970,7 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
+	struct cdclk_step *cdclk_transition = b->steps;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
 		return false;
@@ -1967,6 +1982,11 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
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
@@ -1978,6 +1998,7 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
 			       struct intel_cdclk_state *b)
 {
 
+	struct cdclk_step *cdclk_transition = b->steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1987,6 +2008,11 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
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
@@ -2007,6 +2033,23 @@ bool intel_cdclk_needs_modeset(struct drm_i915_private *i915,
 			       const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
+	struct intel_cdclk_state *new_cdclk_state;
+	struct cdclk_step *cdclk_transition;
+	struct intel_cdclk_state *cdclk_state =  to_intel_cdclk_state(i915->cdclk.obj.state);
+	struct intel_atomic_state *state = cdclk_state->base.state;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	cdclk_transition = new_cdclk_state->steps;
+
+	if (a->cdclk != b->cdclk ||
+	    a->vco != b->vco ||
+	    a->ref != b->ref) {
+		cdclk_transition[0].action = INTEL_CDCLK_MODESET;
+		cdclk_transition[0].cdclk = b->cdclk;
+		cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+		cdclk_transition[1].cdclk = b->cdclk;
+	}
+
 	return a->cdclk != b->cdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
-- 
2.25.1

