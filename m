Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B83528A3193
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 16:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D198610F6AD;
	Fri, 12 Apr 2024 14:53:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TF2FtGg9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF1D10F6AE;
 Fri, 12 Apr 2024 14:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712933606; x=1744469606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQtdht2cvDMHySTIW6x/wEfcrXuGyIa4eTfX4gMjYAM=;
 b=TF2FtGg9Q6M0XMC3sW3YDpMFFsNXqamuEZx34HDjyQ01wt78miNlaNXH
 CRpN4nBitk4YuqWds/cK055bjXi7Mf+HDHiXj0E7zGJoT6AhSz6edSxRe
 Pj4R2KjdyR4oaGuCIAYRASh+kIp1h406vOaaMY22wHNzMOw7MD/mRGx6X
 jFMK9EK9G/qWBguxVxx1JJGkLg6E4gmlkqGm+kqQ6yrcljgzqglwu1Zd+
 cB3AbMLaSnE/bsVQ8L6rBQUuqLwAxQ8VKmKWeheVjrZJ+3ooUWLh+bhKK
 zsYt87MWBFsGP/cd4u19CDJaD9rHW3x9nrScpj4fvLBTgt1hkCXk9Q/Wa g==;
X-CSE-ConnectionGUID: vWNXA5QDQBqry2FPlAZAWA==
X-CSE-MsgGUID: RDB9s3ogRu2xqDQBWCQRBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19810923"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19810923"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:26 -0700
X-CSE-ConnectionGUID: p2XMXU/nQwaxVHjDeZ5Hyg==
X-CSE-MsgGUID: N8DhGoyyRAuScF0fOScBRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21677512"
Received: from mohdaris-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.252.61.65])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 07:53:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 4/6] drm/i915/display: split out intel_sprite_regs.h from
 i915_reg.h
Date: Fri, 12 Apr 2024 17:52:56 +0300
Message-Id: <31c5e1ee1a7c83c37e5507c52803b0c048420b1c.1712933479.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712933479.git.jani.nikula@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
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

Clean up i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c   |   1 +
 .../gpu/drm/i915/display/intel_sprite_regs.h  | 349 ++++++++++++++++++
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/display.c            |   1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c         |   5 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 340 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 8 files changed, 358 insertions(+), 341 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sprite_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index d7b440c8caef..36a253a19c74 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -47,6 +47,7 @@
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
 #include "intel_sprite.h"
+#include "intel_sprite_regs.h"
 
 static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, int sprite)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_regs.h b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
new file mode 100644
index 000000000000..caf4b58e9a27
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_sprite_regs.h
@@ -0,0 +1,349 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_SPRITE_REGS__
+#define __INTEL_SPRITE_REGS__
+
+#include "intel_display_reg_defs.h"
+
+/* Sprite A control */
+#define _DVSACNTR		0x72180
+#define   DVS_ENABLE			REG_BIT(31)
+#define   DVS_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   DVS_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(27)
+#define   DVS_FORMAT_MASK		REG_GENMASK(26, 25)
+#define   DVS_FORMAT_YUV422		REG_FIELD_PREP(DVS_FORMAT_MASK, 0)
+#define   DVS_FORMAT_RGBX101010		REG_FIELD_PREP(DVS_FORMAT_MASK, 1)
+#define   DVS_FORMAT_RGBX888		REG_FIELD_PREP(DVS_FORMAT_MASK, 2)
+#define   DVS_FORMAT_RGBX161616		REG_FIELD_PREP(DVS_FORMAT_MASK, 3)
+#define   DVS_PIPE_CSC_ENABLE		REG_BIT(24)
+#define   DVS_SOURCE_KEY		REG_BIT(22)
+#define   DVS_RGB_ORDER_XBGR		REG_BIT(20)
+#define   DVS_YUV_FORMAT_BT709		REG_BIT(18)
+#define   DVS_YUV_ORDER_MASK		REG_GENMASK(17, 16)
+#define   DVS_YUV_ORDER_YUYV		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 0)
+#define   DVS_YUV_ORDER_UYVY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 1)
+#define   DVS_YUV_ORDER_YVYU		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 2)
+#define   DVS_YUV_ORDER_VYUY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 3)
+#define   DVS_ROTATE_180		REG_BIT(15)
+#define   DVS_TRICKLE_FEED_DISABLE	REG_BIT(14)
+#define   DVS_TILED			REG_BIT(10)
+#define   DVS_DEST_KEY			REG_BIT(2)
+#define _DVSALINOFF		0x72184
+#define _DVSASTRIDE		0x72188
+#define _DVSAPOS		0x7218c
+#define   DVS_POS_Y_MASK		REG_GENMASK(31, 16)
+#define   DVS_POS_Y(y)			REG_FIELD_PREP(DVS_POS_Y_MASK, (y))
+#define   DVS_POS_X_MASK		REG_GENMASK(15, 0)
+#define   DVS_POS_X(x)			REG_FIELD_PREP(DVS_POS_X_MASK, (x))
+#define _DVSASIZE		0x72190
+#define   DVS_HEIGHT_MASK		REG_GENMASK(31, 16)
+#define   DVS_HEIGHT(h)			REG_FIELD_PREP(DVS_HEIGHT_MASK, (h))
+#define   DVS_WIDTH_MASK		REG_GENMASK(15, 0)
+#define   DVS_WIDTH(w)			REG_FIELD_PREP(DVS_WIDTH_MASK, (w))
+#define _DVSAKEYVAL		0x72194
+#define _DVSAKEYMSK		0x72198
+#define _DVSASURF		0x7219c
+#define   DVS_ADDR_MASK			REG_GENMASK(31, 12)
+#define _DVSAKEYMAXVAL		0x721a0
+#define _DVSATILEOFF		0x721a4
+#define   DVS_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   DVS_OFFSET_Y(y)		REG_FIELD_PREP(DVS_OFFSET_Y_MASK, (y))
+#define   DVS_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   DVS_OFFSET_X(x)		REG_FIELD_PREP(DVS_OFFSET_X_MASK, (x))
+#define _DVSASURFLIVE		0x721ac
+#define _DVSAGAMC_G4X		0x721e0 /* g4x */
+#define _DVSASCALE		0x72204
+#define   DVS_SCALE_ENABLE		REG_BIT(31)
+#define   DVS_FILTER_MASK		REG_GENMASK(30, 29)
+#define   DVS_FILTER_MEDIUM		REG_FIELD_PREP(DVS_FILTER_MASK, 0)
+#define   DVS_FILTER_ENHANCING		REG_FIELD_PREP(DVS_FILTER_MASK, 1)
+#define   DVS_FILTER_SOFTENING		REG_FIELD_PREP(DVS_FILTER_MASK, 2)
+#define   DVS_VERTICAL_OFFSET_HALF	REG_BIT(28) /* must be enabled below */
+#define   DVS_VERTICAL_OFFSET_ENABLE	REG_BIT(27)
+#define   DVS_SRC_WIDTH_MASK		REG_GENMASK(26, 16)
+#define   DVS_SRC_WIDTH(w)		REG_FIELD_PREP(DVS_SRC_WIDTH_MASK, (w))
+#define   DVS_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
+#define   DVS_SRC_HEIGHT(h)		REG_FIELD_PREP(DVS_SRC_HEIGHT_MASK, (h))
+#define _DVSAGAMC_ILK		0x72300 /* ilk/snb */
+#define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
+
+#define _DVSBCNTR		0x73180
+#define _DVSBLINOFF		0x73184
+#define _DVSBSTRIDE		0x73188
+#define _DVSBPOS		0x7318c
+#define _DVSBSIZE		0x73190
+#define _DVSBKEYVAL		0x73194
+#define _DVSBKEYMSK		0x73198
+#define _DVSBSURF		0x7319c
+#define _DVSBKEYMAXVAL		0x731a0
+#define _DVSBTILEOFF		0x731a4
+#define _DVSBSURFLIVE		0x731ac
+#define _DVSBGAMC_G4X		0x731e0 /* g4x */
+#define _DVSBSCALE		0x73204
+#define _DVSBGAMC_ILK		0x73300 /* ilk/snb */
+#define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
+
+#define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
+#define DVSLINOFF(pipe) _MMIO_PIPE(pipe, _DVSALINOFF, _DVSBLINOFF)
+#define DVSSTRIDE(pipe) _MMIO_PIPE(pipe, _DVSASTRIDE, _DVSBSTRIDE)
+#define DVSPOS(pipe) _MMIO_PIPE(pipe, _DVSAPOS, _DVSBPOS)
+#define DVSSURF(pipe) _MMIO_PIPE(pipe, _DVSASURF, _DVSBSURF)
+#define DVSKEYMAX(pipe) _MMIO_PIPE(pipe, _DVSAKEYMAXVAL, _DVSBKEYMAXVAL)
+#define DVSSIZE(pipe) _MMIO_PIPE(pipe, _DVSASIZE, _DVSBSIZE)
+#define DVSSCALE(pipe) _MMIO_PIPE(pipe, _DVSASCALE, _DVSBSCALE)
+#define DVSTILEOFF(pipe) _MMIO_PIPE(pipe, _DVSATILEOFF, _DVSBTILEOFF)
+#define DVSKEYVAL(pipe) _MMIO_PIPE(pipe, _DVSAKEYVAL, _DVSBKEYVAL)
+#define DVSKEYMSK(pipe) _MMIO_PIPE(pipe, _DVSAKEYMSK, _DVSBKEYMSK)
+#define DVSSURFLIVE(pipe) _MMIO_PIPE(pipe, _DVSASURFLIVE, _DVSBSURFLIVE)
+#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */
+#define DVSGAMC_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_ILK, _DVSBGAMC_ILK) + (i) * 4) /* 16 x u0.10 */
+#define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
+
+#define _SPRA_CTL		0x70280
+#define   SPRITE_ENABLE				REG_BIT(31)
+#define   SPRITE_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   SPRITE_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
+#define   SPRITE_FORMAT_MASK			REG_GENMASK(27, 25)
+#define   SPRITE_FORMAT_YUV422			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 0)
+#define   SPRITE_FORMAT_RGBX101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 1)
+#define   SPRITE_FORMAT_RGBX888			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 2)
+#define   SPRITE_FORMAT_RGBX161616		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 3)
+#define   SPRITE_FORMAT_YUV444			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 4)
+#define   SPRITE_FORMAT_XR_BGR101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 5) /* Extended range */
+#define   SPRITE_PIPE_CSC_ENABLE		REG_BIT(24)
+#define   SPRITE_SOURCE_KEY			REG_BIT(22)
+#define   SPRITE_RGB_ORDER_RGBX			REG_BIT(20) /* only for 888 and 161616 */
+#define   SPRITE_YUV_TO_RGB_CSC_DISABLE		REG_BIT(19)
+#define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18) /* 0 is BT601 */
+#define   SPRITE_YUV_ORDER_MASK			REG_GENMASK(17, 16)
+#define   SPRITE_YUV_ORDER_YUYV			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 0)
+#define   SPRITE_YUV_ORDER_UYVY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 1)
+#define   SPRITE_YUV_ORDER_YVYU			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 2)
+#define   SPRITE_YUV_ORDER_VYUY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 3)
+#define   SPRITE_ROTATE_180			REG_BIT(15)
+#define   SPRITE_TRICKLE_FEED_DISABLE		REG_BIT(14)
+#define   SPRITE_PLANE_GAMMA_DISABLE		REG_BIT(13)
+#define   SPRITE_TILED				REG_BIT(10)
+#define   SPRITE_DEST_KEY			REG_BIT(2)
+#define _SPRA_LINOFF		0x70284
+#define _SPRA_STRIDE		0x70288
+#define _SPRA_POS		0x7028c
+#define   SPRITE_POS_Y_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_POS_Y(y)	REG_FIELD_PREP(SPRITE_POS_Y_MASK, (y))
+#define   SPRITE_POS_X_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_POS_X(x)	REG_FIELD_PREP(SPRITE_POS_X_MASK, (x))
+#define _SPRA_SIZE		0x70290
+#define   SPRITE_HEIGHT_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_HEIGHT(h)	REG_FIELD_PREP(SPRITE_HEIGHT_MASK, (h))
+#define   SPRITE_WIDTH_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_WIDTH(w)	REG_FIELD_PREP(SPRITE_WIDTH_MASK, (w))
+#define _SPRA_KEYVAL		0x70294
+#define _SPRA_KEYMSK		0x70298
+#define _SPRA_SURF		0x7029c
+#define   SPRITE_ADDR_MASK	REG_GENMASK(31, 12)
+#define _SPRA_KEYMAX		0x702a0
+#define _SPRA_TILEOFF		0x702a4
+#define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
+#define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
+#define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
+#define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
+#define _SPRA_OFFSET		0x702a4
+#define _SPRA_SURFLIVE		0x702ac
+#define _SPRA_SCALE		0x70304
+#define   SPRITE_SCALE_ENABLE			REG_BIT(31)
+#define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
+#define   SPRITE_FILTER_MEDIUM			REG_FIELD_PREP(SPRITE_FILTER_MASK, 0)
+#define   SPRITE_FILTER_ENHANCING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 1)
+#define   SPRITE_FILTER_SOFTENING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 2)
+#define   SPRITE_VERTICAL_OFFSET_HALF		REG_BIT(28) /* must be enabled below */
+#define   SPRITE_VERTICAL_OFFSET_ENABLE		REG_BIT(27)
+#define   SPRITE_SRC_WIDTH_MASK			REG_GENMASK(26, 16)
+#define   SPRITE_SRC_WIDTH(w)			REG_FIELD_PREP(SPRITE_SRC_WIDTH_MASK, (w))
+#define   SPRITE_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
+#define   SPRITE_SRC_HEIGHT(h)			REG_FIELD_PREP(SPRITE_SRC_HEIGHT_MASK, (h))
+#define _SPRA_GAMC		0x70400
+#define _SPRA_GAMC16		0x70440
+#define _SPRA_GAMC17		0x7044c
+
+#define _SPRB_CTL		0x71280
+#define _SPRB_LINOFF		0x71284
+#define _SPRB_STRIDE		0x71288
+#define _SPRB_POS		0x7128c
+#define _SPRB_SIZE		0x71290
+#define _SPRB_KEYVAL		0x71294
+#define _SPRB_KEYMSK		0x71298
+#define _SPRB_SURF		0x7129c
+#define _SPRB_KEYMAX		0x712a0
+#define _SPRB_TILEOFF		0x712a4
+#define _SPRB_OFFSET		0x712a4
+#define _SPRB_SURFLIVE		0x712ac
+#define _SPRB_SCALE		0x71304
+#define _SPRB_GAMC		0x71400
+#define _SPRB_GAMC16		0x71440
+#define _SPRB_GAMC17		0x7144c
+
+#define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
+#define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
+#define SPRSTRIDE(pipe) _MMIO_PIPE(pipe, _SPRA_STRIDE, _SPRB_STRIDE)
+#define SPRPOS(pipe) _MMIO_PIPE(pipe, _SPRA_POS, _SPRB_POS)
+#define SPRSIZE(pipe) _MMIO_PIPE(pipe, _SPRA_SIZE, _SPRB_SIZE)
+#define SPRKEYVAL(pipe) _MMIO_PIPE(pipe, _SPRA_KEYVAL, _SPRB_KEYVAL)
+#define SPRKEYMSK(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMSK, _SPRB_KEYMSK)
+#define SPRSURF(pipe) _MMIO_PIPE(pipe, _SPRA_SURF, _SPRB_SURF)
+#define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
+#define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
+#define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
+#define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
+#define SPRGAMC(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC, _SPRB_GAMC) + (i) * 4) /* 16 x u0.10 */
+#define SPRGAMC16(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC16, _SPRB_GAMC16) + (i) * 4) /* 3 x u1.10 */
+#define SPRGAMC17(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC17, _SPRB_GAMC17) + (i) * 4) /* 3 x u2.10 */
+#define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
+
+#define _SPACNTR		(VLV_DISPLAY_BASE + 0x72180)
+#define   SP_ENABLE			REG_BIT(31)
+#define   SP_PIPE_GAMMA_ENABLE		REG_BIT(30)
+#define   SP_FORMAT_MASK		REG_GENMASK(29, 26)
+#define   SP_FORMAT_YUV422		REG_FIELD_PREP(SP_FORMAT_MASK, 0)
+#define   SP_FORMAT_8BPP		REG_FIELD_PREP(SP_FORMAT_MASK, 2)
+#define   SP_FORMAT_BGR565		REG_FIELD_PREP(SP_FORMAT_MASK, 5)
+#define   SP_FORMAT_BGRX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 6)
+#define   SP_FORMAT_BGRA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 7)
+#define   SP_FORMAT_RGBX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 8)
+#define   SP_FORMAT_RGBA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 9)
+#define   SP_FORMAT_BGRX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 10) /* CHV pipe B */
+#define   SP_FORMAT_BGRA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 11) /* CHV pipe B */
+#define   SP_FORMAT_RGBX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 14)
+#define   SP_FORMAT_RGBA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 15)
+#define   SP_ALPHA_PREMULTIPLY		REG_BIT(23) /* CHV pipe B */
+#define   SP_SOURCE_KEY			REG_BIT(22)
+#define   SP_YUV_FORMAT_BT709		REG_BIT(18)
+#define   SP_YUV_ORDER_MASK		REG_GENMASK(17, 16)
+#define   SP_YUV_ORDER_YUYV		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 0)
+#define   SP_YUV_ORDER_UYVY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 1)
+#define   SP_YUV_ORDER_YVYU		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 2)
+#define   SP_YUV_ORDER_VYUY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 3)
+#define   SP_ROTATE_180			REG_BIT(15)
+#define   SP_TILED			REG_BIT(10)
+#define   SP_MIRROR			REG_BIT(8) /* CHV pipe B */
+#define _SPALINOFF		(VLV_DISPLAY_BASE + 0x72184)
+#define _SPASTRIDE		(VLV_DISPLAY_BASE + 0x72188)
+#define _SPAPOS			(VLV_DISPLAY_BASE + 0x7218c)
+#define   SP_POS_Y_MASK			REG_GENMASK(31, 16)
+#define   SP_POS_Y(y)			REG_FIELD_PREP(SP_POS_Y_MASK, (y))
+#define   SP_POS_X_MASK			REG_GENMASK(15, 0)
+#define   SP_POS_X(x)			REG_FIELD_PREP(SP_POS_X_MASK, (x))
+#define _SPASIZE		(VLV_DISPLAY_BASE + 0x72190)
+#define   SP_HEIGHT_MASK		REG_GENMASK(31, 16)
+#define   SP_HEIGHT(h)			REG_FIELD_PREP(SP_HEIGHT_MASK, (h))
+#define   SP_WIDTH_MASK			REG_GENMASK(15, 0)
+#define   SP_WIDTH(w)			REG_FIELD_PREP(SP_WIDTH_MASK, (w))
+#define _SPAKEYMINVAL		(VLV_DISPLAY_BASE + 0x72194)
+#define _SPAKEYMSK		(VLV_DISPLAY_BASE + 0x72198)
+#define _SPASURF		(VLV_DISPLAY_BASE + 0x7219c)
+#define   SP_ADDR_MASK			REG_GENMASK(31, 12)
+#define _SPAKEYMAXVAL		(VLV_DISPLAY_BASE + 0x721a0)
+#define _SPATILEOFF		(VLV_DISPLAY_BASE + 0x721a4)
+#define   SP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
+#define   SP_OFFSET_Y(y)		REG_FIELD_PREP(SP_OFFSET_Y_MASK, (y))
+#define   SP_OFFSET_X_MASK		REG_GENMASK(15, 0)
+#define   SP_OFFSET_X(x)		REG_FIELD_PREP(SP_OFFSET_X_MASK, (x))
+#define _SPACONSTALPHA		(VLV_DISPLAY_BASE + 0x721a8)
+#define   SP_CONST_ALPHA_ENABLE		REG_BIT(31)
+#define   SP_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
+#define   SP_CONST_ALPHA(alpha)		REG_FIELD_PREP(SP_CONST_ALPHA_MASK, (alpha))
+#define _SPASURFLIVE		(VLV_DISPLAY_BASE + 0x721ac)
+#define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
+#define   SP_CONTRAST_MASK		REG_GENMASK(26, 18)
+#define   SP_CONTRAST(x)		REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /* u3.6 */
+#define   SP_BRIGHTNESS_MASK		REG_GENMASK(7, 0)
+#define   SP_BRIGHTNESS(x)		REG_FIELD_PREP(SP_BRIGHTNESS_MASK, (x)) /* s8 */
+#define _SPACLRC1		(VLV_DISPLAY_BASE + 0x721d4)
+#define   SP_SH_SIN_MASK		REG_GENMASK(26, 16)
+#define   SP_SH_SIN(x)			REG_FIELD_PREP(SP_SH_SIN_MASK, (x)) /* s4.7 */
+#define   SP_SH_COS_MASK		REG_GENMASK(9, 0)
+#define   SP_SH_COS(x)			REG_FIELD_PREP(SP_SH_COS_MASK, (x)) /* u3.7 */
+#define _SPAGAMC		(VLV_DISPLAY_BASE + 0x721e0)
+
+#define _SPBCNTR		(VLV_DISPLAY_BASE + 0x72280)
+#define _SPBLINOFF		(VLV_DISPLAY_BASE + 0x72284)
+#define _SPBSTRIDE		(VLV_DISPLAY_BASE + 0x72288)
+#define _SPBPOS			(VLV_DISPLAY_BASE + 0x7228c)
+#define _SPBSIZE		(VLV_DISPLAY_BASE + 0x72290)
+#define _SPBKEYMINVAL		(VLV_DISPLAY_BASE + 0x72294)
+#define _SPBKEYMSK		(VLV_DISPLAY_BASE + 0x72298)
+#define _SPBSURF		(VLV_DISPLAY_BASE + 0x7229c)
+#define _SPBKEYMAXVAL		(VLV_DISPLAY_BASE + 0x722a0)
+#define _SPBTILEOFF		(VLV_DISPLAY_BASE + 0x722a4)
+#define _SPBCONSTALPHA		(VLV_DISPLAY_BASE + 0x722a8)
+#define _SPBSURFLIVE		(VLV_DISPLAY_BASE + 0x722ac)
+#define _SPBCLRC0		(VLV_DISPLAY_BASE + 0x722d0)
+#define _SPBCLRC1		(VLV_DISPLAY_BASE + 0x722d4)
+#define _SPBGAMC		(VLV_DISPLAY_BASE + 0x722e0)
+
+#define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
+	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
+#define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \
+	_MMIO(_VLV_SPR((pipe), (plane_id), (reg_a), (reg_b)))
+
+#define SPCNTR(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACNTR, _SPBCNTR)
+#define SPLINOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPALINOFF, _SPBLINOFF)
+#define SPSTRIDE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASTRIDE, _SPBSTRIDE)
+#define SPPOS(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPAPOS, _SPBPOS)
+#define SPSIZE(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASIZE, _SPBSIZE)
+#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)
+#define SPKEYMSK(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMSK, _SPBKEYMSK)
+#define SPSURF(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASURF, _SPBSURF)
+#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
+#define SPTILEOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPATILEOFF, _SPBTILEOFF)
+#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
+#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
+#define SPCLRC0(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC0, _SPBCLRC0)
+#define SPCLRC1(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC1, _SPBCLRC1)
+#define SPGAMC(pipe, plane_id, i)	_MMIO(_VLV_SPR((pipe), (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */
+
+/*
+ * CHV pipe B sprite CSC
+ *
+ * |cr|   |c0 c1 c2|   |cr + cr_ioff|   |cr_ooff|
+ * |yg| = |c3 c4 c5| x |yg + yg_ioff| + |yg_ooff|
+ * |cb|   |c6 c7 c8|   |cb + cr_ioff|   |cb_ooff|
+ */
+#define _MMIO_CHV_SPCSC(plane_id, reg) \
+	_MMIO(VLV_DISPLAY_BASE + ((plane_id) - PLANE_SPRITE0) * 0x1000 + (reg))
+
+#define SPCSCYGOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d900)
+#define SPCSCCBOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d904)
+#define SPCSCCROFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d908)
+#define  SPCSC_OOFF_MASK	REG_GENMASK(26, 16)
+#define  SPCSC_OOFF(x)		REG_FIELD_PREP(SPCSC_OOFF_MASK, (x) & 0x7ff) /* s11 */
+#define  SPCSC_IOFF_MASK	REG_GENMASK(10, 0)
+#define  SPCSC_IOFF(x)		REG_FIELD_PREP(SPCSC_IOFF_MASK, (x) & 0x7ff) /* s11 */
+
+#define SPCSCC01(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d90c)
+#define SPCSCC23(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d910)
+#define SPCSCC45(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d914)
+#define SPCSCC67(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d918)
+#define SPCSCC8(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d91c)
+#define  SPCSC_C1_MASK		REG_GENMASK(30, 16)
+#define  SPCSC_C1(x)		REG_FIELD_PREP(SPCSC_C1_MASK, (x) & 0x7fff) /* s3.12 */
+#define  SPCSC_C0_MASK		REG_GENMASK(14, 0)
+#define  SPCSC_C0(x)		REG_FIELD_PREP(SPCSC_C0_MASK, (x) & 0x7fff) /* s3.12 */
+
+#define SPCSCYGICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d920)
+#define SPCSCCBICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d924)
+#define SPCSCCRICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d928)
+#define  SPCSC_IMAX_MASK	REG_GENMASK(26, 16)
+#define  SPCSC_IMAX(x)		REG_FIELD_PREP(SPCSC_IMAX_MASK, (x) & 0x7ff) /* s11 */
+#define  SPCSC_IMIN_MASK	REG_GENMASK(10, 0)
+#define  SPCSC_IMIN(x)		REG_FIELD_PREP(SPCSC_IMIN_MASK, (x) & 0x7ff) /* s11 */
+
+#define SPCSCYGOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d92c)
+#define SPCSCCBOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d930)
+#define SPCSCCROCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d934)
+#define  SPCSC_OMAX_MASK	REG_GENMASK(25, 16)
+#define  SPCSC_OMAX(x)		REG_FIELD_PREP(SPCSC_OMAX_MASK, (x)) /* u10 */
+#define  SPCSC_OMIN_MASK	REG_GENMASK(9, 0)
+#define  SPCSC_OMIN(x)		REG_FIELD_PREP(SPCSC_OMIN_MASK, (x)) /* u10 */
+
+#endif /* __INTEL_SPRITE_REGS__ */
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index d4a3f3e093b0..4be8cb65fb7e 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -50,6 +50,7 @@
 #include "trace.h"
 
 #include "display/intel_display.h"
+#include "display/intel_sprite_regs.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index e0c5dfb788eb..498698482d59 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -38,6 +38,7 @@
 
 #include "display/intel_display.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_sprite_regs.h"
 
 static int get_edp_pipe(struct intel_vgpu *vgpu)
 {
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 313efdabee57..4140da68aabb 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -34,11 +34,14 @@
  */
 
 #include <uapi/drm/drm_fourcc.h>
-#include "i915_drv.h"
+
 #include "gvt.h"
+#include "i915_drv.h"
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
 
+#include "display/intel_sprite_regs.h"
+
 #define PRIMARY_FORMAT_NUM	16
 struct pixel_format {
 	int drm_format;	/* Pixel format in DRM definition */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index efcb00472be2..7d749995c7a7 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -49,6 +49,7 @@
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sprite_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8c44a21977a4..bb63c7214e12 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3070,346 +3070,6 @@
 #define _PIPEDSI0CONF		0x7b008
 #define _PIPEDSI1CONF		0x7b808
 
-/* Sprite A control */
-#define _DVSACNTR		0x72180
-#define   DVS_ENABLE			REG_BIT(31)
-#define   DVS_PIPE_GAMMA_ENABLE		REG_BIT(30)
-#define   DVS_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(27)
-#define   DVS_FORMAT_MASK		REG_GENMASK(26, 25)
-#define   DVS_FORMAT_YUV422		REG_FIELD_PREP(DVS_FORMAT_MASK, 0)
-#define   DVS_FORMAT_RGBX101010		REG_FIELD_PREP(DVS_FORMAT_MASK, 1)
-#define   DVS_FORMAT_RGBX888		REG_FIELD_PREP(DVS_FORMAT_MASK, 2)
-#define   DVS_FORMAT_RGBX161616		REG_FIELD_PREP(DVS_FORMAT_MASK, 3)
-#define   DVS_PIPE_CSC_ENABLE		REG_BIT(24)
-#define   DVS_SOURCE_KEY		REG_BIT(22)
-#define   DVS_RGB_ORDER_XBGR		REG_BIT(20)
-#define   DVS_YUV_FORMAT_BT709		REG_BIT(18)
-#define   DVS_YUV_ORDER_MASK		REG_GENMASK(17, 16)
-#define   DVS_YUV_ORDER_YUYV		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 0)
-#define   DVS_YUV_ORDER_UYVY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 1)
-#define   DVS_YUV_ORDER_YVYU		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 2)
-#define   DVS_YUV_ORDER_VYUY		REG_FIELD_PREP(DVS_YUV_ORDER_MASK, 3)
-#define   DVS_ROTATE_180		REG_BIT(15)
-#define   DVS_TRICKLE_FEED_DISABLE	REG_BIT(14)
-#define   DVS_TILED			REG_BIT(10)
-#define   DVS_DEST_KEY			REG_BIT(2)
-#define _DVSALINOFF		0x72184
-#define _DVSASTRIDE		0x72188
-#define _DVSAPOS		0x7218c
-#define   DVS_POS_Y_MASK		REG_GENMASK(31, 16)
-#define   DVS_POS_Y(y)			REG_FIELD_PREP(DVS_POS_Y_MASK, (y))
-#define   DVS_POS_X_MASK		REG_GENMASK(15, 0)
-#define   DVS_POS_X(x)			REG_FIELD_PREP(DVS_POS_X_MASK, (x))
-#define _DVSASIZE		0x72190
-#define   DVS_HEIGHT_MASK		REG_GENMASK(31, 16)
-#define   DVS_HEIGHT(h)			REG_FIELD_PREP(DVS_HEIGHT_MASK, (h))
-#define   DVS_WIDTH_MASK		REG_GENMASK(15, 0)
-#define   DVS_WIDTH(w)			REG_FIELD_PREP(DVS_WIDTH_MASK, (w))
-#define _DVSAKEYVAL		0x72194
-#define _DVSAKEYMSK		0x72198
-#define _DVSASURF		0x7219c
-#define   DVS_ADDR_MASK			REG_GENMASK(31, 12)
-#define _DVSAKEYMAXVAL		0x721a0
-#define _DVSATILEOFF		0x721a4
-#define   DVS_OFFSET_Y_MASK		REG_GENMASK(31, 16)
-#define   DVS_OFFSET_Y(y)		REG_FIELD_PREP(DVS_OFFSET_Y_MASK, (y))
-#define   DVS_OFFSET_X_MASK		REG_GENMASK(15, 0)
-#define   DVS_OFFSET_X(x)		REG_FIELD_PREP(DVS_OFFSET_X_MASK, (x))
-#define _DVSASURFLIVE		0x721ac
-#define _DVSAGAMC_G4X		0x721e0 /* g4x */
-#define _DVSASCALE		0x72204
-#define   DVS_SCALE_ENABLE		REG_BIT(31)
-#define   DVS_FILTER_MASK		REG_GENMASK(30, 29)
-#define   DVS_FILTER_MEDIUM		REG_FIELD_PREP(DVS_FILTER_MASK, 0)
-#define   DVS_FILTER_ENHANCING		REG_FIELD_PREP(DVS_FILTER_MASK, 1)
-#define   DVS_FILTER_SOFTENING		REG_FIELD_PREP(DVS_FILTER_MASK, 2)
-#define   DVS_VERTICAL_OFFSET_HALF	REG_BIT(28) /* must be enabled below */
-#define   DVS_VERTICAL_OFFSET_ENABLE	REG_BIT(27)
-#define   DVS_SRC_WIDTH_MASK		REG_GENMASK(26, 16)
-#define   DVS_SRC_WIDTH(w)		REG_FIELD_PREP(DVS_SRC_WIDTH_MASK, (w))
-#define   DVS_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
-#define   DVS_SRC_HEIGHT(h)		REG_FIELD_PREP(DVS_SRC_HEIGHT_MASK, (h))
-#define _DVSAGAMC_ILK		0x72300 /* ilk/snb */
-#define _DVSAGAMCMAX_ILK	0x72340 /* ilk/snb */
-
-#define _DVSBCNTR		0x73180
-#define _DVSBLINOFF		0x73184
-#define _DVSBSTRIDE		0x73188
-#define _DVSBPOS		0x7318c
-#define _DVSBSIZE		0x73190
-#define _DVSBKEYVAL		0x73194
-#define _DVSBKEYMSK		0x73198
-#define _DVSBSURF		0x7319c
-#define _DVSBKEYMAXVAL		0x731a0
-#define _DVSBTILEOFF		0x731a4
-#define _DVSBSURFLIVE		0x731ac
-#define _DVSBGAMC_G4X		0x731e0 /* g4x */
-#define _DVSBSCALE		0x73204
-#define _DVSBGAMC_ILK		0x73300 /* ilk/snb */
-#define _DVSBGAMCMAX_ILK	0x73340 /* ilk/snb */
-
-#define DVSCNTR(pipe) _MMIO_PIPE(pipe, _DVSACNTR, _DVSBCNTR)
-#define DVSLINOFF(pipe) _MMIO_PIPE(pipe, _DVSALINOFF, _DVSBLINOFF)
-#define DVSSTRIDE(pipe) _MMIO_PIPE(pipe, _DVSASTRIDE, _DVSBSTRIDE)
-#define DVSPOS(pipe) _MMIO_PIPE(pipe, _DVSAPOS, _DVSBPOS)
-#define DVSSURF(pipe) _MMIO_PIPE(pipe, _DVSASURF, _DVSBSURF)
-#define DVSKEYMAX(pipe) _MMIO_PIPE(pipe, _DVSAKEYMAXVAL, _DVSBKEYMAXVAL)
-#define DVSSIZE(pipe) _MMIO_PIPE(pipe, _DVSASIZE, _DVSBSIZE)
-#define DVSSCALE(pipe) _MMIO_PIPE(pipe, _DVSASCALE, _DVSBSCALE)
-#define DVSTILEOFF(pipe) _MMIO_PIPE(pipe, _DVSATILEOFF, _DVSBTILEOFF)
-#define DVSKEYVAL(pipe) _MMIO_PIPE(pipe, _DVSAKEYVAL, _DVSBKEYVAL)
-#define DVSKEYMSK(pipe) _MMIO_PIPE(pipe, _DVSAKEYMSK, _DVSBKEYMSK)
-#define DVSSURFLIVE(pipe) _MMIO_PIPE(pipe, _DVSASURFLIVE, _DVSBSURFLIVE)
-#define DVSGAMC_G4X(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_G4X, _DVSBGAMC_G4X) + (5 - (i)) * 4) /* 6 x u0.8 */
-#define DVSGAMC_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMC_ILK, _DVSBGAMC_ILK) + (i) * 4) /* 16 x u0.10 */
-#define DVSGAMCMAX_ILK(pipe, i) _MMIO(_PIPE(pipe, _DVSAGAMCMAX_ILK, _DVSBGAMCMAX_ILK) + (i) * 4) /* 3 x u1.10 */
-
-#define _SPRA_CTL		0x70280
-#define   SPRITE_ENABLE				REG_BIT(31)
-#define   SPRITE_PIPE_GAMMA_ENABLE		REG_BIT(30)
-#define   SPRITE_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
-#define   SPRITE_FORMAT_MASK			REG_GENMASK(27, 25)
-#define   SPRITE_FORMAT_YUV422			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 0)
-#define   SPRITE_FORMAT_RGBX101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 1)
-#define   SPRITE_FORMAT_RGBX888			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 2)
-#define   SPRITE_FORMAT_RGBX161616		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 3)
-#define   SPRITE_FORMAT_YUV444			REG_FIELD_PREP(SPRITE_FORMAT_MASK, 4)
-#define   SPRITE_FORMAT_XR_BGR101010		REG_FIELD_PREP(SPRITE_FORMAT_MASK, 5) /* Extended range */
-#define   SPRITE_PIPE_CSC_ENABLE		REG_BIT(24)
-#define   SPRITE_SOURCE_KEY			REG_BIT(22)
-#define   SPRITE_RGB_ORDER_RGBX			REG_BIT(20) /* only for 888 and 161616 */
-#define   SPRITE_YUV_TO_RGB_CSC_DISABLE		REG_BIT(19)
-#define   SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18) /* 0 is BT601 */
-#define   SPRITE_YUV_ORDER_MASK			REG_GENMASK(17, 16)
-#define   SPRITE_YUV_ORDER_YUYV			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 0)
-#define   SPRITE_YUV_ORDER_UYVY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 1)
-#define   SPRITE_YUV_ORDER_YVYU			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 2)
-#define   SPRITE_YUV_ORDER_VYUY			REG_FIELD_PREP(SPRITE_YUV_ORDER_MASK, 3)
-#define   SPRITE_ROTATE_180			REG_BIT(15)
-#define   SPRITE_TRICKLE_FEED_DISABLE		REG_BIT(14)
-#define   SPRITE_PLANE_GAMMA_DISABLE		REG_BIT(13)
-#define   SPRITE_TILED				REG_BIT(10)
-#define   SPRITE_DEST_KEY			REG_BIT(2)
-#define _SPRA_LINOFF		0x70284
-#define _SPRA_STRIDE		0x70288
-#define _SPRA_POS		0x7028c
-#define   SPRITE_POS_Y_MASK	REG_GENMASK(31, 16)
-#define   SPRITE_POS_Y(y)	REG_FIELD_PREP(SPRITE_POS_Y_MASK, (y))
-#define   SPRITE_POS_X_MASK	REG_GENMASK(15, 0)
-#define   SPRITE_POS_X(x)	REG_FIELD_PREP(SPRITE_POS_X_MASK, (x))
-#define _SPRA_SIZE		0x70290
-#define   SPRITE_HEIGHT_MASK	REG_GENMASK(31, 16)
-#define   SPRITE_HEIGHT(h)	REG_FIELD_PREP(SPRITE_HEIGHT_MASK, (h))
-#define   SPRITE_WIDTH_MASK	REG_GENMASK(15, 0)
-#define   SPRITE_WIDTH(w)	REG_FIELD_PREP(SPRITE_WIDTH_MASK, (w))
-#define _SPRA_KEYVAL		0x70294
-#define _SPRA_KEYMSK		0x70298
-#define _SPRA_SURF		0x7029c
-#define   SPRITE_ADDR_MASK	REG_GENMASK(31, 12)
-#define _SPRA_KEYMAX		0x702a0
-#define _SPRA_TILEOFF		0x702a4
-#define   SPRITE_OFFSET_Y_MASK	REG_GENMASK(31, 16)
-#define   SPRITE_OFFSET_Y(y)	REG_FIELD_PREP(SPRITE_OFFSET_Y_MASK, (y))
-#define   SPRITE_OFFSET_X_MASK	REG_GENMASK(15, 0)
-#define   SPRITE_OFFSET_X(x)	REG_FIELD_PREP(SPRITE_OFFSET_X_MASK, (x))
-#define _SPRA_OFFSET		0x702a4
-#define _SPRA_SURFLIVE		0x702ac
-#define _SPRA_SCALE		0x70304
-#define   SPRITE_SCALE_ENABLE			REG_BIT(31)
-#define   SPRITE_FILTER_MASK			REG_GENMASK(30, 29)
-#define   SPRITE_FILTER_MEDIUM			REG_FIELD_PREP(SPRITE_FILTER_MASK, 0)
-#define   SPRITE_FILTER_ENHANCING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 1)
-#define   SPRITE_FILTER_SOFTENING		REG_FIELD_PREP(SPRITE_FILTER_MASK, 2)
-#define   SPRITE_VERTICAL_OFFSET_HALF		REG_BIT(28) /* must be enabled below */
-#define   SPRITE_VERTICAL_OFFSET_ENABLE		REG_BIT(27)
-#define   SPRITE_SRC_WIDTH_MASK			REG_GENMASK(26, 16)
-#define   SPRITE_SRC_WIDTH(w)			REG_FIELD_PREP(SPRITE_SRC_WIDTH_MASK, (w))
-#define   SPRITE_SRC_HEIGHT_MASK		REG_GENMASK(10, 0)
-#define   SPRITE_SRC_HEIGHT(h)			REG_FIELD_PREP(SPRITE_SRC_HEIGHT_MASK, (h))
-#define _SPRA_GAMC		0x70400
-#define _SPRA_GAMC16		0x70440
-#define _SPRA_GAMC17		0x7044c
-
-#define _SPRB_CTL		0x71280
-#define _SPRB_LINOFF		0x71284
-#define _SPRB_STRIDE		0x71288
-#define _SPRB_POS		0x7128c
-#define _SPRB_SIZE		0x71290
-#define _SPRB_KEYVAL		0x71294
-#define _SPRB_KEYMSK		0x71298
-#define _SPRB_SURF		0x7129c
-#define _SPRB_KEYMAX		0x712a0
-#define _SPRB_TILEOFF		0x712a4
-#define _SPRB_OFFSET		0x712a4
-#define _SPRB_SURFLIVE		0x712ac
-#define _SPRB_SCALE		0x71304
-#define _SPRB_GAMC		0x71400
-#define _SPRB_GAMC16		0x71440
-#define _SPRB_GAMC17		0x7144c
-
-#define SPRCTL(pipe) _MMIO_PIPE(pipe, _SPRA_CTL, _SPRB_CTL)
-#define SPRLINOFF(pipe) _MMIO_PIPE(pipe, _SPRA_LINOFF, _SPRB_LINOFF)
-#define SPRSTRIDE(pipe) _MMIO_PIPE(pipe, _SPRA_STRIDE, _SPRB_STRIDE)
-#define SPRPOS(pipe) _MMIO_PIPE(pipe, _SPRA_POS, _SPRB_POS)
-#define SPRSIZE(pipe) _MMIO_PIPE(pipe, _SPRA_SIZE, _SPRB_SIZE)
-#define SPRKEYVAL(pipe) _MMIO_PIPE(pipe, _SPRA_KEYVAL, _SPRB_KEYVAL)
-#define SPRKEYMSK(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMSK, _SPRB_KEYMSK)
-#define SPRSURF(pipe) _MMIO_PIPE(pipe, _SPRA_SURF, _SPRB_SURF)
-#define SPRKEYMAX(pipe) _MMIO_PIPE(pipe, _SPRA_KEYMAX, _SPRB_KEYMAX)
-#define SPRTILEOFF(pipe) _MMIO_PIPE(pipe, _SPRA_TILEOFF, _SPRB_TILEOFF)
-#define SPROFFSET(pipe) _MMIO_PIPE(pipe, _SPRA_OFFSET, _SPRB_OFFSET)
-#define SPRSCALE(pipe) _MMIO_PIPE(pipe, _SPRA_SCALE, _SPRB_SCALE)
-#define SPRGAMC(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC, _SPRB_GAMC) + (i) * 4) /* 16 x u0.10 */
-#define SPRGAMC16(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC16, _SPRB_GAMC16) + (i) * 4) /* 3 x u1.10 */
-#define SPRGAMC17(pipe, i) _MMIO(_PIPE(pipe, _SPRA_GAMC17, _SPRB_GAMC17) + (i) * 4) /* 3 x u2.10 */
-#define SPRSURFLIVE(pipe) _MMIO_PIPE(pipe, _SPRA_SURFLIVE, _SPRB_SURFLIVE)
-
-#define _SPACNTR		(VLV_DISPLAY_BASE + 0x72180)
-#define   SP_ENABLE			REG_BIT(31)
-#define   SP_PIPE_GAMMA_ENABLE		REG_BIT(30)
-#define   SP_FORMAT_MASK		REG_GENMASK(29, 26)
-#define   SP_FORMAT_YUV422		REG_FIELD_PREP(SP_FORMAT_MASK, 0)
-#define   SP_FORMAT_8BPP		REG_FIELD_PREP(SP_FORMAT_MASK, 2)
-#define   SP_FORMAT_BGR565		REG_FIELD_PREP(SP_FORMAT_MASK, 5)
-#define   SP_FORMAT_BGRX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 6)
-#define   SP_FORMAT_BGRA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 7)
-#define   SP_FORMAT_RGBX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 8)
-#define   SP_FORMAT_RGBA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 9)
-#define   SP_FORMAT_BGRX1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 10) /* CHV pipe B */
-#define   SP_FORMAT_BGRA1010102		REG_FIELD_PREP(SP_FORMAT_MASK, 11) /* CHV pipe B */
-#define   SP_FORMAT_RGBX8888		REG_FIELD_PREP(SP_FORMAT_MASK, 14)
-#define   SP_FORMAT_RGBA8888		REG_FIELD_PREP(SP_FORMAT_MASK, 15)
-#define   SP_ALPHA_PREMULTIPLY		REG_BIT(23) /* CHV pipe B */
-#define   SP_SOURCE_KEY			REG_BIT(22)
-#define   SP_YUV_FORMAT_BT709		REG_BIT(18)
-#define   SP_YUV_ORDER_MASK		REG_GENMASK(17, 16)
-#define   SP_YUV_ORDER_YUYV		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 0)
-#define   SP_YUV_ORDER_UYVY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 1)
-#define   SP_YUV_ORDER_YVYU		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 2)
-#define   SP_YUV_ORDER_VYUY		REG_FIELD_PREP(SP_YUV_ORDER_MASK, 3)
-#define   SP_ROTATE_180			REG_BIT(15)
-#define   SP_TILED			REG_BIT(10)
-#define   SP_MIRROR			REG_BIT(8) /* CHV pipe B */
-#define _SPALINOFF		(VLV_DISPLAY_BASE + 0x72184)
-#define _SPASTRIDE		(VLV_DISPLAY_BASE + 0x72188)
-#define _SPAPOS			(VLV_DISPLAY_BASE + 0x7218c)
-#define   SP_POS_Y_MASK			REG_GENMASK(31, 16)
-#define   SP_POS_Y(y)			REG_FIELD_PREP(SP_POS_Y_MASK, (y))
-#define   SP_POS_X_MASK			REG_GENMASK(15, 0)
-#define   SP_POS_X(x)			REG_FIELD_PREP(SP_POS_X_MASK, (x))
-#define _SPASIZE		(VLV_DISPLAY_BASE + 0x72190)
-#define   SP_HEIGHT_MASK		REG_GENMASK(31, 16)
-#define   SP_HEIGHT(h)			REG_FIELD_PREP(SP_HEIGHT_MASK, (h))
-#define   SP_WIDTH_MASK			REG_GENMASK(15, 0)
-#define   SP_WIDTH(w)			REG_FIELD_PREP(SP_WIDTH_MASK, (w))
-#define _SPAKEYMINVAL		(VLV_DISPLAY_BASE + 0x72194)
-#define _SPAKEYMSK		(VLV_DISPLAY_BASE + 0x72198)
-#define _SPASURF		(VLV_DISPLAY_BASE + 0x7219c)
-#define   SP_ADDR_MASK			REG_GENMASK(31, 12)
-#define _SPAKEYMAXVAL		(VLV_DISPLAY_BASE + 0x721a0)
-#define _SPATILEOFF		(VLV_DISPLAY_BASE + 0x721a4)
-#define   SP_OFFSET_Y_MASK		REG_GENMASK(31, 16)
-#define   SP_OFFSET_Y(y)		REG_FIELD_PREP(SP_OFFSET_Y_MASK, (y))
-#define   SP_OFFSET_X_MASK		REG_GENMASK(15, 0)
-#define   SP_OFFSET_X(x)		REG_FIELD_PREP(SP_OFFSET_X_MASK, (x))
-#define _SPACONSTALPHA		(VLV_DISPLAY_BASE + 0x721a8)
-#define   SP_CONST_ALPHA_ENABLE		REG_BIT(31)
-#define   SP_CONST_ALPHA_MASK		REG_GENMASK(7, 0)
-#define   SP_CONST_ALPHA(alpha)		REG_FIELD_PREP(SP_CONST_ALPHA_MASK, (alpha))
-#define _SPASURFLIVE		(VLV_DISPLAY_BASE + 0x721ac)
-#define _SPACLRC0		(VLV_DISPLAY_BASE + 0x721d0)
-#define   SP_CONTRAST_MASK		REG_GENMASK(26, 18)
-#define   SP_CONTRAST(x)		REG_FIELD_PREP(SP_CONTRAST_MASK, (x)) /* u3.6 */
-#define   SP_BRIGHTNESS_MASK		REG_GENMASK(7, 0)
-#define   SP_BRIGHTNESS(x)		REG_FIELD_PREP(SP_BRIGHTNESS_MASK, (x)) /* s8 */
-#define _SPACLRC1		(VLV_DISPLAY_BASE + 0x721d4)
-#define   SP_SH_SIN_MASK		REG_GENMASK(26, 16)
-#define   SP_SH_SIN(x)			REG_FIELD_PREP(SP_SH_SIN_MASK, (x)) /* s4.7 */
-#define   SP_SH_COS_MASK		REG_GENMASK(9, 0)
-#define   SP_SH_COS(x)			REG_FIELD_PREP(SP_SH_COS_MASK, (x)) /* u3.7 */
-#define _SPAGAMC		(VLV_DISPLAY_BASE + 0x721e0)
-
-#define _SPBCNTR		(VLV_DISPLAY_BASE + 0x72280)
-#define _SPBLINOFF		(VLV_DISPLAY_BASE + 0x72284)
-#define _SPBSTRIDE		(VLV_DISPLAY_BASE + 0x72288)
-#define _SPBPOS			(VLV_DISPLAY_BASE + 0x7228c)
-#define _SPBSIZE		(VLV_DISPLAY_BASE + 0x72290)
-#define _SPBKEYMINVAL		(VLV_DISPLAY_BASE + 0x72294)
-#define _SPBKEYMSK		(VLV_DISPLAY_BASE + 0x72298)
-#define _SPBSURF		(VLV_DISPLAY_BASE + 0x7229c)
-#define _SPBKEYMAXVAL		(VLV_DISPLAY_BASE + 0x722a0)
-#define _SPBTILEOFF		(VLV_DISPLAY_BASE + 0x722a4)
-#define _SPBCONSTALPHA		(VLV_DISPLAY_BASE + 0x722a8)
-#define _SPBSURFLIVE		(VLV_DISPLAY_BASE + 0x722ac)
-#define _SPBCLRC0		(VLV_DISPLAY_BASE + 0x722d0)
-#define _SPBCLRC1		(VLV_DISPLAY_BASE + 0x722d4)
-#define _SPBGAMC		(VLV_DISPLAY_BASE + 0x722e0)
-
-#define _VLV_SPR(pipe, plane_id, reg_a, reg_b) \
-	_PIPE((pipe) * 2 + (plane_id) - PLANE_SPRITE0, (reg_a), (reg_b))
-#define _MMIO_VLV_SPR(pipe, plane_id, reg_a, reg_b) \
-	_MMIO(_VLV_SPR((pipe), (plane_id), (reg_a), (reg_b)))
-
-#define SPCNTR(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACNTR, _SPBCNTR)
-#define SPLINOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPALINOFF, _SPBLINOFF)
-#define SPSTRIDE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASTRIDE, _SPBSTRIDE)
-#define SPPOS(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPAPOS, _SPBPOS)
-#define SPSIZE(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASIZE, _SPBSIZE)
-#define SPKEYMINVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMINVAL, _SPBKEYMINVAL)
-#define SPKEYMSK(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMSK, _SPBKEYMSK)
-#define SPSURF(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPASURF, _SPBSURF)
-#define SPKEYMAXVAL(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPAKEYMAXVAL, _SPBKEYMAXVAL)
-#define SPTILEOFF(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPATILEOFF, _SPBTILEOFF)
-#define SPCONSTALPHA(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPACONSTALPHA, _SPBCONSTALPHA)
-#define SPSURFLIVE(pipe, plane_id)	_MMIO_VLV_SPR((pipe), (plane_id), _SPASURFLIVE, _SPBSURFLIVE)
-#define SPCLRC0(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC0, _SPBCLRC0)
-#define SPCLRC1(pipe, plane_id)		_MMIO_VLV_SPR((pipe), (plane_id), _SPACLRC1, _SPBCLRC1)
-#define SPGAMC(pipe, plane_id, i)	_MMIO(_VLV_SPR((pipe), (plane_id), _SPAGAMC, _SPBGAMC) + (5 - (i)) * 4) /* 6 x u0.10 */
-
-/*
- * CHV pipe B sprite CSC
- *
- * |cr|   |c0 c1 c2|   |cr + cr_ioff|   |cr_ooff|
- * |yg| = |c3 c4 c5| x |yg + yg_ioff| + |yg_ooff|
- * |cb|   |c6 c7 c8|   |cb + cr_ioff|   |cb_ooff|
- */
-#define _MMIO_CHV_SPCSC(plane_id, reg) \
-	_MMIO(VLV_DISPLAY_BASE + ((plane_id) - PLANE_SPRITE0) * 0x1000 + (reg))
-
-#define SPCSCYGOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d900)
-#define SPCSCCBOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d904)
-#define SPCSCCROFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d908)
-#define  SPCSC_OOFF_MASK	REG_GENMASK(26, 16)
-#define  SPCSC_OOFF(x)		REG_FIELD_PREP(SPCSC_OOFF_MASK, (x) & 0x7ff) /* s11 */
-#define  SPCSC_IOFF_MASK	REG_GENMASK(10, 0)
-#define  SPCSC_IOFF(x)		REG_FIELD_PREP(SPCSC_IOFF_MASK, (x) & 0x7ff) /* s11 */
-
-#define SPCSCC01(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d90c)
-#define SPCSCC23(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d910)
-#define SPCSCC45(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d914)
-#define SPCSCC67(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d918)
-#define SPCSCC8(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d91c)
-#define  SPCSC_C1_MASK		REG_GENMASK(30, 16)
-#define  SPCSC_C1(x)		REG_FIELD_PREP(SPCSC_C1_MASK, (x) & 0x7fff) /* s3.12 */
-#define  SPCSC_C0_MASK		REG_GENMASK(14, 0)
-#define  SPCSC_C0(x)		REG_FIELD_PREP(SPCSC_C0_MASK, (x) & 0x7fff) /* s3.12 */
-
-#define SPCSCYGICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d920)
-#define SPCSCCBICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d924)
-#define SPCSCCRICLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d928)
-#define  SPCSC_IMAX_MASK	REG_GENMASK(26, 16)
-#define  SPCSC_IMAX(x)		REG_FIELD_PREP(SPCSC_IMAX_MASK, (x) & 0x7ff) /* s11 */
-#define  SPCSC_IMIN_MASK	REG_GENMASK(10, 0)
-#define  SPCSC_IMIN(x)		REG_FIELD_PREP(SPCSC_IMIN_MASK, (x) & 0x7ff) /* s11 */
-
-#define SPCSCYGOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d92c)
-#define SPCSCCBOCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d930)
-#define SPCSCCROCLAMP(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d934)
-#define  SPCSC_OMAX_MASK	REG_GENMASK(25, 16)
-#define  SPCSC_OMAX(x)		REG_FIELD_PREP(SPCSC_OMAX_MASK, (x)) /* u10 */
-#define  SPCSC_OMIN_MASK	REG_GENMASK(9, 0)
-#define  SPCSC_OMIN(x)		REG_FIELD_PREP(SPCSC_OMIN_MASK, (x)) /* u10 */
-
 /* Skylake plane registers */
 
 #define _PLANE_CTL_1_A				0x70180
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 70d661bffcc2..442ffc0c79fe 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -14,6 +14,7 @@
 #include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sprite_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_engine_regs.h"
-- 
2.39.2

