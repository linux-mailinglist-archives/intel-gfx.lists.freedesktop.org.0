Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1F89D3A26
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5505D10E72A;
	Wed, 20 Nov 2024 12:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYqqCT94";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E8210E72A;
 Wed, 20 Nov 2024 12:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104228; x=1763640228;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3edyDoCsw3YliVY6FZtBUNQ2Pb4vEtznl06Z3OD5bBE=;
 b=SYqqCT94BGoBLu8eqaSQWQmUkVbVemigDvrrowV+tk4nZjRGenKeNoUV
 5pr/vFj6uBNt7WT020a2aEYwCXKO1tisnbuuAUN3Q5V4WDMy30dnIXlgO
 oVj8oFcjdIF47ZGF5iw/NKi8tPja49lOmVmJKqfi1jIT6BIpxb3E7+FCb
 /ar1g38v/FhIINgThbYAaC/vS+2ydF2qDfh0OTJdxFNmmlA6zaJz7Wq4t
 qOJJKJbDlmkCA8JTeqdWTClkhyvKqVZTbqhxeLiOj5aeGi8/e6K4qpn7l
 fmjuIIoiZx2ouJY7EfDizSCDhWm2VH4Kcq1u0TI/1UgMEom3YMxw5ZKlZ g==;
X-CSE-ConnectionGUID: q6p8eoP2Sey4mssTUomjKQ==
X-CSE-MsgGUID: fnHomcurSPudIkb1yj0Vkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540101"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540101"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:47 -0800
X-CSE-ConnectionGUID: No1+x+UaS8OHBrt/33G5aA==
X-CSE-MsgGUID: zLCqmbCvSaSHyvkTb1x/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277883"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:03:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/6] drm/i915/gvt: always pass struct intel_display * to
 register macros
Date: Wed, 20 Nov 2024 14:03:32 +0200
Message-Id: <266616e14db8d9a342fd93ec9752f561149a799b.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The long term goal is to remove the __to_intel_display() generics from
display macros, such as register macros. This requires that all such
macro usage passes struct intel_display * rather than struct
drm_i915_private * to the macros.

The short term goal is to hide the struct drm_i915_private access in
intel_display_conversions.h into a function. This is problematic with
gvt, because it's a separate module, and the conversion function would
need to be exported.

Make the conversion to always passing struct intel_display * in gvt to
unblock both of the above.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 17 +++---
 drivers/gpu/drm/i915/gvt/display.c    | 80 ++++++++++++++-------------
 drivers/gpu/drm/i915/gvt/fb_decoder.c | 21 ++++---
 drivers/gpu/drm/i915/gvt/handlers.c   | 44 ++++++++-------
 4 files changed, 89 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 81d67a46cd9e..6439c8e91a8d 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1286,6 +1286,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
+	struct intel_display *display = &dev_priv->display;
 	struct plane_code_mapping gen8_plane_code[] = {
 		[0] = {PIPE_A, PLANE_A, PRIMARY_A_FLIP_DONE},
 		[1] = {PIPE_B, PLANE_A, PRIMARY_B_FLIP_DONE},
@@ -1314,9 +1315,9 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 	info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);
 
 	if (info->plane == PLANE_A) {
-		info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
-		info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
-		info->surf_reg = DSPSURF(dev_priv, info->pipe);
+		info->ctrl_reg = DSPCNTR(display, info->pipe);
+		info->stride_reg = DSPSTRIDE(display, info->pipe);
+		info->surf_reg = DSPSURF(display, info->pipe);
 	} else if (info->plane == PLANE_B) {
 		info->ctrl_reg = SPRCTL(info->pipe);
 		info->stride_reg = SPRSTRIDE(info->pipe);
@@ -1332,6 +1333,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
+	struct intel_display *display = &dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 	u32 dword0 = cmd_val(s, 0);
 	u32 dword1 = cmd_val(s, 1);
@@ -1380,9 +1382,9 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 	info->surf_val = (dword2 & GENMASK(31, 12)) >> 12;
 	info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);
 
-	info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
-	info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
-	info->surf_reg = DSPSURF(dev_priv, info->pipe);
+	info->ctrl_reg = DSPCNTR(display, info->pipe);
+	info->stride_reg = DSPSTRIDE(display, info->pipe);
+	info->surf_reg = DSPSURF(display, info->pipe);
 
 	return 0;
 }
@@ -1419,6 +1421,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 		struct mi_display_flip_command_info *info)
 {
 	struct drm_i915_private *dev_priv = s->engine->i915;
+	struct intel_display *display = &dev_priv->display;
 	struct intel_vgpu *vgpu = s->vgpu;
 
 	set_mask_bits(&vgpu_vreg_t(vgpu, info->surf_reg), GENMASK(31, 12),
@@ -1436,7 +1439,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 	}
 
 	if (info->plane == PLANE_PRIMARY)
-		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, info->pipe))++;
+		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(display, info->pipe))++;
 
 	if (info->async_flip)
 		intel_vgpu_trigger_virtual_event(vgpu, info->event);
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index b6136825d213..95570cabdf27 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -69,8 +69,9 @@ static int get_edp_pipe(struct intel_vgpu *vgpu)
 static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 
-	if (!(vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
+	if (!(vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_EDP)) & TRANSCONF_ENABLE))
 		return 0;
 
 	if (!(vgpu_vreg(vgpu, _TRANS_DDI_FUNC_CTL_EDP) & TRANS_DDI_FUNC_ENABLE))
@@ -81,12 +82,13 @@ static int edp_pipe_is_enabled(struct intel_vgpu *vgpu)
 int pipe_is_enabled(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 
 	if (drm_WARN_ON(&dev_priv->drm,
 			pipe < PIPE_A || pipe >= I915_MAX_PIPES))
 		return -EINVAL;
 
-	if (vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) & TRANSCONF_ENABLE)
+	if (vgpu_vreg_t(vgpu, TRANSCONF(display, pipe)) & TRANSCONF_ENABLE)
 		return 1;
 
 	if (edp_pipe_is_enabled(vgpu) &&
@@ -181,6 +183,7 @@ static u8 dpcd_fix_data[DPCD_HEADER_SIZE] = {
 static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	int pipe;
 
 	if (IS_BROXTON(dev_priv)) {
@@ -193,21 +196,21 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_B) |
 			  GEN8_DE_PORT_HOTPLUG(HPD_PORT_C));
 
-		for_each_pipe(dev_priv, pipe) {
-			vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, pipe)) &=
+		for_each_pipe(display, pipe) {
+			vgpu_vreg_t(vgpu, TRANSCONF(display, pipe)) &=
 				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
-			vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
+			vgpu_vreg_t(vgpu, DSPCNTR(display, pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
-			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
-			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
+			vgpu_vreg_t(vgpu, CURCNTR(display, pipe)) &= ~MCURSOR_MODE_MASK;
+			vgpu_vreg_t(vgpu, CURCNTR(display, pipe)) |= MCURSOR_MODE_DISABLE;
 		}
 
 		for (trans = TRANSCODER_A; trans <= TRANSCODER_EDP; trans++) {
-			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, trans)) &=
+			vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, trans)) &=
 				~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 				  TRANS_DDI_PORT_MASK | TRANS_DDI_FUNC_ENABLE);
 		}
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			  TRANS_DDI_PORT_MASK);
 
@@ -255,8 +258,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   TRANSCODER_A can be enabled. PORT_x depends on the input of
 		 *   setup_virtual_dp_monitor.
 		 */
-		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
-		vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_A)) |= TRANSCONF_ENABLE;
+		vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_A)) |= TRANSCONF_STATE_ENABLE;
 
 		/*
 		 * Golden M/N are calculated based on:
@@ -264,11 +267,11 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
-		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
-		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
-		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(display, TRANSCODER_A)) = TU_SIZE(64);
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(display, TRANSCODER_A)) |= 0x5b425e;
+		vgpu_vreg_t(vgpu, PIPE_DATA_N1(display, TRANSCODER_A)) = 0x800000;
+		vgpu_vreg_t(vgpu, PIPE_LINK_M1(display, TRANSCODER_A)) = 0x3cd6e;
+		vgpu_vreg_t(vgpu, PIPE_LINK_N1(display, TRANSCODER_A)) = 0x80000;
 
 		/* Enable per-DDI/PORT vreg */
 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
@@ -291,7 +294,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_A)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu,
-				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_EDP)) |=
+				    TRANS_DDI_FUNC_CTL(display, TRANSCODER_EDP)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 TRANS_DDI_FUNC_ENABLE);
 			vgpu_vreg_t(vgpu, PCH_PORT_HOTPLUG) |=
@@ -321,7 +324,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_B)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu,
-				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
+				    TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
 				 TRANS_DDI_FUNC_ENABLE);
@@ -352,7 +355,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 			vgpu_vreg_t(vgpu, DDI_BUF_CTL(PORT_C)) &=
 				~DDI_BUF_IS_IDLE;
 			vgpu_vreg_t(vgpu,
-				    TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
+				    TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) |=
 				(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 				 (PORT_B << TRANS_DDI_PORT_SHIFT) |
 				 TRANS_DDI_FUNC_ENABLE);
@@ -401,11 +404,11 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
-		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
-		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
-		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(display, TRANSCODER_A)) = TU_SIZE(64);
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(display, TRANSCODER_A)) |= 0x5b425e;
+		vgpu_vreg_t(vgpu, PIPE_DATA_N1(display, TRANSCODER_A)) = 0x800000;
+		vgpu_vreg_t(vgpu, PIPE_LINK_M1(display, TRANSCODER_A)) = 0x3cd6e;
+		vgpu_vreg_t(vgpu, PIPE_LINK_N1(display, TRANSCODER_A)) = 0x80000;
 	}
 
 	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
@@ -416,10 +419,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_B);
 		vgpu_vreg_t(vgpu, SFUSE_STRAP) |= SFUSE_STRAP_DDIB_DETECTED;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_B << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
@@ -442,10 +445,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_C);
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTC_HOTPLUG_CPT;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_C << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
@@ -468,10 +471,10 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, DPLL_CTRL2) |=
 			DPLL_CTRL2_DDI_SEL_OVERRIDE(PORT_D);
 		vgpu_vreg_t(vgpu, SDEISR) |= SDE_PORTD_HOTPLUG_CPT;
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) &=
 			~(TRANS_DDI_BPC_MASK | TRANS_DDI_MODE_SELECT_MASK |
 			TRANS_DDI_PORT_MASK);
-		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) |=
+		vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) |=
 			(TRANS_DDI_BPC_8 | TRANS_DDI_MODE_SELECT_DP_SST |
 			(PORT_D << TRANS_DDI_PORT_SHIFT) |
 			TRANS_DDI_FUNC_ENABLE);
@@ -509,14 +512,14 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, PCH_ADPA) &= ~ADPA_CRT_HOTPLUG_MONITOR_MASK;
 
 	/* Disable Primary/Sprite/Cursor plane */
-	for_each_pipe(dev_priv, pipe) {
-		vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
+	for_each_pipe(display, pipe) {
+		vgpu_vreg_t(vgpu, DSPCNTR(display, pipe)) &= ~DISP_ENABLE;
 		vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
-		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
-		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
+		vgpu_vreg_t(vgpu, CURCNTR(display, pipe)) &= ~MCURSOR_MODE_MASK;
+		vgpu_vreg_t(vgpu, CURCNTR(display, pipe)) |= MCURSOR_MODE_DISABLE;
 	}
 
-	vgpu_vreg_t(vgpu, TRANSCONF(dev_priv, TRANSCODER_A)) |= TRANSCONF_ENABLE;
+	vgpu_vreg_t(vgpu, TRANSCONF(display, TRANSCODER_A)) |= TRANSCONF_ENABLE;
 }
 
 static void clean_virtual_dp_monitor(struct intel_vgpu *vgpu, int port_num)
@@ -632,6 +635,7 @@ void vgpu_update_vblank_emulation(struct intel_vgpu *vgpu, bool turnon)
 static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	struct intel_vgpu_irq *irq = &vgpu->irq;
 	int vblank_event[] = {
 		[PIPE_A] = PIPE_A_VBLANK,
@@ -653,17 +657,19 @@ static void emulate_vblank_on_pipe(struct intel_vgpu *vgpu, int pipe)
 	}
 
 	if (pipe_is_enabled(vgpu, pipe)) {
-		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(dev_priv, pipe))++;
+		vgpu_vreg_t(vgpu, PIPE_FRMCOUNT_G4X(display, pipe))++;
 		intel_vgpu_trigger_virtual_event(vgpu, vblank_event[pipe]);
 	}
 }
 
 void intel_vgpu_emulate_vblank(struct intel_vgpu *vgpu)
 {
+	struct drm_i915_private *i915 = vgpu->gvt->gt->i915;
+	struct intel_display *display = &i915->display;
 	int pipe;
 
 	mutex_lock(&vgpu->vgpu_lock);
-	for_each_pipe(vgpu->gvt->gt->i915, pipe)
+	for_each_pipe(display, pipe)
 		emulate_vblank_on_pipe(vgpu, pipe);
 	mutex_unlock(&vgpu->vgpu_lock);
 }
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index c454e25b2b0f..15cce973e1ae 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -154,8 +154,9 @@ static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 	u32 tiled, int stride_mask, int bpp)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 
-	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(dev_priv, pipe)) & stride_mask;
+	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(display, pipe)) & stride_mask;
 	u32 stride = stride_reg;
 
 	if (GRAPHICS_VER(dev_priv) >= 9) {
@@ -210,6 +211,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_primary_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	u32 val, fmt;
 	int pipe;
 
@@ -217,7 +219,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	if (pipe >= I915_MAX_PIPES)
 		return -ENODEV;
 
-	val = vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe));
+	val = vgpu_vreg_t(vgpu, DSPCNTR(display, pipe));
 	plane->enabled = !!(val & DISP_ENABLE);
 	if (!plane->enabled)
 		return -ENODEV;
@@ -251,7 +253,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 
 	plane->hw_format = fmt;
 
-	plane->base = vgpu_vreg_t(vgpu, DSPSURF(dev_priv, pipe)) & I915_GTT_PAGE_MASK;
+	plane->base = vgpu_vreg_t(vgpu, DSPSURF(display, pipe)) & I915_GTT_PAGE_MASK;
 	if (!vgpu_gmadr_is_valid(vgpu, plane->base))
 		return  -EINVAL;
 
@@ -267,14 +269,14 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 		(_PRI_PLANE_STRIDE_MASK >> 6) :
 		_PRI_PLANE_STRIDE_MASK, plane->bpp);
 
-	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) & _PIPE_H_SRCSZ_MASK) >>
+	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(display, pipe)) & _PIPE_H_SRCSZ_MASK) >>
 		_PIPE_H_SRCSZ_SHIFT;
 	plane->width += 1;
-	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) &
+	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(display, pipe)) &
 			 _PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
 	plane->height += 1;	/* raw height is one minus the real value */
 
-	val = vgpu_vreg_t(vgpu, DSPTILEOFF(dev_priv, pipe));
+	val = vgpu_vreg_t(vgpu, DSPTILEOFF(display, pipe));
 	plane->x_offset = (val & _PRI_PLANE_X_OFF_MASK) >>
 		_PRI_PLANE_X_OFF_SHIFT;
 	plane->y_offset = (val & _PRI_PLANE_Y_OFF_MASK) >>
@@ -340,6 +342,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	struct intel_vgpu_cursor_plane_format *plane)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	u32 val, mode, index;
 	u32 alpha_plane, alpha_force;
 	int pipe;
@@ -348,7 +351,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	if (pipe >= I915_MAX_PIPES)
 		return -ENODEV;
 
-	val = vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe));
+	val = vgpu_vreg_t(vgpu, CURCNTR(display, pipe));
 	mode = val & MCURSOR_MODE_MASK;
 	plane->enabled = (mode != MCURSOR_MODE_DISABLE);
 	if (!plane->enabled)
@@ -374,7 +377,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 		gvt_dbg_core("alpha_plane=0x%x, alpha_force=0x%x\n",
 			alpha_plane, alpha_force);
 
-	plane->base = vgpu_vreg_t(vgpu, CURBASE(dev_priv, pipe)) & I915_GTT_PAGE_MASK;
+	plane->base = vgpu_vreg_t(vgpu, CURBASE(display, pipe)) & I915_GTT_PAGE_MASK;
 	if (!vgpu_gmadr_is_valid(vgpu, plane->base))
 		return  -EINVAL;
 
@@ -385,7 +388,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 		return  -EINVAL;
 	}
 
-	val = vgpu_vreg_t(vgpu, CURPOS(dev_priv, pipe));
+	val = vgpu_vreg_t(vgpu, CURPOS(display, pipe));
 	plane->x_pos = (val & _CURSOR_POS_X_MASK) >> _CURSOR_POS_X_SHIFT;
 	plane->x_sign = (val & _CURSOR_SIGN_X_MASK) >> _CURSOR_SIGN_X_SHIFT;
 	plane->y_pos = (val & _CURSOR_POS_Y_MASK) >> _CURSOR_POS_Y_SHIFT;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 25acb9ddb12c..241cff0fc683 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -656,11 +656,12 @@ static u32 skl_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	enum port port;
 	u32 dp_br, link_m, link_n, htotal, vtotal;
 
 	/* Find DDI/PORT assigned to TRANSCODER_A, expect B or D */
-	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(dev_priv, TRANSCODER_A)) &
+	port = (vgpu_vreg_t(vgpu, TRANS_DDI_FUNC_CTL(display, TRANSCODER_A)) &
 		TRANS_DDI_PORT_MASK) >> TRANS_DDI_PORT_SHIFT;
 	if (port != PORT_B && port != PORT_D) {
 		gvt_dbg_dpy("vgpu-%d unsupported PORT_%c\n", vgpu->id, port_name(port));
@@ -676,12 +677,12 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 		dp_br = skl_vgpu_get_dp_bitrate(vgpu, port);
 
 	/* Get DP link symbol clock M/N */
-	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A));
-	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A));
+	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(display, TRANSCODER_A));
+	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(display, TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
-	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
-	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
+	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(display, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
+	vtotal = (vgpu_vreg_t(vgpu, TRANS_VTOTAL(display, TRANSCODER_A)) >> TRANS_VTOTAL_SHIFT);
 
 	if (dp_br && link_n && htotal && vtotal) {
 		u64 pixel_clk = 0;
@@ -1012,22 +1013,23 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
 	return 0;
 }
 
-#define DSPSURF_TO_PIPE(dev_priv, offset) \
-	calc_index(offset, DSPSURF(dev_priv, PIPE_A), DSPSURF(dev_priv, PIPE_B), DSPSURF(dev_priv, PIPE_C))
+#define DSPSURF_TO_PIPE(display, offset) \
+	calc_index(offset, DSPSURF(display, PIPE_A), DSPSURF(display, PIPE_B), DSPSURF(display, PIPE_C))
 
 static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	u32 pipe = DSPSURF_TO_PIPE(dev_priv, offset);
+	struct intel_display *display = &dev_priv->display;
+	u32 pipe = DSPSURF_TO_PIPE(display, offset);
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
 	write_vreg(vgpu, offset, p_data, bytes);
-	vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
+	vgpu_vreg_t(vgpu, DSPSURFLIVE(display, pipe)) = vgpu_vreg(vgpu, offset);
 
-	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
+	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(display, pipe))++;
 
-	if (vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) & PLANE_CTL_ASYNC_FLIP)
+	if (vgpu_vreg_t(vgpu, DSPCNTR(display, pipe)) & PLANE_CTL_ASYNC_FLIP)
 		intel_vgpu_trigger_virtual_event(vgpu, event);
 	else
 		set_bit(event, vgpu->irq.flip_done_event[pipe]);
@@ -1060,14 +1062,15 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 			       unsigned int bytes)
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe = REG_50080_TO_PIPE(offset);
 	enum plane_id plane = REG_50080_TO_PLANE(offset);
 	int event = SKL_FLIP_EVENT(pipe, plane);
 
 	write_vreg(vgpu, offset, p_data, bytes);
 	if (plane == PLANE_PRIMARY) {
-		vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
-		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
+		vgpu_vreg_t(vgpu, DSPSURFLIVE(display, pipe)) = vgpu_vreg(vgpu, offset);
+		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(display, pipe))++;
 	} else {
 		vgpu_vreg_t(vgpu, SPRSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
 	}
@@ -2193,6 +2196,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
 static int init_generic_mmio_info(struct intel_gvt *gvt)
 {
 	struct drm_i915_private *dev_priv = gvt->gt->i915;
+	struct intel_display *display = &dev_priv->display;
 	int ret;
 
 	MMIO_RING_DFH(RING_IMR, D_ALL, 0, NULL,
@@ -2281,21 +2285,21 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DFH(GEN7_HALF_SLICE_CHICKEN1, D_ALL, F_MODE_MASK | F_CMD_ACCESS, NULL, NULL);
 
 	/* display */
-	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_A), D_ALL, NULL,
+	MMIO_DH(TRANSCONF(display, TRANSCODER_A), D_ALL, NULL,
 		pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_B), D_ALL, NULL,
+	MMIO_DH(TRANSCONF(display, TRANSCODER_B), D_ALL, NULL,
 		pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_C), D_ALL, NULL,
+	MMIO_DH(TRANSCONF(display, TRANSCODER_C), D_ALL, NULL,
 		pipeconf_mmio_write);
-	MMIO_DH(TRANSCONF(dev_priv, TRANSCODER_EDP), D_ALL, NULL,
+	MMIO_DH(TRANSCONF(display, TRANSCODER_EDP), D_ALL, NULL,
 		pipeconf_mmio_write);
-	MMIO_DH(DSPSURF(dev_priv, PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(display, PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-	MMIO_DH(DSPSURF(dev_priv, PIPE_B), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(display, PIPE_B), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_B, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-	MMIO_DH(DSPSURF(dev_priv, PIPE_C), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(display, PIPE_C), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_C, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
 	MMIO_DH(SPRSURF(PIPE_A), D_ALL, NULL, spr_surf_mmio_write);
-- 
2.39.5

