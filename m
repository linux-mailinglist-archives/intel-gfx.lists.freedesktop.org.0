Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6196E79C83F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 09:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A3210E39F;
	Tue, 12 Sep 2023 07:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4044E10E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 07:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694504138; x=1726040138;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gm7CwiMJUE7HcMq0CeGM6p3h5RPdqSbG5X8QLjFNbhc=;
 b=IydUl8Y0VHWtnNnwt8GG8KiLq7GTBLKN8P9p4dPXpKCWUaVB35LJPvBA
 gLAkYSqEdzB7A9OlAXDJ3rAZlIprDuJ79ijBkZUK/7DzTwqYZrApVvPDn
 wftX8Zca0hbuyH8V4dbhRxXBz/YSMtuiad76fuThucSnebgnGbEB3V90W
 WL1nMhHK5xr0976hQzYrB6P62qfpKeb50/5rY9234MEddTSoetdGsYqGg
 2bFDRzbpNqe1EcbEA9U98ycRqwvTpq9sdTPWqWJyWLRjNYcPrbZ051AIZ
 snpLvUnFkA6wuCjIR4GbNGeiuc/ZSmwi+RI6I8Ho1XCaz2GrI367M0B4m g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="368556763"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="368556763"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 00:35:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="813717831"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="813717831"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 00:35:36 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 09:35:21 +0200
Message-Id: <20230912073521.2106162-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some DG2 firmware locks this register for modification. Using wa_add
with read_mask 0 allows to skip checks of such registers.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 70071ead0659cc..1d1474ad945e0c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	/* Wa_14014830051:dg2 */
 	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
 
-	/* Wa_14015795083 */
-	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+	/* Wa_14015795083
+	 * Skip verification for possibly locked register.
+	 */
+	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
+	       0, 0, false);
 
 	/* Wa_18018781329 */
 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
-- 
2.34.1

