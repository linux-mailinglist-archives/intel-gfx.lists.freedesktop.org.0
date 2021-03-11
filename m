Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A028E33808E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DDC6EEB6;
	Thu, 11 Mar 2021 22:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900086EE9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:50 +0000 (UTC)
IronPort-SDR: g5Vbm393SoaQI37HOLT65kv0GpLl/UlklKws+K/N3dnF7zOQY7H003tbGbZ1p8gyWDGzZH6Lf+
 nzE37DUfKZ6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175865730"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175865730"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:47 -0800
IronPort-SDR: /PShCuMG1W+foaMlLvExvM1rhiDOdfInUhI2bGXtpe/PbaQHtHVL2VU+mq/pZEU38+JDEYzkaZ
 zUMVmSAZSsUg==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852799"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:25 -0800
Message-Id: <20210311223632.3191939-50-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 49/56] drm/i915/bigjoiner: atomic commit changes
 for uncompressed joiner
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

From: Animesh Manna <animesh.manna@intel.com>

Respective bit for master or slave to be set for uncompressed
bigjoiner in dss_ctl1 register.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++
 drivers/gpu/drm/i915/display/intel_vdsc.c    | 40 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +
 drivers/gpu/drm/i915/i915_reg.h              |  2 +
 4 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d779c1c38a41..077f1100efa1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3904,6 +3904,7 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *master = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(master->base.dev);
 	struct intel_crtc_state *master_crtc_state;
 	struct drm_connector_state *conn_state;
 	struct drm_connector *conn;
@@ -3937,6 +3938,9 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 		/* and DSC on slave */
 		intel_dsc_enable(NULL, crtc_state);
 	}
+
+	if (DISPLAY_VER(dev_priv) == 13)
+		intel_uncompressed_joiner_enable(crtc_state);
 }
 
 static void hsw_crtc_enable(struct intel_atomic_state *state,
@@ -6753,6 +6757,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 	intel_dsc_get_config(pipe_config);
+	if ((DISPLAY_VER(dev_priv) == 13) && !pipe_config->dsc.compression_enable)
+		intel_uncompressed_joiner_get_config(pipe_config);
 
 	if (!active) {
 		/* bigjoiner slave doesn't enable transcoder */
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 28bd32bc74ba..3e0ef7c2e076 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1126,6 +1126,22 @@ static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
 	return ICL_PIPE_DSS_CTL2(pipe);
 }
 
+void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 dss_ctl1_val = 0;
+
+	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
+		if (crtc_state->bigjoiner_slave)
+			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
+		else
+			dss_ctl1_val |= UNCOMPRESSED_JOINER_MASTER;
+
+		intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
+	}
+}
+
 void intel_dsc_enable(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
@@ -1165,13 +1181,35 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	if (!old_crtc_state->dsc.compression_enable)
+	if (!(old_crtc_state->dsc.compression_enable &&
+	      old_crtc_state->bigjoiner))
 		return;
 
 	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
 	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
 }
 
+void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 dss_ctl1;
+
+	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
+	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
+		crtc_state->bigjoiner = true;
+		if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
+			crtc_state->bigjoiner_linked_crtc =
+				intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
+	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
+		crtc_state->bigjoiner = true;
+		crtc_state->bigjoiner_slave = true;
+		if (!WARN_ON(crtc->pipe == PIPE_A))
+			crtc_state->bigjoiner_linked_crtc =
+				intel_get_crtc_for_pipe(dev_priv, crtc->pipe - 1);
+	}
+}
+
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 65d301c23580..fe4d45561253 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -12,11 +12,13 @@ struct intel_encoder;
 struct intel_crtc_state;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
+void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
 int intel_dsc_compute_params(struct intel_encoder *encoder,
 			     struct intel_crtc_state *pipe_config);
+void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state);
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0422593a93d3..2ff740993d3d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11542,6 +11542,8 @@ enum skl_power_gate {
 #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
 #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
 #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
+#define  UNCOMPRESSED_JOINER_MASTER		(1 << 21)
+#define  UNCOMPRESSED_JOINER_SLAVE		(1 << 20)
 
 #define _ICL_PIPE_DSS_CTL2_PB			0x78204
 #define _ICL_PIPE_DSS_CTL2_PC			0x78404
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
