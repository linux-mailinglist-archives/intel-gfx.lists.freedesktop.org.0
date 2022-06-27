Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2309155B9A5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 15:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753CF11A681;
	Mon, 27 Jun 2022 13:00:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E944A11A681
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 13:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656334809; x=1687870809;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oaZ6afm8onep+f0nOCPr8EjklEjKLX8Wy8t95/jgvFI=;
 b=XsYUq34mPjIs6k8jQtayyJJUokgU6kVEhIx43tGufRozQuN7Me9PzZDG
 RsJX2l0meSid8B4/DbU3MzNOr8cWXdQWwifjIRx773FBg05i7/nOIJfRn
 nNi2MyoGZPqIVfr3tj9qyRdbmD5D1uhaKLWbQ9UHy8pwBwFptU/j2ZFsF
 UCGpHJxsyvoFtJhvqYomvsaq9C5bX1oza08qmuMgLfklqPgXL4/cP5p6t
 FlThWY7kJ1mdguutc03bEEfO+W3LoOak/s5FlHfg195SDDBRPLX8cC3b6
 sckaF9d8EoXYrx7ae+94k6w2qkf3BPtxO9xg7N6x3ikxVw7K/Chctuah+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="261856101"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="261856101"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 06:00:09 -0700
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="594294051"
Received: from kkuzniew-mobl2.ger.corp.intel.com (HELO uxy.cgates.eltek)
 ([10.249.131.145])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 06:00:08 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jun 2022 15:59:28 +0300
Message-Id: <20220627125928.177845-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add performance workaround
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

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 9 insertions(+)

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
index 3213c593a55f4..4d80716b957d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -575,6 +575,11 @@ static void dg2_ctx_gt_tuning_init(struct intel_engine_cs *engine,
 	       FF_MODE2_TDS_TIMER_MASK,
 	       FF_MODE2_TDS_TIMER_128,
 	       0, false);
+	wa_write_clr_set(wal,
+			 RT_CTRL,
+			 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
+			 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
+					NUMBER_OF_STACKIDS_512));
 }
 
 /*
-- 
2.34.1

