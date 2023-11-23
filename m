Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3927F5842
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0607910E0CE;
	Thu, 23 Nov 2023 06:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C5D10E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 06:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700721241; x=1732257241;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aaA4eLm1Uw1NKt7pZaE7s+QD0W85pacKQwMcfIRVmFs=;
 b=lQFk+akvhA2ddXGHcsjtlwguoa3X+457r/rU/eAqx+fx8HVYO2sW5SuF
 P4k4UBMOY2zLSzT3tFqK29WBUJuR72GZxUfWSSD73ScpOHUr5Q9alq0b4
 9ipraaa+xbWQJx7S7OoQQ2QCwCHAIVz6BUgNnEgP1vo/wAofrnd19gNnN
 nNSZS5jYpJHBbk1G+Z/mLG6wvfyRnvpmJSYlMUtYw8E8gYamYTTme4fcj
 ZMBZPafYMiuuiHPqKBy0oU36xNUeIfIiPK4ZLv22ZswRY5SRGYHfR2PbY
 7rFOtZfVTgcN8JBhRAzulfXjeVVpYa2X2Dyx8POWG7JXkCC2QJwOny0TA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="478408205"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="478408205"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:34:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="15236328"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:33:59 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 12:03:38 +0530
Message-Id: <20231123063338.3354454-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
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

v1: Introduce the fix.
v2: Minor naming convention change and adding a TODO
v3: Enhancing the TODO

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 9de41703fae5..b2a245e3e77f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -529,7 +529,9 @@
 
 #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
 
+/* TODO: Evaluate MCR usage for both Media and GT instances of SQCNT1 register. */
 #define GEN12_SQCNT1				_MMIO(0x8718)
+#define GEN12_GT_SQCNT1				MCR_REG(0x8718)
 #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
 #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
 #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0..dbf0c6e536f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
-	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
+	wa_mcr_write_or(wal, GEN12_GT_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
-- 
2.34.1

