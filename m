Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12ACDA3196B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39AB10E761;
	Tue, 11 Feb 2025 23:20:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEvEYAUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3467310E764
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316013; x=1770852013;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SNmPknW1wpgEJLsOzIubfYY/ul8DC36Kq4FM9U+Y2Ow=;
 b=GEvEYAUC95BIA2lSJK5AtZvjoNeTo4aGsUSQpQGi4kJCkwQI9UEjzenq
 50iS5847JwTC7wjLhh5UD8blBUFrcT59t7TESLZpBjdU27ARRg37BtXnd
 DYvRoQOofVf/hfcUM4cDo2FhP2FR72vIeOyRM7XAwpaOSYc7flv4QjP55
 hooCGPGr9zjgdsdoezTyytZDOE2cwC9EeYz+NV7ITpWb50jbMZUJKEbkL
 E+ynIYI7flPdHCsx/q8ZiVKEN7LEUUgJKEKiaE/3NwZDI1+8piiicDoSa
 PCzqniiidZKXu9exQ2UfFg/f1nIyjFfuV2lLcUbheZF4EqUl9oiFkHreb A==;
X-CSE-ConnectionGUID: 697TrS1OSSe7AqP9usqnCA==
X-CSE-MsgGUID: 6fb2DwzGRoub15VZ3ZF+jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820142"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820142"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:13 -0800
X-CSE-ConnectionGUID: vg2Hb2sfRQauSaLMEpvSNQ==
X-CSE-MsgGUID: LF1GuqhrSHW48HV8uA2+yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870917"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915: Reoder BDW+ EU/slice fuse bits
Date: Wed, 12 Feb 2025 01:19:38 +0200
Message-ID: <20250211231941.22769-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We customarily define the bits of a register in big endian
order. Reorder the BDW+ fuse bits to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 31 +++++++++++++------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7a5fe084475f..f5e6853b3a6c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -512,10 +512,11 @@
 #define   GEN11_STATE_CACHE_REDIRECT_TO_CS	(1 << 11)
 
 #define GEN9_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + (slice) * 0x4)
+#define   GEN9_PGCTL_SS_ACK(subslice)		REG_BIT(2 + (subslice) * 2)
+#define   GEN9_PGCTL_SLICE_ACK			REG_BIT(0)
+
 #define GEN10_SLICE_PGCTL_ACK(slice)		_MMIO(0x804c + ((slice) / 3) * 0x34 + \
 						      ((slice) % 3) * 0x4)
-#define   GEN9_PGCTL_SLICE_ACK			REG_BIT(0)
-#define   GEN9_PGCTL_SS_ACK(subslice)		REG_BIT(2 + (subslice) * 2)
 #define   GEN10_PGCTL_VALID_SS_MASK(slice)	((slice) == 0 ? REG_GENMASK(6, 0) : REG_GENMASK(4, 0))
 
 #define GEN9_SS01_EU_PGCTL_ACK(slice)		_MMIO(0x805c + (slice) * 0x8)
@@ -524,14 +525,14 @@
 #define GEN9_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + (slice) * 0x8)
 #define GEN10_SS23_EU_PGCTL_ACK(slice)		_MMIO(0x8060 + ((slice) / 3) * 0x30 + \
 						      ((slice) % 3) * 0x8)
-#define   GEN9_PGCTL_SSA_EU08_ACK			REG_BIT(0)
-#define   GEN9_PGCTL_SSA_EU19_ACK			REG_BIT(2)
-#define   GEN9_PGCTL_SSA_EU210_ACK			REG_BIT(4)
-#define   GEN9_PGCTL_SSA_EU311_ACK			REG_BIT(6)
-#define   GEN9_PGCTL_SSB_EU08_ACK			REG_BIT(8)
-#define   GEN9_PGCTL_SSB_EU19_ACK			REG_BIT(10)
-#define   GEN9_PGCTL_SSB_EU210_ACK			REG_BIT(12)
 #define   GEN9_PGCTL_SSB_EU311_ACK			REG_BIT(14)
+#define   GEN9_PGCTL_SSB_EU210_ACK			REG_BIT(12)
+#define   GEN9_PGCTL_SSB_EU19_ACK			REG_BIT(10)
+#define   GEN9_PGCTL_SSB_EU08_ACK			REG_BIT(8)
+#define   GEN9_PGCTL_SSA_EU311_ACK			REG_BIT(6)
+#define   GEN9_PGCTL_SSA_EU210_ACK			REG_BIT(4)
+#define   GEN9_PGCTL_SSA_EU19_ACK			REG_BIT(2)
+#define   GEN9_PGCTL_SSA_EU08_ACK			REG_BIT(0)
 
 #define VF_PREEMPTION				_MMIO(0x83a4)
 #define   PREEMPTION_VERTEX_COUNT		REG_GENMASK(15, 0)
@@ -598,24 +599,24 @@
 #define   HSW_F1_EU_DIS_6EUS			2
 
 #define GEN8_FUSE2				_MMIO(0x9120)
-#define   GEN8_F2_SS_DIS_MASK			REG_GENMASK(23, 21)
-#define   GEN8_F2_S_ENA_MASK			REG_GENMASK(27, 25)
-#define   GEN9_F2_SS_DIS_MASK			REG_GENMASK(23, 20)
 #define   GEN10_F2_S_ENA_MASK			REG_GENMASK(27, 22)
 #define   GEN10_F2_SS_DIS_MASK			REG_GENMASK(21, 18)
+#define   GEN8_F2_S_ENA_MASK			REG_GENMASK(27, 25)
+#define   GEN9_F2_SS_DIS_MASK			REG_GENMASK(23, 20)
+#define   GEN8_F2_SS_DIS_MASK			REG_GENMASK(23, 21)
 
 #define GEN8_EU_DISABLE0			_MMIO(0x9134)
 #define GEN9_EU_DISABLE(slice)			_MMIO(0x9134 + (slice) * 0x4)
 #define GEN11_EU_DISABLE			_MMIO(0x9134)
-#define   GEN8_EU_DIS0_S0_MASK			REG_GENMASK(23, 0)
 #define   GEN8_EU_DIS0_S1_MASK			REG_GENMASK(31, 24)
+#define   GEN8_EU_DIS0_S0_MASK			REG_GENMASK(23, 0)
 #define   GEN11_EU_DIS_MASK			REG_GENMASK(7, 0)
 #define XEHP_EU_ENABLE				_MMIO(0x9134)
 #define   XEHP_EU_ENA_MASK			REG_GENMASK(7, 0)
 
 #define GEN8_EU_DISABLE1			_MMIO(0x9138)
-#define   GEN8_EU_DIS1_S1_MASK			REG_GENMASK(15, 0)
 #define   GEN8_EU_DIS1_S2_MASK			REG_GENMASK(31, 16)
+#define   GEN8_EU_DIS1_S1_MASK			REG_GENMASK(15, 0)
 
 #define GEN11_GT_SLICE_ENABLE			_MMIO(0x9138)
 #define   GEN11_GT_S_ENA_MASK			REG_GENMASK(7, 0)
@@ -629,8 +630,8 @@
 #define GEN10_EU_DISABLE3			_MMIO(0x9140)
 #define   GEN10_EU_DIS_SS_MASK			0xff
 #define GEN11_GT_VEBOX_VDBOX_DISABLE		_MMIO(0x9140)
-#define   GEN11_GT_VDBOX_DISABLE_MASK		REG_GENMASK(7, 0)
 #define   GEN11_GT_VEBOX_DISABLE_MASK		REG_GENMASK(19, 16)
+#define   GEN11_GT_VDBOX_DISABLE_MASK		REG_GENMASK(7, 0)
 
 #define GEN12_GT_COMPUTE_DSS_ENABLE		_MMIO(0x9144)
 #define XEHPC_GT_COMPUTE_DSS_ENABLE_EXT		_MMIO(0x9148)
-- 
2.45.3

