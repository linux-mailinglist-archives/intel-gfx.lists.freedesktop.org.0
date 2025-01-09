Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5B0A08125
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 21:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8775710E495;
	Thu,  9 Jan 2025 20:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="faAI1wHx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3273810E48C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 20:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736453169; x=1767989169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jM/x7V8zpCOnOHJfEAsyU06J7PO7U/tfBIsy57vG6+Q=;
 b=faAI1wHxI8zq/schVp3IHg1uxVjFcM5QFNOH3wRODpis7QvPgO9BhrJI
 kTCFIkw0PlPICI8fZfwnMNseEo+M+tAQ9JFsfRv7O2loAb3xAk8n43c8m
 zNcbYgw8RUBfcp5Eqx8OYZx9ZvKiOVHeFz/sDSu20nAczc308gBNhcWrE
 BMrIK23DrRlAeSOciBLotcQY3uanMNjn/ybsYBI9wb/RFBHs+uAdwu17E
 QcYUVIRqWGLRwagq3XQ/X0HrxkoxtGCrn8NT7zGwT0flzJMGlTqvccNf6
 vKnGcHoHCbeMF45cWtzuu3YhXTOebu5TKa4RNysS/d4KhLnb1JG4N37JK Q==;
X-CSE-ConnectionGUID: hEbAnBMiSbiGOFvpuuu3Og==
X-CSE-MsgGUID: dN8kR8zgTrupJbFtC6ttqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47721597"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="47721597"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 12:06:09 -0800
X-CSE-ConnectionGUID: LxqXbHqTTyuytjsh6MwhJA==
X-CSE-MsgGUID: GhAKhpS2Rpy7E777ge0I6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="103572704"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.180])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 12:06:09 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Francois Dugast <francois.dugast@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH] drm/xe/xe3: Generate and store the L3 bank mask
Date: Thu,  9 Jan 2025 12:06:04 -0800
Message-ID: <20250109200604.152106-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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

From: Francois Dugast <francois.dugast@intel.com>

On Xe3, the register used to indicate which L3 banks are enabled on
the system is a new one called MIRROR_L3BANK_ENABLE. Each bit
represents one bank enabled in each node.
Extend the existing topology code for Xe3 to read this register and
generate the correct L3 bank mask, which can be read by user space
throug the topology query.

Bspec: 72573, 73439
Signed-off-by: Francois Dugast <francois.dugast@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 +++
 drivers/gpu/drm/xe/xe_gt_topology.c  | 16 +++++++++++++---
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
index 162f18e975da..2a8794fde24f 100644
--- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
@@ -221,6 +221,9 @@
 
 #define MIRROR_FUSE1				XE_REG(0x911c)
 
+#define MIRROR_L3BANK_ENABLE			XE_REG(0x9130)
+#define   XE3_L3BANK_ENABLE			REG_GENMASK(31, 0)
+
 #define XELP_EU_ENABLE				XE_REG(0x9134)	/* "_DISABLE" on Xe_LP */
 #define   XELP_EU_MASK				REG_GENMASK(7, 0)
 #define XELP_GT_SLICE_ENABLE			XE_REG(0x9138)
diff --git a/drivers/gpu/drm/xe/xe_gt_topology.c b/drivers/gpu/drm/xe/xe_gt_topology.c
index df2042db7ee6..516c81e3b8dd 100644
--- a/drivers/gpu/drm/xe/xe_gt_topology.c
+++ b/drivers/gpu/drm/xe/xe_gt_topology.c
@@ -129,7 +129,8 @@ static void
 load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
 {
 	struct xe_device *xe = gt_to_xe(gt);
-	u32 fuse3 = xe_mmio_read32(&gt->mmio, MIRROR_FUSE3);
+	struct xe_mmio *mmio = &gt->mmio;
+	u32 fuse3 = xe_mmio_read32(mmio, MIRROR_FUSE3);
 
 	/*
 	 * PTL platforms with media version 30.00 do not provide proper values
@@ -143,7 +144,16 @@ load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
 	if (XE_WA(gt, no_media_l3))
 		return;
 
-	if (GRAPHICS_VER(xe) >= 20) {
+	if (GRAPHICS_VER(xe) >= 30) {
+		xe_l3_bank_mask_t per_node = {};
+		u32 meml3_en = REG_FIELD_GET(XE2_NODE_ENABLE_MASK, fuse3);
+		u32 mirror_l3bank_enable = xe_mmio_read32(mmio, MIRROR_L3BANK_ENABLE);
+		u32 bank_val = REG_FIELD_GET(XE3_L3BANK_ENABLE, mirror_l3bank_enable);
+
+		bitmap_from_arr32(per_node, &bank_val, 32);
+		gen_l3_mask_from_pattern(xe, l3_bank_mask, per_node, 32,
+					 meml3_en);
+	} else if (GRAPHICS_VER(xe) >= 20) {
 		xe_l3_bank_mask_t per_node = {};
 		u32 meml3_en = REG_FIELD_GET(XE2_NODE_ENABLE_MASK, fuse3);
 		u32 bank_val = REG_FIELD_GET(XE2_GT_L3_MODE_MASK, fuse3);
@@ -155,7 +165,7 @@ load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
 		xe_l3_bank_mask_t per_node = {};
 		xe_l3_bank_mask_t per_mask_bit = {};
 		u32 meml3_en = REG_FIELD_GET(MEML3_EN_MASK, fuse3);
-		u32 fuse4 = xe_mmio_read32(&gt->mmio, XEHP_FUSE4);
+		u32 fuse4 = xe_mmio_read32(mmio, XEHP_FUSE4);
 		u32 bank_val = REG_FIELD_GET(GT_L3_EXC_MASK, fuse4);
 
 		bitmap_set_value8(per_mask_bit, 0x3, 0);
-- 
2.45.0

