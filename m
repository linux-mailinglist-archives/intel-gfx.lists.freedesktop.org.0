Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AF646FBB1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 08:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 979DC10E6DA;
	Fri, 10 Dec 2021 07:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A6C10E6C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 07:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639121811; x=1670657811;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rKF947IZrduxyA+fNiX0VlpqcRzcdrgtZeAbESRJjOw=;
 b=RcsdkwBBRxscTDf9x7GjVH5oxQ2D5OR1KRz76xQ1xVTl4DBJ08306zvQ
 l2dbYKCRsUqKX1RuBgQPUKp5cNOSvaZErq9lqaJzCzDTJDHXgH6T5uF44
 +CeWFIsw07OEgUp0thoEeCXG2kf3e/nCq64htMfEUhgctvA60g700A+NC
 cJL1UwmVwcx8Q41zkJTSgCzQkoDsJP27yxb6bIcJWeIV1uFSzLJNmhUxV
 yg6WEHcmxibqB7jB+S3tpKEeEYovr0ORBq3TihOozEhxs9fI/BCJeUeVR
 EXgj3DTZPcuPFHaWIHO3LRW8Ms5FlZetBPNaPYW+7M18Akvu8okIvndYW A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218984338"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="218984338"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 23:36:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="462451197"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 23:36:38 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 23:34:51 -0800
Message-Id: <20211210073451.2526909-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC] drm/i915/display: Move cdclk checks to atomic
 check
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

i915 has squashing for DG2 and crawling for ADLP.
Moving the checks to atomic check phase so
at a later phase we know how the cdclk changes.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 49 +++++++++++++---------
 drivers/gpu/drm/i915/i915_drv.h            | 11 +++++
 2 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 639a64733f61..9382dd24d889 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1707,9 +1707,27 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
-		if (dev_priv->cdclk.hw.vco != vco)
-			adlp_cdclk_pll_crawl(dev_priv, vco);
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		int i = 0;
+		u32 squash_ctl = 0;
+		struct cdclk_steps *cdclk_steps = dev_priv->cdclk.steps;
+
+		for (i = 0; i < CDCLK_ACTIONS; i++) {
+			switch (cdclk_steps[i].action) {
+			case CRAWL:
+				adlp_cdclk_pll_crawl(dev_priv, vco);
+				break;
+			case SQUASH:
+				waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
+				clock = vco / 2;
+				squash_ctl = CDCLK_SQUASH_ENABLE |
+				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+				break;
+			default:
+				break;
+			}
+		}
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		if (dev_priv->cdclk.hw.vco != 0 &&
 		    dev_priv->cdclk.hw.vco != vco)
@@ -1726,22 +1744,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			bxt_de_pll_enable(dev_priv, vco);
 	}
 
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
-			squash_ctl = CDCLK_SQUASH_ENABLE |
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
-	}
+	clock = cdclk;
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
@@ -1934,6 +1937,7 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
 {
+	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
 	int a_div, b_div;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
@@ -1946,6 +1950,9 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
 	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
 
+	cdclk_transition[0].action = CRAWL;
+	cdclk_transition[0].cdclk = b->cdclk;
+
 	return a->vco != 0 && b->vco != 0 &&
 		a->vco != b->vco &&
 		a_div == b_div &&
@@ -1956,6 +1963,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 				   const struct intel_cdclk_config *a,
 				   const struct intel_cdclk_config *b)
 {
+	struct cdclk_steps *cdclk_transition = dev_priv->cdclk.steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1965,6 +1973,9 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
 
+	cdclk_transition[0].action = SQUASH;
+	cdclk_transition[0].cdclk = b->cdclk;
+
 	return a->cdclk != b->cdclk &&
 		a->vco != 0 &&
 		a->vco == b->vco &&
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ae7dc7862b5d..c03299253b81 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -117,6 +117,12 @@
 
 struct drm_i915_gem_object;
 
+enum cdclk_actions {
+	SQUASH = 0,
+	CRAWL,
+	CDCLK_ACTIONS
+};
+
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
@@ -782,6 +788,11 @@ struct drm_i915_private {
 		const struct intel_cdclk_vals *table;
 
 		struct intel_global_obj obj;
+
+		struct cdclk_steps {
+			enum cdclk_actions action;
+			u32 cdclk;
+		} steps[CDCLK_ACTIONS];
 	} cdclk;
 
 	struct {
-- 
2.25.1

