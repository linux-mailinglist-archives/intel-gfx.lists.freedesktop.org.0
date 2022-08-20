Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC0659AA52
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 03:00:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB0510E1B6;
	Sat, 20 Aug 2022 00:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83A410E1B6
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Aug 2022 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660957133; x=1692493133;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mqyh4pO45SkTximprPm8fk6cUJa+0pHIMLoEcCC1ev4=;
 b=GQ9B3RFvXwHqWzVX/N7MTz+z+j6G0JjxS3GZxjnZUzNExcSLg8Z9BBC0
 dH7nF4AzTpaFuPkewa4kq8+ldEcXbwtgpdFsebVQH7Beyjavtfln3/J0e
 z4/mNIkmqxIVPYHZJ1XkOZP1suX7mOhHR7vDUUYy0NM5xgYK1QdEINHQ6
 tv0/rxQVtcXBu1dx1f83fPXRxTujYpOXJpQ4xAZjkMroDTZDEg2adwksE
 aGPhdT+LBgTUtkd07Ak346ySItPPclRA95UHCwBZ6Rzo4Rv4BV4AME8Hk
 OZG/NFoCSqshjWdn4zpJleL9bS9ipfJcceX8TeXiqhK+DqR5ZTErZjRsh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294411886"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="294411886"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="676626681"
Received: from cdhirema-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.188.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:52 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 17:58:21 -0700
Message-Id: <20220820005822.102716-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display:
 s/intel_cdclk_can_crawl/intel_cdclk_crawl
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

Apart from checking if crawling can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

v2: Move crawling steps to a switch case (anusha)
Cc: Matt Roper <matthew.d.roper@intel.com>

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 45 +++++++++++++---------
 1 file changed, 26 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f98fd48fe905..7bba10635c5e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,6 +38,7 @@
 #include "intel_psr.h"
 #include "vlv_sideband.h"
 
+#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)
 /**
  * DOC: CDCLK / RAWCLK
  *
@@ -1727,10 +1728,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
-		if (dev_priv->cdclk.hw.vco != vco)
-			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	if (!ADLP_CDCLK_CRAWL(dev_priv, vco) && DISPLAY_VER(dev_priv) >= 11) {
 		if (dev_priv->cdclk.hw.vco != 0 &&
 		    dev_priv->cdclk.hw.vco != vco)
 			icl_cdclk_pll_disable(dev_priv);
@@ -1748,18 +1746,21 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if (waveform && has_cdclk_squasher(dev_priv)) {
-		clock = vco / 2;
+	if ((waveform && has_cdclk_squasher(dev_priv)) || ADLP_CDCLK_CRAWL(dev_priv, vco)) {
 		for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
 			switch (cdclk_steps[i].action) {
+			case INTEL_CDCLK_CRAWL:
+				adlp_cdclk_pll_crawl(dev_priv, vco);
+				clock = cdclk;
+				break;
 			case INTEL_CDCLK_SQUASH:
 				waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
 				squash_ctl = CDCLK_SQUASH_ENABLE |
 					     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
 				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+				clock = vco / 2;
 				break;
 			case INTEL_CDCLK_NOOP:
-			case INTEL_CDCLK_CRAWL:
 			case INTEL_CDCLK_MODESET:
 				break;
 			default:
@@ -1956,10 +1957,11 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
-				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+			      const struct intel_cdclk_state *a,
+			      struct intel_cdclk_state *b)
 {
+	struct cdclk_step *cdclk_transition = b->steps;
 	int a_div, b_div;
 
 	if (!HAS_CDCLK_CRAWL(dev_priv))
@@ -1969,13 +1971,18 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	 * The vco and cd2x divider will change independently
 	 * from each, so we disallow cd2x change when crawling.
 	 */
-	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
-	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
+	a_div = DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
+	b_div = DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
 
-	return a->vco != 0 && b->vco != 0 &&
-		a->vco != b->vco &&
-		a_div == b_div &&
-		a->ref == b->ref;
+	cdclk_transition[0].action = INTEL_CDCLK_CRAWL;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
+
+	return a->actual.vco != 0 && b->actual.vco != 0 &&
+		a->actual.vco != b->actual.vco &&
+ 		a_div == b_div && 
+		a->actual.ref == b->actual.ref;
 }
 
 static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
@@ -2781,9 +2788,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+	} else if (intel_cdclk_crawl(dev_priv,
+				     old_cdclk_state,
+				     new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
-- 
2.25.1

