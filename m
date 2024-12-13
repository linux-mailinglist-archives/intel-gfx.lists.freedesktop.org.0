Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3079F0BA2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 12:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C3910E071;
	Fri, 13 Dec 2024 11:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oCMRoDcd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A89D10E071
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 11:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734090681; x=1765626681;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGRObChJ6TfDZnl8ufXmSYsftfnrkPdBfLZZbguwIeQ=;
 b=oCMRoDcdeXSJPpcndalCWEFyUK/4PdTFGSa0yOBfWLsXLAt/kSdza6+A
 O4SLeMJJu6BVXs2OU5yCpIV80uGarw4SF7gdn5j9NWBTdDBmUdcM/GiYH
 e6ObDMeEVxF88PBVM8EpdeZCfTPnul8sD17Qwrcv4oXIO8lqBsD2KP7Ib
 TGxowRAi4TAVvVIVjupXDBlGmUCaI7+uJJ1l3OQ7wtQOAPa+QEVgMkSM0
 Q29zD3wt17vvMsamLmPXOGyx2YVZEY5KdvwWa9qWpbzW7Q9cHSSIJONcI
 UL314YWBCxAijDsmLaUns3ywz9zeAFH8JB60tsESgpG9mRUoDH5rHPzb4 Q==;
X-CSE-ConnectionGUID: YC+Cp4GkTtqfApHKGKtVpA==
X-CSE-MsgGUID: xlwxD6z8QYiOyUhqmbtTfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34773340"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34773340"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:21 -0800
X-CSE-ConnectionGUID: 3y7PMhU1TuabQo8rGRERow==
X-CSE-MsgGUID: wqmsKnpfT022XzbJJD9yvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96946610"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 03:51:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 1/3] drm/i915: split out i9xx_wm_regs.h
Date: Fri, 13 Dec 2024 13:51:09 +0200
Message-Id: <20241213115111.335474-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Very few files need the i9xx watermark related registers. Split them out
to a dedicated file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/i9xx_display_sr.c    |   1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   1 +
 drivers/gpu/drm/i915/display/i9xx_wm_regs.h   | 257 ++++++++++++++++++
 .../drm/i915/display/intel_display_debugfs.c  |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 248 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 6 files changed, 261 insertions(+), 248 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_wm_regs.h

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index f6b8333f6339..f7d4a6cfce5f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_display_sr.h"
+#include "i9xx_wm_regs.h"
 #include "intel_de.h"
 #include "intel_gmbus.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index e3b13886177a..db78c1e6b0a3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
+#include "i9xx_wm_regs.h"
 #include "intel_atomic.h"
 #include "intel_bo.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm_regs.h b/drivers/gpu/drm/i915/display/i9xx_wm_regs.h
new file mode 100644
index 000000000000..d68d22235cf2
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_wm_regs.h
@@ -0,0 +1,257 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __I9XX_WM_REGS_H__
+#define __I9XX_WM_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define DSPARB(dev_priv)			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
+#define   DSPARB_CSTART_MASK	(0x7f << 7)
+#define   DSPARB_CSTART_SHIFT	7
+#define   DSPARB_BSTART_MASK	(0x7f)
+#define   DSPARB_BSTART_SHIFT	0
+#define   DSPARB_BEND_SHIFT	9 /* on 855 */
+#define   DSPARB_AEND_SHIFT	0
+#define   DSPARB_SPRITEA_SHIFT_VLV	0
+#define   DSPARB_SPRITEA_MASK_VLV	(0xff << 0)
+#define   DSPARB_SPRITEB_SHIFT_VLV	8
+#define   DSPARB_SPRITEB_MASK_VLV	(0xff << 8)
+#define   DSPARB_SPRITEC_SHIFT_VLV	16
+#define   DSPARB_SPRITEC_MASK_VLV	(0xff << 16)
+#define   DSPARB_SPRITED_SHIFT_VLV	24
+#define   DSPARB_SPRITED_MASK_VLV	(0xff << 24)
+#define DSPARB2				_MMIO(VLV_DISPLAY_BASE + 0x70060) /* vlv/chv */
+#define   DSPARB_SPRITEA_HI_SHIFT_VLV	0
+#define   DSPARB_SPRITEA_HI_MASK_VLV	(0x1 << 0)
+#define   DSPARB_SPRITEB_HI_SHIFT_VLV	4
+#define   DSPARB_SPRITEB_HI_MASK_VLV	(0x1 << 4)
+#define   DSPARB_SPRITEC_HI_SHIFT_VLV	8
+#define   DSPARB_SPRITEC_HI_MASK_VLV	(0x1 << 8)
+#define   DSPARB_SPRITED_HI_SHIFT_VLV	12
+#define   DSPARB_SPRITED_HI_MASK_VLV	(0x1 << 12)
+#define   DSPARB_SPRITEE_HI_SHIFT_VLV	16
+#define   DSPARB_SPRITEE_HI_MASK_VLV	(0x1 << 16)
+#define   DSPARB_SPRITEF_HI_SHIFT_VLV	20
+#define   DSPARB_SPRITEF_HI_MASK_VLV	(0x1 << 20)
+#define DSPARB3				_MMIO(VLV_DISPLAY_BASE + 0x7006c) /* chv */
+#define   DSPARB_SPRITEE_SHIFT_VLV	0
+#define   DSPARB_SPRITEE_MASK_VLV	(0xff << 0)
+#define   DSPARB_SPRITEF_SHIFT_VLV	8
+#define   DSPARB_SPRITEF_MASK_VLV	(0xff << 8)
+
+/* pnv/gen4/g4x/vlv/chv */
+#define DSPFW1(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
+#define   DSPFW_SR_SHIFT		23
+#define   DSPFW_SR_MASK			(0x1ff << 23)
+#define   DSPFW_CURSORB_SHIFT		16
+#define   DSPFW_CURSORB_MASK		(0x3f << 16)
+#define   DSPFW_PLANEB_SHIFT		8
+#define   DSPFW_PLANEB_MASK		(0x7f << 8)
+#define   DSPFW_PLANEB_MASK_VLV		(0xff << 8) /* vlv/chv */
+#define   DSPFW_PLANEA_SHIFT		0
+#define   DSPFW_PLANEA_MASK		(0x7f << 0)
+#define   DSPFW_PLANEA_MASK_VLV		(0xff << 0) /* vlv/chv */
+#define DSPFW2(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
+#define   DSPFW_FBC_SR_EN		(1 << 31)	  /* g4x */
+#define   DSPFW_FBC_SR_SHIFT		28
+#define   DSPFW_FBC_SR_MASK		(0x7 << 28) /* g4x */
+#define   DSPFW_FBC_HPLL_SR_SHIFT	24
+#define   DSPFW_FBC_HPLL_SR_MASK	(0xf << 24) /* g4x */
+#define   DSPFW_SPRITEB_SHIFT		(16)
+#define   DSPFW_SPRITEB_MASK		(0x7f << 16) /* g4x */
+#define   DSPFW_SPRITEB_MASK_VLV	(0xff << 16) /* vlv/chv */
+#define   DSPFW_CURSORA_SHIFT		8
+#define   DSPFW_CURSORA_MASK		(0x3f << 8)
+#define   DSPFW_PLANEC_OLD_SHIFT	0
+#define   DSPFW_PLANEC_OLD_MASK		(0x7f << 0) /* pre-gen4 sprite C */
+#define   DSPFW_SPRITEA_SHIFT		0
+#define   DSPFW_SPRITEA_MASK		(0x7f << 0) /* g4x */
+#define   DSPFW_SPRITEA_MASK_VLV	(0xff << 0) /* vlv/chv */
+#define DSPFW3(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
+#define   DSPFW_HPLL_SR_EN		(1 << 31)
+#define   PINEVIEW_SELF_REFRESH_EN	(1 << 30)
+#define   DSPFW_CURSOR_SR_SHIFT		24
+#define   DSPFW_CURSOR_SR_MASK		(0x3f << 24)
+#define   DSPFW_HPLL_CURSOR_SHIFT	16
+#define   DSPFW_HPLL_CURSOR_MASK	(0x3f << 16)
+#define   DSPFW_HPLL_SR_SHIFT		0
+#define   DSPFW_HPLL_SR_MASK		(0x1ff << 0)
+
+/* vlv/chv */
+#define DSPFW4		_MMIO(VLV_DISPLAY_BASE + 0x70070)
+#define   DSPFW_SPRITEB_WM1_SHIFT	16
+#define   DSPFW_SPRITEB_WM1_MASK	(0xff << 16)
+#define   DSPFW_CURSORA_WM1_SHIFT	8
+#define   DSPFW_CURSORA_WM1_MASK	(0x3f << 8)
+#define   DSPFW_SPRITEA_WM1_SHIFT	0
+#define   DSPFW_SPRITEA_WM1_MASK	(0xff << 0)
+#define DSPFW5		_MMIO(VLV_DISPLAY_BASE + 0x70074)
+#define   DSPFW_PLANEB_WM1_SHIFT	24
+#define   DSPFW_PLANEB_WM1_MASK		(0xff << 24)
+#define   DSPFW_PLANEA_WM1_SHIFT	16
+#define   DSPFW_PLANEA_WM1_MASK		(0xff << 16)
+#define   DSPFW_CURSORB_WM1_SHIFT	8
+#define   DSPFW_CURSORB_WM1_MASK	(0x3f << 8)
+#define   DSPFW_CURSOR_SR_WM1_SHIFT	0
+#define   DSPFW_CURSOR_SR_WM1_MASK	(0x3f << 0)
+#define DSPFW6		_MMIO(VLV_DISPLAY_BASE + 0x70078)
+#define   DSPFW_SR_WM1_SHIFT		0
+#define   DSPFW_SR_WM1_MASK		(0x1ff << 0)
+#define DSPFW7		_MMIO(VLV_DISPLAY_BASE + 0x7007c)
+#define DSPFW7_CHV	_MMIO(VLV_DISPLAY_BASE + 0x700b4) /* wtf #1? */
+#define   DSPFW_SPRITED_WM1_SHIFT	24
+#define   DSPFW_SPRITED_WM1_MASK	(0xff << 24)
+#define   DSPFW_SPRITED_SHIFT		16
+#define   DSPFW_SPRITED_MASK_VLV	(0xff << 16)
+#define   DSPFW_SPRITEC_WM1_SHIFT	8
+#define   DSPFW_SPRITEC_WM1_MASK	(0xff << 8)
+#define   DSPFW_SPRITEC_SHIFT		0
+#define   DSPFW_SPRITEC_MASK_VLV	(0xff << 0)
+#define DSPFW8_CHV	_MMIO(VLV_DISPLAY_BASE + 0x700b8)
+#define   DSPFW_SPRITEF_WM1_SHIFT	24
+#define   DSPFW_SPRITEF_WM1_MASK	(0xff << 24)
+#define   DSPFW_SPRITEF_SHIFT		16
+#define   DSPFW_SPRITEF_MASK_VLV	(0xff << 16)
+#define   DSPFW_SPRITEE_WM1_SHIFT	8
+#define   DSPFW_SPRITEE_WM1_MASK	(0xff << 8)
+#define   DSPFW_SPRITEE_SHIFT		0
+#define   DSPFW_SPRITEE_MASK_VLV	(0xff << 0)
+#define DSPFW9_CHV	_MMIO(VLV_DISPLAY_BASE + 0x7007c) /* wtf #2? */
+#define   DSPFW_PLANEC_WM1_SHIFT	24
+#define   DSPFW_PLANEC_WM1_MASK		(0xff << 24)
+#define   DSPFW_PLANEC_SHIFT		16
+#define   DSPFW_PLANEC_MASK_VLV		(0xff << 16)
+#define   DSPFW_CURSORC_WM1_SHIFT	8
+#define   DSPFW_CURSORC_WM1_MASK	(0x3f << 16)
+#define   DSPFW_CURSORC_SHIFT		0
+#define   DSPFW_CURSORC_MASK		(0x3f << 0)
+
+/* vlv/chv high order bits */
+#define DSPHOWM		_MMIO(VLV_DISPLAY_BASE + 0x70064)
+#define   DSPFW_SR_HI_SHIFT		24
+#define   DSPFW_SR_HI_MASK		(3 << 24) /* 2 bits for chv, 1 for vlv */
+#define   DSPFW_SPRITEF_HI_SHIFT	23
+#define   DSPFW_SPRITEF_HI_MASK		(1 << 23)
+#define   DSPFW_SPRITEE_HI_SHIFT	22
+#define   DSPFW_SPRITEE_HI_MASK		(1 << 22)
+#define   DSPFW_PLANEC_HI_SHIFT		21
+#define   DSPFW_PLANEC_HI_MASK		(1 << 21)
+#define   DSPFW_SPRITED_HI_SHIFT	20
+#define   DSPFW_SPRITED_HI_MASK		(1 << 20)
+#define   DSPFW_SPRITEC_HI_SHIFT	16
+#define   DSPFW_SPRITEC_HI_MASK		(1 << 16)
+#define   DSPFW_PLANEB_HI_SHIFT		12
+#define   DSPFW_PLANEB_HI_MASK		(1 << 12)
+#define   DSPFW_SPRITEB_HI_SHIFT	8
+#define   DSPFW_SPRITEB_HI_MASK		(1 << 8)
+#define   DSPFW_SPRITEA_HI_SHIFT	4
+#define   DSPFW_SPRITEA_HI_MASK		(1 << 4)
+#define   DSPFW_PLANEA_HI_SHIFT		0
+#define   DSPFW_PLANEA_HI_MASK		(1 << 0)
+#define DSPHOWM1	_MMIO(VLV_DISPLAY_BASE + 0x70068)
+#define   DSPFW_SR_WM1_HI_SHIFT		24
+#define   DSPFW_SR_WM1_HI_MASK		(3 << 24) /* 2 bits for chv, 1 for vlv */
+#define   DSPFW_SPRITEF_WM1_HI_SHIFT	23
+#define   DSPFW_SPRITEF_WM1_HI_MASK	(1 << 23)
+#define   DSPFW_SPRITEE_WM1_HI_SHIFT	22
+#define   DSPFW_SPRITEE_WM1_HI_MASK	(1 << 22)
+#define   DSPFW_PLANEC_WM1_HI_SHIFT	21
+#define   DSPFW_PLANEC_WM1_HI_MASK	(1 << 21)
+#define   DSPFW_SPRITED_WM1_HI_SHIFT	20
+#define   DSPFW_SPRITED_WM1_HI_MASK	(1 << 20)
+#define   DSPFW_SPRITEC_WM1_HI_SHIFT	16
+#define   DSPFW_SPRITEC_WM1_HI_MASK	(1 << 16)
+#define   DSPFW_PLANEB_WM1_HI_SHIFT	12
+#define   DSPFW_PLANEB_WM1_HI_MASK	(1 << 12)
+#define   DSPFW_SPRITEB_WM1_HI_SHIFT	8
+#define   DSPFW_SPRITEB_WM1_HI_MASK	(1 << 8)
+#define   DSPFW_SPRITEA_WM1_HI_SHIFT	4
+#define   DSPFW_SPRITEA_WM1_HI_MASK	(1 << 4)
+#define   DSPFW_PLANEA_WM1_HI_SHIFT	0
+#define   DSPFW_PLANEA_WM1_HI_MASK	(1 << 0)
+
+/* drain latency register values*/
+#define VLV_DDL(pipe)			_MMIO(VLV_DISPLAY_BASE + 0x70050 + 4 * (pipe))
+#define DDL_CURSOR_SHIFT		24
+#define DDL_SPRITE_SHIFT(sprite)	(8 + 8 * (sprite))
+#define DDL_PLANE_SHIFT			0
+#define DDL_PRECISION_HIGH		(1 << 7)
+#define DDL_PRECISION_LOW		(0 << 7)
+#define DRAIN_LATENCY_MASK		0x7f
+
+/* FIFO watermark sizes etc */
+#define G4X_FIFO_LINE_SIZE	64
+#define I915_FIFO_LINE_SIZE	64
+#define I830_FIFO_LINE_SIZE	32
+
+#define VALLEYVIEW_FIFO_SIZE	255
+#define G4X_FIFO_SIZE		127
+#define I965_FIFO_SIZE		512
+#define I945_FIFO_SIZE		127
+#define I915_FIFO_SIZE		95
+#define I855GM_FIFO_SIZE	127 /* In cachelines */
+#define I830_FIFO_SIZE		95
+
+#define VALLEYVIEW_MAX_WM	0xff
+#define G4X_MAX_WM		0x3f
+#define I915_MAX_WM		0x3f
+
+#define PINEVIEW_DISPLAY_FIFO	512 /* in 64byte unit */
+#define PINEVIEW_FIFO_LINE_SIZE	64
+#define PINEVIEW_MAX_WM		0x1ff
+#define PINEVIEW_DFT_WM		0x3f
+#define PINEVIEW_DFT_HPLLOFF_WM	0
+#define PINEVIEW_GUARD_WM		10
+#define PINEVIEW_CURSOR_FIFO		64
+#define PINEVIEW_CURSOR_MAX_WM	0x3f
+#define PINEVIEW_CURSOR_DFT_WM	0
+#define PINEVIEW_CURSOR_GUARD_WM	5
+
+#define VALLEYVIEW_CURSOR_MAX_WM 64
+#define I965_CURSOR_FIFO	64
+#define I965_CURSOR_MAX_WM	32
+#define I965_CURSOR_DFT_WM	8
+
+/* define the Watermark register on Ironlake */
+#define _WM0_PIPEA_ILK		0x45100
+#define _WM0_PIPEB_ILK		0x45104
+#define _WM0_PIPEC_IVB		0x45200
+#define WM0_PIPE_ILK(pipe)	_MMIO_BASE_PIPE3(0, (pipe), _WM0_PIPEA_ILK, \
+						 _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
+#define  WM0_PIPE_PRIMARY_MASK	REG_GENMASK(31, 16)
+#define  WM0_PIPE_SPRITE_MASK	REG_GENMASK(15, 8)
+#define  WM0_PIPE_CURSOR_MASK	REG_GENMASK(7, 0)
+#define  WM0_PIPE_PRIMARY(x)	REG_FIELD_PREP(WM0_PIPE_PRIMARY_MASK, (x))
+#define  WM0_PIPE_SPRITE(x)	REG_FIELD_PREP(WM0_PIPE_SPRITE_MASK, (x))
+#define  WM0_PIPE_CURSOR(x)	REG_FIELD_PREP(WM0_PIPE_CURSOR_MASK, (x))
+#define WM1_LP_ILK		_MMIO(0x45108)
+#define WM2_LP_ILK		_MMIO(0x4510c)
+#define WM3_LP_ILK		_MMIO(0x45110)
+#define  WM_LP_ENABLE		REG_BIT(31)
+#define  WM_LP_LATENCY_MASK	REG_GENMASK(30, 24)
+#define  WM_LP_FBC_MASK_BDW	REG_GENMASK(23, 19)
+#define  WM_LP_FBC_MASK_ILK	REG_GENMASK(23, 20)
+#define  WM_LP_PRIMARY_MASK	REG_GENMASK(18, 8)
+#define  WM_LP_CURSOR_MASK	REG_GENMASK(7, 0)
+#define  WM_LP_LATENCY(x)	REG_FIELD_PREP(WM_LP_LATENCY_MASK, (x))
+#define  WM_LP_FBC_BDW(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_BDW, (x))
+#define  WM_LP_FBC_ILK(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_ILK, (x))
+#define  WM_LP_PRIMARY(x)	REG_FIELD_PREP(WM_LP_PRIMARY_MASK, (x))
+#define  WM_LP_CURSOR(x)	REG_FIELD_PREP(WM_LP_CURSOR_MASK, (x))
+#define WM1S_LP_ILK		_MMIO(0x45120)
+#define WM2S_LP_IVB		_MMIO(0x45124)
+#define WM3S_LP_IVB		_MMIO(0x45128)
+#define  WM_LP_SPRITE_ENABLE	REG_BIT(31) /* ilk/snb WM1S only */
+#define  WM_LP_SPRITE_MASK	REG_GENMASK(10, 0)
+#define  WM_LP_SPRITE(x)	REG_FIELD_PREP(WM_LP_SPRITE_MASK, (x))
+
+#define WM_MISC				_MMIO(0x45260)
+#define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
+
+#define WM_DBG				_MMIO(0x45280)
+#define  WM_DBG_DISALLOW_MULTIPLE_LP	(1 << 0)
+#define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
+#define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
+
+#endif /* __I9XX_WM_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3eb7565cd83c..9f4562b0dad2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -13,6 +13,7 @@
 #include "hsw_ips.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i9xx_wm_regs.h"
 #include "intel_alpm.h"
 #include "intel_bo.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8dfa1f01500c..a204d0e7fdcf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1739,180 +1739,6 @@
 #define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
 #define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
 
-#define DSPARB(dev_priv)			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
-#define   DSPARB_CSTART_MASK	(0x7f << 7)
-#define   DSPARB_CSTART_SHIFT	7
-#define   DSPARB_BSTART_MASK	(0x7f)
-#define   DSPARB_BSTART_SHIFT	0
-#define   DSPARB_BEND_SHIFT	9 /* on 855 */
-#define   DSPARB_AEND_SHIFT	0
-#define   DSPARB_SPRITEA_SHIFT_VLV	0
-#define   DSPARB_SPRITEA_MASK_VLV	(0xff << 0)
-#define   DSPARB_SPRITEB_SHIFT_VLV	8
-#define   DSPARB_SPRITEB_MASK_VLV	(0xff << 8)
-#define   DSPARB_SPRITEC_SHIFT_VLV	16
-#define   DSPARB_SPRITEC_MASK_VLV	(0xff << 16)
-#define   DSPARB_SPRITED_SHIFT_VLV	24
-#define   DSPARB_SPRITED_MASK_VLV	(0xff << 24)
-#define DSPARB2				_MMIO(VLV_DISPLAY_BASE + 0x70060) /* vlv/chv */
-#define   DSPARB_SPRITEA_HI_SHIFT_VLV	0
-#define   DSPARB_SPRITEA_HI_MASK_VLV	(0x1 << 0)
-#define   DSPARB_SPRITEB_HI_SHIFT_VLV	4
-#define   DSPARB_SPRITEB_HI_MASK_VLV	(0x1 << 4)
-#define   DSPARB_SPRITEC_HI_SHIFT_VLV	8
-#define   DSPARB_SPRITEC_HI_MASK_VLV	(0x1 << 8)
-#define   DSPARB_SPRITED_HI_SHIFT_VLV	12
-#define   DSPARB_SPRITED_HI_MASK_VLV	(0x1 << 12)
-#define   DSPARB_SPRITEE_HI_SHIFT_VLV	16
-#define   DSPARB_SPRITEE_HI_MASK_VLV	(0x1 << 16)
-#define   DSPARB_SPRITEF_HI_SHIFT_VLV	20
-#define   DSPARB_SPRITEF_HI_MASK_VLV	(0x1 << 20)
-#define DSPARB3				_MMIO(VLV_DISPLAY_BASE + 0x7006c) /* chv */
-#define   DSPARB_SPRITEE_SHIFT_VLV	0
-#define   DSPARB_SPRITEE_MASK_VLV	(0xff << 0)
-#define   DSPARB_SPRITEF_SHIFT_VLV	8
-#define   DSPARB_SPRITEF_MASK_VLV	(0xff << 8)
-
-/* pnv/gen4/g4x/vlv/chv */
-#define DSPFW1(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
-#define   DSPFW_SR_SHIFT		23
-#define   DSPFW_SR_MASK			(0x1ff << 23)
-#define   DSPFW_CURSORB_SHIFT		16
-#define   DSPFW_CURSORB_MASK		(0x3f << 16)
-#define   DSPFW_PLANEB_SHIFT		8
-#define   DSPFW_PLANEB_MASK		(0x7f << 8)
-#define   DSPFW_PLANEB_MASK_VLV		(0xff << 8) /* vlv/chv */
-#define   DSPFW_PLANEA_SHIFT		0
-#define   DSPFW_PLANEA_MASK		(0x7f << 0)
-#define   DSPFW_PLANEA_MASK_VLV		(0xff << 0) /* vlv/chv */
-#define DSPFW2(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70038)
-#define   DSPFW_FBC_SR_EN		(1 << 31)	  /* g4x */
-#define   DSPFW_FBC_SR_SHIFT		28
-#define   DSPFW_FBC_SR_MASK		(0x7 << 28) /* g4x */
-#define   DSPFW_FBC_HPLL_SR_SHIFT	24
-#define   DSPFW_FBC_HPLL_SR_MASK	(0xf << 24) /* g4x */
-#define   DSPFW_SPRITEB_SHIFT		(16)
-#define   DSPFW_SPRITEB_MASK		(0x7f << 16) /* g4x */
-#define   DSPFW_SPRITEB_MASK_VLV	(0xff << 16) /* vlv/chv */
-#define   DSPFW_CURSORA_SHIFT		8
-#define   DSPFW_CURSORA_MASK		(0x3f << 8)
-#define   DSPFW_PLANEC_OLD_SHIFT	0
-#define   DSPFW_PLANEC_OLD_MASK		(0x7f << 0) /* pre-gen4 sprite C */
-#define   DSPFW_SPRITEA_SHIFT		0
-#define   DSPFW_SPRITEA_MASK		(0x7f << 0) /* g4x */
-#define   DSPFW_SPRITEA_MASK_VLV	(0xff << 0) /* vlv/chv */
-#define DSPFW3(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
-#define   DSPFW_HPLL_SR_EN		(1 << 31)
-#define   PINEVIEW_SELF_REFRESH_EN	(1 << 30)
-#define   DSPFW_CURSOR_SR_SHIFT		24
-#define   DSPFW_CURSOR_SR_MASK		(0x3f << 24)
-#define   DSPFW_HPLL_CURSOR_SHIFT	16
-#define   DSPFW_HPLL_CURSOR_MASK	(0x3f << 16)
-#define   DSPFW_HPLL_SR_SHIFT		0
-#define   DSPFW_HPLL_SR_MASK		(0x1ff << 0)
-
-/* vlv/chv */
-#define DSPFW4		_MMIO(VLV_DISPLAY_BASE + 0x70070)
-#define   DSPFW_SPRITEB_WM1_SHIFT	16
-#define   DSPFW_SPRITEB_WM1_MASK	(0xff << 16)
-#define   DSPFW_CURSORA_WM1_SHIFT	8
-#define   DSPFW_CURSORA_WM1_MASK	(0x3f << 8)
-#define   DSPFW_SPRITEA_WM1_SHIFT	0
-#define   DSPFW_SPRITEA_WM1_MASK	(0xff << 0)
-#define DSPFW5		_MMIO(VLV_DISPLAY_BASE + 0x70074)
-#define   DSPFW_PLANEB_WM1_SHIFT	24
-#define   DSPFW_PLANEB_WM1_MASK		(0xff << 24)
-#define   DSPFW_PLANEA_WM1_SHIFT	16
-#define   DSPFW_PLANEA_WM1_MASK		(0xff << 16)
-#define   DSPFW_CURSORB_WM1_SHIFT	8
-#define   DSPFW_CURSORB_WM1_MASK	(0x3f << 8)
-#define   DSPFW_CURSOR_SR_WM1_SHIFT	0
-#define   DSPFW_CURSOR_SR_WM1_MASK	(0x3f << 0)
-#define DSPFW6		_MMIO(VLV_DISPLAY_BASE + 0x70078)
-#define   DSPFW_SR_WM1_SHIFT		0
-#define   DSPFW_SR_WM1_MASK		(0x1ff << 0)
-#define DSPFW7		_MMIO(VLV_DISPLAY_BASE + 0x7007c)
-#define DSPFW7_CHV	_MMIO(VLV_DISPLAY_BASE + 0x700b4) /* wtf #1? */
-#define   DSPFW_SPRITED_WM1_SHIFT	24
-#define   DSPFW_SPRITED_WM1_MASK	(0xff << 24)
-#define   DSPFW_SPRITED_SHIFT		16
-#define   DSPFW_SPRITED_MASK_VLV	(0xff << 16)
-#define   DSPFW_SPRITEC_WM1_SHIFT	8
-#define   DSPFW_SPRITEC_WM1_MASK	(0xff << 8)
-#define   DSPFW_SPRITEC_SHIFT		0
-#define   DSPFW_SPRITEC_MASK_VLV	(0xff << 0)
-#define DSPFW8_CHV	_MMIO(VLV_DISPLAY_BASE + 0x700b8)
-#define   DSPFW_SPRITEF_WM1_SHIFT	24
-#define   DSPFW_SPRITEF_WM1_MASK	(0xff << 24)
-#define   DSPFW_SPRITEF_SHIFT		16
-#define   DSPFW_SPRITEF_MASK_VLV	(0xff << 16)
-#define   DSPFW_SPRITEE_WM1_SHIFT	8
-#define   DSPFW_SPRITEE_WM1_MASK	(0xff << 8)
-#define   DSPFW_SPRITEE_SHIFT		0
-#define   DSPFW_SPRITEE_MASK_VLV	(0xff << 0)
-#define DSPFW9_CHV	_MMIO(VLV_DISPLAY_BASE + 0x7007c) /* wtf #2? */
-#define   DSPFW_PLANEC_WM1_SHIFT	24
-#define   DSPFW_PLANEC_WM1_MASK		(0xff << 24)
-#define   DSPFW_PLANEC_SHIFT		16
-#define   DSPFW_PLANEC_MASK_VLV		(0xff << 16)
-#define   DSPFW_CURSORC_WM1_SHIFT	8
-#define   DSPFW_CURSORC_WM1_MASK	(0x3f << 16)
-#define   DSPFW_CURSORC_SHIFT		0
-#define   DSPFW_CURSORC_MASK		(0x3f << 0)
-
-/* vlv/chv high order bits */
-#define DSPHOWM		_MMIO(VLV_DISPLAY_BASE + 0x70064)
-#define   DSPFW_SR_HI_SHIFT		24
-#define   DSPFW_SR_HI_MASK		(3 << 24) /* 2 bits for chv, 1 for vlv */
-#define   DSPFW_SPRITEF_HI_SHIFT	23
-#define   DSPFW_SPRITEF_HI_MASK		(1 << 23)
-#define   DSPFW_SPRITEE_HI_SHIFT	22
-#define   DSPFW_SPRITEE_HI_MASK		(1 << 22)
-#define   DSPFW_PLANEC_HI_SHIFT		21
-#define   DSPFW_PLANEC_HI_MASK		(1 << 21)
-#define   DSPFW_SPRITED_HI_SHIFT	20
-#define   DSPFW_SPRITED_HI_MASK		(1 << 20)
-#define   DSPFW_SPRITEC_HI_SHIFT	16
-#define   DSPFW_SPRITEC_HI_MASK		(1 << 16)
-#define   DSPFW_PLANEB_HI_SHIFT		12
-#define   DSPFW_PLANEB_HI_MASK		(1 << 12)
-#define   DSPFW_SPRITEB_HI_SHIFT	8
-#define   DSPFW_SPRITEB_HI_MASK		(1 << 8)
-#define   DSPFW_SPRITEA_HI_SHIFT	4
-#define   DSPFW_SPRITEA_HI_MASK		(1 << 4)
-#define   DSPFW_PLANEA_HI_SHIFT		0
-#define   DSPFW_PLANEA_HI_MASK		(1 << 0)
-#define DSPHOWM1	_MMIO(VLV_DISPLAY_BASE + 0x70068)
-#define   DSPFW_SR_WM1_HI_SHIFT		24
-#define   DSPFW_SR_WM1_HI_MASK		(3 << 24) /* 2 bits for chv, 1 for vlv */
-#define   DSPFW_SPRITEF_WM1_HI_SHIFT	23
-#define   DSPFW_SPRITEF_WM1_HI_MASK	(1 << 23)
-#define   DSPFW_SPRITEE_WM1_HI_SHIFT	22
-#define   DSPFW_SPRITEE_WM1_HI_MASK	(1 << 22)
-#define   DSPFW_PLANEC_WM1_HI_SHIFT	21
-#define   DSPFW_PLANEC_WM1_HI_MASK	(1 << 21)
-#define   DSPFW_SPRITED_WM1_HI_SHIFT	20
-#define   DSPFW_SPRITED_WM1_HI_MASK	(1 << 20)
-#define   DSPFW_SPRITEC_WM1_HI_SHIFT	16
-#define   DSPFW_SPRITEC_WM1_HI_MASK	(1 << 16)
-#define   DSPFW_PLANEB_WM1_HI_SHIFT	12
-#define   DSPFW_PLANEB_WM1_HI_MASK	(1 << 12)
-#define   DSPFW_SPRITEB_WM1_HI_SHIFT	8
-#define   DSPFW_SPRITEB_WM1_HI_MASK	(1 << 8)
-#define   DSPFW_SPRITEA_WM1_HI_SHIFT	4
-#define   DSPFW_SPRITEA_WM1_HI_MASK	(1 << 4)
-#define   DSPFW_PLANEA_WM1_HI_SHIFT	0
-#define   DSPFW_PLANEA_WM1_HI_MASK	(1 << 0)
-
-/* drain latency register values*/
-#define VLV_DDL(pipe)			_MMIO(VLV_DISPLAY_BASE + 0x70050 + 4 * (pipe))
-#define DDL_CURSOR_SHIFT		24
-#define DDL_SPRITE_SHIFT(sprite)	(8 + 8 * (sprite))
-#define DDL_PLANE_SHIFT			0
-#define DDL_PRECISION_HIGH		(1 << 7)
-#define DDL_PRECISION_LOW		(0 << 7)
-#define DRAIN_LATENCY_MASK		0x7f
-
 #define CBR1_VLV			_MMIO(VLV_DISPLAY_BASE + 0x70400)
 #define  CBR_PND_DEADLINE_DISABLE	(1 << 31)
 #define  CBR_PWM_CLOCK_MUX_SELECT	(1 << 30)
@@ -1920,72 +1746,6 @@
 #define CBR4_VLV			_MMIO(VLV_DISPLAY_BASE + 0x70450)
 #define  CBR_DPLLBMD_PIPE(pipe)		(1 << (7 + (pipe) * 11)) /* pipes B and C */
 
-/* FIFO watermark sizes etc */
-#define G4X_FIFO_LINE_SIZE	64
-#define I915_FIFO_LINE_SIZE	64
-#define I830_FIFO_LINE_SIZE	32
-
-#define VALLEYVIEW_FIFO_SIZE	255
-#define G4X_FIFO_SIZE		127
-#define I965_FIFO_SIZE		512
-#define I945_FIFO_SIZE		127
-#define I915_FIFO_SIZE		95
-#define I855GM_FIFO_SIZE	127 /* In cachelines */
-#define I830_FIFO_SIZE		95
-
-#define VALLEYVIEW_MAX_WM	0xff
-#define G4X_MAX_WM		0x3f
-#define I915_MAX_WM		0x3f
-
-#define PINEVIEW_DISPLAY_FIFO	512 /* in 64byte unit */
-#define PINEVIEW_FIFO_LINE_SIZE	64
-#define PINEVIEW_MAX_WM		0x1ff
-#define PINEVIEW_DFT_WM		0x3f
-#define PINEVIEW_DFT_HPLLOFF_WM	0
-#define PINEVIEW_GUARD_WM		10
-#define PINEVIEW_CURSOR_FIFO		64
-#define PINEVIEW_CURSOR_MAX_WM	0x3f
-#define PINEVIEW_CURSOR_DFT_WM	0
-#define PINEVIEW_CURSOR_GUARD_WM	5
-
-#define VALLEYVIEW_CURSOR_MAX_WM 64
-#define I965_CURSOR_FIFO	64
-#define I965_CURSOR_MAX_WM	32
-#define I965_CURSOR_DFT_WM	8
-
-/* define the Watermark register on Ironlake */
-#define _WM0_PIPEA_ILK		0x45100
-#define _WM0_PIPEB_ILK		0x45104
-#define _WM0_PIPEC_IVB		0x45200
-#define WM0_PIPE_ILK(pipe)	_MMIO_BASE_PIPE3(0, (pipe), _WM0_PIPEA_ILK, \
-						 _WM0_PIPEB_ILK, _WM0_PIPEC_IVB)
-#define  WM0_PIPE_PRIMARY_MASK	REG_GENMASK(31, 16)
-#define  WM0_PIPE_SPRITE_MASK	REG_GENMASK(15, 8)
-#define  WM0_PIPE_CURSOR_MASK	REG_GENMASK(7, 0)
-#define  WM0_PIPE_PRIMARY(x)	REG_FIELD_PREP(WM0_PIPE_PRIMARY_MASK, (x))
-#define  WM0_PIPE_SPRITE(x)	REG_FIELD_PREP(WM0_PIPE_SPRITE_MASK, (x))
-#define  WM0_PIPE_CURSOR(x)	REG_FIELD_PREP(WM0_PIPE_CURSOR_MASK, (x))
-#define WM1_LP_ILK		_MMIO(0x45108)
-#define WM2_LP_ILK		_MMIO(0x4510c)
-#define WM3_LP_ILK		_MMIO(0x45110)
-#define  WM_LP_ENABLE		REG_BIT(31)
-#define  WM_LP_LATENCY_MASK	REG_GENMASK(30, 24)
-#define  WM_LP_FBC_MASK_BDW	REG_GENMASK(23, 19)
-#define  WM_LP_FBC_MASK_ILK	REG_GENMASK(23, 20)
-#define  WM_LP_PRIMARY_MASK	REG_GENMASK(18, 8)
-#define  WM_LP_CURSOR_MASK	REG_GENMASK(7, 0)
-#define  WM_LP_LATENCY(x)	REG_FIELD_PREP(WM_LP_LATENCY_MASK, (x))
-#define  WM_LP_FBC_BDW(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_BDW, (x))
-#define  WM_LP_FBC_ILK(x)	REG_FIELD_PREP(WM_LP_FBC_MASK_ILK, (x))
-#define  WM_LP_PRIMARY(x)	REG_FIELD_PREP(WM_LP_PRIMARY_MASK, (x))
-#define  WM_LP_CURSOR(x)	REG_FIELD_PREP(WM_LP_CURSOR_MASK, (x))
-#define WM1S_LP_ILK		_MMIO(0x45120)
-#define WM2S_LP_IVB		_MMIO(0x45124)
-#define WM3S_LP_IVB		_MMIO(0x45128)
-#define  WM_LP_SPRITE_ENABLE	REG_BIT(31) /* ilk/snb WM1S only */
-#define  WM_LP_SPRITE_MASK	REG_GENMASK(10, 0)
-#define  WM_LP_SPRITE(x)	REG_FIELD_PREP(WM_LP_SPRITE_MASK, (x))
-
 /*
  * The two pipe frame counter registers are not synchronized, so
  * reading a stable value is somewhat tricky. The following code
@@ -4407,14 +4167,6 @@ enum skl_power_gate {
 #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
 #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
 
-#define WM_MISC				_MMIO(0x45260)
-#define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
-
-#define WM_DBG				_MMIO(0x45280)
-#define  WM_DBG_DISALLOW_MULTIPLE_LP	(1 << 0)
-#define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
-#define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
-
 /* Gen4+ Timestamp and Pipe Frame time stamp registers */
 #define GEN4_TIMESTAMP		_MMIO(0x2358)
 #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 73333b846125..ee1cd2126f97 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -5,6 +5,7 @@
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
+#include "display/i9xx_wm_regs.h"
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
 #include "display/intel_color_regs.h"
-- 
2.39.5

