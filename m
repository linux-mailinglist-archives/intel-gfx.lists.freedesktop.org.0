Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C244D5FE5E3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 01:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756EE10E9ED;
	Thu, 13 Oct 2022 23:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B6710E9EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 23:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665703955; x=1697239955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XV6Iq16Pz9rKigUivx4h2T1q5p5ABbyWvDMAX+llR9w=;
 b=FXRCJSSMZ/1spXh9dkurt6N59ee+CUJIw48E7skZy3zX0PUoJyGX+OBT
 E77yU2C7G8ug4+Y/PVTyH8ncpwWANcqkrdSRq/w6Sqo8JtPc8KBlu6TN5
 8Bqiz1kHdZJKcZmAVDgAo7DtbMfCu1rqpGr1kL4imOHqv93Fr4d9VTzWf
 BU/B5JhMJNxhRoEuWBCsk5i9e/vgARb23zlcqs5LSPy8KeP5Ji3+XOXnh
 oxX2tAc+x7QiaEHnkzueajYNtpI0YPkYvlY9YZuMQzktOGVUc40fKqwhC
 fjFctWz7y9MbfLnJjP/x4R3SqHs+nBG7aacnhgqMxUfnJaHANUMbB4KfI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="292585207"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="292585207"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 16:32:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="752714457"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="752714457"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 16:32:34 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 16:32:22 -0700
Message-Id: <20221013233223.103381-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and squash
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For MTL, changing cdclk from between certain frequencies has
both squash and crawl. Use the current cdclk config and
the new(desired) cdclk config to construtc a mid cdclk config.
Set the cdclk twice:
- Current cdclk -> mid cdclk
- mid cdclk -> desired cdclk

v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
change via modeset for platforms that support squash_crawl sequences(Ville)

v3: Add checks for:
- scenario where only slow clock is used and
cdclk is actually 0 (bringing up display).
- PLLs are on before looking up the waveform.
- Squash and crawl capability checks.(Ville)

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 157 +++++++++++++++++----
 1 file changed, 128 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ad401357ab66..430b4cb0a8ab 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1675,7 +1675,7 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
 	int i;
 
-	if (cdclk == dev_priv->display.cdclk.hw.bypass)
+	if (cdclk == dev_priv->display.cdclk.hw.bypass || cdclk == 0)
 		return 0;
 
 	for (i = 0; table[i].refclk; i++)
@@ -1689,37 +1689,72 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	return 0xffff;
 }
 
-static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
-			  const struct intel_cdclk_config *cdclk_config,
-			  enum pipe pipe)
+static int cdclk_squash_divider(u16 waveform)
+{
+	return hweight16(waveform ?: 0xffff);
+}
+
+static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
+				   const struct intel_cdclk_config *old_cdclk_config,
+				   const struct intel_cdclk_config *new_cdclk_config,
+				   struct intel_cdclk_config *mid_cdclk_config)
+{
+	u16 old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
+	u16 new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
+	u16 mid_waveform;
+	int size = 16;
+	int div = 2;
+
+	/* Return if both Squash and Crawl are not present */
+	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
+		return false;
+
+	/* Return if Squash only or Crawl only is the desired action */
+	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
+	    old_cdclk_config->vco == new_cdclk_config->vco ||
+	    old_waveform == new_waveform)
+		return false;
+
+	*mid_cdclk_config = *new_cdclk_config;
+
+	/* If moving to a higher cdclk(squash) the mid cdclk config
+	 * should have the new (squash) waveform.
+	 * If moving to a lower cdclk (crawl) the mid cdclk config
+	 * should have the new vco.
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
 
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
@@ -1772,6 +1807,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	if (pipe != INVALID_PIPE)
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
+}
+
+static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
+			  const struct intel_cdclk_config *cdclk_config,
+			  enum pipe pipe)
+{
+	struct intel_cdclk_config mid_cdclk_config;
+	int cdclk = cdclk_config->cdclk;
+	int ret;
+
+	/* Inform power controller of upcoming frequency change. */
+	if (DISPLAY_VER(dev_priv) >= 11)
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
+	if (ret) {
+		drm_err(&dev_priv->drm,
+			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
+			ret, cdclk);
+		return;
+	}
+
+	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
+				   cdclk_config, &mid_cdclk_config)) {
+		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
+		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+	} else {
+		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+	}
 
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
@@ -1944,6 +2017,27 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
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
+	if (HAS_CDCLK_CRAWL(i915) && has_cdclk_squasher(i915)) {
+		old_waveform = cdclk_squash_waveform(i915, a->cdclk);
+		new_waveform = cdclk_squash_waveform(i915, b->cdclk);
+	} else {
+		return false;
+	}
+
+	return a->vco != b->vco &&
+	       old_waveform != new_waveform;
+}
+
 static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
@@ -2750,9 +2844,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_can_crawl_and_squash(dev_priv,
+					     &old_cdclk_state->actual,
+					     &new_cdclk_state->actual)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Can change cdclk via crawler and squasher\n");
+	} else if (intel_cdclk_can_squash(dev_priv,
+					&old_cdclk_state->actual,
+					&new_cdclk_state->actual)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
-- 
2.25.1

