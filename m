Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055E63C7C9B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7ED6E17B;
	Wed, 14 Jul 2021 03:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423986E15C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:16:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085885"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085885"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:16:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031610"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:16:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:37 -0700
Message-Id: <20210714031540.3539704-48-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 47/50] drm/i915/dg2: Update lane disable
 power state during PSR
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

From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

The PSR enable/disable sequences now require that we program an extra
register in the PHY to adjust the lane disable power setting.

Bspec: 49274
Bspec: 53885
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      |  7 +++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_snps_phy.h |  3 +++
 drivers/gpu/drm/i915/i915_reg.h               |  3 +++
 4 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4dfe1dceb863..c987a7fbc8fe 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -32,6 +32,7 @@
 #include "intel_dp_aux.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
+#include "intel_snps_phy.h"
 #include "intel_sprite.h"
 #include "skl_universal_plane.h"
 
@@ -1206,6 +1207,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 	struct intel_encoder *encoder = &dig_port->base;
 	u32 val;
 
@@ -1231,6 +1233,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
 				     &intel_dp->psr.vsc);
 	intel_write_dp_vsc_sdp(encoder, crtc_state, &intel_dp->psr.vsc);
+	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
 	intel_psr_enable_source(intel_dp);
 	intel_dp->psr.enabled = true;
@@ -1327,6 +1330,8 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum phy phy = intel_port_to_phy(dev_priv,
+					 dp_to_dig_port(intel_dp)->base.port);
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
@@ -1353,6 +1358,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
 			     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
 
+	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
+
 	/* Disable PSR on Sink */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index f0c30d3d2dfb..18b52b64af95 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -36,6 +36,20 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv)
 	}
 }
 
+void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
+					   enum phy phy, bool enable)
+{
+	u32 val;
+
+	if (!intel_phy_is_snps(dev_priv, phy))
+		return;
+
+	val = REG_FIELD_PREP(SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR,
+			     enable ? 2 : 3);
+	intel_uncore_rmw(&dev_priv->uncore, SNPS_PHY_TX_REQ(phy),
+			 SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR, val);
+}
+
 static const u32 dg2_ddi_translations[] = {
 	/* VS 0, pre-emph 0 */
 	REG_FIELD_PREP(SNPS_PHY_TX_EQ_MAIN, 26),
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.h b/drivers/gpu/drm/i915/display/intel_snps_phy.h
index 6aa33ff729ec..6261ff88ef5c 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.h
@@ -12,8 +12,11 @@ struct drm_i915_private;
 struct intel_encoder;
 struct intel_crtc_state;
 struct intel_mpllb_state;
+enum phy;
 
 void intel_snps_phy_wait_for_calibration(struct drm_i915_private *dev_priv);
+void intel_snps_phy_update_psr_power_state(struct drm_i915_private *dev_priv,
+					   enum phy phy, bool enable);
 
 int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
 			   struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9c7dc812317e..34d3806568e4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2340,6 +2340,9 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define SNPS_PHY_REF_CONTROL(phy)		_MMIO_SNPS(phy, 0x168188)
 #define   SNPS_PHY_REF_CONTROL_REF_RANGE	REG_GENMASK(31, 27)
 
+#define SNPS_PHY_TX_REQ(phy)			_MMIO_SNPS(phy, 0x168200)
+#define   SNPS_PHY_TX_REQ_LN_DIS_PWR_STATE_PSR	REG_GENMASK(31, 30)
+
 #define SNPS_PHY_TX_EQ(ln, phy)			_MMIO_SNPS_LN(ln, phy, 0x168300)
 #define   SNPS_PHY_TX_EQ_MAIN			REG_GENMASK(23, 18)
 #define   SNPS_PHY_TX_EQ_POST			REG_GENMASK(15, 10)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
