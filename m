Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2241D3D3F03
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 19:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F7C6FBA8;
	Fri, 23 Jul 2021 17:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C365D6FB9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 17:43:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="275742972"
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="275742972"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,264,1620716400"; d="scan'208";a="463229069"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 10:42:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 10:42:20 -0700
Message-Id: <20210723174239.1551352-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210723174239.1551352-1-matthew.d.roper@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/30] drm/i915/xehpsdv: Define steering
 tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Define and initialize the MMIO ranges for which XeHP SDV requires MSLICE
and LNCF steering.

Bspec: 66534
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c          | 19 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++--
 2 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 0ee33a31a3cd..4c9b5d2725e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -89,6 +89,20 @@ static const struct intel_mmio_range icl_l3bank_steering_table[] = {
 	{},
 };
 
+static const struct intel_mmio_range xehpsdv_mslice_steering_table[] = {
+	{ 0x004000, 0x004AFF },
+	{ 0x00C800, 0x00CFFF },
+	{ 0x00DD00, 0x00DDFF },
+	{ 0x00E900, 0x00FFFF }, /* 0xEA00 - OxEFFF is unused */
+	{},
+};
+
+static const struct intel_mmio_range xehpsdv_lncf_steering_table[] = {
+	{ 0x00B000, 0x00B0FF },
+	{ 0x00D800, 0x00D8FF },
+	{},
+};
+
 static u16 slicemask(struct intel_gt *gt, int count)
 {
 	u64 dss_mask = intel_sseu_get_subslices(&gt->info.sseu, 0);
@@ -113,7 +127,10 @@ int intel_gt_init_mmio(struct intel_gt *gt)
 			(intel_uncore_read(gt->uncore, GEN10_MIRROR_FUSE3) &
 			 GEN12_MEML3_EN_MASK);
 
-	if (GRAPHICS_VER(gt->i915) >= 11 &&
+	if (IS_XEHPSDV(gt->i915)) {
+		gt->steering_table[MSLICE] = xehpsdv_mslice_steering_table;
+		gt->steering_table[LNCF] = xehpsdv_lncf_steering_table;
+	} else if (GRAPHICS_VER(gt->i915) >= 11 &&
 		   GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50)) {
 		gt->steering_table[L3BANK] = icl_l3bank_steering_table;
 		gt->info.l3bank_mask =
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 48f794f4a1af..9c8af022bca0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -933,7 +933,6 @@ icl_wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	__add_mcr_wa(i915, wal, slice, subslice);
 }
 
-__maybe_unused
 static void
 xehp_init_mcr(struct intel_gt *gt, struct i915_wa_list *wal)
 {
@@ -1135,10 +1134,18 @@ dg1_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 			    VSUNIT_CLKGATE_DIS_TGL);
 }
 
+static void
+xehpsdv_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
+{
+	xehp_init_mcr(&i915->gt, wal);
+}
+
 static void
 gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 {
-	if (IS_DG1(i915))
+	if (IS_XEHPSDV(i915))
+		xehpsdv_gt_workarounds_init(i915, wal);
+	else if (IS_DG1(i915))
 		dg1_gt_workarounds_init(i915, wal);
 	else if (IS_TIGERLAKE(i915))
 		tgl_gt_workarounds_init(i915, wal);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
