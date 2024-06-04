Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FA28FB6FF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB40D10E4DF;
	Tue,  4 Jun 2024 15:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LqzSyJ8y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E41D10E4CF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514844; x=1749050844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7F/75VANLMU08WhRhcT4dmgcDLpkNgEwtp29remQjuE=;
 b=LqzSyJ8yzc6XLhVSJoIpR3Yp3mI1rc4ZDTOoVF7OoWSIDEyMxznQ/1VY
 9weybzzMW343mMAvfkPRtJ+EKg9cQ0IyW7z1jwrnq/fZ6XMtL/eC9F1GJ
 fgyL6zuont+1ru37nxbrt7ic0eBWhTTgO3sHgO3Xis3dFCT7cGH0YVHXL
 8EtFBNRxPwHf4tHdCb6Y5BQ8tycSYPypWN4nF+cLaI+7/j79nvg2QeDhF
 sExkLS9TJxrHyAv0tybsUogeC20imdOEuteSHmZEsHTrRrdNflrNnH2er
 rjo6O21qI9hswTx+P4IiAO23a5PLjG3kX5qurtwGoNoigfXQEr/vpJhd2 w==;
X-CSE-ConnectionGUID: MvsTZIIeRyyapaNFOBGLyg==
X-CSE-MsgGUID: pnw4DkibSkqAQO9LFyIMcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469729"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469729"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:24 -0700
X-CSE-ConnectionGUID: Y3x4oUlXQc+P2vLbtDRINw==
X-CSE-MsgGUID: H5UhFdnrSZinvoPPQYyTyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383196"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/65] drm/i915: pass dev_priv explicitly to PIPESRC
Date: Tue,  4 Jun 2024 18:25:29 +0300
Message-Id: <ac1959b7038d6fedb4777dcf2b961de901fb8880.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPESRC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/gvt/fb_decoder.c        | 6 +++---
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 6 +++---
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 5c8778865156..864d94406894 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1053,7 +1053,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 
 	drm_WARN_ON(&dev_priv->drm, offset != 0);
 
-	val = intel_de_read(dev_priv, PIPESRC(pipe));
+	val = intel_de_read(dev_priv, PIPESRC(dev_priv, pipe));
 	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
 	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 993eb0935f6b..81ae72648e8e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2784,7 +2784,7 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	/* pipesrc controls the size that is scaled from, which should
 	 * always be the user's requested size.
 	 */
-	intel_de_write(dev_priv, PIPESRC(pipe),
+	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
 		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
@@ -2878,7 +2878,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, PIPESRC(crtc->pipe));
+	tmp = intel_de_read(dev_priv, PIPESRC(dev_priv, crtc->pipe));
 
 	drm_rect_init(&pipe_config->pipe_src, 0, 0,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
@@ -8204,7 +8204,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
 	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
 		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
-	intel_de_write(dev_priv, PIPESRC(pipe),
+	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
 		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
 
 	intel_de_write(dev_priv, FP0(pipe), fp);
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 0afde865a7de..c454e25b2b0f 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -267,11 +267,11 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
 		(_PRI_PLANE_STRIDE_MASK >> 6) :
 		_PRI_PLANE_STRIDE_MASK, plane->bpp);
 
-	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) & _PIPE_H_SRCSZ_MASK) >>
+	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) & _PIPE_H_SRCSZ_MASK) >>
 		_PIPE_H_SRCSZ_SHIFT;
 	plane->width += 1;
-	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) &
-			_PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
+	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) &
+			 _PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
 	plane->height += 1;	/* raw height is one minus the real value */
 
 	val = vgpu_vreg_t(vgpu, DSPTILEOFF(dev_priv, pipe));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d961f3f70aaa..2e26464672f7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1225,7 +1225,7 @@
 #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
 #define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
-#define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
+#define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
 #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
 /* VRR registers */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 5abae7df0bfe..ff561a1e0fd3 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -239,7 +239,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPESRC(TRANSCODER_A));
+	MMIO_D(PIPESRC(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
@@ -248,7 +248,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPESRC(TRANSCODER_B));
+	MMIO_D(PIPESRC(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
@@ -257,7 +257,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPESRC(TRANSCODER_C));
+	MMIO_D(PIPESRC(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
-- 
2.39.2

