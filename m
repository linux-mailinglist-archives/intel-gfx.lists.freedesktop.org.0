Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA5C8CD2FB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06CB10E387;
	Thu, 23 May 2024 13:00:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOUVEVOI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0057F10E564
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469197; x=1748005197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kf5W2AcUFWcxML+CHA11oZKKSFrVeTjoL/iufV9OKyg=;
 b=QOUVEVOIAij2rrdW8j9HfaAZd0GkTahLxrNawzHj/lzjjn2KcmvYZuqF
 c+GgantBXKKhKh+tivLVOpMf0ObqtUT4HnsLjrhQR+GymsP1Q0YWoglhh
 Pwee9niW5MZwls4m71yEFZxQCokpgK7ZBzcW3wgWvZILorNhX4PsJu0hX
 4rmUE/i4fgd/nRlqFgT9rSOjZ3Rp8kJDtdAuQ8npYHWqE6XfgrqyKocuQ
 VUjECGlFH1EJq2IvMTfBb5P9TGjX84hjiw6kPyRk8KcbRuXIJKOpn2j1C
 llPHp10h7j//EeK2Je3chBJorNS8y/uhzYfV252piA/HY35ppj9KeX+nS Q==;
X-CSE-ConnectionGUID: 3RCBN2ENSoeps3G0QqyOlw==
X-CSE-MsgGUID: KZ9TUj5NRByOz63BEI16CQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164661"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164661"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:56 -0700
X-CSE-ConnectionGUID: 9lRPR+UpRFORmP6XSE5MDQ==
X-CSE-MsgGUID: ER1nCfIYStq9Esu9Xg2RXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731564"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:59:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 02/16] drm/i915: pass dev_priv explicitly to DSPCNTR
Date: Thu, 23 May 2024 15:59:30 +0300
Message-Id: <d9434a718658d7dc6dba1e8a54f80cd1503d0b33.1716469091.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716469091.git.jani.nikula@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the DSPCNTR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h |  2 +-
 drivers/gpu/drm/i915/display/intel_color.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c   |  6 +++---
 drivers/gpu/drm/i915/gvt/cmd_parser.c          |  4 ++--
 drivers/gpu/drm/i915/gvt/display.c             |  4 ++--
 drivers/gpu/drm/i915/gvt/fb_decoder.c          |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c            |  2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c      |  3 ++-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    |  6 +++---
 10 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 4636523d7948..ceb0a969357f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -496,7 +496,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
@@ -539,7 +539,7 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 	 */
 	dspcntr = i9xx_plane_ctl_crtc(crtc_state);
 
-	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
 		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
@@ -561,7 +561,7 @@ g4x_primary_async_flip(struct intel_plane *plane,
 	if (async_flip)
 		dspcntr |= DISP_ASYNC_FLIP;
 
-	intel_de_write_fw(dev_priv, DSPCNTR(i9xx_plane), dspcntr);
+	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
 	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
@@ -685,7 +685,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
 
 	ret = val & DISP_ENABLE;
 
@@ -1012,7 +1012,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	fb->dev = dev;
 
-	val = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
 
 	if (DISPLAY_VER(dev_priv) >= 4) {
 		if (val & DISP_TILED) {
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 926da106f1a2..d483569e4147 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -12,7 +12,7 @@
 #define DSPADDR_VLV(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAADDR_VLV)
 
 #define _DSPACNTR				0x70180
-#define DSPCNTR(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
+#define DSPCNTR(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPACNTR)
 #define   DISP_ENABLE			REG_BIT(31)
 #define   DISP_PIPE_GAMMA_ENABLE	REG_BIT(30)
 #define   DISP_FORMAT_MASK		REG_GENMASK(29, 26)
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 82b155708422..a83f41ee6834 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1038,7 +1038,7 @@ static void i9xx_get_config(struct intel_crtc_state *crtc_state)
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, DSPCNTR(i9xx_plane));
+	tmp = intel_de_read(dev_priv, DSPCNTR(dev_priv, i9xx_plane));
 
 	if (tmp & DISP_PIPE_GAMMA_ENABLE)
 		crtc_state->gamma_enable = true;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e8e2fd52cf6..58a4060f90b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8233,11 +8233,11 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		    pipe_name(pipe));
 
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_A)) & DISP_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_A)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_B)) & DISP_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_B)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, DSPCNTR(PLANE_C)) & DISP_ENABLE);
+		    intel_de_read(dev_priv, DSPCNTR(dev_priv, PLANE_C)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & MCURSOR_MODE_MASK);
 	drm_WARN_ON(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 2c315caf2414..3b6529a6501b 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1315,7 +1315,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 	info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);
 
 	if (info->plane == PLANE_A) {
-		info->ctrl_reg = DSPCNTR(info->pipe);
+		info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
 		info->stride_reg = DSPSTRIDE(info->pipe);
 		info->surf_reg = DSPSURF(info->pipe);
 	} else if (info->plane == PLANE_B) {
@@ -1381,7 +1381,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 	info->surf_val = (dword2 & GENMASK(31, 12)) >> 12;
 	info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);
 
-	info->ctrl_reg = DSPCNTR(info->pipe);
+	info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
 	info->stride_reg = DSPSTRIDE(info->pipe);
 	info->surf_reg = DSPSURF(info->pipe);
 
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index dafa13ac826b..eaa92d392189 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -193,7 +193,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		for_each_pipe(dev_priv, pipe) {
 			vgpu_vreg_t(vgpu, TRANSCONF(pipe)) &=
 				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
-			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
+			vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
 			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
 			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
@@ -504,7 +504,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 
 	/* Disable Primary/Sprite/Cursor plane */
 	for_each_pipe(dev_priv, pipe) {
-		vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
+		vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) &= ~DISP_ENABLE;
 		vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
 		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
 		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 521dee39e5fb..48e3b6d8ed98 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -217,7 +217,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 	if (pipe >= I915_MAX_PIPES)
 		return -ENODEV;
 
-	val = vgpu_vreg_t(vgpu, DSPCNTR(pipe));
+	val = vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe));
 	plane->enabled = !!(val & DISP_ENABLE);
 	if (!plane->enabled)
 		return -ENODEV;
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 27ef6dfee641..56fb606b4a3d 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1022,7 +1022,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 
 	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
 
-	if (vgpu_vreg_t(vgpu, DSPCNTR(pipe)) & PLANE_CTL_ASYNC_FLIP)
+	if (vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) & PLANE_CTL_ASYNC_FLIP)
 		intel_vgpu_trigger_virtual_event(vgpu, event);
 	else
 		set_bit(event, vgpu->irq.flip_done_event[pipe]);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 5c5685ebd49e..59d50195c144 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -138,7 +138,8 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(pipe), 0, DISP_TRICKLE_FEED_DISABLE);
+		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(dev_priv, pipe),
+				 0, DISP_TRICKLE_FEED_DISABLE);
 
 		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
 		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 2375292292b6..909823d7ed1b 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -165,7 +165,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x70094));
 	MMIO_D(_MMIO(0x70098));
 	MMIO_D(_MMIO(0x7009c));
-	MMIO_D(DSPCNTR(PIPE_A));
+	MMIO_D(DSPCNTR(dev_priv, PIPE_A));
 	MMIO_D(DSPADDR(PIPE_A));
 	MMIO_D(DSPSTRIDE(PIPE_A));
 	MMIO_D(DSPPOS(PIPE_A));
@@ -174,7 +174,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPOFFSET(PIPE_A));
 	MMIO_D(DSPSURFLIVE(PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
-	MMIO_D(DSPCNTR(PIPE_B));
+	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
 	MMIO_D(DSPADDR(PIPE_B));
 	MMIO_D(DSPSTRIDE(PIPE_B));
 	MMIO_D(DSPPOS(PIPE_B));
@@ -183,7 +183,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPOFFSET(PIPE_B));
 	MMIO_D(DSPSURFLIVE(PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
-	MMIO_D(DSPCNTR(PIPE_C));
+	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
 	MMIO_D(DSPADDR(PIPE_C));
 	MMIO_D(DSPSTRIDE(PIPE_C));
 	MMIO_D(DSPPOS(PIPE_C));
-- 
2.39.2

