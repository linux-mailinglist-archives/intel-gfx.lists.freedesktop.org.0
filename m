Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00C955535F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 20:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82B010EE6F;
	Wed, 22 Jun 2022 18:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11ABF10EE6F
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 18:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655923126; x=1687459126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s5Ryf5t9Bmfi7J49mWsKTUlkC9UHyy9xXQC+JpxrduM=;
 b=Wk3v6eewdRk963yUA74GqBE9bc9Xi/YFqcu/q1PBw/V9DCxNQ4TJeY0+
 BDRLF9ppYScZdpeBt1mVjTaY6qUif+bXS+u+VBIbVF9Y/6IxQdrt3qL5v
 6Uu8kYUPtfIodHHKE5ceVbRcmpc0qaBTieUoIFaHD81yjbzVDS0Y+3r0T
 uxc/BbxNTEAMosV6ehFJanFdDc5hHd99vRitLezWfpZxpQnn7jLhD09db
 v9tc8VLG9B1vcInmVunvQPL3TdMm/PEVKkxtY7Dqhg4L3Ee1EUecYZSKH
 d+XxzeY7OR0KjYFgoQ1Etz5GtUVuiC3q0A2tSk82nzmWUwPcs22Uwi0vf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="342197327"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="342197327"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 11:38:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="730489487"
Received: from gkardara-mobl1.ger.corp.intel.com (HELO uxy.cgates.eltek)
 ([10.249.130.16])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 11:38:43 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 21:38:36 +0300
Message-Id: <20220622183836.13825-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Add performance workaround
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

This is the recommended value for optimal performance.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 07ef111947b8c..a50b5790e434e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1112,6 +1112,9 @@
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
 
 #define RT_CTRL					_MMIO(0xe530)
+#define   NUMBER_OF_STACKIDS_512		(2 << 5)
+#define   NUMBER_OF_STACKIDS_1024		(1 << 5)
+#define   NUMBER_OF_STACKIDS_2048		(0 << 5)
 #define   DIS_NULL_QUERY			REG_BIT(10)
 
 #define EU_PERF_CNTL1				_MMIO(0xe558)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3213c593a55f4..a8a389d36986c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2106,6 +2106,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 * performance guide section.
 		 */
 		wa_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
+
+                /* Wa_18019455067:dg2 / BSpec 68331/54402 */
+                wa_write_or(wal, RT_CTRL, NUMBER_OF_STACKIDS_512);
 	}
 
 	if (IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
-- 
2.32.0

