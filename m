Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD268CD305
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96ADB10E59C;
	Thu, 23 May 2024 13:00:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DbzbMvz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06AA10E5A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716469234; x=1748005234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JHmCZ6d9V9+jAaoMTMtNocbEmkZAU+7ZrxA6JTL0xls=;
 b=DbzbMvz8E4zt8afPXMD2Jx9Ps7H66vzKLtu4rdbvSxaWgdowzg5avP0o
 kAqURNBQ8rH1H1AE+ZXCtQfAhWoAefMCmm7OBDv632kIuyw+YKCkwNJ1z
 tXjhtRSmUnj5KhlRANoEJCTWfaX3QgDbLDTn84w462WqGXfpwHs6mM6JA
 CzcWf/we/wnmPO4qSEI51W0ujR5d2lejXDcD1KIoe7axIdIMFOcS+BR0P
 UuszwaxYtq81Y1O6F/sURETPYkREQXbofAPjdZLbuWxhfT6yPbI5fF2xH
 vVGrYHQDXFO3jkmX8hfGDHlFgqShb1h72x3MdAWm1zjhRMHNKRXZlNdam w==;
X-CSE-ConnectionGUID: 7f3wpQq9TDaX6HgmiWS2rA==
X-CSE-MsgGUID: qjAHSu40SIOFCPcyx/J4ig==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="16610028"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16610028"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:33 -0700
X-CSE-ConnectionGUID: bEctNEd0QRSgoBIfMcxDIw==
X-CSE-MsgGUID: JW6VC5X1RLy5Uw0R+3XPJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33672347"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:00:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 11/16] drm/i915: pass dev_priv explicitly to DSPSURFLIVE
Date: Thu, 23 May 2024 15:59:39 +0300
Message-Id: <bc252dee67718f729883da7d542c6435384683ae.1716469091.git.jani.nikula@intel.com>
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
explicitly to the DSPSURFLIVE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane_regs.h | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c            | 4 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c    | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
index 0930a76ccf3c..22a550c8b41a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane_regs.h
@@ -81,7 +81,7 @@
 #define DSPOFFSET(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPAOFFSET)
 
 #define _DSPASURFLIVE				0x701AC /* g4x+ */
-#define DSPSURFLIVE(plane)			_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
+#define DSPSURFLIVE(dev_priv, plane)		_MMIO_PIPE2(dev_priv, plane, _DSPASURFLIVE)
 
 #define _DSPAGAMC				0x701E0 /* pre-g4x */
 #define DSPGAMC(plane, i)			_MMIO_PIPE2(dev_priv, plane, _DSPAGAMC + (5 - (i)) * 4) /* plane C only, 6 x u0.8 */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index abcb8f0825e0..840fea160aa6 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1018,7 +1018,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	int event = SKL_FLIP_EVENT(pipe, PLANE_PRIMARY);
 
 	write_vreg(vgpu, offset, p_data, bytes);
-	vgpu_vreg_t(vgpu, DSPSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
+	vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
 
 	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
 
@@ -1061,7 +1061,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 
 	write_vreg(vgpu, offset, p_data, bytes);
 	if (plane == PLANE_PRIMARY) {
-		vgpu_vreg_t(vgpu, DSPSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
+		vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
 		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
 	} else {
 		vgpu_vreg_t(vgpu, SPRSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 50dfe1f81b99..b4d5592b18df 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -172,7 +172,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSIZE(dev_priv, PIPE_A));
 	MMIO_D(DSPSURF(dev_priv, PIPE_A));
 	MMIO_D(DSPOFFSET(dev_priv, PIPE_A));
-	MMIO_D(DSPSURFLIVE(PIPE_A));
+	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_A));
 	MMIO_D(REG_50080(PIPE_A, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_B));
 	MMIO_D(DSPADDR(dev_priv, PIPE_B));
@@ -181,7 +181,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSIZE(dev_priv, PIPE_B));
 	MMIO_D(DSPSURF(dev_priv, PIPE_B));
 	MMIO_D(DSPOFFSET(dev_priv, PIPE_B));
-	MMIO_D(DSPSURFLIVE(PIPE_B));
+	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_B));
 	MMIO_D(REG_50080(PIPE_B, PLANE_PRIMARY));
 	MMIO_D(DSPCNTR(dev_priv, PIPE_C));
 	MMIO_D(DSPADDR(dev_priv, PIPE_C));
@@ -190,7 +190,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(DSPSIZE(dev_priv, PIPE_C));
 	MMIO_D(DSPSURF(dev_priv, PIPE_C));
 	MMIO_D(DSPOFFSET(dev_priv, PIPE_C));
-	MMIO_D(DSPSURFLIVE(PIPE_C));
+	MMIO_D(DSPSURFLIVE(dev_priv, PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_PRIMARY));
 	MMIO_D(SPRCTL(PIPE_A));
 	MMIO_D(SPRLINOFF(PIPE_A));
-- 
2.39.2

