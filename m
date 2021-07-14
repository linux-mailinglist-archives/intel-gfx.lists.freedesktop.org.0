Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1163C7C9A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244CA6E15C;
	Wed, 14 Jul 2021 03:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42EC66E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085869"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085869"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031563"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:24 -0700
Message-Id: <20210714031540.3539704-35-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 34/50] drm/i915/dg2: Skip shared DPLL handling
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG2 has no shared DPLL's or DDI clock muxing.  The Port PLL is embedded
within the PHY.

Bspec: 54032
Bspec: 54034
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 10 +++++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 ++++-
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 65ddb6ca16e6..45dc58dedf57 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3474,7 +3474,8 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 		 * Enable sequence steps 1-7 on bigjoiner master
 		 */
 		intel_encoders_pre_pll_enable(state, master);
-		intel_enable_shared_dpll(master_crtc_state);
+		if (master_crtc_state->shared_dpll)
+			intel_enable_shared_dpll(master_crtc_state);
 		intel_encoders_pre_enable(state, master);
 
 		/* and DSC on slave */
@@ -8633,10 +8634,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 
 	PIPE_CONF_CHECK_BOOL(double_wide);
 
-	PIPE_CONF_CHECK_P(shared_dpll);
+	if (dev_priv->dpll.mgr)
+		PIPE_CONF_CHECK_P(shared_dpll);
 
 	/* FIXME do the readout properly and get rid of this quirk */
-	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
+	if (dev_priv->dpll.mgr && !PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll);
 		PIPE_CONF_CHECK_X(dpll_hw_state.dpll_md);
 		PIPE_CONF_CHECK_X(dpll_hw_state.fp0);
@@ -8668,7 +8670,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_ssc);
 		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_bias);
 		PIPE_CONF_CHECK_X(dpll_hw_state.mg_pll_tdc_coldst_bias);
+	}
 
+	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE)) {
 		PIPE_CONF_CHECK_X(dsi_pll.ctrl);
 		PIPE_CONF_CHECK_X(dsi_pll.div);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 882bfd499e55..5688d9704636 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4462,7 +4462,10 @@ void intel_shared_dpll_init(struct drm_device *dev)
 	const struct dpll_info *dpll_info;
 	int i;
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (IS_DG2(dev_priv))
+		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
+		dpll_mgr = NULL;
+	else if (IS_ALDERLAKE_P(dev_priv))
 		dpll_mgr = &adlp_pll_mgr;
 	else if (IS_ALDERLAKE_S(dev_priv))
 		dpll_mgr = &adls_pll_mgr;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
