Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CD38C65FE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4F7A10E49F;
	Wed, 15 May 2024 11:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="McpyN9UT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F3910E49F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774219; x=1747310219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AYaZU9BhUq/KzTww+BNIPO1gE15GdCJ6vINu0Q0UH4s=;
 b=McpyN9UT0qxtbRxT284gH2i5r5x8nnpbA64wKqXgTIPX5kpCPe6D2y7v
 DaMnWWfNB0QpMOGORPL30eB9yiwkJ+uKgzLn+FtplzXsEZw2v1KTXgest
 piO1ifgwqTp2Ul4p1nlYUwPZN6P9bE+QVwo/3qm/1F1adEmtdLcniRwbM
 W6dlr4J6WJ/pgidH8T1uPfCczU1I3JclRqHrJdYLjbu1lKtGiMaYpHrlV
 MTXkKd2oYLiO1L7HZYU4tZut0kKLXK3q0w9eanzxWBHOXe21POyqIyqo9
 FBqxcpXRnd3tqYR/cabFPrWUBEgIeaai2JKfBcC5E94ExD3VGjSfTnWXm A==;
X-CSE-ConnectionGUID: XeytVTooSvmignENtgnECw==
X-CSE-MsgGUID: IQaHhb27TMKe5F6Eq5GMIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604781"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604781"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:56:59 -0700
X-CSE-ConnectionGUID: G29lyitvQbqAgfxkehMcWg==
X-CSE-MsgGUID: DTsvIq0LRACuD37aTCdysg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962290"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:56:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/8] drm/i915: pass dev_priv explicitly to CURCNTR
Date: Wed, 15 May 2024 14:56:41 +0300
Message-Id: <06bc681558c86f351ae596e9600133bb10ae4bdd.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
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
explicitly to the CURCNTR register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_cursor_regs.h |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c     |  4 ++--
 drivers/gpu/drm/i915/gvt/display.c               |  8 ++++----
 drivers/gpu/drm/i915/gvt/fb_decoder.c            |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      |  6 +++---
 6 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 3ecab15d1431..31cb614b6ba8 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -295,11 +295,11 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != size ||
 	    plane->cursor.cntl != cntl) {
-		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), 0);
+		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), 0);
 		intel_de_write_fw(dev_priv, CURBASE(PIPE_A), base);
 		intel_de_write_fw(dev_priv, CURSIZE(PIPE_A), size);
 		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
-		intel_de_write_fw(dev_priv, CURCNTR(PIPE_A), cntl);
+		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), cntl);
 
 		plane->cursor.base = base;
 		plane->cursor.size = size;
@@ -328,7 +328,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	ret = intel_de_read(dev_priv, CURCNTR(PIPE_A)) & CURSOR_ENABLE;
+	ret = intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & CURSOR_ENABLE;
 
 	*pipe = PIPE_A;
 
@@ -646,7 +646,7 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		if (HAS_CUR_FBC(dev_priv))
 			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
 					  fbc_ctl);
-		intel_de_write_fw(dev_priv, CURCNTR(pipe), cntl);
+		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, pipe), cntl);
 		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
 		intel_de_write_fw(dev_priv, CURBASE(pipe), base);
 
@@ -684,7 +684,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	if (!wakeref)
 		return false;
 
-	val = intel_de_read(dev_priv, CURCNTR(plane->pipe));
+	val = intel_de_read(dev_priv, CURCNTR(dev_priv, plane->pipe));
 
 	ret = val & MCURSOR_MODE_MASK;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index a478ef5787c5..5f522a4ecc2e 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -66,7 +66,7 @@
 #define _CURBBASE_IVB		0x71084
 #define _CURBPOS_IVB		0x71088
 
-#define CURCNTR(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
+#define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
 #define CURBASE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
 #define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
 #define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e29073b90860..cce1420fb541 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8238,9 +8238,9 @@ void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_de_read(dev_priv, DSPCNTR(PLANE_C)) & DISP_ENABLE);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(PIPE_A)) & MCURSOR_MODE_MASK);
+		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_A)) & MCURSOR_MODE_MASK);
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, CURCNTR(PIPE_B)) & MCURSOR_MODE_MASK);
+		    intel_de_read(dev_priv, CURCNTR(dev_priv, PIPE_B)) & MCURSOR_MODE_MASK);
 
 	intel_de_write(dev_priv, TRANSCONF(pipe), 0);
 	intel_de_posting_read(dev_priv, TRANSCONF(pipe));
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 527e0bb2b15e..73ea8be0f80b 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -194,8 +194,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 				~(TRANSCONF_ENABLE | TRANSCONF_STATE_ENABLE);
 			vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
 			vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
-			vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE_MASK;
-			vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
+			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
+			vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
 		}
 
 		for (trans = TRANSCODER_A; trans <= TRANSCODER_EDP; trans++) {
@@ -505,8 +505,8 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 	for_each_pipe(dev_priv, pipe) {
 		vgpu_vreg_t(vgpu, DSPCNTR(pipe)) &= ~DISP_ENABLE;
 		vgpu_vreg_t(vgpu, SPRCTL(pipe)) &= ~SPRITE_ENABLE;
-		vgpu_vreg_t(vgpu, CURCNTR(pipe)) &= ~MCURSOR_MODE_MASK;
-		vgpu_vreg_t(vgpu, CURCNTR(pipe)) |= MCURSOR_MODE_DISABLE;
+		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) &= ~MCURSOR_MODE_MASK;
+		vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe)) |= MCURSOR_MODE_DISABLE;
 	}
 
 	vgpu_vreg_t(vgpu, TRANSCONF(TRANSCODER_A)) |= TRANSCONF_ENABLE;
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index ac3ec9d1ef5f..6e226ea1afa2 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -347,7 +347,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 	if (pipe >= I915_MAX_PIPES)
 		return -ENODEV;
 
-	val = vgpu_vreg_t(vgpu, CURCNTR(pipe));
+	val = vgpu_vreg_t(vgpu, CURCNTR(dev_priv, pipe));
 	mode = val & MCURSOR_MODE_MASK;
 	plane->enabled = (mode != MCURSOR_MODE_DISABLE);
 	if (!plane->enabled)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 843bdb46d49c..18deaf416b7e 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -145,9 +145,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_B));
 	MMIO_D(PIPE_FRMCOUNT_G4X(PIPE_C));
 	MMIO_D(PIPE_FRMCOUNT_G4X(_PIPE_EDP));
-	MMIO_D(CURCNTR(PIPE_A));
-	MMIO_D(CURCNTR(PIPE_B));
-	MMIO_D(CURCNTR(PIPE_C));
+	MMIO_D(CURCNTR(dev_priv, PIPE_A));
+	MMIO_D(CURCNTR(dev_priv, PIPE_B));
+	MMIO_D(CURCNTR(dev_priv, PIPE_C));
 	MMIO_D(CURPOS(PIPE_A));
 	MMIO_D(CURPOS(PIPE_B));
 	MMIO_D(CURPOS(PIPE_C));
-- 
2.39.2

