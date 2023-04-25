Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1A86EE759
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 20:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3171510E083;
	Tue, 25 Apr 2023 18:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A10410E083
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 18:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682446128; x=1713982128;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+Mjah5ZUti8jwOGZ2V5Hs4MAiSOx5nmvyO3haULk+GE=;
 b=HdaKyn/m4vuCB1/A5vVLxGdZ8aTe5NFrpNHE+FcP22aZtOBKYnFCDatS
 0jOzZfSfeIFa+nd2vAWLsNnJTkq3bHmRRJ2WjZsNMJoTlmp4YYs5uLXgW
 dnikVZTx65c1vV8EAMUDn/GuUFqGLwlcTWooZvGdWEmYPLIEYg42/ZRDF
 xkgMOMpa6dWHF9Cesp+5QMfEIAbtbd3mGylQk6b18vNtI2kvxHtCMUtiw
 7jXXXBCT2HR2PcawGknumKN2MCZ9a2sraMinKdXxXKdaGoskzcp5QIuvv
 LwReMN1IxjXJuThSvz9QptqmhrUdGBZ9AIHFMKwM6bGCNkTFLrr/N/ipx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="374807995"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="374807995"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 11:08:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724102602"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="724102602"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 11:08:47 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 11:07:33 -0700
Message-Id: <20230425180733.800433-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Implement Wa_14019141245
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable strict RAR to prevent spurious GPU hangs.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index e8c3b762a92a..8fb228303744 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -529,6 +529,11 @@
 
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
+#define GEN12_SQCNT1				_MMIO(0x8718)
+#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
+#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
+#define	  GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
+
 #define XEHP_SQCM				MCR_REG(0x8724)
 #define   EN_32B_ACCESS				REG_BIT(30)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 312eb8b5f949..879baa397279 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1708,6 +1708,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
 
+	/* Wa_14019141245 */
+	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+
 	/*
 	 * Unlike older platforms, we no longer setup implicit steering here;
 	 * all MCR accesses are explicitly steered.
diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
index ba103875e19f..e5ac7a8b5cb6 100644
--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
@@ -134,10 +134,6 @@
 #define GDT_CHICKEN_BITS    _MMIO(0x9840)
 #define   GT_NOA_ENABLE	    0x00000080
 
-#define GEN12_SQCNT1				_MMIO(0x8718)
-#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
-#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
-
 /* Gen12 OAM unit */
 #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
 #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
-- 
2.34.1

