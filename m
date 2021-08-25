Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1063F7965
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83BF189020;
	Wed, 25 Aug 2021 15:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9971A89020
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:48:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217268383"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217268383"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:48:13 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="494313699"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:48:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 25 Aug 2021 18:47:50 +0300
Message-Id: <7984e670c6bb092d213d90f838d526d594d4a690.1629906431.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629906431.git.jani.nikula@intel.com>
References: <cover.1629906431.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/fdi: move more FDI stuff to FDI
 link train hooks
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

Accept slight duplication in the fdi link train hooks in exchange for
simplification in ilk_pch_enable(). This lets us make
ivb_update_fdi_bc_bifurcation() static again, now in intel_fdi.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  8 -------
 drivers/gpu/drm/i915/display/intel_fdi.c     | 25 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fdi.h     |  1 -
 3 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f62bbff7a6be..e7b6969cd2e2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2059,14 +2059,6 @@ static void ilk_pch_enable(const struct intel_atomic_state *state,
 
 	assert_pch_transcoder_disabled(dev_priv, pipe);
 
-	if (IS_IVYBRIDGE(dev_priv))
-		ivb_update_fdi_bc_bifurcation(crtc_state);
-
-	/* Write the TU size bits before fdi link training, so that error
-	 * detection works. */
-	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
-		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
-
 	/* For PCH output, training FDI link */
 	dev_priv->display.fdi_link_train(crtc, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index f8ffd5c032ae..f5e42985084a 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -195,7 +195,7 @@ static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool e
 	intel_de_posting_read(dev_priv, SOUTH_CHICKEN1);
 }
 
-void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
+static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -270,6 +270,13 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
 	i915_reg_t reg;
 	u32 temp, tries;
 
+	/*
+	 * Write the TU size bits before fdi link training, so that error
+	 * detection works.
+	 */
+	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+
 	/* FDI needs bits from pipe first */
 	assert_pipe_enabled(dev_priv, crtc_state->cpu_transcoder);
 
@@ -373,6 +380,13 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
 	i915_reg_t reg;
 	u32 temp, i, retry;
 
+	/*
+	 * Write the TU size bits before fdi link training, so that error
+	 * detection works.
+	 */
+	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
@@ -510,6 +524,15 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
 	i915_reg_t reg;
 	u32 temp, i, j;
 
+	ivb_update_fdi_bc_bifurcation(crtc_state);
+
+	/*
+	 * Write the TU size bits before fdi link training, so that error
+	 * detection works.
+	 */
+	intel_de_write(dev_priv, FDI_RX_TUSIZE1(pipe),
+		       intel_de_read(dev_priv, PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);
+
 	/* Train 1: umask FDI RX Interrupt symbol_lock and bit_lock bit
 	   for train result */
 	reg = FDI_RX_IMR(pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index 135802e4da68..cda9a32c25ba 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -16,7 +16,6 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
 			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
-void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state);
 void intel_fdi_normal_train(struct intel_crtc *crtc);
 void ilk_fdi_disable(struct intel_crtc *crtc);
 void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
-- 
2.20.1

