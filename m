Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B68734EDB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 10:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF7510E1C6;
	Mon, 19 Jun 2023 08:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39C7710E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 08:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687165050; x=1718701050;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fD/CZeABIGKQnbPIJX+T3hfAqkEh3yNTGbZpYl61qj8=;
 b=m3UVUoaxKj3XyqL6KW22Ch4vB7Uvj0gnosGNprcDn2pT62NXGaQ31XRN
 9hVBWXqME/DmW1+CSF8hQSZn1bhX+Z43ud5V/iEqIJdjE0a9AndtE2J7F
 6bHp1Z9LIpY+V7ClXiM9336d8p2beOrxZrc86qn0QgFhLqp0OXAeJfvV6
 rK/fQ6Re+ssG+uKWV6zPzPVwLxH0rmkzT9uKwHiDW74aL8LsKr6LBzRVn
 iz7E1/dRsIga1n/Sg6c/lqfMCeOpQMtFeYauFKTGSfQiv+lXCbfS1HJ8R
 2eujITQE1OXiEvSqMTPmJ7kLzpOSWnLj470hVLRyy8uP0VZwT5G911B2o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="358456871"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="358456871"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 01:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="713597183"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="713597183"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga002.jf.intel.com with ESMTP; 19 Jun 2023 01:57:28 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jun 2023 14:33:26 +0530
Message-Id: <20230619090326.3039040-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14018778641
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

WA 14018778641 needs an update after recent
performance data on MTL, aligning driver here with
HW WA update.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4d2dece96011..5bef3fe0cd74 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1710,7 +1710,6 @@ static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
 	/* Wa_14018778641 / Wa_18018781329 */
-	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
 	/* Wa_22016670082 */
@@ -1743,8 +1742,6 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	 * GT, the media GT's versions are regular singleton registers.
 	 */
 	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
-	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
-	wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
 
 	debug_dump_steering(gt);
 }
-- 
2.25.1

