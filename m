Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3281959AA50
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 03:00:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275DE10E133;
	Sat, 20 Aug 2022 00:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 572A110E1D8
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Aug 2022 00:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660957134; x=1692493134;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gAyZhR33hhqQH38dAFykd3GouuCzh88OPCO0t+iTzJs=;
 b=L8G2u8SMnACGPxGrR0NRrgXVpqbn+nhsNN9lY2tl5QZ+yaBDyskEk/QD
 D2YFIdz2a3/h2A9zLBCEsdRwG0/+ST3I7cZh/n2n+1OmmtRVw5wgekinM
 5t0+AZXb02blI0Lh2nLyJEmm3gskCo3pU52XdAZPR/bW63X61v+LPUkET
 87vANye74jnijPwUDbPyGbPcLtGkLj5VxdU1tHIYLR0n+ftFySva0lq73
 iK/do3FMJW3vxjXyo+v8lrvzpS3bb1M0OvwAq0aOswmbQlazaC8+8NLSU
 0kxfkPPUJ7bj2JQNkM+HaZg9s76yg7lyO+9y4plskexm5YeAYCopFh7BL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294411887"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="294411887"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:54 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="676626682"
Received: from cdhirema-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.188.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:53 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 17:58:22 -0700
Message-Id: <20220820005822.102716-5-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
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

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 61 ++++++++++++++--------
 1 file changed, 38 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7bba10635c5e..cb58fc857484 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -38,7 +38,6 @@
 #include "intel_psr.h"
 #include "vlv_sideband.h"
 
-#define ADLP_CDCLK_CRAWL(dev_priv, vco)	(HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0)
 /**
  * DOC: CDCLK / RAWCLK
  *
@@ -1728,27 +1727,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (!ADLP_CDCLK_CRAWL(dev_priv, vco) && DISPLAY_VER(dev_priv) >= 11) {
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
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if ((waveform && has_cdclk_squasher(dev_priv)) || ADLP_CDCLK_CRAWL(dev_priv, vco)) {
-		for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
-			switch (cdclk_steps[i].action) {
+	for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
+		switch (cdclk_steps[i].action) {
 			case INTEL_CDCLK_CRAWL:
 				adlp_cdclk_pll_crawl(dev_priv, vco);
 				clock = cdclk;
@@ -1760,15 +1742,28 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
 				clock = vco / 2;
 				break;
-			case INTEL_CDCLK_NOOP:
 			case INTEL_CDCLK_MODESET:
+				if (DISPLAY_VER(dev_priv) >= 11) {
+					if (dev_priv->cdclk.hw.vco != 0 &&
+					    dev_priv->cdclk.hw.vco != vco)
+						icl_cdclk_pll_disable(dev_priv);
+					if (dev_priv->cdclk.hw.vco != vco)
+						icl_cdclk_pll_enable(dev_priv, vco);
+				} else {
+					if (dev_priv->cdclk.hw.vco != 0 &&
+					    dev_priv->cdclk.hw.vco != vco)
+						bxt_de_pll_disable(dev_priv);
+					if (dev_priv->cdclk.hw.vco != vco)
+						bxt_de_pll_enable(dev_priv, vco);
+				}
+				clock = cdclk;
+				break;
+			case INTEL_CDCLK_NOOP:
 				break;
 			default:
 				break;
 			}
 		}
-	} else
-		clock = cdclk;
 
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
@@ -2010,6 +2005,24 @@ static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
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
@@ -2801,6 +2814,8 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
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

