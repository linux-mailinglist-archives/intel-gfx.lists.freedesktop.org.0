Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A009183002A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 07:31:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC44B10E638;
	Wed, 17 Jan 2024 06:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182CA10E604
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 06:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705473112; x=1737009112;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=suugYnFvtZhSHUBfElgVD4bgVLtaUIBz2ZGBoeA5AbQ=;
 b=S0XlFejvt3ZSRNTRF2teuivq87D4lMEatncW5BlQSA+YwEkl4MWKn9q4
 z8dz5VOm4CWCxJpCtzL0Pv1KGary9Xj1YiLGj3KeCrdQSDRLjRB7T5pHb
 H6FMnVGLhlR4LO4XvL7c0MkMM0hBwnDMfacjY/cmd6ql6gAJtgQYbKp3B
 p2jP+yovyHTLdVjFJ5Mtl9cswkP/QTJufABNUSVPyEKiXEoWjZYSW6uLU
 qbnNKUPVxAWIbunAWhVsrJaFcKcA5+vi0ptu2+P3Jwm9BHT0NxnvBQA+j
 Bsf0uJEotgubdSZjpT26nbc6pfgrRDr8Iz8XiNnwhQnYE1H6763QplbDA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="13439761"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="13439761"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 22:31:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="32726128"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 16 Jan 2024 22:31:47 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/lnl: Block pkgC entry for performance improvemnt
Date: Wed, 17 Jan 2024 11:48:03 +0530
Message-Id: <20240117061803.1329144-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
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

For High refresh rates usages, Vblank is required to be really small.
It cannot accommodate PKGC exit delay after framestart. Block PKGC till
next framestart which will be set by software and later will be
cleared by HW at framestart.

Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h |  5 +++++
 4 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c6680ee2127c..928db551c685 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7421,6 +7421,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	drm_atomic_helper_commit_hw_done(&state->base);
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_dmc_block_pkgc(dev_priv);
+
 	if (state->modeset) {
 		/* As one of the primary mmio accessors, KMS has a high
 		 * likelihood of triggering bugs in unclaimed access. After we
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 51e0463518fb..2f86fc5f5f32 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1247,3 +1247,18 @@ void intel_dmc_debugfs_register(struct drm_i915_private *i915)
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    i915, &intel_dmc_debugfs_status_fops);
 }
+
+void intel_dmc_block_pkgc(struct drm_i915_private *i915)
+{
+	u32 pkgc_ctrl;
+
+	if (HAS_DMC(i915)) {
+		pkgc_ctrl = intel_de_read(i915, DMC_BLOCK_PKGC);
+		pkgc_ctrl |= DMC_BLOCK_PKGC_ENABLE;
+		intel_de_write(i915, DMC_BLOCK_PKGC, pkgc_ctrl);
+	} else {
+		pkgc_ctrl = intel_de_read(i915, DMC_BLOCK_PKGC_SW);
+		pkgc_ctrl |= DMC_BLOCK_PKGC_ENABLE;
+		intel_de_write(i915, DMC_BLOCK_PKGC_SW, pkgc_ctrl);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index fd607afff2ef..6c2fcaea4c0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -24,6 +24,7 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915);
 void intel_dmc_debugfs_register(struct drm_i915_private *i915);
 void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
 				 struct drm_i915_private *i915);
+void intel_dmc_block_pkgc(struct drm_i915_private *i915);
 
 void assert_dmc_loaded(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index cf10094acae3..2d52fe7f3450 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -80,6 +80,11 @@
 #define ADLP_PIPE_MMIO_START		0x5F000
 #define ADLP_PIPE_MMIO_END		0x5FFFF
 
+#define DMC_BLOCK_PKGC		_MMIO(0x8F1C0)
+#define DMC_BLOCK_PKGC_SW	_MMIO(0x8F1C4)
+
+#define DMC_BLOCK_PKGC_ENABLE	REG_BIT(31)
+
 #define TGL_PIPE_MMIO_START(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MMIO_START,\
 					      _TGL_PIPEB_MMIO_START)
 
-- 
2.29.0

