Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18813706849
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547B610E410;
	Wed, 17 May 2023 12:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE2B10E410
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327110; x=1715863110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xIAHUQbnGruTJPgO+gweFGRC7YRYIfD3SLJuNjMHivU=;
 b=PBAACyjCTMzJQ8iNT/p0z00RndVQ+zUWYKik2FSr2I5KNwKMMsyNWHIN
 ffKYYkyXk9otFoWQ/kIUlGBiYgeiGUzFAhsO+WgQ/L2WIjcYW2NNINeay
 UIaNwPjmKxUXaCvhbu9XnC2cOmPQNis+0/p9nnB44omqtPn3IvOYg31G9
 HWOH9L7k0PsNp+Jq1f7p9ELTUs+MI+z8dRi9zuPsmN7e/r62QSi/chBdz
 qDLvMmOdUUNfYnlcuia4x/Qd5Ycdq5ngDy/nBBWGsCrIXFRUpNxADG6cE
 im6j5wjxtpgzjfMbxSgC6IBL8bCtnU/shousyNxvkA2YPRSg2BPN7w7KL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="438090338"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="438090338"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="771444343"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="771444343"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:16 +0300
Message-Id: <d1ef735e61f073e67da145bbd60a994da1e18d00.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1684327004.git.jani.nikula@intel.com>
References: <cover.1684327004.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/regs: split out intel_color_regs.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Declutter i915_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c        |   1 +
 drivers/gpu/drm/i915/display/intel_color.c    |   1 +
 .../gpu/drm/i915/display/intel_color_regs.h   | 272 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 260 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 7 files changed, 277 insertions(+), 260 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_color_regs.h

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 8eca0de065b6..7dc38ac02092 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -6,6 +6,7 @@
 #include "hsw_ips.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 07f1afe1d406..f458b136e6a8 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -24,6 +24,7 @@
 
 #include "i915_reg.h"
 #include "intel_color.h"
+#include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
new file mode 100644
index 000000000000..30e6f66a724d
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -0,0 +1,272 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_COLOR_REGS_H__
+#define __INTEL_COLOR_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* legacy palette */
+#define _LGC_PALETTE_A           0x4a000
+#define _LGC_PALETTE_B           0x4a800
+/* see PALETTE_* for the bits */
+#define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALETTE_B) + (i) * 4)
+
+/* ilk/snb precision palette */
+#define _PREC_PALETTE_A           0x4b000
+#define _PREC_PALETTE_B           0x4c000
+/* 10bit mode */
+#define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
+#define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
+#define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
+/* 12.4 interpolated mode ldw */
+#define   PREC_PALETTE_12P4_RED_LDW_MASK	REG_GENMASK(29, 24)
+#define   PREC_PALETTE_12P4_GREEN_LDW_MASK	REG_GENMASK(19, 14)
+#define   PREC_PALETTE_12P4_BLUE_LDW_MASK	REG_GENMASK(9, 4)
+/* 12.4 interpolated mode udw */
+#define   PREC_PALETTE_12P4_RED_UDW_MASK	REG_GENMASK(29, 20)
+#define   PREC_PALETTE_12P4_GREEN_UDW_MASK	REG_GENMASK(19, 10)
+#define   PREC_PALETTE_12P4_BLUE_UDW_MASK	REG_GENMASK(9, 0)
+#define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PALETTE_B) + (i) * 4)
+
+#define  _PREC_PIPEAGCMAX              0x4d000
+#define  _PREC_PIPEBGCMAX              0x4d010
+#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */
+
+#define _GAMMA_MODE_A		0x4a480
+#define _GAMMA_MODE_B		0x4ac80
+#define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
+#define  PRE_CSC_GAMMA_ENABLE			REG_BIT(31) /* icl+ */
+#define  POST_CSC_GAMMA_ENABLE			REG_BIT(30) /* icl+ */
+#define  PALETTE_ANTICOL_DISABLE		REG_BIT(15) /* skl+ */
+#define  GAMMA_MODE_MODE_MASK			REG_GENMASK(1, 0)
+#define  GAMMA_MODE_MODE_8BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 0)
+#define  GAMMA_MODE_MODE_10BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 1)
+#define  GAMMA_MODE_MODE_12BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 2)
+#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */
+#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */
+
+/* pipe CSC */
+#define _PIPE_A_CSC_COEFF_RY_GY	0x49010
+#define _PIPE_A_CSC_COEFF_BY	0x49014
+#define _PIPE_A_CSC_COEFF_RU_GU	0x49018
+#define _PIPE_A_CSC_COEFF_BU	0x4901c
+#define _PIPE_A_CSC_COEFF_RV_GV	0x49020
+#define _PIPE_A_CSC_COEFF_BV	0x49024
+
+#define _PIPE_A_CSC_MODE	0x49028
+#define  ICL_CSC_ENABLE			(1 << 31) /* icl+ */
+#define  ICL_OUTPUT_CSC_ENABLE		(1 << 30) /* icl+ */
+#define  CSC_BLACK_SCREEN_OFFSET	(1 << 2) /* ilk/snb */
+#define  CSC_POSITION_BEFORE_GAMMA	(1 << 1) /* pre-glk */
+#define  CSC_MODE_YUV_TO_RGB		(1 << 0) /* ilk/snb */
+
+#define _PIPE_A_CSC_PREOFF_HI	0x49030
+#define _PIPE_A_CSC_PREOFF_ME	0x49034
+#define _PIPE_A_CSC_PREOFF_LO	0x49038
+#define _PIPE_A_CSC_POSTOFF_HI	0x49040
+#define _PIPE_A_CSC_POSTOFF_ME	0x49044
+#define _PIPE_A_CSC_POSTOFF_LO	0x49048
+
+#define _PIPE_B_CSC_COEFF_RY_GY	0x49110
+#define _PIPE_B_CSC_COEFF_BY	0x49114
+#define _PIPE_B_CSC_COEFF_RU_GU	0x49118
+#define _PIPE_B_CSC_COEFF_BU	0x4911c
+#define _PIPE_B_CSC_COEFF_RV_GV	0x49120
+#define _PIPE_B_CSC_COEFF_BV	0x49124
+#define _PIPE_B_CSC_MODE	0x49128
+#define _PIPE_B_CSC_PREOFF_HI	0x49130
+#define _PIPE_B_CSC_PREOFF_ME	0x49134
+#define _PIPE_B_CSC_PREOFF_LO	0x49138
+#define _PIPE_B_CSC_POSTOFF_HI	0x49140
+#define _PIPE_B_CSC_POSTOFF_ME	0x49144
+#define _PIPE_B_CSC_POSTOFF_LO	0x49148
+
+#define PIPE_CSC_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)
+#define PIPE_CSC_COEFF_BY(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BY, _PIPE_B_CSC_COEFF_BY)
+#define PIPE_CSC_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)
+#define PIPE_CSC_COEFF_BU(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BU, _PIPE_B_CSC_COEFF_BU)
+#define PIPE_CSC_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)
+#define PIPE_CSC_COEFF_BV(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BV, _PIPE_B_CSC_COEFF_BV)
+#define PIPE_CSC_MODE(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_MODE, _PIPE_B_CSC_MODE)
+#define PIPE_CSC_PREOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_HI, _PIPE_B_CSC_PREOFF_HI)
+#define PIPE_CSC_PREOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_ME, _PIPE_B_CSC_PREOFF_ME)
+#define PIPE_CSC_PREOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_LO, _PIPE_B_CSC_PREOFF_LO)
+#define PIPE_CSC_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_HI, _PIPE_B_CSC_POSTOFF_HI)
+#define PIPE_CSC_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_ME, _PIPE_B_CSC_POSTOFF_ME)
+#define PIPE_CSC_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_LO, _PIPE_B_CSC_POSTOFF_LO)
+
+/* Pipe Output CSC */
+#define _PIPE_A_OUTPUT_CSC_COEFF_RY_GY	0x49050
+#define _PIPE_A_OUTPUT_CSC_COEFF_BY	0x49054
+#define _PIPE_A_OUTPUT_CSC_COEFF_RU_GU	0x49058
+#define _PIPE_A_OUTPUT_CSC_COEFF_BU	0x4905c
+#define _PIPE_A_OUTPUT_CSC_COEFF_RV_GV	0x49060
+#define _PIPE_A_OUTPUT_CSC_COEFF_BV	0x49064
+#define _PIPE_A_OUTPUT_CSC_PREOFF_HI	0x49068
+#define _PIPE_A_OUTPUT_CSC_PREOFF_ME	0x4906c
+#define _PIPE_A_OUTPUT_CSC_PREOFF_LO	0x49070
+#define _PIPE_A_OUTPUT_CSC_POSTOFF_HI	0x49074
+#define _PIPE_A_OUTPUT_CSC_POSTOFF_ME	0x49078
+#define _PIPE_A_OUTPUT_CSC_POSTOFF_LO	0x4907c
+
+#define _PIPE_B_OUTPUT_CSC_COEFF_RY_GY	0x49150
+#define _PIPE_B_OUTPUT_CSC_COEFF_BY	0x49154
+#define _PIPE_B_OUTPUT_CSC_COEFF_RU_GU	0x49158
+#define _PIPE_B_OUTPUT_CSC_COEFF_BU	0x4915c
+#define _PIPE_B_OUTPUT_CSC_COEFF_RV_GV	0x49160
+#define _PIPE_B_OUTPUT_CSC_COEFF_BV	0x49164
+#define _PIPE_B_OUTPUT_CSC_PREOFF_HI	0x49168
+#define _PIPE_B_OUTPUT_CSC_PREOFF_ME	0x4916c
+#define _PIPE_B_OUTPUT_CSC_PREOFF_LO	0x49170
+#define _PIPE_B_OUTPUT_CSC_POSTOFF_HI	0x49174
+#define _PIPE_B_OUTPUT_CSC_POSTOFF_ME	0x49178
+#define _PIPE_B_OUTPUT_CSC_POSTOFF_LO	0x4917c
+
+#define PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe,\
+							   _PIPE_A_OUTPUT_CSC_COEFF_RY_GY,\
+							   _PIPE_B_OUTPUT_CSC_COEFF_RY_GY)
+#define PIPE_CSC_OUTPUT_COEFF_BY(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_COEFF_BY, \
+							   _PIPE_B_OUTPUT_CSC_COEFF_BY)
+#define PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_COEFF_RU_GU, \
+							   _PIPE_B_OUTPUT_CSC_COEFF_RU_GU)
+#define PIPE_CSC_OUTPUT_COEFF_BU(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_COEFF_BU, \
+							   _PIPE_B_OUTPUT_CSC_COEFF_BU)
+#define PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_COEFF_RV_GV, \
+							   _PIPE_B_OUTPUT_CSC_COEFF_RV_GV)
+#define PIPE_CSC_OUTPUT_COEFF_BV(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_COEFF_BV, \
+							   _PIPE_B_OUTPUT_CSC_COEFF_BV)
+#define PIPE_CSC_OUTPUT_PREOFF_HI(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_PREOFF_HI, \
+							   _PIPE_B_OUTPUT_CSC_PREOFF_HI)
+#define PIPE_CSC_OUTPUT_PREOFF_ME(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_PREOFF_ME, \
+							   _PIPE_B_OUTPUT_CSC_PREOFF_ME)
+#define PIPE_CSC_OUTPUT_PREOFF_LO(pipe)		_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_PREOFF_LO, \
+							   _PIPE_B_OUTPUT_CSC_PREOFF_LO)
+#define PIPE_CSC_OUTPUT_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_POSTOFF_HI, \
+							   _PIPE_B_OUTPUT_CSC_POSTOFF_HI)
+#define PIPE_CSC_OUTPUT_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_POSTOFF_ME, \
+							   _PIPE_B_OUTPUT_CSC_POSTOFF_ME)
+#define PIPE_CSC_OUTPUT_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, \
+							   _PIPE_A_OUTPUT_CSC_POSTOFF_LO, \
+							   _PIPE_B_OUTPUT_CSC_POSTOFF_LO)
+
+/* pipe degamma/gamma LUTs on IVB+ */
+#define _PAL_PREC_INDEX_A	0x4A400
+#define _PAL_PREC_INDEX_B	0x4AC00
+#define _PAL_PREC_INDEX_C	0x4B400
+#define   PAL_PREC_SPLIT_MODE		REG_BIT(31)
+#define   PAL_PREC_AUTO_INCREMENT	REG_BIT(15)
+#define   PAL_PREC_INDEX_VALUE_MASK	REG_GENMASK(9, 0)
+#define   PAL_PREC_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_INDEX_VALUE_MASK, (x))
+#define _PAL_PREC_DATA_A	0x4A404
+#define _PAL_PREC_DATA_B	0x4AC04
+#define _PAL_PREC_DATA_C	0x4B404
+/* see PREC_PALETTE_* for the bits */
+#define _PAL_PREC_GC_MAX_A	0x4A410
+#define _PAL_PREC_GC_MAX_B	0x4AC10
+#define _PAL_PREC_GC_MAX_C	0x4B410
+#define _PAL_PREC_EXT_GC_MAX_A	0x4A420
+#define _PAL_PREC_EXT_GC_MAX_B	0x4AC20
+#define _PAL_PREC_EXT_GC_MAX_C	0x4B420
+#define _PAL_PREC_EXT2_GC_MAX_A	0x4A430
+#define _PAL_PREC_EXT2_GC_MAX_B	0x4AC30
+#define _PAL_PREC_EXT2_GC_MAX_C	0x4B430
+
+#define PREC_PAL_INDEX(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_INDEX_A, _PAL_PREC_INDEX_B)
+#define PREC_PAL_DATA(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_DATA_A, _PAL_PREC_DATA_B)
+#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
+#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
+#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
+
+#define _PRE_CSC_GAMC_INDEX_A	0x4A484
+#define _PRE_CSC_GAMC_INDEX_B	0x4AC84
+#define _PRE_CSC_GAMC_INDEX_C	0x4B484
+#define   PRE_CSC_GAMC_AUTO_INCREMENT	REG_BIT(10)
+#define   PRE_CSC_GAMC_INDEX_VALUE_MASK	REG_GENMASK(7, 0)
+#define   PRE_CSC_GAMC_INDEX_VALUE(x)	REG_FIELD_PREP(PRE_CSC_GAMC_INDEX_VALUE_MASK, (x))
+#define _PRE_CSC_GAMC_DATA_A	0x4A488
+#define _PRE_CSC_GAMC_DATA_B	0x4AC88
+#define _PRE_CSC_GAMC_DATA_C	0x4B488
+
+#define PRE_CSC_GAMC_INDEX(pipe)	_MMIO_PIPE(pipe, _PRE_CSC_GAMC_INDEX_A, _PRE_CSC_GAMC_INDEX_B)
+#define PRE_CSC_GAMC_DATA(pipe)		_MMIO_PIPE(pipe, _PRE_CSC_GAMC_DATA_A, _PRE_CSC_GAMC_DATA_B)
+
+/* ICL Multi segmented gamma */
+#define _PAL_PREC_MULTI_SEG_INDEX_A	0x4A408
+#define _PAL_PREC_MULTI_SEG_INDEX_B	0x4AC08
+#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT	REG_BIT(15)
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
+#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))
+
+#define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
+#define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
+/* see PREC_PALETTE_12P4_* for the bits */
+
+#define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
+					_PAL_PREC_MULTI_SEG_INDEX_A, \
+					_PAL_PREC_MULTI_SEG_INDEX_B)
+#define PREC_PAL_MULTI_SEG_DATA(pipe)	_MMIO_PIPE(pipe, \
+					_PAL_PREC_MULTI_SEG_DATA_A, \
+					_PAL_PREC_MULTI_SEG_DATA_B)
+
+/* pipe CSC & degamma/gamma LUTs on CHV */
+#define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
+#define _CGM_PIPE_A_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x67904)
+#define _CGM_PIPE_A_CSC_COEFF45	(VLV_DISPLAY_BASE + 0x67908)
+#define _CGM_PIPE_A_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6790C)
+#define _CGM_PIPE_A_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x67910)
+#define _CGM_PIPE_A_DEGAMMA	(VLV_DISPLAY_BASE + 0x66000)
+/* cgm degamma ldw */
+#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK	REG_GENMASK(29, 16)
+#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK	REG_GENMASK(13, 0)
+/* cgm degamma udw */
+#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK		REG_GENMASK(13, 0)
+#define _CGM_PIPE_A_GAMMA	(VLV_DISPLAY_BASE + 0x67000)
+/* cgm gamma ldw */
+#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK		REG_GENMASK(25, 16)
+#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK		REG_GENMASK(9, 0)
+/* cgm gamma udw */
+#define   CGM_PIPE_GAMMA_RED_UDW_MASK		REG_GENMASK(9, 0)
+#define _CGM_PIPE_A_MODE	(VLV_DISPLAY_BASE + 0x67A00)
+#define   CGM_PIPE_MODE_GAMMA	(1 << 2)
+#define   CGM_PIPE_MODE_CSC	(1 << 1)
+#define   CGM_PIPE_MODE_DEGAMMA	(1 << 0)
+
+#define _CGM_PIPE_B_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x69900)
+#define _CGM_PIPE_B_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x69904)
+#define _CGM_PIPE_B_CSC_COEFF45	(VLV_DISPLAY_BASE + 0x69908)
+#define _CGM_PIPE_B_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6990C)
+#define _CGM_PIPE_B_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x69910)
+#define _CGM_PIPE_B_DEGAMMA	(VLV_DISPLAY_BASE + 0x68000)
+#define _CGM_PIPE_B_GAMMA	(VLV_DISPLAY_BASE + 0x69000)
+#define _CGM_PIPE_B_MODE	(VLV_DISPLAY_BASE + 0x69A00)
+
+#define CGM_PIPE_CSC_COEFF01(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF01, _CGM_PIPE_B_CSC_COEFF01)
+#define CGM_PIPE_CSC_COEFF23(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF23, _CGM_PIPE_B_CSC_COEFF23)
+#define CGM_PIPE_CSC_COEFF45(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF45, _CGM_PIPE_B_CSC_COEFF45)
+#define CGM_PIPE_CSC_COEFF67(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF67, _CGM_PIPE_B_CSC_COEFF67)
+#define CGM_PIPE_CSC_COEFF8(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF8, _CGM_PIPE_B_CSC_COEFF8)
+#define CGM_PIPE_DEGAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)
+#define CGM_PIPE_GAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_GAMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)
+#define CGM_PIPE_MODE(pipe)		_MMIO_PIPE(pipe, _CGM_PIPE_A_MODE, _CGM_PIPE_B_MODE)
+
+/* Skylake+ pipe bottom (background) color */
+#define _SKL_BOTTOM_COLOR_A		0x70034
+#define _SKL_BOTTOM_COLOR_B		0x71034
+#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE		REG_BIT(31)
+#define   SKL_BOTTOM_COLOR_CSC_ENABLE		REG_BIT(30)
+#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE(pipe, _SKL_BOTTOM_COLOR_A, _SKL_BOTTOM_COLOR_B)
+
+#endif /* __INTEL_COLOR_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b3bac5dae20f..bca7664d1ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -61,6 +61,7 @@
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
 #include "intel_color.h"
+#include "intel_color_regs.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index d6fe2bbabe55..5c5efdf62631 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -35,6 +35,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2a9ab8de8421..aa38901b7c22 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2693,13 +2693,6 @@
 #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
 #define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
-/* Skylake+ pipe bottom (background) color */
-#define _SKL_BOTTOM_COLOR_A		0x70034
-#define _SKL_BOTTOM_COLOR_B		0x71034
-#define   SKL_BOTTOM_COLOR_GAMMA_ENABLE		REG_BIT(31)
-#define   SKL_BOTTOM_COLOR_CSC_ENABLE		REG_BIT(30)
-#define SKL_BOTTOM_COLOR(pipe)		_MMIO_PIPE(pipe, _SKL_BOTTOM_COLOR_A, _SKL_BOTTOM_COLOR_B)
-
 #define _ICL_PIPE_A_STATUS			0x70058
 #define ICL_PIPESTATUS(pipe)			_MMIO_PIPE2(pipe, _ICL_PIPE_A_STATUS)
 #define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
@@ -4220,45 +4213,6 @@
 #define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)
-/* legacy palette */
-#define _LGC_PALETTE_A           0x4a000
-#define _LGC_PALETTE_B           0x4a800
-/* see PALETTE_* for the bits */
-#define LGC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _LGC_PALETTE_A, _LGC_PALETTE_B) + (i) * 4)
-
-/* ilk/snb precision palette */
-#define _PREC_PALETTE_A           0x4b000
-#define _PREC_PALETTE_B           0x4c000
-/* 10bit mode */
-#define   PREC_PALETTE_10_RED_MASK		REG_GENMASK(29, 20)
-#define   PREC_PALETTE_10_GREEN_MASK		REG_GENMASK(19, 10)
-#define   PREC_PALETTE_10_BLUE_MASK		REG_GENMASK(9, 0)
-/* 12.4 interpolated mode ldw */
-#define   PREC_PALETTE_12P4_RED_LDW_MASK	REG_GENMASK(29, 24)
-#define   PREC_PALETTE_12P4_GREEN_LDW_MASK	REG_GENMASK(19, 14)
-#define   PREC_PALETTE_12P4_BLUE_LDW_MASK	REG_GENMASK(9, 4)
-/* 12.4 interpolated mode udw */
-#define   PREC_PALETTE_12P4_RED_UDW_MASK	REG_GENMASK(29, 20)
-#define   PREC_PALETTE_12P4_GREEN_UDW_MASK	REG_GENMASK(19, 10)
-#define   PREC_PALETTE_12P4_BLUE_UDW_MASK	REG_GENMASK(9, 0)
-#define PREC_PALETTE(pipe, i) _MMIO(_PIPE(pipe, _PREC_PALETTE_A, _PREC_PALETTE_B) + (i) * 4)
-
-#define  _PREC_PIPEAGCMAX              0x4d000
-#define  _PREC_PIPEBGCMAX              0x4d010
-#define PREC_PIPEGCMAX(pipe, i)        _MMIO(_PIPE(pipe, _PIPEAGCMAX, _PIPEBGCMAX) + (i) * 4) /* u1.16 */
-
-#define _GAMMA_MODE_A		0x4a480
-#define _GAMMA_MODE_B		0x4ac80
-#define GAMMA_MODE(pipe) _MMIO_PIPE(pipe, _GAMMA_MODE_A, _GAMMA_MODE_B)
-#define  PRE_CSC_GAMMA_ENABLE			REG_BIT(31) /* icl+ */
-#define  POST_CSC_GAMMA_ENABLE			REG_BIT(30) /* icl+ */
-#define  PALETTE_ANTICOL_DISABLE		REG_BIT(15) /* skl+ */
-#define  GAMMA_MODE_MODE_MASK			REG_GENMASK(1, 0)
-#define  GAMMA_MODE_MODE_8BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 0)
-#define  GAMMA_MODE_MODE_10BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 1)
-#define  GAMMA_MODE_MODE_12BIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 2)
-#define  GAMMA_MODE_MODE_SPLIT			REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* ivb-bdw */
-#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	REG_FIELD_PREP(GAMMA_MODE_MODE_MASK, 3) /* icl-tgl */
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
@@ -6253,179 +6207,6 @@ enum skl_power_gate {
 #define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
 #define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
 
-/* pipe CSC */
-#define _PIPE_A_CSC_COEFF_RY_GY	0x49010
-#define _PIPE_A_CSC_COEFF_BY	0x49014
-#define _PIPE_A_CSC_COEFF_RU_GU	0x49018
-#define _PIPE_A_CSC_COEFF_BU	0x4901c
-#define _PIPE_A_CSC_COEFF_RV_GV	0x49020
-#define _PIPE_A_CSC_COEFF_BV	0x49024
-
-#define _PIPE_A_CSC_MODE	0x49028
-#define  ICL_CSC_ENABLE			(1 << 31) /* icl+ */
-#define  ICL_OUTPUT_CSC_ENABLE		(1 << 30) /* icl+ */
-#define  CSC_BLACK_SCREEN_OFFSET	(1 << 2) /* ilk/snb */
-#define  CSC_POSITION_BEFORE_GAMMA	(1 << 1) /* pre-glk */
-#define  CSC_MODE_YUV_TO_RGB		(1 << 0) /* ilk/snb */
-
-#define _PIPE_A_CSC_PREOFF_HI	0x49030
-#define _PIPE_A_CSC_PREOFF_ME	0x49034
-#define _PIPE_A_CSC_PREOFF_LO	0x49038
-#define _PIPE_A_CSC_POSTOFF_HI	0x49040
-#define _PIPE_A_CSC_POSTOFF_ME	0x49044
-#define _PIPE_A_CSC_POSTOFF_LO	0x49048
-
-#define _PIPE_B_CSC_COEFF_RY_GY	0x49110
-#define _PIPE_B_CSC_COEFF_BY	0x49114
-#define _PIPE_B_CSC_COEFF_RU_GU	0x49118
-#define _PIPE_B_CSC_COEFF_BU	0x4911c
-#define _PIPE_B_CSC_COEFF_RV_GV	0x49120
-#define _PIPE_B_CSC_COEFF_BV	0x49124
-#define _PIPE_B_CSC_MODE	0x49128
-#define _PIPE_B_CSC_PREOFF_HI	0x49130
-#define _PIPE_B_CSC_PREOFF_ME	0x49134
-#define _PIPE_B_CSC_PREOFF_LO	0x49138
-#define _PIPE_B_CSC_POSTOFF_HI	0x49140
-#define _PIPE_B_CSC_POSTOFF_ME	0x49144
-#define _PIPE_B_CSC_POSTOFF_LO	0x49148
-
-#define PIPE_CSC_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RY_GY, _PIPE_B_CSC_COEFF_RY_GY)
-#define PIPE_CSC_COEFF_BY(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BY, _PIPE_B_CSC_COEFF_BY)
-#define PIPE_CSC_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RU_GU, _PIPE_B_CSC_COEFF_RU_GU)
-#define PIPE_CSC_COEFF_BU(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BU, _PIPE_B_CSC_COEFF_BU)
-#define PIPE_CSC_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_RV_GV, _PIPE_B_CSC_COEFF_RV_GV)
-#define PIPE_CSC_COEFF_BV(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_COEFF_BV, _PIPE_B_CSC_COEFF_BV)
-#define PIPE_CSC_MODE(pipe)		_MMIO_PIPE(pipe, _PIPE_A_CSC_MODE, _PIPE_B_CSC_MODE)
-#define PIPE_CSC_PREOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_HI, _PIPE_B_CSC_PREOFF_HI)
-#define PIPE_CSC_PREOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_ME, _PIPE_B_CSC_PREOFF_ME)
-#define PIPE_CSC_PREOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_PREOFF_LO, _PIPE_B_CSC_PREOFF_LO)
-#define PIPE_CSC_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_HI, _PIPE_B_CSC_POSTOFF_HI)
-#define PIPE_CSC_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_ME, _PIPE_B_CSC_POSTOFF_ME)
-#define PIPE_CSC_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, _PIPE_A_CSC_POSTOFF_LO, _PIPE_B_CSC_POSTOFF_LO)
-
-/* Pipe Output CSC */
-#define _PIPE_A_OUTPUT_CSC_COEFF_RY_GY	0x49050
-#define _PIPE_A_OUTPUT_CSC_COEFF_BY	0x49054
-#define _PIPE_A_OUTPUT_CSC_COEFF_RU_GU	0x49058
-#define _PIPE_A_OUTPUT_CSC_COEFF_BU	0x4905c
-#define _PIPE_A_OUTPUT_CSC_COEFF_RV_GV	0x49060
-#define _PIPE_A_OUTPUT_CSC_COEFF_BV	0x49064
-#define _PIPE_A_OUTPUT_CSC_PREOFF_HI	0x49068
-#define _PIPE_A_OUTPUT_CSC_PREOFF_ME	0x4906c
-#define _PIPE_A_OUTPUT_CSC_PREOFF_LO	0x49070
-#define _PIPE_A_OUTPUT_CSC_POSTOFF_HI	0x49074
-#define _PIPE_A_OUTPUT_CSC_POSTOFF_ME	0x49078
-#define _PIPE_A_OUTPUT_CSC_POSTOFF_LO	0x4907c
-
-#define _PIPE_B_OUTPUT_CSC_COEFF_RY_GY	0x49150
-#define _PIPE_B_OUTPUT_CSC_COEFF_BY	0x49154
-#define _PIPE_B_OUTPUT_CSC_COEFF_RU_GU	0x49158
-#define _PIPE_B_OUTPUT_CSC_COEFF_BU	0x4915c
-#define _PIPE_B_OUTPUT_CSC_COEFF_RV_GV	0x49160
-#define _PIPE_B_OUTPUT_CSC_COEFF_BV	0x49164
-#define _PIPE_B_OUTPUT_CSC_PREOFF_HI	0x49168
-#define _PIPE_B_OUTPUT_CSC_PREOFF_ME	0x4916c
-#define _PIPE_B_OUTPUT_CSC_PREOFF_LO	0x49170
-#define _PIPE_B_OUTPUT_CSC_POSTOFF_HI	0x49174
-#define _PIPE_B_OUTPUT_CSC_POSTOFF_ME	0x49178
-#define _PIPE_B_OUTPUT_CSC_POSTOFF_LO	0x4917c
-
-#define PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe)	_MMIO_PIPE(pipe,\
-							   _PIPE_A_OUTPUT_CSC_COEFF_RY_GY,\
-							   _PIPE_B_OUTPUT_CSC_COEFF_RY_GY)
-#define PIPE_CSC_OUTPUT_COEFF_BY(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_COEFF_BY, \
-							   _PIPE_B_OUTPUT_CSC_COEFF_BY)
-#define PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe)	_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_COEFF_RU_GU, \
-							   _PIPE_B_OUTPUT_CSC_COEFF_RU_GU)
-#define PIPE_CSC_OUTPUT_COEFF_BU(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_COEFF_BU, \
-							   _PIPE_B_OUTPUT_CSC_COEFF_BU)
-#define PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe)	_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_COEFF_RV_GV, \
-							   _PIPE_B_OUTPUT_CSC_COEFF_RV_GV)
-#define PIPE_CSC_OUTPUT_COEFF_BV(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_COEFF_BV, \
-							   _PIPE_B_OUTPUT_CSC_COEFF_BV)
-#define PIPE_CSC_OUTPUT_PREOFF_HI(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_PREOFF_HI, \
-							   _PIPE_B_OUTPUT_CSC_PREOFF_HI)
-#define PIPE_CSC_OUTPUT_PREOFF_ME(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_PREOFF_ME, \
-							   _PIPE_B_OUTPUT_CSC_PREOFF_ME)
-#define PIPE_CSC_OUTPUT_PREOFF_LO(pipe)		_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_PREOFF_LO, \
-							   _PIPE_B_OUTPUT_CSC_PREOFF_LO)
-#define PIPE_CSC_OUTPUT_POSTOFF_HI(pipe)	_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_POSTOFF_HI, \
-							   _PIPE_B_OUTPUT_CSC_POSTOFF_HI)
-#define PIPE_CSC_OUTPUT_POSTOFF_ME(pipe)	_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_POSTOFF_ME, \
-							   _PIPE_B_OUTPUT_CSC_POSTOFF_ME)
-#define PIPE_CSC_OUTPUT_POSTOFF_LO(pipe)	_MMIO_PIPE(pipe, \
-							   _PIPE_A_OUTPUT_CSC_POSTOFF_LO, \
-							   _PIPE_B_OUTPUT_CSC_POSTOFF_LO)
-
-/* pipe degamma/gamma LUTs on IVB+ */
-#define _PAL_PREC_INDEX_A	0x4A400
-#define _PAL_PREC_INDEX_B	0x4AC00
-#define _PAL_PREC_INDEX_C	0x4B400
-#define   PAL_PREC_SPLIT_MODE		REG_BIT(31)
-#define   PAL_PREC_AUTO_INCREMENT	REG_BIT(15)
-#define   PAL_PREC_INDEX_VALUE_MASK	REG_GENMASK(9, 0)
-#define   PAL_PREC_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_INDEX_VALUE_MASK, (x))
-#define _PAL_PREC_DATA_A	0x4A404
-#define _PAL_PREC_DATA_B	0x4AC04
-#define _PAL_PREC_DATA_C	0x4B404
-/* see PREC_PALETTE_* for the bits */
-#define _PAL_PREC_GC_MAX_A	0x4A410
-#define _PAL_PREC_GC_MAX_B	0x4AC10
-#define _PAL_PREC_GC_MAX_C	0x4B410
-#define _PAL_PREC_EXT_GC_MAX_A	0x4A420
-#define _PAL_PREC_EXT_GC_MAX_B	0x4AC20
-#define _PAL_PREC_EXT_GC_MAX_C	0x4B420
-#define _PAL_PREC_EXT2_GC_MAX_A	0x4A430
-#define _PAL_PREC_EXT2_GC_MAX_B	0x4AC30
-#define _PAL_PREC_EXT2_GC_MAX_C	0x4B430
-
-#define PREC_PAL_INDEX(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_INDEX_A, _PAL_PREC_INDEX_B)
-#define PREC_PAL_DATA(pipe)		_MMIO_PIPE(pipe, _PAL_PREC_DATA_A, _PAL_PREC_DATA_B)
-#define PREC_PAL_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_GC_MAX_A, _PAL_PREC_GC_MAX_B) + (i) * 4) /* u1.16 */
-#define PREC_PAL_EXT_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT_GC_MAX_A, _PAL_PREC_EXT_GC_MAX_B) + (i) * 4) /* u3.16 */
-#define PREC_PAL_EXT2_GC_MAX(pipe, i)	_MMIO(_PIPE(pipe, _PAL_PREC_EXT2_GC_MAX_A, _PAL_PREC_EXT2_GC_MAX_B) + (i) * 4) /* glk+, u3.16 */
-
-#define _PRE_CSC_GAMC_INDEX_A	0x4A484
-#define _PRE_CSC_GAMC_INDEX_B	0x4AC84
-#define _PRE_CSC_GAMC_INDEX_C	0x4B484
-#define   PRE_CSC_GAMC_AUTO_INCREMENT	REG_BIT(10)
-#define   PRE_CSC_GAMC_INDEX_VALUE_MASK	REG_GENMASK(7, 0)
-#define   PRE_CSC_GAMC_INDEX_VALUE(x)	REG_FIELD_PREP(PRE_CSC_GAMC_INDEX_VALUE_MASK, (x))
-#define _PRE_CSC_GAMC_DATA_A	0x4A488
-#define _PRE_CSC_GAMC_DATA_B	0x4AC88
-#define _PRE_CSC_GAMC_DATA_C	0x4B488
-
-#define PRE_CSC_GAMC_INDEX(pipe)	_MMIO_PIPE(pipe, _PRE_CSC_GAMC_INDEX_A, _PRE_CSC_GAMC_INDEX_B)
-#define PRE_CSC_GAMC_DATA(pipe)		_MMIO_PIPE(pipe, _PRE_CSC_GAMC_DATA_A, _PRE_CSC_GAMC_DATA_B)
-
-/* ICL Multi segmented gamma */
-#define _PAL_PREC_MULTI_SEG_INDEX_A	0x4A408
-#define _PAL_PREC_MULTI_SEG_INDEX_B	0x4AC08
-#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT	REG_BIT(15)
-#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
-#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))
-
-#define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
-#define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
-/* see PREC_PALETTE_12P4_* for the bits */
-
-#define PREC_PAL_MULTI_SEG_INDEX(pipe)	_MMIO_PIPE(pipe, \
-					_PAL_PREC_MULTI_SEG_INDEX_A, \
-					_PAL_PREC_MULTI_SEG_INDEX_B)
-#define PREC_PAL_MULTI_SEG_DATA(pipe)	_MMIO_PIPE(pipe, \
-					_PAL_PREC_MULTI_SEG_DATA_A, \
-					_PAL_PREC_MULTI_SEG_DATA_B)
-
 #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) * 4)
 
 /* Plane CSC Registers */
@@ -6471,47 +6252,6 @@ enum skl_power_gate {
 							    (index) * 4, _PLANE_CSC_POSTOFF_HI_2(pipe) + \
 							    (index) * 4)
 
-/* pipe CSC & degamma/gamma LUTs on CHV */
-#define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
-#define _CGM_PIPE_A_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x67904)
-#define _CGM_PIPE_A_CSC_COEFF45	(VLV_DISPLAY_BASE + 0x67908)
-#define _CGM_PIPE_A_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6790C)
-#define _CGM_PIPE_A_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x67910)
-#define _CGM_PIPE_A_DEGAMMA	(VLV_DISPLAY_BASE + 0x66000)
-/* cgm degamma ldw */
-#define   CGM_PIPE_DEGAMMA_GREEN_LDW_MASK	REG_GENMASK(29, 16)
-#define   CGM_PIPE_DEGAMMA_BLUE_LDW_MASK	REG_GENMASK(13, 0)
-/* cgm degamma udw */
-#define   CGM_PIPE_DEGAMMA_RED_UDW_MASK		REG_GENMASK(13, 0)
-#define _CGM_PIPE_A_GAMMA	(VLV_DISPLAY_BASE + 0x67000)
-/* cgm gamma ldw */
-#define   CGM_PIPE_GAMMA_GREEN_LDW_MASK		REG_GENMASK(25, 16)
-#define   CGM_PIPE_GAMMA_BLUE_LDW_MASK		REG_GENMASK(9, 0)
-/* cgm gamma udw */
-#define   CGM_PIPE_GAMMA_RED_UDW_MASK		REG_GENMASK(9, 0)
-#define _CGM_PIPE_A_MODE	(VLV_DISPLAY_BASE + 0x67A00)
-#define   CGM_PIPE_MODE_GAMMA	(1 << 2)
-#define   CGM_PIPE_MODE_CSC	(1 << 1)
-#define   CGM_PIPE_MODE_DEGAMMA	(1 << 0)
-
-#define _CGM_PIPE_B_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x69900)
-#define _CGM_PIPE_B_CSC_COEFF23	(VLV_DISPLAY_BASE + 0x69904)
-#define _CGM_PIPE_B_CSC_COEFF45	(VLV_DISPLAY_BASE + 0x69908)
-#define _CGM_PIPE_B_CSC_COEFF67	(VLV_DISPLAY_BASE + 0x6990C)
-#define _CGM_PIPE_B_CSC_COEFF8	(VLV_DISPLAY_BASE + 0x69910)
-#define _CGM_PIPE_B_DEGAMMA	(VLV_DISPLAY_BASE + 0x68000)
-#define _CGM_PIPE_B_GAMMA	(VLV_DISPLAY_BASE + 0x69000)
-#define _CGM_PIPE_B_MODE	(VLV_DISPLAY_BASE + 0x69A00)
-
-#define CGM_PIPE_CSC_COEFF01(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF01, _CGM_PIPE_B_CSC_COEFF01)
-#define CGM_PIPE_CSC_COEFF23(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF23, _CGM_PIPE_B_CSC_COEFF23)
-#define CGM_PIPE_CSC_COEFF45(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF45, _CGM_PIPE_B_CSC_COEFF45)
-#define CGM_PIPE_CSC_COEFF67(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF67, _CGM_PIPE_B_CSC_COEFF67)
-#define CGM_PIPE_CSC_COEFF8(pipe)	_MMIO_PIPE(pipe, _CGM_PIPE_A_CSC_COEFF8, _CGM_PIPE_B_CSC_COEFF8)
-#define CGM_PIPE_DEGAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_DEGAMMA, _CGM_PIPE_B_DEGAMMA) + (i) * 8 + (w) * 4)
-#define CGM_PIPE_GAMMA(pipe, i, w)	_MMIO(_PIPE(pipe, _CGM_PIPE_A_GAMMA, _CGM_PIPE_B_GAMMA) + (i) * 8 + (w) * 4)
-#define CGM_PIPE_MODE(pipe)		_MMIO_PIPE(pipe, _CGM_PIPE_A_MODE, _CGM_PIPE_B_MODE)
-
 /* Gen4+ Timestamp and Pipe Frame time stamp registers */
 #define GEN4_TIMESTAMP		_MMIO(0x2358)
 #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 5d08774029cc..b3c036a54529 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -5,6 +5,7 @@
 
 #include "display/intel_audio_regs.h"
 #include "display/intel_backlight_regs.h"
+#include "display/intel_color_regs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
-- 
2.39.2

