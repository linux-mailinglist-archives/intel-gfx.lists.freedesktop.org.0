Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF92162C160
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 15:50:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D37410E4B3;
	Wed, 16 Nov 2022 14:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73D610E4B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 14:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668610185; x=1700146185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WFamrVbhYjJWNUdhdH4BZm0ankROYsjE4V0aMT96aAI=;
 b=OWfc+QR7zsABoZH0IfCPw3Rbnhc6krD6u7N9ii7R1UPNxhhma0BqFGGY
 nL4mm56SA35kc75c/FrXcIsoeme+hWANGK/1JlQD7KWeMQvsgnOX4gdfj
 CA0xRED64gzyqdwR7D9RAiRfe4+T5xPtKojzYMUeBdzCZv/JFHlOX7gXW
 2+XCd3dYeNeEGSYDawmpLx/9j1H+eyD22Y8Kv1GbgzwUS6VRu4Qo0OyUz
 AxXPOxYe4wCNfrz1or6DrjmNG+XEvyQdakO8+VBC4gwprI5ykAEzRy2zJ
 Obmj57AvNAHtQzjSxWPFZQFkeGkVOF1p7R0qkuF6zRwHG/9IZP1JbD7uf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="374693514"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="374693514"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 06:49:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="814107955"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="814107955"
Received: from kpalaniv-mobl2.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.209.77.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 06:49:45 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 06:50:07 -0800
Message-Id: <20221116145008.556381-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221116145008.556381-1-anusha.srivatsa@intel.com>
References: <20221116145008.556381-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and squash
 when changing cdclk
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For MTL, changing cdclk from between certain frequencies has
both squash and crawl. Use the current cdclk config and
the new(desired) cdclk config to construtc a mid cdclk config.
Set the cdclk twice:
- Current cdclk -> mid cdclk
- mid cdclk -> desired cdclk

Driver should not take some Pcode mailbox communication
in the cdclk path for platforms that are  Display 14 and later.

v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
change via modeset for platforms that support squash_crawl sequences(Ville)

v3: Add checks for:
- scenario where only slow clock is used and
cdclk is actually 0 (bringing up display).
- PLLs are on before looking up the waveform.
- Squash and crawl capability checks.(Ville)

v4: Rebase
- Move checks to be more consistent (Ville)
- Add comments (Bala)
v5:
- Further small changes. Move checks around.
- Make if-else better looking (Ville)

v6: MTl should not follow PUnit mailbox communication as the rest of
gen11+ platforms.(Anusha)

Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 175 +++++++++++++++++----
 1 file changed, 144 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 25d01271dc09..6e122d56428c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1727,37 +1727,75 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
-static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
-			  const struct intel_cdclk_config *cdclk_config,
-			  enum pipe pipe)
+static int cdclk_squash_divider(u16 waveform)
+{
+	return hweight16(waveform ?: 0xffff);
+}
+
+static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
+						    const struct intel_cdclk_config *old_cdclk_config,
+						    const struct intel_cdclk_config *new_cdclk_config,
+						    struct intel_cdclk_config *mid_cdclk_config)
+{
+	u16 old_waveform, new_waveform, mid_waveform;
+	int size = 16;
+	int div = 2;
+
+	/* Return if both Squash and Crawl are not present */
+	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
+		return false;
+
+	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
+	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
+
+	/* Return if Squash only or Crawl only is the desired action */
+	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
+	    old_cdclk_config->vco == new_cdclk_config->vco ||
+	    old_waveform == new_waveform)
+		return false;
+
+	*mid_cdclk_config = *new_cdclk_config;
+
+	/*
+	 * Populate the mid_cdclk_config accordingly.
+	 * - If moving to a higher cdclk, the desired action is squashing.
+	 * The mid cdclk config should have the new (squash) waveform.
+	 * - If moving to a lower cdclk, the desired action is crawling.
+	 * The mid cdclk config should have the new vco.
+	 */
+
+	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
+		mid_cdclk_config->vco = old_cdclk_config->vco;
+		mid_waveform = new_waveform;
+	} else {
+		mid_cdclk_config->vco = new_cdclk_config->vco;
+		mid_waveform = old_waveform;
+	}
+
+	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
+						    mid_cdclk_config->vco, size * div);
+
+	/* make sure the mid clock came out sane */
+
+	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
+		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
+	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
+		    i915->display.cdclk.max_cdclk_freq);
+	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
+		    mid_waveform);
+
+	return true;
+}
+
+static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
+			   const struct intel_cdclk_config *cdclk_config,
+			   enum pipe pipe)
 {
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 val;
 	u16 waveform;
 	int clock;
-	int ret;
-
-	/* Inform power controller of upcoming frequency change. */
-	if (DISPLAY_VER(dev_priv) >= 11)
-		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
-					SKL_CDCLK_PREPARE_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE,
-					SKL_CDCLK_READY_FOR_CHANGE, 3);
-	else
-		/*
-		 * BSpec requires us to wait up to 150usec, but that leads to
-		 * timeouts; the 2ms used here is based on experiment.
-		 */
-		ret = snb_pcode_write_timeout(&dev_priv->uncore,
-					      HSW_PCODE_DE_WRITE_FREQ_REQ,
-					      0x80000000, 150, 2);
-	if (ret) {
-		drm_err(&dev_priv->drm,
-			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
-			ret, cdclk);
-		return;
-	}
 
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
@@ -1793,11 +1831,62 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	if (pipe != INVALID_PIPE)
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
+}
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
+			  const struct intel_cdclk_config *cdclk_config,
+			  enum pipe pipe)
+{
+	struct intel_cdclk_config mid_cdclk_config;
+	int cdclk = cdclk_config->cdclk;
+	int ret = 0;
+
+	/*
+	 * Inform power controller of upcoming frequency change.
+	 * Display versions 14 and beyond do not follow the PUnit
+	 * mailbox communication, skip
+	 * this step.
+	 */
+	if (DISPLAY_VER(dev_priv) >= 14)
+		/* NOOP */;
+	else if (DISPLAY_VER(dev_priv) >= 11)
+		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
+					SKL_CDCLK_PREPARE_FOR_CHANGE,
+					SKL_CDCLK_READY_FOR_CHANGE,
+					SKL_CDCLK_READY_FOR_CHANGE, 3);
+	else
+		/*
+		 * BSpec requires us to wait up to 150usec, but that leads to
+		 * timeouts; the 2ms used here is based on experiment.
+		 */
+		ret = snb_pcode_write_timeout(&dev_priv->uncore,
+					      HSW_PCODE_DE_WRITE_FREQ_REQ,
+					      0x80000000, 150, 2);
+
+	if (ret) {
+		drm_err(&dev_priv->drm,
+			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
+			ret, cdclk);
+		return;
+	}
+
+	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
+						    cdclk_config, &mid_cdclk_config)) {
+		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
+		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+	} else {
+		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+	}
+
+	if (DISPLAY_VER(dev_priv) >= 14)
+		/*
+		 * NOOP - No Pcode communication needed for
+		 * Display versions 14 and beyond
+		 */;
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	} else {
+	else
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -1808,7 +1897,6 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
 					      cdclk_config->voltage_level,
 					      150, 2);
-	}
 
 	if (ret) {
 		drm_err(&dev_priv->drm,
@@ -1965,6 +2053,26 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
+static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
+					     const struct intel_cdclk_config *a,
+					     const struct intel_cdclk_config *b)
+{
+	u16 old_waveform;
+	u16 new_waveform;
+
+	if (a->vco == 0 || b->vco == 0)
+		return false;
+
+	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
+		return false;
+
+	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
+	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
+
+	return a->vco != b->vco &&
+	       old_waveform != new_waveform;
+}
+
 static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
@@ -2771,9 +2879,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_can_crawl_and_squash(dev_priv,
+					     &old_cdclk_state->actual,
+					     &new_cdclk_state->actual)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Can change cdclk via crawling and squashing\n");
+	} else if (intel_cdclk_can_squash(dev_priv,
+					&old_cdclk_state->actual,
+					&new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squashing\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
-- 
2.25.1

