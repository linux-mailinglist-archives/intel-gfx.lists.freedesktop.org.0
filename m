Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345F59AA51
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Aug 2022 03:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A4310E1E6;
	Sat, 20 Aug 2022 00:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38DB10E133
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Aug 2022 00:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660957132; x=1692493132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bIjhQJ4AiVU048aV2nF5bQLq4TudkwoQtvweyz2Zr54=;
 b=Qt3u9o7ajpQlAz5tMN2ObBAxKr7IW74NKKQq14RvN8zimYqGdG+XqUJF
 wffa/OaPItsoS0BHo1TEwOrqyMsV9SGmeRnSQPicO0r7JXIGZAVQOJswe
 tz7WWSbpnZ8fhAgGGr/QSyB1bTGVdIjV9LlTRNmSG2bB5WS+KxY5Xrfqa
 WPW1iqa45r3cwA9h5cYjEMLuHd1iIMfH+YV3GwEGOEx2YIOHFaS4FS+x/
 ScrJbI9svcQZA9vMGQNdMvCps/DrYlVyTUju94+b5lgTtwz9RFYOP8ZSQ
 v7xCT+VltgdMDxIIYiy+7vrmZDLup/W56/Eduxt6+XH940F/IJdlUG2Ez A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="294411881"
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="294411881"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,249,1654585200"; d="scan'208";a="676626678"
Received: from cdhirema-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.188.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 17:58:51 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 17:58:20 -0700
Message-Id: <20220820005822.102716-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220820005822.102716-1-anusha.srivatsa@intel.com>
References: <20220820005822.102716-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/squash:
 s/intel_cdclk_can_squash/intel_cdclk_squash
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

Apart from checking if squashing can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

v2: Move squashing bits to switch case.(Anusha)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 62 ++++++++++++++--------
 1 file changed, 40 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 86a22c3766e5..f98fd48fe905 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1693,12 +1693,18 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct intel_cdclk_state *cdclk_state = to_intel_cdclk_state(dev_priv->cdclk.obj.state);
+	struct intel_atomic_state *state = cdclk_state->base.state;
+	struct intel_cdclk_state *new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	struct cdclk_step *cdclk_steps = new_cdclk_state->steps;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
+	u32 squash_ctl = 0;
 	u32 val;
 	u16 waveform;
 	int clock;
 	int ret;
+	int i;
 
 	/* Inform power controller of upcoming frequency change. */
 	if (DISPLAY_VER(dev_priv) >= 11)
@@ -1742,21 +1748,27 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if (waveform)
+	if (waveform && has_cdclk_squasher(dev_priv)) {
 		clock = vco / 2;
-	else
+		for (i = 0; i < MAX_CDCLK_ACTIONS; i++) {
+			switch (cdclk_steps[i].action) {
+			case INTEL_CDCLK_SQUASH:
+				waveform =  cdclk_squash_waveform(dev_priv, cdclk_steps[i].cdclk);
+				squash_ctl = CDCLK_SQUASH_ENABLE |
+					     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
+				intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
+				break;
+			case INTEL_CDCLK_NOOP:
+			case INTEL_CDCLK_CRAWL:
+			case INTEL_CDCLK_MODESET:
+				break;
+			default:
+				break;
+			}
+		}
+	} else
 		clock = cdclk;
 
-	if (has_cdclk_squasher(dev_priv)) {
-		u32 squash_ctl = 0;
-
-		if (waveform)
-			squash_ctl = CDCLK_SQUASH_ENABLE |
-				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
-
-		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
-	}
-
 	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
 		skl_cdclk_decimal(cdclk);
@@ -1966,10 +1978,11 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 		a->ref == b->ref;
 }
 
-static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
-				   const struct intel_cdclk_config *a,
-				   const struct intel_cdclk_config *b)
+static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
+			       const struct intel_cdclk_state *a,
+			       struct intel_cdclk_state *b)
 {
+	struct cdclk_step *cdclk_transition = b->steps;
 	/*
 	 * FIXME should store a bit more state in intel_cdclk_config
 	 * to differentiate squasher vs. cd2x divider properly. For
@@ -1978,11 +1991,16 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	 */
 	if (!has_cdclk_squasher(dev_priv))
 		return false;
+	
+	cdclk_transition[0].action = INTEL_CDCLK_SQUASH;
+	cdclk_transition[0].cdclk = b->actual.cdclk;
+	cdclk_transition[1].action = INTEL_CDCLK_NOOP;
+	cdclk_transition[1].cdclk = b->actual.cdclk;
 
-	return a->cdclk != b->cdclk &&
-		a->vco != 0 &&
-		a->vco == b->vco &&
-		a->ref == b->ref;
+	return a->actual.cdclk != b->actual.cdclk &&
+		a->actual.vco != 0 &&
+		a->actual.vco == b->actual.vco &&
+		a->actual.ref == b->actual.ref;
 }
 
 /**
@@ -2758,9 +2776,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_squash(dev_priv,
-				   &old_cdclk_state->actual,
-				   &new_cdclk_state->actual)) {
+	if (intel_cdclk_squash(dev_priv,
+			       old_cdclk_state,
+			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
 	} else if (intel_cdclk_can_crawl(dev_priv,
-- 
2.25.1

