Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26578CD308
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99E9310E5BE;
	Thu, 23 May 2024 13:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WSLfByEN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFF310E68B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469222; x=1748005222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O99t5C9A1LG1n/+akVb8iPrCW0QxpBf5WatNprVYIKw=;
 b=WSLfByENhbi85+gRY5fmn86E66ch4WFOjdnj1BEwe3aue9lcwnyhTpki
 yWndgEuGXaTt2D2qkV/DE+Bqmp6dwj61TQrBkebbfub6HaV6SLgJz4jc3
 OXzphhXOZlFTwtL0F59pE9M92h9aLTMARQwh5A66IFV6V7IO+h6ifNIKA
 p/inQmKAKn+//hCJq5W33QkdiiEEQi7aFFG/2zBBHhdPMrPw91U0mUE/Z
 CorcFPEt1wYa5jolkUpFKK4vC6p7ua/idkPeaX0dn0p6N/Fk2v5QjF9EX
 8vlpkahCPnGqNwChbGrEX11omc8dVJZCgS9WFlFe2JHet0en8SsLdf1ZH Q==;
X-CSE-ConnectionGUID: Ka+ezO+JSN+2rUZt9LAeYQ==
X-CSE-MsgGUID: jRSJBxY/QUmRTYVD4F+g7Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610011"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610011"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:21 -0700
X-CSE-ConnectionGUID: wvPEXROXQYOQpNgGcF16sA==
X-CSE-MsgGUID: O0bZz41jQleksS9yO/QkFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672271"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 08/16] drm/i915: pass dev_priv explicitly to DSPSURF
Date: Thu, 23 May 2024 15:59:36 +0300
Message-Id: <fc2d7753aa6e8e25303a111bf4b120da6ce8c458.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPSURF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 12 ++++++------
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c       |  4 ++--
 drivers/gpu/drm/i915/gvt/cmd_parser.c          |  4 ++--
 drivers/gpu/drm/i915/gvt/fb_decoder.c          |  2 +-
 drivers/gpu/drm/i915/gvt/handlers.c            |  8 ++++----
 drivers/gpu/drm/i915/intel_clock_gating.c      |  6 ++++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    |  6 +++---
 8 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 42175cb74d5d..7adaf8cbd945 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -499,7 +499,7 @@ static void i9xx_plane_update_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
+		intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
 				  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
@@ -542,7 +542,7 @@ static void i9xx_plane_disable_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
 	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane), 0);
+		intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane), 0);
 	else
 		intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane), 0);
 }
@@ -563,7 +563,7 @@ g4x_primary_async_flip(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, DSPCNTR(dev_priv, i9xx_plane), dspcntr);
 
-	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
+	intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
 			  intel_plane_ggtt_offset(plane_state) + dspaddr_offset);
 }
 
@@ -1034,7 +1034,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		offset = intel_de_read(dev_priv, DSPOFFSET(i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
+		base = intel_de_read(dev_priv, DSPSURF(dev_priv, i9xx_plane)) & DISP_ADDR_MASK;
 	} else if (DISPLAY_VER(dev_priv) >= 4) {
 		if (plane_config->tiling)
 			offset = intel_de_read(dev_priv,
@@ -1042,7 +1042,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 		else
 			offset = intel_de_read(dev_priv,
 					       DSPLINOFF(dev_priv, i9xx_plane));
-		base = intel_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
+		base = intel_de_read(dev_priv, DSPSURF(dev_priv, i9xx_plane)) & DISP_ADDR_MASK;
 	} else {
 		offset = 0;
 		base = intel_de_read(dev_priv, DSPADDR(dev_priv, i9xx_plane));
@@ -1094,7 +1094,7 @@ bool i9xx_fixup_initial_plane_config(struct intel_crtc *crtc,
 		return false;
 
 	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write(dev_priv, DSPSURF(i9xx_plane), base);
+		intel_de_write(dev_priv, DSPSURF(dev_priv, i9xx_plane), base);
 	else
 		intel_de_write(dev_priv, DSPADDR(dev_priv, i9xx_plane), base);
 
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 5a1f45eceed4..2771f2a7645b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -67,7 +67,7 @@
 #define   DISP_WIDTH(w)			REG_FIELD_PREP(DISP_WIDTH_MASK, (w))
 
 #define _DSPASURF				0x7019C /* i965+ */
-#define DSPSURF(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
+#define DSPSURF(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURF)
 #define   DISP_ADDR_MASK		REG_GENMASK(31, 12)
 
 #define _DSPATILEOFF				0x701A4 /* i965+ */
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index f46e01cad053..e9189a864f69 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -364,8 +364,8 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
+	intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
+			  intel_de_read_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane)));
 }
 
 static const struct intel_fbc_funcs i965_fbc_funcs = {
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 7072d14d86cf..9cdb53015d16 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1317,7 +1317,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 	if (info->plane == PLANE_A) {
 		info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
 		info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
-		info->surf_reg = DSPSURF(info->pipe);
+		info->surf_reg = DSPSURF(dev_priv, info->pipe);
 	} else if (info->plane == PLANE_B) {
 		info->ctrl_reg = SPRCTL(info->pipe);
 		info->stride_reg = SPRSTRIDE(info->pipe);
@@ -1383,7 +1383,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 
 	info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
 	info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
-	info->surf_reg = DSPSURF(info->pipe);
+	info->surf_reg = DSPSURF(dev_priv, info->pipe);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index cf1cff3d1c4f..6c3a0f160bea 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -251,7 +251,7 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 
 	plane->hw_format = fmt;
 
-	plane->base = vgpu_vreg_t(vgpu, DSPSURF(pipe)) & I915_GTT_PAGE_MASK;
+	plane->base = vgpu_vreg_t(vgpu, DSPSURF(dev_priv, pipe)) & I915_GTT_PAGE_MASK;
 	if (!vgpu_gmadr_is_valid(vgpu, plane->base))
 		return  -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 56fb606b4a3d..abcb8f0825e0 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1008,7 +1008,7 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
 }
 
 #define DSPSURF_TO_PIPE(offset) \
-	calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(PIPE_C))
+	calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(dev_priv, PIPE_C))
 
 static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
@@ -2276,13 +2276,13 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
 	MMIO_DH(TRANSCONF(TRANSCODER_B), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(TRANSCONF(TRANSCODER_C), D_ALL, NULL, pipeconf_mmio_write);
 	MMIO_DH(TRANSCONF(TRANSCODER_EDP), D_ALL, NULL, pipeconf_mmio_write);
-	MMIO_DH(DSPSURF(PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(dev_priv, PIPE_A), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_A, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-	MMIO_DH(DSPSURF(PIPE_B), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(dev_priv, PIPE_B), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_B, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
-	MMIO_DH(DSPSURF(PIPE_C), D_ALL, NULL, pri_surf_mmio_write);
+	MMIO_DH(DSPSURF(dev_priv, PIPE_C), D_ALL, NULL, pri_surf_mmio_write);
 	MMIO_DH(REG_50080(PIPE_C, PLANE_PRIMARY), D_ALL, NULL,
 		reg50080_mmio_write);
 	MMIO_DH(SPRSURF(PIPE_A), D_ALL, NULL, spr_surf_mmio_write);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 59d50195c144..db4fbb6a803d 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -141,8 +141,10 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
 		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(dev_priv, pipe),
 				 0, DISP_TRICKLE_FEED_DISABLE);
 
-		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
-		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
+		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(dev_priv, pipe),
+				 0, 0);
+		intel_uncore_posting_read(&dev_priv->uncore,
+					  DSPSURF(dev_priv, pipe));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index e047928c3ea0..a8be80bde2e7 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -170,7 +170,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_A));
 	MMIO_D(DSPPOS(dev_priv, PIPE_A));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_A));
-	MMIO_D(DSPSURF(PIPE_A));
+	MMIO_D(DSPSURF(dev_priv, PIPE_A));
 	MMIO_D(DSPOFFSET(PIPE_A));
 	MMIO_D(DSPSURFLIVE(PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
@@ -179,7 +179,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_B));
 	MMIO_D(DSPPOS(dev_priv, PIPE_B));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_B));
-	MMIO_D(DSPSURF(PIPE_B));
+	MMIO_D(DSPSURF(dev_priv, PIPE_B));
 	MMIO_D(DSPOFFSET(PIPE_B));
 	MMIO_D(DSPSURFLIVE(PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
@@ -188,7 +188,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSTRIDE(dev_priv, PIPE_C));
 	MMIO_D(DSPPOS(dev_priv, PIPE_C));
 	MMIO_D(DSPSIZE(dev_priv, PIPE_C));
-	MMIO_D(DSPSURF(PIPE_C));
+	MMIO_D(DSPSURF(dev_priv, PIPE_C));
 	MMIO_D(DSPOFFSET(PIPE_C));
 	MMIO_D(DSPSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_PRIMARY));
-- 
2.39.2

