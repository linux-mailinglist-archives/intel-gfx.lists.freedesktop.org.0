Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D40A31969
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330F910E773;
	Tue, 11 Feb 2025 23:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FJnsvn5P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A0D810E77C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316007; x=1770852007;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rdRpnTUhYNchlISh5FPTOFvcEXFa7bXb/TaiH533G0c=;
 b=FJnsvn5P48Go+4bhRl5D1AEfR4/zjl2wgJRHQBEGny294ObwbMqP9aah
 kolODxMRsRN7xZRi3n28dPLgq2OuLIAOvm1dBpSOqfcLiANDOC/nRDMSG
 c3/OmRkEFxpMOJTHUR6UBJlDBSB6FQROAm3DjpnjuAW13MpM2kkbhzL8j
 BZRIUytzqqLsluv4ot5HX1TiSjH9ESXWtoA/VrWgCX6kRcMBLwgbWdwXs
 KmWFemRlZ5XhEgcZ2/mi2h5XJbIIctOD9QfMIbHTmJlbBa/fTAb+XdYLp
 Hv9et8iare7ImYma8L2FNV6LDh8LdynhNyIbS44+5gFwVMJCoWJ2ybEX+ g==;
X-CSE-ConnectionGUID: KBDUDLTwS6+X9rVJrFeyCw==
X-CSE-MsgGUID: vqYW1dhzQh2iJKrY92XTPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820136"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820136"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:07 -0800
X-CSE-ConnectionGUID: 4xIdYy/HSIKmW/FIDR+SjQ==
X-CSE-MsgGUID: 9lRUwLzXTQei/sTRHQnVMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870912"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915: Reoder CHV EU/slice fuse bits
Date: Wed, 12 Feb 2025 01:19:36 +0200
Message-ID: <20250211231941.22769-9-ville.syrjala@linux.intel.com>
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
order. Reorder the CHV fuse bits to match.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index f5ac73a2ed7d..3d3cdcc881d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -934,10 +934,10 @@
 #define CHV_POWER_SS0_SIG1			_MMIO(0xa720)
 #define CHV_POWER_SS0_SIG2			_MMIO(0xa724)
 #define CHV_POWER_SS1_SIG1			_MMIO(0xa728)
-#define   CHV_SS_PG_ENABLE			REG_BIT(1)
-#define   CHV_EU08_PG_ENABLE			REG_BIT(9)
-#define   CHV_EU19_PG_ENABLE			REG_BIT(17)
 #define   CHV_EU210_PG_ENABLE			REG_BIT(25)
+#define   CHV_EU19_PG_ENABLE			REG_BIT(17)
+#define   CHV_EU08_PG_ENABLE			REG_BIT(9)
+#define   CHV_SS_PG_ENABLE			REG_BIT(1)
 #define CHV_POWER_SS1_SIG2			_MMIO(0xa72c)
 #define   CHV_EU311_PG_ENABLE			REG_BIT(1)
 
@@ -1437,12 +1437,12 @@
 #define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))
 
 #define CHV_FUSE_GT				_MMIO(VLV_GUNIT_BASE + 0x2168)
-#define   CHV_FGT_DISABLE_SS0			REG_BIT(10)
-#define   CHV_FGT_DISABLE_SS1			REG_BIT(11)
-#define   CHV_FGT_EU_DIS_SS0_R0_MASK		REG_GENMASK(19, 16)
-#define   CHV_FGT_EU_DIS_SS0_R1_MASK		REG_GENMASK(23, 20)
-#define   CHV_FGT_EU_DIS_SS1_R0_MASK		REG_GENMASK(27, 24)
 #define   CHV_FGT_EU_DIS_SS1_R1_MASK		REG_GENMASK(31, 28)
+#define   CHV_FGT_EU_DIS_SS1_R0_MASK		REG_GENMASK(27, 24)
+#define   CHV_FGT_EU_DIS_SS0_R1_MASK		REG_GENMASK(23, 20)
+#define   CHV_FGT_EU_DIS_SS0_R0_MASK		REG_GENMASK(19, 16)
+#define   CHV_FGT_DISABLE_SS1			REG_BIT(11)
+#define   CHV_FGT_DISABLE_SS0			REG_BIT(10)
 
 #define BCS_SWCTRL				_MMIO(0x22200)
 #define   BCS_SRC_Y				REG_BIT(0)
-- 
2.45.3

