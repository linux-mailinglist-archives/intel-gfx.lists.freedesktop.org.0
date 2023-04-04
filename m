Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A13C6D6AB0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 19:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A1410E18E;
	Tue,  4 Apr 2023 17:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9560010E18E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 17:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680629657; x=1712165657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dnVlIVRoGbmir80fpBVTdDdmqPDrMJ5xDSSjUy+VZ60=;
 b=C4tz9952NAlj/+QVqcSJ+ifyVkCs9TVkb68DGTTZBXg8UJ5+hBKvyHLm
 t10W1ISvvbynK5tt7LWs+xwXwtthggmS+dYcfaEH2QcFyxyktIDWVmlUc
 3VUgYtXj+LLbdlZJW7z0/8uhIhdTe5F/yITY9rvAfQ+57RjNsUVC7SElF
 rN1dCCgED7B7gCcctMTkKNIQebq59rlnvSNWWaxl8f/fi1BpSB2FYoP9U
 H5lrT71McScFcoU7/1GxKfOwHDV2scYkOXHPJzW9q34gu7/SHIP8ddFR9
 bV/UlFA6B4F4X8eWXI9IO54/meAjlBZfzLA5CwNVC9F/LL5asX25uZwSQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="322641223"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="322641223"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:34:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="755715082"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="755715082"
Received: from haridhar-ms-7d25.iind.intel.com ([10.190.238.92])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 10:34:15 -0700
From: Haridhar Kalvala <haridhar.kalvala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 23:02:20 +0530
Message-Id: <20230404173220.3175577-1-haridhar.kalvala@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_14017856879
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
Cc: matthew.d.roper@intel.com, balasubramani.vivekanandan@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wa_14017856879 implementation for mtl.

Bspec: 46046

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 35a4cfac2d20..492b3de6678d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1177,7 +1177,9 @@
 #define   THREAD_EX_ARB_MODE_RR_AFTER_DEP	REG_FIELD_PREP(THREAD_EX_ARB_MODE, 0x2)
 
 #define HSW_ROW_CHICKEN3			_MMIO(0xe49c)
+#define GEN9_ROW_CHICKEN3			MCR_REG(0xe49c)
 #define   HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE	(1 << 6)
+#define   MTL_DISABLE_FIX_FOR_EOT_FLUSH		REG_BIT(9)
 
 #define GEN8_ROW_CHICKEN			MCR_REG(0xe4f0)
 #define   FLOW_CONTROL_ENABLE			REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1c8e0e91a2fe..6ea453ddd011 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2971,6 +2971,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
+	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
+		/* Wa_14017856879 */
+		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
+
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
 		/*
-- 
2.25.1

