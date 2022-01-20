Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8C4495713
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 00:42:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490F110E17F;
	Thu, 20 Jan 2022 23:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8B710E17D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 23:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642722121; x=1674258121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Gwp7SLIKmMucC6vKD+gYVkLL7tfVBfWenBqgUkOEpA=;
 b=C5LDB9/lGc9KyWrW7uzbN3MBllEhxnoPYoO7aYaMtYrjlbP8BV01c4R4
 SI/YWuAkPVq+O4QpfzM55VkfcsTpZjdfgez/sDx5W3J6odrR91zztTA+h
 DOfFBDJQOLgiEFGUXW+mGTgQOqSvRbyzLLdgNQikhPjtx/XCRKciTihuX
 YjKgFW98I8vZjyv81DctLr76sy/AE5thxjwFNWqjYaZ8hX6Fce6aBzo1y
 fTGNVVV0nPfD72wTXAYC7fdxDrCe1nasZOId9MZq4Lc+gHgTaJM4ftQLX
 twGvDMDI1C91ZHg/1aoejffSRUicAJJvNObi8HVLFosSDk+3InUmnwVqk g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="226190248"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="226190248"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 15:42:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="478010236"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 15:42:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 15:41:47 -0800
Message-Id: <20220120234147.1200574-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_18018781329
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

A few more MOD registers need to be programmed on DG2.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 drivers/gpu/drm/i915/i915_reg.h             | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6a4372c3a3c5..748b2daf043f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1509,6 +1509,12 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 */
 	wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 	wa_write_or(wal, GEN12_SQCM, EN_32B_ACCESS);
+
+	/* Wa_18018781329:dg2 */
+	wa_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
+	wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 460bce5c544d..d587257f392a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -339,6 +339,10 @@
 #define   TAG_BLOCK_CLKGATE_DIS		REG_BIT(7)
 
 #define GEN12_MERT_MOD_CTRL		_MMIO(0xcf28)
+#define RENDER_MOD_CTRL			_MMIO(0xcf2c)
+#define COMP_MOD_CTRL			_MMIO(0xcf30)
+#define VDBX_MOD_CTRL			_MMIO(0xcf34)
+#define VEBX_MOD_CTRL			_MMIO(0xcf38)
 #define   FORCE_MISS_FTLB		REG_BIT(3)
 
 #define GAB_CTL				_MMIO(0x24000)
-- 
2.34.1

