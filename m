Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC66BD10F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F9210E221;
	Thu, 16 Mar 2023 13:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C29010E230
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974043; x=1710510043;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fGwznPd7gPQeAwBYCsZl9sisjKxhn/xRoURTzMVkTLk=;
 b=SOLv0xCN8/FO/+3gljI5dBVp551AYyzW78z1pgoJdOWWleu/rnWBI9r1
 O2s9XQknvvVqKpWSDcCkppFKtdolCirQtqIsh6rDPd278CWGVwjT5X3Mj
 Aws9hVzHbao+1jAoEw9mLu221brVvt8OPY5nzwYYadC3b+qYwFbMxWUQ0
 1g2/680VHaJguPrzqIVZ+2YMDNBaw7aDcOZz+Jj7PbHjt7efwpxY8sj0W
 TBcItDHN9r1bxKVFFd5QcopvvVES8N8OEbyrfVCeMWf49CyFx/HNDcuID
 vhFCt+eDaPmvX8eB0SvzqUE9jEyb7y6DjxqIae/ukBn4f/+xl1VDlCQdI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524825"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524825"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171284"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171284"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:22 +0200
Message-Id: <20230316131724.359612-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] drm/i915: Add encoder hook to get the PLL
 type used by TC ports
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

Add an encoder hook, which can be called on enabled TC ports to
determine if the port uses a TBT or a non-TBT PLL. An upcoming patch
will use this to sanity check active TC port's PHY state wrt. the PLL
type used by the port.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 37 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_ddi.h      |  3 ++
 .../drm/i915/display/intel_display_types.h    |  5 +++
 3 files changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e79da640759c3..da4e1a047a806 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3541,6 +3541,37 @@ static void icl_ddi_combo_get_config(struct intel_encoder *encoder,
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
+static bool icl_ddi_tc_pll_is_tbt(const struct intel_shared_dpll *pll)
+{
+	return pll->info->id == DPLL_ID_ICL_TBTPLL;
+}
+
+static enum icl_port_dpll_id
+icl_ddi_tc_port_pll_type(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_shared_dpll *pll = crtc_state->shared_dpll;
+
+	if (drm_WARN_ON(&i915->drm, !pll))
+		return ICL_PORT_DPLL_DEFAULT;
+
+	if (icl_ddi_tc_pll_is_tbt(pll))
+		return ICL_PORT_DPLL_DEFAULT;
+	else
+		return ICL_PORT_DPLL_MG_PHY;
+}
+
+enum icl_port_dpll_id
+intel_ddi_port_pll_type(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state)
+{
+	if (!encoder->port_pll_type)
+		return ICL_PORT_DPLL_DEFAULT;
+
+	return encoder->port_pll_type(encoder, crtc_state);
+}
+
 static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct intel_shared_dpll *pll)
@@ -3553,7 +3584,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 	if (drm_WARN_ON(&i915->drm, !pll))
 		return;
 
-	if (pll->info->id == DPLL_ID_ICL_TBTPLL)
+	if (icl_ddi_tc_pll_is_tbt(pll))
 		port_dpll_id = ICL_PORT_DPLL_DEFAULT;
 	else
 		port_dpll_id = ICL_PORT_DPLL_MG_PHY;
@@ -3566,7 +3597,7 @@ static void icl_ddi_tc_get_clock(struct intel_encoder *encoder,
 
 	icl_set_active_port_dpll(crtc_state, port_dpll_id);
 
-	if (crtc_state->shared_dpll->info->id == DPLL_ID_ICL_TBTPLL)
+	if (icl_ddi_tc_pll_is_tbt(crtc_state->shared_dpll))
 		crtc_state->port_clock = icl_calc_tbt_pll_link(i915, encoder->port);
 	else
 		crtc_state->port_clock = intel_dpll_get_freq(i915, crtc_state->shared_dpll,
@@ -4402,6 +4433,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			encoder->enable_clock = jsl_ddi_tc_enable_clock;
 			encoder->disable_clock = jsl_ddi_tc_disable_clock;
 			encoder->is_clock_enabled = jsl_ddi_tc_is_clock_enabled;
+			encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 			encoder->get_config = icl_ddi_combo_get_config;
 		} else {
 			encoder->enable_clock = icl_ddi_combo_enable_clock;
@@ -4414,6 +4446,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			encoder->enable_clock = icl_ddi_tc_enable_clock;
 			encoder->disable_clock = icl_ddi_tc_disable_clock;
 			encoder->is_clock_enabled = icl_ddi_tc_is_clock_enabled;
+			encoder->port_pll_type = icl_ddi_tc_port_pll_type;
 			encoder->get_config = icl_ddi_tc_get_config;
 		} else {
 			encoder->enable_clock = icl_ddi_combo_enable_clock;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 361f6874dde53..c85e74ae68e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -40,6 +40,9 @@ void hsw_ddi_enable_clock(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 void hsw_ddi_disable_clock(struct intel_encoder *encoder);
 bool hsw_ddi_is_clock_enabled(struct intel_encoder *encoder);
+enum icl_port_dpll_id
+intel_ddi_port_pll_type(struct intel_encoder *encoder,
+			const struct intel_crtc_state *crtc_state);
 void hsw_ddi_get_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *crtc_state);
 struct intel_shared_dpll *icl_ddi_combo_get_pll(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 06bbfd426ac70..abb72e1f27d5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -255,6 +255,11 @@ struct intel_encoder {
 	 * Returns whether the port clock is enabled or not.
 	 */
 	bool (*is_clock_enabled)(struct intel_encoder *encoder);
+	/*
+	 * Returns the PLL type the port uses.
+	 */
+	enum icl_port_dpll_id (*port_pll_type)(struct intel_encoder *encoder,
+					       const struct intel_crtc_state *crtc_state);
 	const struct intel_ddi_buf_trans *(*get_buf_trans)(struct intel_encoder *encoder,
 							   const struct intel_crtc_state *crtc_state,
 							   int *n_entries);
-- 
2.37.1

