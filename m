Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D78391A68
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C871B6EDBD;
	Wed, 26 May 2021 14:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5236EDA4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:37:34 +0000 (UTC)
IronPort-SDR: ++8AK3Vr9WmBQ8StfEod+9OpjgYnI1NY+Gv0oPCXJNo0Mo3RjXznyAU/0TxQOk8E4DeXYhTy5T
 sSPf+IUh0VTQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="223666160"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223666160"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:34 -0700
IronPort-SDR: keBKhVCKWrzc9MjVVFemHSSsDOwKEIW71D3VEggb6hehn/xH9WMGmL9Ac8KHi/+VbSO8VjK8lS
 NL7zIYNKcbbQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476968697"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 17:37:29 +0300
Message-Id: <20210526143729.2563672-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210526143729.2563672-1-imre.deak@intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/adlp: Fix AUX power well -> PHY
 mapping
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On ADL_P the power well->PHY mapping doesn't follow the mapping on previous
platforms, fix this up.

While at it remove the redundant dev_priv param from
icl_tc_phy_aux_ch().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 34 ++++++++++---------
 1 file changed, 18 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a95bbf23e6b7c..7ddd63114b36b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -291,8 +291,7 @@ static void hsw_power_well_pre_disable(struct drm_i915_private *dev_priv,
 #define ICL_TBT_AUX_PW_TO_CH(pw_idx)	\
 	((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
 
-static enum aux_ch icl_tc_phy_aux_ch(struct drm_i915_private *dev_priv,
-				     struct i915_power_well *power_well)
+static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well *power_well)
 {
 	int pw_idx = power_well->desc->hsw.idx;
 
@@ -327,6 +326,15 @@ aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
 	return dig_port;
 }
 
+static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
+				  const struct i915_power_well *power_well)
+{
+	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
+	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
+
+	return intel_port_to_phy(i915, dig_port->base.port);
+}
+
 static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
 					   struct i915_power_well *power_well,
 					   bool timeout_expected)
@@ -468,15 +476,13 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
 	hsw_wait_for_power_well_disable(dev_priv, power_well);
 }
 
-#define ICL_AUX_PW_TO_PHY(pw_idx)	((pw_idx) - ICL_PW_CTL_IDX_AUX_A)
-
 static void
 icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				    struct i915_power_well *power_well)
 {
 	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 	int pw_idx = power_well->desc->hsw.idx;
-	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
@@ -508,7 +514,7 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 {
 	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 	int pw_idx = power_well->desc->hsw.idx;
-	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 	u32 val;
 
 	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
@@ -595,7 +601,7 @@ static void
 icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				 struct i915_power_well *power_well)
 {
-	enum aux_ch aux_ch = icl_tc_phy_aux_ch(dev_priv, power_well);
+	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
 	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
 	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
@@ -643,7 +649,7 @@ static void
 icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
 				  struct i915_power_well *power_well)
 {
-	enum aux_ch aux_ch = icl_tc_phy_aux_ch(dev_priv, power_well);
+	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
 	struct intel_digital_port *dig_port = aux_ch_to_digital_port(dev_priv, aux_ch);
 
 	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
@@ -655,11 +661,9 @@ static void
 icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
 			  struct i915_power_well *power_well)
 {
-	int pw_idx = power_well->desc->hsw.idx;
-	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
-	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
-	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
+	if (intel_phy_is_tc(dev_priv, phy))
 		return icl_tc_phy_aux_power_well_enable(dev_priv, power_well);
 	else if (IS_ICELAKE(dev_priv))
 		return icl_combo_phy_aux_power_well_enable(dev_priv,
@@ -672,11 +676,9 @@ static void
 icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
 			   struct i915_power_well *power_well)
 {
-	int pw_idx = power_well->desc->hsw.idx;
-	enum phy phy = ICL_AUX_PW_TO_PHY(pw_idx);  /* non-TBT only */
-	bool is_tbt = power_well->desc->hsw.is_tc_tbt;
+	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
 
-	if (is_tbt || intel_phy_is_tc(dev_priv, phy))
+	if (intel_phy_is_tc(dev_priv, phy))
 		return icl_tc_phy_aux_power_well_disable(dev_priv, power_well);
 	else if (IS_ICELAKE(dev_priv))
 		return icl_combo_phy_aux_power_well_disable(dev_priv,
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
