Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 031B256152C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 10:35:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618AB1135C8;
	Thu, 30 Jun 2022 08:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEFA71135C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 08:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656578116; x=1688114116;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EhMeL0kwJEO3A+n2JEQADxIlv/UHJkH0GBxsZN+J+5U=;
 b=QuxO5COBAsB/kFWgRRnmfLWf9l8Me00hYW+B0taJLV5+9pC4OuJdic4G
 FtQuSljxqt/4gTyqtVi2oDKMvgMXTdmyMXIK2dvN65I7kZCe9zkcPmq+r
 MVtQnn0CxafCCiEj0UOPUrtxHjeLsByWE8HHBFVjA5wkkVteiUltvYQrQ
 2VT4Xz3NlyEpjegN/FNSxmxQdGB3o+f5mhjoIkIPRkMwfB6StxLSI9d6o
 U/on/xplm0PlCp+edTYPh2bg9ATVnuY3okefaSCpzaMWuRB4GC5GZSUHJ
 Gz1olN81ojs/qJJwzB7gELQa+wQiy6lOi8WzUU9tqjFt1NrEkK4lQ223v w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="262084599"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="262084599"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 01:35:16 -0700
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="595605520"
Received: from rjerecze-mobl.ger.corp.intel.com (HELO uxy.intel.com)
 ([10.249.159.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 01:35:15 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 11:35:08 +0300
Message-Id: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/dg2: Add performance workaround
 18019455067
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

The recommended number of stackIDs for Ray Tracing subsystem is 512
rather than 2048 (default HW programming).

v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)

v3: Move programming to general_render_compute_wa_init() (Matt)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 07ef111947b8c..12fc87b957425 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1112,6 +1112,10 @@
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
 
 #define RT_CTRL					_MMIO(0xe530)
+#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK	REG_GENMASK(6, 5)
+#define   NUMBER_OF_STACKIDS_512		2
+#define   NUMBER_OF_STACKIDS_1024		1
+#define   NUMBER_OF_STACKIDS_2048		0
 #define   DIS_NULL_QUERY			REG_BIT(10)
 
 #define EU_PERF_CNTL1				_MMIO(0xe558)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3213c593a55f4..ea674e456cd76 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2737,6 +2737,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
 		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 	}
+
+	if (IS_DG2(i915)) {
+		/* Performance tuning for Ray-tracing */
+		wa_write_clr_set(wal,
+				 RT_CTRL,
+				 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
+				 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
+						NUMBER_OF_STACKIDS_512));
+	}
 }
 
 static void
-- 
2.34.1

