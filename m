Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021CE7DE072
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAD510E6CD;
	Wed,  1 Nov 2023 11:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE5210E6CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698838938; x=1730374938;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XawHU6BDwDZlNvVDz8oHDWSEiXO9n96ihJgTq7X3u2w=;
 b=eVUSqQClbqwXA/bV7vmSpcv2I1v8650shbxyn+2Hvj0jAC79QiASH3bG
 wh8DYZcbZ88qTmXWONXGbw5/fxUL0zRg4eH7R8OeoQQyXTE4TO8KN7gHY
 SsEwrluHaoNvQ2dAwxyupZcCrXtV2dnjqpZkVnvCtlI50ogbOCwZT0qmf
 JLrCs7wclcKwxUSfVMTmafsoIP1kKYBA1jkd7+6ZasgGh0puEL02PxRVn
 5dUKtKkLpg0wNlNQ9MawaP6HtFEwv5bqhj7zQ0JbSPL4byeKzAT1VAAXO
 zCAAjPePy8EwBVB3S9KsKY1Syl7IHnVCLztvgQHFNAmR5n5HK6BqhDD0J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392338770"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="392338770"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754450259"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754450259"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:42:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:42:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 13:42:08 +0200
Message-ID: <20231101114212.9345-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Extract hsw_chicken_trans_reg()
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

We have the same code to determine the CHICKEN_TRANS register
offset sprinkled in a dozen places. Hoover it up into a small
helper.

TODO: find a better home for this

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_ddi.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 18 +++++-------------
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  8 ++------
 drivers/gpu/drm/i915/display/intel_psr.c     | 11 +++++------
 5 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2e37708fecdd..c75fd00e360a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3115,6 +3115,15 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
 	trans_port_sync_stop_link_train(state, encoder, crtc_state);
 }
 
+/* FIXME bad home for this function */
+i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
+				 enum transcoder cpu_transcoder)
+{
+	return DISPLAY_VER(i915) >= 14 ?
+		MTL_CHICKEN_TRANS(cpu_transcoder) :
+		CHICKEN_TRANS(cpu_transcoder);
+}
+
 static i915_reg_t
 gen9_chicken_trans_reg_by_port(struct drm_i915_private *dev_priv,
 			       enum port port)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 4999c0ee229b..db845f2aca0c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -27,6 +27,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *crtc_state);
 i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
+i915_reg_t hsw_chicken_trans_reg(struct drm_i915_private *i915,
+				 enum transcoder cpu_transcoder);
 void intel_ddi_fdi_post_disable(struct intel_atomic_state *state,
 				struct intel_encoder *intel_encoder,
 				const struct intel_crtc_state *old_crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cdec0425f519..1abb81981ef5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -487,11 +487,8 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 
 	intel_de_write(dev_priv, reg, val);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
-		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder),
-			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
 
 	if ((val & TRANSCONF_ENABLE) == 0)
@@ -1502,12 +1499,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
 static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder transcoder = crtc_state->cpu_transcoder;
-	i915_reg_t reg = DISPLAY_VER(dev_priv) >= 14 ? MTL_CHICKEN_TRANS(transcoder) :
-			 CHICKEN_TRANS(transcoder);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	intel_de_rmw(dev_priv, reg,
+	intel_de_rmw(i915, hsw_chicken_trans_reg(i915, crtc_state->cpu_transcoder),
 		     HSW_FRAME_START_DELAY_MASK,
 		     HSW_FRAME_START_DELAY(crtc_state->framestart_delay - 1));
 }
@@ -3791,9 +3785,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, DISPLAY_VER(dev_priv) >= 14 ?
-				    MTL_CHICKEN_TRANS(pipe_config->cpu_transcoder) :
-				    CHICKEN_TRANS(pipe_config->cpu_transcoder));
+		tmp = intel_de_read(dev_priv, hsw_chicken_trans_reg(dev_priv, pipe_config->cpu_transcoder));
 
 		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 82f425ef1595..a32498c7826a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -817,12 +817,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
 				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
 
-	if (DISPLAY_VER(dev_priv) >= 14)
-		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans),
-			     FECSTALL_DIS_DPTSTREAM_DPTTG,
-			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
-	else if (DISPLAY_VER(dev_priv) >= 12)
-		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans),
+	if (DISPLAY_VER(dev_priv) >= 12)
+		intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, trans),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG,
 			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ecd24a0b86cb..920f77336163 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,6 +29,7 @@
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
+#include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -1452,12 +1453,10 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
-			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
-				     ADLP_1_BASED_X_GRANULARITY);
-		else if (IS_ALDERLAKE_P(dev_priv))
-			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
-				     ADLP_1_BASED_X_GRANULARITY);
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
+		    IS_ALDERLAKE_P(dev_priv))
+			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
+				     0, ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
-- 
2.41.0

