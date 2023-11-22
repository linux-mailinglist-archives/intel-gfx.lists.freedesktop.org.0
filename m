Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BADCF7F3D19
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 06:05:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920D010E06A;
	Wed, 22 Nov 2023 05:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9851010E06A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 05:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700629499; x=1732165499;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YT4RYcBV85BFIe0rhsPzTi70e4jsF6SGjC048Y0tDHk=;
 b=ZpnG0LeJ7DfqJxesXVDfUwGKi6A7u8us/qsjOnVPl88ax8Asq8/Gwj4E
 UcdmRGxBL9stAqg11IsQs5GvL0fA8gWH6pAk+XuaDvzh0TNmj4+TMZgnB
 oOHFGyi0azvJ7UQIOdDIDDsBQ2DgoCeRqD+iGo1KRm+8HNiqaf4+nc4Vm
 VC+0fTkMLMVz86V9t0CRU03kDjOZa/uZm95KCR3cgK2E4OVu4ESXJFNIy
 YiAsLx93UyF44wH9FOBNP9LwtNHkJ399iAExHkU5+ND05ybSOgODcQQJI
 4Fnx1d581B47H/+919z68qHXm2aQ/UNPIRDeE/mPOqVwsI8HOvKnt1F83 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="390846787"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="390846787"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 21:02:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="15119720"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 21:02:24 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Nov 2023 10:32:06 +0530
Message-Id: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix Wa_22016670082
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

Wa_22016670082 is applicable on GT and Media.
For GT, an MCR register is required instead of MMIO.

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9de41703fae5..02d1d41fcfe1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -530,6 +530,7 @@
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
 #define GEN12_SQCNT1				_MMIO(0x8718)
+#define SQCNT1					MCR_REG(0x8718)
 #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
 #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
 #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0..34855e1ea1e6 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
-	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+	wa_mcr_write_or(wal, SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
-- 
2.34.1

