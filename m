Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF94E8B3608
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 12:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CD61121AA;
	Fri, 26 Apr 2024 10:51:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pa44cS03";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19299112177
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 10:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714128717; x=1745664717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z57TBKNryOisYV2j2bqNmHOX+RkTnSYUdPF16ymZEOw=;
 b=Pa44cS03EFVVksjF1l8aHZp7vVu/X1453UTiaM5pgkNywxwAeixSI7Ma
 uQCvaitMWup4AQkg2d5idf5gnZyphVseNwmvPNfZBynruWFJzMc1iaTEW
 05Sivppb07LiwOyPMT4YULOKx4pw0yoxzhJTgmqgUn1JkbAMf2y0CjkRG
 Rnz4gSfw5kUjjGHQCOHAsR7i118WsOvQ5Xz3wAfgPOZUWkP92cE2xehTA
 3wnTEptu7U24hWgfvbv0XJZ5zaMKR2+AMeO+1xafJNxbrqVd0a2kqk89u
 uH4Qo+426+43VegkSVo14QPsG+PazfMOt8khPQGi9FbM2M8YXTzkylWZZ A==;
X-CSE-ConnectionGUID: j1YlntjxRoGPNuwmPUSTCA==
X-CSE-MsgGUID: KN/cTjjxSm6nx4qCxGKhKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="20546323"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="20546323"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:56 -0700
X-CSE-ConnectionGUID: PqUYe5MNS0adgCV1fw6jjg==
X-CSE-MsgGUID: 8FvkfGhxST+xmYnZA0TO0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="30200829"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:51:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/4] drm/i915/display: split out intel_fbc_regs.h from
 i915_reg.h
Date: Fri, 26 Apr 2024 13:51:36 +0300
Message-Id: <aa9b5d8adefbe97e1e37c9cfada3ab1581b0e8d5.1714128645.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714128645.git.jani.nikula@intel.com>
References: <cover.1714128645.git.jani.nikula@intel.com>
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

v2: Drop chicken regs and comments (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c      |   1 +
 drivers/gpu/drm/i915/display/intel_fbc_regs.h | 120 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   2 +
 drivers/gpu/drm/i915/i915_reg.h               | 123 ------------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |   1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 6 files changed, 125 insertions(+), 123 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fbc_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7c4d2b2bf20b..151dcd0c45b6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -54,6 +54,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
+#include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
 
 #define for_each_fbc_id(__dev_priv, __fbc_id) \
diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
new file mode 100644
index 000000000000..ae0699c3c2fe
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
@@ -0,0 +1,120 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_FBC_REGS__
+#define __INTEL_FBC_REGS__
+
+#include "intel_display_reg_defs.h"
+
+#define FBC_CFB_BASE		_MMIO(0x3200) /* 4k page aligned */
+#define FBC_LL_BASE		_MMIO(0x3204) /* 4k page aligned */
+#define FBC_CONTROL		_MMIO(0x3208)
+#define   FBC_CTL_EN			REG_BIT(31)
+#define   FBC_CTL_PERIODIC		REG_BIT(30)
+#define   FBC_CTL_INTERVAL_MASK		REG_GENMASK(29, 16)
+#define   FBC_CTL_INTERVAL(x)		REG_FIELD_PREP(FBC_CTL_INTERVAL_MASK, (x))
+#define   FBC_CTL_STOP_ON_MOD		REG_BIT(15)
+#define   FBC_CTL_UNCOMPRESSIBLE	REG_BIT(14) /* i915+ */
+#define   FBC_CTL_C3_IDLE		REG_BIT(13) /* i945gm only */
+#define   FBC_CTL_STRIDE_MASK		REG_GENMASK(12, 5)
+#define   FBC_CTL_STRIDE(x)		REG_FIELD_PREP(FBC_CTL_STRIDE_MASK, (x))
+#define   FBC_CTL_FENCENO_MASK		REG_GENMASK(3, 0)
+#define   FBC_CTL_FENCENO(x)		REG_FIELD_PREP(FBC_CTL_FENCENO_MASK, (x))
+#define FBC_COMMAND		_MMIO(0x320c)
+#define   FBC_CMD_COMPRESS		REG_BIT(0)
+#define FBC_STATUS		_MMIO(0x3210)
+#define   FBC_STAT_COMPRESSING		REG_BIT(31)
+#define   FBC_STAT_COMPRESSED		REG_BIT(30)
+#define   FBC_STAT_MODIFIED		REG_BIT(29)
+#define   FBC_STAT_CURRENT_LINE_MASK	REG_GENMASK(10, 0)
+#define FBC_CONTROL2		_MMIO(0x3214) /* i965gm only */
+#define   FBC_CTL_FENCE_DBL		REG_BIT(4)
+#define   FBC_CTL_IDLE_MASK		REG_GENMASK(3, 2)
+#define   FBC_CTL_IDLE_IMM		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 0)
+#define   FBC_CTL_IDLE_FULL		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 1)
+#define   FBC_CTL_IDLE_LINE		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 2)
+#define   FBC_CTL_IDLE_DEBUG		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 3)
+#define   FBC_CTL_CPU_FENCE_EN		REG_BIT(1)
+#define   FBC_CTL_PLANE_MASK		REG_GENMASK(1, 0)
+#define   FBC_CTL_PLANE(i9xx_plane)	REG_FIELD_PREP(FBC_CTL_PLANE_MASK, (i9xx_plane))
+#define FBC_FENCE_OFF		_MMIO(0x3218)  /* i965gm only, BSpec typo has 321Bh */
+#define FBC_MOD_NUM		_MMIO(0x3220)  /* i965gm only */
+#define   FBC_MOD_NUM_MASK		REG_GENMASK(31, 1)
+#define   FBC_MOD_NUM_VALID		REG_BIT(0)
+#define FBC_TAG(i)		_MMIO(0x3300 + (i) * 4) /* 49 reisters */
+#define   FBC_TAG_MASK			REG_GENMASK(1, 0) /* 16 tags per register */
+#define   FBC_TAG_MODIFIED		REG_FIELD_PREP(FBC_TAG_MASK, 0)
+#define   FBC_TAG_UNCOMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 1)
+#define   FBC_TAG_UNCOMPRESSIBLE	REG_FIELD_PREP(FBC_TAG_MASK, 2)
+#define   FBC_TAG_COMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 3)
+
+#define FBC_LL_SIZE		(1536)
+
+#define DPFC_CB_BASE			_MMIO(0x3200)
+#define ILK_DPFC_CB_BASE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43200, 0x43240)
+#define DPFC_CONTROL			_MMIO(0x3208)
+#define ILK_DPFC_CONTROL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43208, 0x43248)
+#define   DPFC_CTL_EN				REG_BIT(31)
+#define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
+#define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))
+#define   DPFC_CTL_FENCE_EN_G4X			REG_BIT(29) /* g4x-snb */
+#define   DPFC_CTL_PLANE_MASK_IVB		REG_GENMASK(30, 29) /* ivb only */
+#define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
+#define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
+#define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
+#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl+ */
+#define   DPFC_CTL_PLANE_BINDING(plane_id)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (plane_id))
+#define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
+#define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
+#define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
+#define   DPFC_CTL_LIMIT_MASK			REG_GENMASK(7, 6)
+#define   DPFC_CTL_LIMIT_1X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 0)
+#define   DPFC_CTL_LIMIT_2X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 1)
+#define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
+#define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
+#define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
+#define DPFC_RECOMP_CTL			_MMIO(0x320c)
+#define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324c)
+#define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
+#define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
+#define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
+#define DPFC_STATUS			_MMIO(0x3210)
+#define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)
+#define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
+#define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
+#define DPFC_STATUS2			_MMIO(0x3214)
+#define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
+#define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
+#define DPFC_FENCE_YOFF			_MMIO(0x3218)
+#define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
+#define DPFC_CHICKEN			_MMIO(0x3224)
+#define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
+#define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
+#define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
+#define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
+#define   DPFC_CHICKEN_FORCE_SLB_INVALIDATION	REG_BIT(13) /* icl+ */
+#define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
+
+#define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
+#define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
+#define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
+#define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
+
+#define ILK_FBC_RT_BASE		_MMIO(0x2128)
+#define   ILK_FBC_RT_VALID	REG_BIT(0)
+#define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
+
+#define SNB_DPFC_CTL_SA		_MMIO(0x100100)
+#define   SNB_DPFC_FENCE_EN		REG_BIT(29)
+#define   SNB_DPFC_FENCENO_MASK		REG_GENMASK(4, 0)
+#define   SNB_DPFC_FENCENO(fence)	REG_FIELD_PREP(SNB_DPFC_FENCENO_MASK, (fence))
+#define SNB_DPFC_CPU_FENCE_OFFSET	_MMIO(0x100104)
+
+#define IVB_FBC_RT_BASE			_MMIO(0x7020)
+#define IVB_FBC_RT_BASE_UPPER		_MMIO(0x7024)
+
+#define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
+#define   FBC_REND_NUKE			REG_BIT(2)
+#define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
+
+#endif /* __INTEL_FBC_REGS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 68b6aa11bcf7..40e79f0dc257 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -17,6 +17,8 @@
 #include "intel_ring.h"
 #include "intel_workarounds.h"
 
+#include "display/intel_fbc_regs.h"
+
 /**
  * DOC: Hardware workarounds
  *
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c5ea2ed653b9..5cdf3b17e7d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -986,109 +986,6 @@
 #define   GEN7_FF_DS_SCHED_LOAD_BALANCE	(0x1 << 4)  /* Default */
 #define   GEN7_FF_DS_SCHED_HW		(0x0 << 4)
 
-/*
- * Framebuffer compression (915+ only)
- */
-
-#define FBC_CFB_BASE		_MMIO(0x3200) /* 4k page aligned */
-#define FBC_LL_BASE		_MMIO(0x3204) /* 4k page aligned */
-#define FBC_CONTROL		_MMIO(0x3208)
-#define   FBC_CTL_EN			REG_BIT(31)
-#define   FBC_CTL_PERIODIC		REG_BIT(30)
-#define   FBC_CTL_INTERVAL_MASK		REG_GENMASK(29, 16)
-#define   FBC_CTL_INTERVAL(x)		REG_FIELD_PREP(FBC_CTL_INTERVAL_MASK, (x))
-#define   FBC_CTL_STOP_ON_MOD		REG_BIT(15)
-#define   FBC_CTL_UNCOMPRESSIBLE	REG_BIT(14) /* i915+ */
-#define   FBC_CTL_C3_IDLE		REG_BIT(13) /* i945gm only */
-#define   FBC_CTL_STRIDE_MASK		REG_GENMASK(12, 5)
-#define   FBC_CTL_STRIDE(x)		REG_FIELD_PREP(FBC_CTL_STRIDE_MASK, (x))
-#define   FBC_CTL_FENCENO_MASK		REG_GENMASK(3, 0)
-#define   FBC_CTL_FENCENO(x)		REG_FIELD_PREP(FBC_CTL_FENCENO_MASK, (x))
-#define FBC_COMMAND		_MMIO(0x320c)
-#define   FBC_CMD_COMPRESS		REG_BIT(0)
-#define FBC_STATUS		_MMIO(0x3210)
-#define   FBC_STAT_COMPRESSING		REG_BIT(31)
-#define   FBC_STAT_COMPRESSED		REG_BIT(30)
-#define   FBC_STAT_MODIFIED		REG_BIT(29)
-#define   FBC_STAT_CURRENT_LINE_MASK	REG_GENMASK(10, 0)
-#define FBC_CONTROL2		_MMIO(0x3214) /* i965gm only */
-#define   FBC_CTL_FENCE_DBL		REG_BIT(4)
-#define   FBC_CTL_IDLE_MASK		REG_GENMASK(3, 2)
-#define   FBC_CTL_IDLE_IMM		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 0)
-#define   FBC_CTL_IDLE_FULL		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 1)
-#define   FBC_CTL_IDLE_LINE		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 2)
-#define   FBC_CTL_IDLE_DEBUG		REG_FIELD_PREP(FBC_CTL_IDLE_MASK, 3)
-#define   FBC_CTL_CPU_FENCE_EN		REG_BIT(1)
-#define   FBC_CTL_PLANE_MASK		REG_GENMASK(1, 0)
-#define   FBC_CTL_PLANE(i9xx_plane)	REG_FIELD_PREP(FBC_CTL_PLANE_MASK, (i9xx_plane))
-#define FBC_FENCE_OFF		_MMIO(0x3218)  /* i965gm only, BSpec typo has 321Bh */
-#define FBC_MOD_NUM		_MMIO(0x3220)  /* i965gm only */
-#define   FBC_MOD_NUM_MASK		REG_GENMASK(31, 1)
-#define   FBC_MOD_NUM_VALID		REG_BIT(0)
-#define FBC_TAG(i)		_MMIO(0x3300 + (i) * 4) /* 49 reisters */
-#define   FBC_TAG_MASK			REG_GENMASK(1, 0) /* 16 tags per register */
-#define   FBC_TAG_MODIFIED		REG_FIELD_PREP(FBC_TAG_MASK, 0)
-#define   FBC_TAG_UNCOMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 1)
-#define   FBC_TAG_UNCOMPRESSIBLE	REG_FIELD_PREP(FBC_TAG_MASK, 2)
-#define   FBC_TAG_COMPRESSED		REG_FIELD_PREP(FBC_TAG_MASK, 3)
-
-#define FBC_LL_SIZE		(1536)
-
-/* Framebuffer compression for GM45+ */
-#define DPFC_CB_BASE			_MMIO(0x3200)
-#define ILK_DPFC_CB_BASE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43200, 0x43240)
-#define DPFC_CONTROL			_MMIO(0x3208)
-#define ILK_DPFC_CONTROL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43208, 0x43248)
-#define   DPFC_CTL_EN				REG_BIT(31)
-#define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
-#define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))
-#define   DPFC_CTL_FENCE_EN_G4X			REG_BIT(29) /* g4x-snb */
-#define   DPFC_CTL_PLANE_MASK_IVB		REG_GENMASK(30, 29) /* ivb only */
-#define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
-#define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
-#define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
-#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* lnl+ */
-#define   DPFC_CTL_PLANE_BINDING(plane_id)	REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, (plane_id))
-#define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
-#define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
-#define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
-#define   DPFC_CTL_LIMIT_MASK			REG_GENMASK(7, 6)
-#define   DPFC_CTL_LIMIT_1X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 0)
-#define   DPFC_CTL_LIMIT_2X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 1)
-#define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
-#define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
-#define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
-#define DPFC_RECOMP_CTL			_MMIO(0x320c)
-#define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324c)
-#define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
-#define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
-#define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
-#define DPFC_STATUS			_MMIO(0x3210)
-#define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)
-#define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
-#define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
-#define DPFC_STATUS2			_MMIO(0x3214)
-#define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
-#define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
-#define DPFC_FENCE_YOFF			_MMIO(0x3218)
-#define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
-#define DPFC_CHICKEN			_MMIO(0x3224)
-#define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
-#define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
-#define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
-#define   DPFC_CHICKEN_COMP_DUMMY_PIXEL		REG_BIT(14) /* glk+ */
-#define   DPFC_CHICKEN_FORCE_SLB_INVALIDATION	REG_BIT(13) /* icl+ */
-#define   DPFC_DISABLE_DUMMY0			REG_BIT(8) /* ivb+ */
-
-#define GLK_FBC_STRIDE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43228, 0x43268)
-#define   FBC_STRIDE_OVERRIDE	REG_BIT(15)
-#define   FBC_STRIDE_MASK	REG_GENMASK(14, 0)
-#define   FBC_STRIDE(x)		REG_FIELD_PREP(FBC_STRIDE_MASK, (x))
-
-#define ILK_FBC_RT_BASE		_MMIO(0x2128)
-#define   ILK_FBC_RT_VALID	REG_BIT(0)
-#define   SNB_FBC_FRONT_BUFFER	REG_BIT(1)
-
 #define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
 #define   ILK_FBCQ_DIS			REG_BIT(22)
 #define   ILK_PABSTRETCH_DIS		REG_BIT(21)
@@ -1104,30 +1001,10 @@
 #define   IVB_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 2)
 #define   IVB_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 3)
 
-
-/*
- * Framebuffer compression for Sandybridge
- *
- * The following two registers are of type GTTMMADR
- */
-#define SNB_DPFC_CTL_SA		_MMIO(0x100100)
-#define   SNB_DPFC_FENCE_EN		REG_BIT(29)
-#define   SNB_DPFC_FENCENO_MASK		REG_GENMASK(4, 0)
-#define   SNB_DPFC_FENCENO(fence)	REG_FIELD_PREP(SNB_DPFC_FENCENO_MASK, (fence))
-#define SNB_DPFC_CPU_FENCE_OFFSET	_MMIO(0x100104)
-
-/* Framebuffer compression for Ivybridge */
-#define IVB_FBC_RT_BASE			_MMIO(0x7020)
-#define IVB_FBC_RT_BASE_UPPER		_MMIO(0x7024)
-
 #define IPS_CTL		_MMIO(0x43408)
 #define   IPS_ENABLE		REG_BIT(31)
 #define   IPS_FALSE_COLOR	REG_BIT(4)
 
-#define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
-#define   FBC_REND_NUKE			REG_BIT(2)
-#define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
-
 /*
  * Clock control & power management
  */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 7e70ee4fbd84..1dc5281b2ade 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -28,6 +28,7 @@
 #include "display/intel_de.h"
 #include "display/intel_display.h"
 #include "display/intel_display_trace.h"
+#include "display/intel_fbc_regs.h"
 #include "display/skl_watermark.h"
 
 #include "gt/intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d0f111ff0ada..0d3689203510 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -11,6 +11,7 @@
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_fbc_regs.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_lvds_regs.h"
 #include "display/intel_psr_regs.h"
-- 
2.39.2

