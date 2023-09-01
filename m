Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B3C78F7BA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 06:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD8210E04A;
	Fri,  1 Sep 2023 04:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF7410E04A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 04:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693544231; x=1725080231;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A+vMwxqlj43b6qu0IFF2MkSoZKCMgkb47KOfwsNaRRs=;
 b=g3CY+beM1W0L1du1r9GIIcfBoM0me3jojzbhxR7ynxqjREwHBDph3Wps
 6mvc5tpjJuY36CEIBEiTCYZNj/E3Xc9VbhxB5n1MsxJbqtMWwxreV3az7
 XuMQ4WQSSNBIiPLfk6nOrLxdoUxbgKUZ7HiNKmkQEv/jHv30HXLcwb90x
 eHpxdTwewPcCJYKO3F91PuPp9WJZx02ZY/xmU9sjbGqJXsBw8QccB4VhB
 c25/ujyvIqLdBDDMZ3cvIpmg/QaT+AoogBiMjyg/qHDDDSDcxT1gcEKjG
 WcJ7rBmuD7wudnh8SKJK7xfbBeyE8IN1Zm1g7nrrfghWog1uJlHZIsR9F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="379921269"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="379921269"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 21:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805291102"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="805291102"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 21:57:09 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 10:27:00 +0530
Message-Id: <20230901045700.2553994-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disables Atomic-chaining of Typed Writes.

BSpec: 54040
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0e4c638fcbbf..a00ff51c681d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1218,6 +1218,8 @@
 
 #define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
 #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
+#define   DIS_ATOMIC_CHAINING_TYPED_WRITES	REG_BIT(3)
+
 #define ICL_HDC_MODE				MCR_REG(0xe5f4)
 
 #define EU_PERF_CNTL2				PERF_REG(0xe658)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 864d41bcf6bb..70071ead0659 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2327,6 +2327,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
 	}
 
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
+	    IS_DG2(i915)) {
+		/* Wa_14015150844 */
+		wa_mcr_add(wal, XEHP_HDC_CHICKEN0, 0,
+			   _MASKED_BIT_ENABLE(DIS_ATOMIC_CHAINING_TYPED_WRITES),
+			   0, true);
+	}
+
 	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
 		/* Wa_22014600077:dg2 */
 		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-- 
2.34.1

