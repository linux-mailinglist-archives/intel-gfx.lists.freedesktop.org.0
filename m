Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5251F5ED070
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 00:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8326610E174;
	Tue, 27 Sep 2022 22:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A387B10E174
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664319054; x=1695855054;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tQDnOROIznW2lI2b+SIN/3lMBLRMdOszn9noazjgUIg=;
 b=Bl8cXSL8gLpFPmYXsuS9kS1jsiymFddMLsfKpcaYdozBKc8hOCmvEujy
 KY6ibJSiUZ3fFSHs62vBROpfpKoMXI077IWBtjgZjmEOfaz+sLLsGKjWx
 XHk4rginv9LoM+HA6U9T0T7FICr+0gYbstkV2uzgjJ7YgRrMhNQi3jou6
 6J99JR432mcQiCmvSHVYD6Dbk8yC9vO/9cgwHzQ1Mkh9XVfmCKX+h+t8f
 XppNiIzdc8YGnlGS95mTIq48onxKUODlJd6tjmhkFZK8+L/xvbzC4FNEe
 bC+yRvdTfbxf23DN+M6rboeMPNnGhIoCsT4aLt47BbMvDfMoNbMOsNUAy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363289433"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="363289433"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 15:50:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="621689267"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="621689267"
Received: from mramana1-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.255.229.170])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 15:50:53 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 15:50:47 -0700
Message-Id: <20220927225047.227773-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Do both crawl and squash when
 changing cdclk
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

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 144 +++++++++++++++++----
 1 file changed, 116 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index a12e86d92783..f7bc1013b149 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1689,37 +1689,68 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
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
@@ -1772,6 +1803,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
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
@@ -1944,6 +2013,20 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
+static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
+					     const struct intel_cdclk_config *a,
+					     const struct intel_cdclk_config *b)
+{
+	u16 old_waveform = cdclk_squash_waveform(i915, a->cdclk);
+	u16 new_waveform = cdclk_squash_waveform(i915, b->cdclk);
+
+	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
+		return false;
+
+	return a->vco != b->vco &&
+	       old_waveform == new_waveform;
+}
+
 static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
@@ -2750,9 +2833,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
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

