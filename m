Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 828D75B13F3
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AC910E94E;
	Thu,  8 Sep 2022 05:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095B310E94D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614340; x=1694150340;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hxYlDjXDoq2PZaO3BvmFEZrcLaPgJ2qf1AOM0+MKUcI=;
 b=avvcPILhbD4wKcTl25DpIzVhE3/ybIp/WywOoR1MWfhTzci+eCIioA49
 fxcKqwxnuHtI3747SIC2oRDixGQFbyOR2fRLpXJjCoja2H3gK7KIM+Ehs
 z8hIC9sl2CLdTXqYHY6MEw9gc0IBZ0pHfG27YSJEQpno/9crUNcIqdidJ
 CrnJvgCpTxsGePEmU6FfYq/l1v3dcGhLPFtzjbwXY/GubtIWGWAWuJa63
 +Dh4ZctAm8kqy72uKfkyINbKYMyrALkpsIJ7sfA7QJJkA9zx9QgXJ2c2u
 lrzPFIH0WuEf93DOoPhvjufnvBulFbIvWXsOxmmddZcQn3J969o585Piv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298407844"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="298407844"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="790308426"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:18:58 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:18:54 -0700
Message-Id: <d049d5fd073574361c37ea6b6ce3294776435e8c.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/uncore: Add GSI offset to uncore
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

From: Matt Roper <matthew.d.roper@intel.com>

DO NOT REVIEW, FOR COMPILING ONLY

GT non-engine registers (referred to as "GSI" registers by the spec)
have the same relative offsets on standalone media as they do on the
primary GT, just with an additional "GSI offset" added to their MMIO
address.  If we store this GSI offset in the standalone media's
intel_uncore structure, it can be automatically applied to all GSI reg
reads/writes that happen on that GT, allowing us to re-use our existing
GT code with minimal changes.

Forcewake and shadowed register tables for the media GT (which will be
added in a future patch) are listed as final addresses that already
include the GSI offset, so we also need to add the GSI offset before
doing lookups of registers in one of those tables.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
 drivers/gpu/drm/i915/intel_uncore.c      | 10 ++++++++--
 drivers/gpu/drm/i915/intel_uncore.h      | 22 ++++++++++++++++++++--
 3 files changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 0e139f7d75ed..82dc28643572 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -274,6 +274,7 @@ struct intel_gt_definition {
 	enum intel_gt_type type;
 	char *name;
 	u32 mapping_base;
+	u32 gsi_offset;
 	intel_engine_mask_t engine_mask;
 };
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 9b81b2543ce2..5b258b57ca02 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -918,6 +918,9 @@ find_fw_domain(struct intel_uncore *uncore, u32 offset)
 {
 	const struct intel_forcewake_range *entry;
 
+	if (IS_GSI_REG(offset))
+		offset += uncore->gsi_offset;
+
 	entry = BSEARCH(offset,
 			uncore->fw_domains_table,
 			uncore->fw_domains_table_entries,
@@ -1133,6 +1136,9 @@ static bool is_shadowed(struct intel_uncore *uncore, u32 offset)
 	if (drm_WARN_ON(&uncore->i915->drm, !uncore->shadowed_reg_table))
 		return false;
 
+	if (IS_GSI_REG(offset))
+		offset += uncore->gsi_offset;
+
 	return BSEARCH(offset,
 		       uncore->shadowed_reg_table,
 		       uncore->shadowed_reg_table_entries,
@@ -1985,8 +1991,8 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 
 	d->uncore = uncore;
 	d->wake_count = 0;
-	d->reg_set = uncore->regs + i915_mmio_reg_offset(reg_set);
-	d->reg_ack = uncore->regs + i915_mmio_reg_offset(reg_ack);
+	d->reg_set = uncore->regs + i915_mmio_reg_offset(reg_set) + uncore->gsi_offset;
+	d->reg_ack = uncore->regs + i915_mmio_reg_offset(reg_ack) + uncore->gsi_offset;
 
 	d->id = domain_id;
 
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index b1fa912a65e7..23fb8bcd2792 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -135,6 +135,16 @@ struct intel_uncore {
 
 	spinlock_t lock; /** lock is also taken in irq contexts. */
 
+	/*
+	 * Do we need to apply an additional offset to reach the beginning
+	 * of the basic non-engine GT registers (referred to as "GSI" on
+	 * newer platforms, or "GT block" on older platforms)?  If so, we'll
+	 * track that here and apply it transparently to registers in the
+	 * appropriate range to maintain compatibility with our existing
+	 * register definitions and GT code.
+	 */
+	u32 gsi_offset;
+
 	unsigned int flags;
 #define UNCORE_HAS_FORCEWAKE		BIT(0)
 #define UNCORE_HAS_FPGA_DBG_UNCLAIMED	BIT(1)
@@ -294,19 +304,27 @@ intel_wait_for_register_fw(struct intel_uncore *uncore,
 					    2, timeout_ms, NULL);
 }
 
+#define IS_GSI_REG(reg) ((reg) < 0x40000)
+
 /* register access functions */
 #define __raw_read(x__, s__) \
 static inline u##x__ __raw_uncore_read##x__(const struct intel_uncore *uncore, \
 					    i915_reg_t reg) \
 { \
-	return read##s__(uncore->regs + i915_mmio_reg_offset(reg)); \
+	u32 offset = i915_mmio_reg_offset(reg); \
+	if (IS_GSI_REG(offset)) \
+		offset += uncore->gsi_offset; \
+	return read##s__(uncore->regs + offset); \
 }
 
 #define __raw_write(x__, s__) \
 static inline void __raw_uncore_write##x__(const struct intel_uncore *uncore, \
 					   i915_reg_t reg, u##x__ val) \
 { \
-	write##s__(val, uncore->regs + i915_mmio_reg_offset(reg)); \
+	u32 offset = i915_mmio_reg_offset(reg); \
+	if (IS_GSI_REG(offset)) \
+		offset += uncore->gsi_offset; \
+	write##s__(val, uncore->regs + offset); \
 }
 __raw_read(8, b)
 __raw_read(16, w)
-- 
2.34.1

