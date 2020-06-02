Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1E31EBDA2
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 16:05:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364286E3E1;
	Tue,  2 Jun 2020 14:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE8B6E3E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 14:05:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21374015-1500050 
 for multiple; Tue, 02 Jun 2020 15:05:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jun 2020 15:05:40 +0100
Message-Id: <20200602140541.5481-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Identify Cometlake platform
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cometlake is small refresh of Coffeelake, but since we have found out a
difference in the plaforms, we need to identify the separate platforms.

Since we previously took Coffeelake/Cometlake as identical, update all
IS_COFFEELAKE() to also include IS_COMETLAKE().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_csr.c    |  4 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c    | 34 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_hdcp.c   |  7 ++--
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c    |  2 +-
 drivers/gpu/drm/i915/gvt/display.c          | 30 +++++++++++------
 drivers/gpu/drm/i915/gvt/edid.c             |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c         | 17 ++++++----
 drivers/gpu/drm/i915/i915_drv.h             |  9 ++++++
 drivers/gpu/drm/i915/i915_pci.c             | 22 ++++++++++---
 drivers/gpu/drm/i915/intel_device_info.c    |  1 +
 drivers/gpu/drm/i915/intel_device_info.h    |  1 +
 drivers/gpu/drm/i915/intel_gvt.c            |  2 ++
 drivers/gpu/drm/i915/intel_pch.c            | 36 ++++++++++++++-------
 drivers/gpu/drm/i915/intel_pm.c             | 10 ++++--
 15 files changed, 140 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_csr.c b/drivers/gpu/drm/i915/display/intel_csr.c
index 319932b03e88..9843c9af6c13 100644
--- a/drivers/gpu/drm/i915/display/intel_csr.c
+++ b/drivers/gpu/drm/i915/display/intel_csr.c
@@ -707,7 +707,9 @@ void intel_csr_ucode_init(struct drm_i915_private *dev_priv)
 		csr->fw_path = GLK_CSR_PATH;
 		csr->required_version = GLK_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = GLK_CSR_MAX_FW_SIZE;
-	} else if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) {
+	} else if (IS_KABYLAKE(dev_priv) ||
+		   IS_COFFEELAKE(dev_priv) ||
+		   IS_COMETLAKE(dev_priv)) {
 		csr->fw_path = KBL_CSR_PATH;
 		csr->required_version = KBL_CSR_VERSION_REQUIRED;
 		csr->max_fw_size = KBL_CSR_MAX_FW_SIZE;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cd211f48c401..bb8107ab5a51 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -722,10 +722,14 @@ skl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
 static const struct ddi_buf_trans *
 kbl_get_buf_trans_dp(struct drm_i915_private *dev_priv, int *n_entries)
 {
-	if (IS_KBL_ULX(dev_priv) || IS_CFL_ULX(dev_priv)) {
+	if (IS_KBL_ULX(dev_priv) ||
+	    IS_CFL_ULX(dev_priv) ||
+	    IS_CML_ULX(dev_priv)) {
 		*n_entries = ARRAY_SIZE(kbl_y_ddi_translations_dp);
 		return kbl_y_ddi_translations_dp;
-	} else if (IS_KBL_ULT(dev_priv) || IS_CFL_ULT(dev_priv)) {
+	} else if (IS_KBL_ULT(dev_priv) ||
+		   IS_CFL_ULT(dev_priv) ||
+		   IS_CML_ULT(dev_priv)) {
 		*n_entries = ARRAY_SIZE(kbl_u_ddi_translations_dp);
 		return kbl_u_ddi_translations_dp;
 	} else {
@@ -738,12 +742,16 @@ static const struct ddi_buf_trans *
 skl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
 {
 	if (dev_priv->vbt.edp.low_vswing) {
-		if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
-		    IS_CFL_ULX(dev_priv)) {
+		if (IS_SKL_ULX(dev_priv) ||
+		    IS_KBL_ULX(dev_priv) ||
+		    IS_CFL_ULX(dev_priv) ||
+		    IS_CML_ULX(dev_priv)) {
 			*n_entries = ARRAY_SIZE(skl_y_ddi_translations_edp);
 			return skl_y_ddi_translations_edp;
-		} else if (IS_SKL_ULT(dev_priv) || IS_KBL_ULT(dev_priv) ||
-			   IS_CFL_ULT(dev_priv)) {
+		} else if (IS_SKL_ULT(dev_priv) ||
+			   IS_KBL_ULT(dev_priv) ||
+			   IS_CFL_ULT(dev_priv) ||
+			   IS_CML_ULT(dev_priv)) {
 			*n_entries = ARRAY_SIZE(skl_u_ddi_translations_edp);
 			return skl_u_ddi_translations_edp;
 		} else {
@@ -752,7 +760,9 @@ skl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
 		}
 	}
 
-	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv))
+	if (IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv))
 		return kbl_get_buf_trans_dp(dev_priv, n_entries);
 	else
 		return skl_get_buf_trans_dp(dev_priv, n_entries);
@@ -761,8 +771,10 @@ skl_get_buf_trans_edp(struct drm_i915_private *dev_priv, int *n_entries)
 static const struct ddi_buf_trans *
 skl_get_buf_trans_hdmi(struct drm_i915_private *dev_priv, int *n_entries)
 {
-	if (IS_SKL_ULX(dev_priv) || IS_KBL_ULX(dev_priv) ||
-	    IS_CFL_ULX(dev_priv)) {
+	if (IS_SKL_ULX(dev_priv) ||
+	    IS_KBL_ULX(dev_priv) ||
+	    IS_CFL_ULX(dev_priv) ||
+	    IS_CML_ULX(dev_priv)) {
 		*n_entries = ARRAY_SIZE(skl_y_ddi_translations_hdmi);
 		return skl_y_ddi_translations_hdmi;
 	} else {
@@ -784,7 +796,9 @@ static const struct ddi_buf_trans *
 intel_ddi_get_buf_trans_dp(struct drm_i915_private *dev_priv,
 			   enum port port, int *n_entries)
 {
-	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) {
+	if (IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv)) {
 		const struct ddi_buf_trans *ddi_translations =
 			kbl_get_buf_trans_dp(dev_priv, n_entries);
 		*n_entries = skl_buf_trans_num_entries(port, *n_entries);
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2cbc4619b4ce..815b054bb167 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -1923,8 +1923,11 @@ static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
 		return false;
 
-	return (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) ||
-		IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv));
+	return (INTEL_GEN(dev_priv) >= 10 ||
+		IS_GEMINILAKE(dev_priv) ||
+		IS_KABYLAKE(dev_priv) ||
+		IS_COFFEELAKE(dev_priv) ||
+		IS_COMETLAKE(dev_priv));
 }
 
 void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 94d66a9d760d..6e1accbcc045 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -361,7 +361,10 @@ static void gen9_ctx_workarounds_init(struct intel_engine_cs *engine,
 			  HDC_FORCE_NON_COHERENT);
 
 	/* WaDisableSamplerPowerBypassForSOPingPong:skl,bxt,kbl,cfl */
-	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) || IS_COFFEELAKE(i915))
+	if (IS_SKYLAKE(i915) ||
+	    IS_KABYLAKE(i915) ||
+	    IS_COFFEELAKE(i915) ||
+	    IS_COMETLAKE(i915))
 		WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
 				  GEN8_SAMPLER_POWER_BYPASS_DIS);
 
@@ -636,7 +639,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 		icl_ctx_workarounds_init(engine, wal);
 	else if (IS_CANNONLAKE(i915))
 		cnl_ctx_workarounds_init(engine, wal);
-	else if (IS_COFFEELAKE(i915))
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		cfl_ctx_workarounds_init(engine, wal);
 	else if (IS_GEMINILAKE(i915))
 		glk_ctx_workarounds_init(engine, wal);
@@ -706,7 +709,7 @@ static void
 gen9_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
 	/* WaDisableKillLogic:bxt,skl,kbl */
-	if (!IS_COFFEELAKE(i915))
+	if (!IS_COFFEELAKE(i915) && !IS_COMETLAKE(i915))
 		wa_write_or(wal,
 			    GAM_ECOCHK,
 			    ECOCHK_DIS_TLB);
@@ -969,7 +972,7 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		icl_gt_workarounds_init(i915, wal);
 	else if (IS_CANNONLAKE(i915))
 		cnl_gt_workarounds_init(i915, wal);
-	else if (IS_COFFEELAKE(i915))
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		cfl_gt_workarounds_init(i915, wal);
 	else if (IS_GEMINILAKE(i915))
 		glk_gt_workarounds_init(i915, wal);
@@ -1304,7 +1307,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		icl_whitelist_build(engine);
 	else if (IS_CANNONLAKE(i915))
 		cnl_whitelist_build(engine);
-	else if (IS_COFFEELAKE(i915))
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		cfl_whitelist_build(engine);
 	else if (IS_GEMINILAKE(i915))
 		glk_whitelist_build(engine);
@@ -1515,7 +1518,10 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN9_FFSC_PERCTX_PREEMPT_CTRL);
 	}
 
-	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) || IS_COFFEELAKE(i915)) {
+	if (IS_SKYLAKE(i915) ||
+	    IS_KABYLAKE(i915) ||
+	    IS_COFFEELAKE(i915) ||
+	    IS_COMETLAKE(i915)) {
 		/* WaEnableGapsTsvCreditFix:skl,kbl,cfl */
 		wa_write_or(wal,
 			    GEN8_GARBCNTL,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 9b6218128d09..e75be3999358 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -55,7 +55,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 12)) \
 	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
 	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0), huc_def(icl,  9, 0, 0)) \
-	fw_def(COFFEELAKE,  5, guc_def(cml, 33, 0, 0), huc_def(cml,  4, 0, 0)) \
+	fw_def(COMETLAKE,   5, guc_def(cml, 33, 0, 0), huc_def(cml,  4, 0, 0)) \
 	fw_def(COFFEELAKE,  0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
 	fw_def(GEMINILAKE,  0, guc_def(glk, 33, 0, 0), huc_def(glk,  4, 0, 0)) \
 	fw_def(KABYLAKE,    0, guc_def(kbl, 33, 0, 0), huc_def(kbl,  4, 0, 0)) \
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index a1696e9ce4b6..7ba16ddfe75f 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -199,8 +199,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			SDE_PORTC_HOTPLUG_CPT |
 			SDE_PORTD_HOTPLUG_CPT);
 
-	if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
-	    IS_COFFEELAKE(dev_priv)) {
+	if (IS_SKYLAKE(dev_priv) ||
+	    IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv)) {
 		vgpu_vreg_t(vgpu, SDEISR) &= ~(SDE_PORTA_HOTPLUG_SPT |
 				SDE_PORTE_HOTPLUG_SPT);
 		vgpu_vreg_t(vgpu, SKL_FUSE_STATUS) |=
@@ -314,8 +316,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDID_DETECTED;
 	}
 
-	if ((IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
-	     IS_COFFEELAKE(dev_priv)) &&
+	if ((IS_SKYLAKE(dev_priv) ||
+	     IS_KABYLAKE(dev_priv) ||
+	     IS_COFFEELAKE(dev_priv) ||
+	     IS_COMETLAKE(dev_priv)) &&
 			intel_vgpu_has_monitor_on_port(vgpu, PORT_E)) {
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTE_HOTPLUG_SPT;
 	}
@@ -498,8 +502,10 @@ void intel_vgpu_emulate_hotplug(struct intel_vgpu *vgpu, bool connected)
 	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
 
 	/* TODO: add more platforms support */
-	if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) ||
-	    IS_COFFEELAKE(i915)) {
+	if (IS_SKYLAKE(i915) ||
+	    IS_KABYLAKE(i915) ||
+	    IS_COFFEELAKE(i915) ||
+	    IS_COMETLAKE(i915)) {
 		if (connected) {
 			vgpu_vreg_t(vgpu, SFUSE_STRAP) |=
 				SFUSE_STRAP_DDID_DETECTED;
@@ -527,8 +533,10 @@ void intel_vgpu_clean_display(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
-	if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
-	    IS_COFFEELAKE(dev_priv))
+	if (IS_SKYLAKE(dev_priv) ||
+	    IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv))
 		clean_virtual_dp_monitor(vgpu, PORT_D);
 	else
 		clean_virtual_dp_monitor(vgpu, PORT_B);
@@ -551,8 +559,10 @@ int intel_vgpu_init_display(struct intel_vgpu *vgpu, u64 resolution)
 
 	intel_vgpu_init_i2c_edid(vgpu);
 
-	if (IS_SKYLAKE(dev_priv) || IS_KABYLAKE(dev_priv) ||
-	    IS_COFFEELAKE(dev_priv))
+	if (IS_SKYLAKE(dev_priv) ||
+	    IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv))
 		return setup_virtual_dp_monitor(vgpu, PORT_D, GVT_DP_D,
 						resolution);
 	else
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 190651df5db1..22247805c345 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -149,7 +149,7 @@ static int gmbus0_mmio_write(struct intel_vgpu *vgpu,
 
 	if (IS_BROXTON(i915))
 		port = bxt_get_port_from_gmbus0(pin_select);
-	else if (IS_COFFEELAKE(i915))
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		port = cnp_get_port_from_gmbus0(pin_select);
 	else
 		port = get_port_from_gmbus0(pin_select);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 3e88e3b5c43a..26cae4846c82 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -59,7 +59,7 @@ unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt)
 		return D_KBL;
 	else if (IS_BROXTON(i915))
 		return D_BXT;
-	else if (IS_COFFEELAKE(i915))
+	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
 		return D_CFL;
 
 	return 0;
@@ -1435,7 +1435,8 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 	case GEN9_PCODE_READ_MEM_LATENCY:
 		if (IS_SKYLAKE(vgpu->gvt->gt->i915) ||
 		    IS_KABYLAKE(vgpu->gvt->gt->i915) ||
-		    IS_COFFEELAKE(vgpu->gvt->gt->i915)) {
+		    IS_COFFEELAKE(vgpu->gvt->gt->i915) ||
+		    IS_COMETLAKE(vgpu->gvt->gt->i915)) {
 			/**
 			 * "Read memory latency" command on gen9.
 			 * Below memory latency values are read
@@ -1460,7 +1461,8 @@ static int mailbox_write(struct intel_vgpu *vgpu, unsigned int offset,
 	case SKL_PCODE_CDCLK_CONTROL:
 		if (IS_SKYLAKE(vgpu->gvt->gt->i915) ||
 		    IS_KABYLAKE(vgpu->gvt->gt->i915) ||
-		    IS_COFFEELAKE(vgpu->gvt->gt->i915))
+		    IS_COFFEELAKE(vgpu->gvt->gt->i915) ||
+		    IS_COMETLAKE(vgpu->gvt->gt->i915))
 			*data0 = SKL_CDCLK_READY_FOR_CHANGE;
 		break;
 	case GEN6_PCODE_READ_RC6VIDS:
@@ -1722,7 +1724,8 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	int ret;
 
 	(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(1);
-	if (IS_COFFEELAKE(vgpu->gvt->gt->i915))
+	if (IS_COFFEELAKE(vgpu->gvt->gt->i915) ||
+	    IS_COMETLAKE(vgpu->gvt->gt->i915))
 		(*(u32 *)p_data) &= ~_MASKED_BIT_ENABLE(2);
 	write_vreg(vgpu, offset, p_data, bytes);
 
@@ -1731,7 +1734,8 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		return 0;
 	}
 
-	if (IS_COFFEELAKE(vgpu->gvt->gt->i915) &&
+	if ((IS_COFFEELAKE(vgpu->gvt->gt->i915) ||
+	     IS_COMETLAKE(vgpu->gvt->gt->i915)) &&
 	    data & _MASKED_BIT_ENABLE(2)) {
 		enter_failsafe_mode(vgpu, GVT_FAILSAFE_UNSUPPORTED_GUEST);
 		return 0;
@@ -3393,7 +3397,8 @@ int intel_gvt_setup_mmio_info(struct intel_gvt *gvt)
 			goto err;
 	} else if (IS_SKYLAKE(i915) ||
 		   IS_KABYLAKE(i915) ||
-		   IS_COFFEELAKE(i915)) {
+		   IS_COFFEELAKE(i915) ||
+		   IS_COMETLAKE(i915)) {
 		ret = init_bdw_mmio_info(gvt);
 		if (ret)
 			goto err;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 98f2c448cd92..e99255e17eb7 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1414,6 +1414,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KABYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_KABYLAKE)
 #define IS_GEMINILAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GEMINILAKE)
 #define IS_COFFEELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COFFEELAKE)
+#define IS_COMETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COMETLAKE)
 #define IS_CANNONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CANNONLAKE)
 #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
 #define IS_ELKHARTLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE)
@@ -1462,6 +1463,14 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 				 INTEL_INFO(dev_priv)->gt == 2)
 #define IS_CFL_GT3(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 3)
+
+#define IS_CML_ULT(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
+#define IS_CML_ULX(dev_priv) \
+	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
+#define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
+				 INTEL_INFO(dev_priv)->gt == 2)
+
 #define IS_CNL_WITH_PORT_F(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_CANNONLAKE, INTEL_SUBPLATFORM_PORTF)
 #define IS_ICL_WITH_PORT_F(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7e3252fbad8e..07b09af3a9c3 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -766,6 +766,20 @@ static const struct intel_device_info cfl_gt3_info = {
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
 
+#define CML_PLATFORM \
+	GEN9_FEATURES, \
+	PLATFORM(INTEL_COMETLAKE)
+
+static const struct intel_device_info cml_gt1_info = {
+	CML_PLATFORM,
+	.gt = 1,
+};
+
+static const struct intel_device_info cml_gt2_info = {
+	CML_PLATFORM,
+	.gt = 2,
+};
+
 #define GEN10_FEATURES \
 	GEN9_FEATURES, \
 	GEN(10), \
@@ -942,10 +956,10 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_WHL_U_GT2_IDS(&cfl_gt2_info),
 	INTEL_AML_CFL_GT2_IDS(&cfl_gt2_info),
 	INTEL_WHL_U_GT3_IDS(&cfl_gt3_info),
-	INTEL_CML_GT1_IDS(&cfl_gt1_info),
-	INTEL_CML_GT2_IDS(&cfl_gt2_info),
-	INTEL_CML_U_GT1_IDS(&cfl_gt1_info),
-	INTEL_CML_U_GT2_IDS(&cfl_gt2_info),
+	INTEL_CML_GT1_IDS(&cml_gt1_info),
+	INTEL_CML_GT2_IDS(&cml_gt2_info),
+	INTEL_CML_U_GT1_IDS(&cml_gt1_info),
+	INTEL_CML_U_GT2_IDS(&cml_gt2_info),
 	INTEL_CNL_IDS(&cnl_info),
 	INTEL_ICL_11_IDS(&icl_info),
 	INTEL_EHL_IDS(&ehl_info),
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index c245c10c9bee..544ac61fbc36 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -57,6 +57,7 @@ static const char * const platform_names[] = {
 	PLATFORM_NAME(KABYLAKE),
 	PLATFORM_NAME(GEMINILAKE),
 	PLATFORM_NAME(COFFEELAKE),
+	PLATFORM_NAME(COMETLAKE),
 	PLATFORM_NAME(CANNONLAKE),
 	PLATFORM_NAME(ICELAKE),
 	PLATFORM_NAME(ELKHARTLAKE),
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index c912acd06109..3613c04904e0 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -73,6 +73,7 @@ enum intel_platform {
 	INTEL_KABYLAKE,
 	INTEL_GEMINILAKE,
 	INTEL_COFFEELAKE,
+	INTEL_COMETLAKE,
 	/* gen10 */
 	INTEL_CANNONLAKE,
 	/* gen11 */
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 21b91313cc5d..dd8981340d6e 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -52,6 +52,8 @@ static bool is_supported_device(struct drm_i915_private *dev_priv)
 		return true;
 	if (IS_COFFEELAKE(dev_priv))
 		return true;
+	if (IS_COMETLAKE(dev_priv))
+		return true;
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 102b03d24f90..c668e99eb2e4 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -64,37 +64,49 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_SPT_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found SunrisePoint LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv));
+			    !IS_SKYLAKE(dev_priv) &&
+			    !IS_KABYLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		return PCH_SPT;
 	case INTEL_PCH_KBP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Kaby Lake PCH (KBP)\n");
 		drm_WARN_ON(&dev_priv->drm,
-			    !IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv));
+			    !IS_SKYLAKE(dev_priv) &&
+			    !IS_KABYLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		/* KBP is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_CNP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Cannon Lake PCH (CNP)\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_CANNONLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_CANNONLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		return PCH_CNP;
 	case INTEL_PCH_CNP_LP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found Cannon Lake LP PCH (CNP-LP)\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_CANNONLAKE(dev_priv) &&
-			    !IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_CANNONLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		return PCH_CNP;
 	case INTEL_PCH_CMP_DEVICE_ID_TYPE:
 	case INTEL_PCH_CMP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake PCH (CMP)\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_COFFEELAKE(dev_priv) &&
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv) &&
 			    !IS_ROCKETLAKE(dev_priv));
 		/* CometPoint is CNP Compatible */
 		return PCH_CNP;
 	case INTEL_PCH_CMP_V_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Comet Lake V PCH (CMP-V)\n");
-		drm_WARN_ON(&dev_priv->drm, !IS_COFFEELAKE(dev_priv));
+		drm_WARN_ON(&dev_priv->drm,
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		/* Comet Lake V PCH is based on KBP, which is SPT compatible */
 		return PCH_SPT;
 	case INTEL_PCH_ICP_DEVICE_ID_TYPE:
@@ -149,7 +161,9 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
 		id = INTEL_PCH_MCC_DEVICE_ID_TYPE;
 	else if (IS_ICELAKE(dev_priv))
 		id = INTEL_PCH_ICP_DEVICE_ID_TYPE;
-	else if (IS_CANNONLAKE(dev_priv) || IS_COFFEELAKE(dev_priv))
+	else if (IS_CANNONLAKE(dev_priv) ||
+		 IS_COFFEELAKE(dev_priv) ||
+		 IS_COMETLAKE(dev_priv))
 		id = INTEL_PCH_CNP_DEVICE_ID_TYPE;
 	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
 		id = INTEL_PCH_SPT_DEVICE_ID_TYPE;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b134a1b9d738..26b670fa3f88 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5256,7 +5256,9 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
 	 * Display WA #1141: kbl,cfl
 	 */
-	if ((IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv)) &&
+	if ((IS_KABYLAKE(dev_priv) ||
+	     IS_COFFEELAKE(dev_priv) ||
+	     IS_COMETLAKE(dev_priv)) &&
 	    dev_priv->ipc_enabled)
 		latency += 4;
 
@@ -6822,7 +6824,9 @@ static bool intel_can_enable_ipc(struct drm_i915_private *dev_priv)
 		return false;
 
 	/* Display WA #1141: SKL:all KBL:all CFL */
-	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv))
+	if (IS_KABYLAKE(dev_priv) ||
+	    IS_COFFEELAKE(dev_priv) ||
+	    IS_COMETLAKE(dev_priv))
 		return dev_priv->dram_info.symmetric_memory;
 
 	return true;
@@ -7703,7 +7707,7 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
 		dev_priv->display.init_clock_gating = icl_init_clock_gating;
 	else if (IS_CANNONLAKE(dev_priv))
 		dev_priv->display.init_clock_gating = cnl_init_clock_gating;
-	else if (IS_COFFEELAKE(dev_priv))
+	else if (IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(dev_priv))
 		dev_priv->display.init_clock_gating = cfl_init_clock_gating;
 	else if (IS_SKYLAKE(dev_priv))
 		dev_priv->display.init_clock_gating = skl_init_clock_gating;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
