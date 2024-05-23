Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03078CD302
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7BFF10E578;
	Thu, 23 May 2024 13:00:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6XvmUqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A068C10E59C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469209; x=1748005209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=57OeLysuImG+QiBtBDuTU8PEp3LlQ4ajbiTlrr+Db58=;
 b=F6XvmUqX2S67Bw7I84HdhugleJmbR6hWXeNJG5OIGQV5X4Lu9lhdLdn6
 h9/rFRyI3ze3uzZu+3Z6mV2pM2jpItDEwqSltgmqfXZydi1OtfaoP3Hr8
 X8n/SOwI9K4n2nZ9UMee+1QzhzgrJmD+qpe6J4JxVcwDVyFo7eWzFiBXV
 S9CMZFhn/v3QJMbmqoxf25JlWZKrMmWyERTEHovxa1sU0FVkEJDYygco+
 sW9JjsEsmd8eoAtOup6zSk3/QUP6RO6uLSrVC5QdFCn+M5Dbwds4hgGrc
 ndPtuZBRoYRlLrZjmpFc5djnoFdqjRpXmFYIA7Xor7STUnvzkjad5Xmms Q==;
X-CSE-ConnectionGUID: WUMGt/KeQeyuAczqpXuRcQ==
X-CSE-MsgGUID: iYD0JxsRQ0GYIKovUMUifg==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="38164698"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="38164698"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:09 -0700
X-CSE-ConnectionGUID: Yta1NiPTQUKKT7BNYv/98Q==
X-CSE-MsgGUID: Wv1LraC5SV2FfeORJ0SKmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33731731"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 05/16] drm/i915: pass dev_priv explicitly to DSPSTRIDE
Date: Thu, 23 May 2024 15:59:33 +0300
Message-Id: <4067b3009076492d05e80ae994f9a7bd29b56b2e.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPSTRIDE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c      | 4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c          | 4 ++--
 drivers/gpu/drm/i915/gvt/fb_decoder.c          | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 5 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index ba76c952a656..34760ecd5d34 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -423,7 +423,7 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
 
-	intel_de_write_fw(dev_priv, DSPSTRIDE(i9xx_plane),
+	intel_de_write_fw(dev_priv, DSPSTRIDE(dev_priv, i9xx_plane),
 			  plane_state->view.color_plane[0].mapping_stride);
 
 	if (DISPLAY_VER(dev_priv) < 4) {
@@ -1055,7 +1055,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
 	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
 
-	val = intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
+	val = intel_de_read(dev_priv, DSPSTRIDE(dev_priv, i9xx_plane));
 	fb->pitches[0] = val & 0xffffffc0;
 
 	aligned_height = intel_fb_align_height(fb, 0, fb->height);
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index e222c0333d19..049114620d93 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -50,7 +50,7 @@
 #define DSPLINOFF(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPALINOFF)
 
 #define _DSPASTRIDE				0x70188
-#define DSPSTRIDE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
+#define DSPSTRIDE(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASTRIDE)
 
 #define _DSPAPOS				0x7018C /* pre-g4x */
 #define DSPPOS(plane)				_MMIO_PIPE2(dev_priv, plane, _DSPAPOS)
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 3b6529a6501b..7072d14d86cf 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1316,7 +1316,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 
 	if (info->plane == PLANE_A) {
 		info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
-		info->stride_reg = DSPSTRIDE(info->pipe);
+		info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
 		info->surf_reg = DSPSURF(info->pipe);
 	} else if (info->plane == PLANE_B) {
 		info->ctrl_reg = SPRCTL(info->pipe);
@@ -1382,7 +1382,7 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 	info->async_flip = ((dword2 & GENMASK(1, 0)) == 0x1);
 
 	info->ctrl_reg = DSPCNTR(dev_priv, info->pipe);
-	info->stride_reg = DSPSTRIDE(info->pipe);
+	info->stride_reg = DSPSTRIDE(dev_priv, info->pipe);
 	info->surf_reg = DSPSURF(info->pipe);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 48e3b6d8ed98..cf1cff3d1c4f 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -155,7 +155,7 @@ static u32 intel_vgpu_get_stride(struct intel_vgpu *vgpu, int pipe,
 {
 	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 
-	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(pipe)) & stride_mask;
+	u32 stride_reg = vgpu_vreg_t(vgpu, DSPSTRIDE(dev_priv, pipe)) & stride_mask;
 	u32 stride = stride_reg;
 
 	if (GRAPHICS_VER(dev_priv) >= 9) {
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 944765fe22e7..02c5dafc0c93 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -167,7 +167,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(_MMIO(0x7009c));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_A));
 	MMIO_D(DSPADDR(dev_priv, PIPE_A));
-	MMIO_D(DSPSTRIDE(PIPE_A));
+	MMIO_D(DSPSTRIDE(dev_priv, PIPE_A));
 	MMIO_D(DSPPOS(PIPE_A));
 	MMIO_D(DSPSIZE(PIPE_A));
 	MMIO_D(DSPSURF(PIPE_A));
@@ -176,7 +176,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
 	MMIO_D(DSPADDR(dev_priv, PIPE_B));
-	MMIO_D(DSPSTRIDE(PIPE_B));
+	MMIO_D(DSPSTRIDE(dev_priv, PIPE_B));
 	MMIO_D(DSPPOS(PIPE_B));
 	MMIO_D(DSPSIZE(PIPE_B));
 	MMIO_D(DSPSURF(PIPE_B));
@@ -185,7 +185,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
 	MMIO_D(DSPADDR(dev_priv, PIPE_C));
-	MMIO_D(DSPSTRIDE(PIPE_C));
+	MMIO_D(DSPSTRIDE(dev_priv, PIPE_C));
 	MMIO_D(DSPPOS(PIPE_C));
 	MMIO_D(DSPSIZE(PIPE_C));
 	MMIO_D(DSPSURF(PIPE_C));
-- 
2.39.2

