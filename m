Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904446BDA1F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644FC10E370;
	Thu, 16 Mar 2023 20:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C887610E2FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998390; x=1710534390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kiq25Q4TZOmD+kaz9Q529Z7dKonnWSc/Ngng0U67ucE=;
 b=Jv7NO9Apzb49RaKVk9gvzsYkzd7TsIQJiNU7XB14xuN7cU+vk3sRayrT
 UsPJnNPK8EWKn+PBYyTbOB5z5IYzYCc1AyVpMRdjDsuuFXO1yRbhY2jh6
 ArdEKLmvvzRewq7E0vGhuqxfcGbxrlO5kOdm/BIToMcgDK5PiJZ5/iKbA
 M7iJeC7Q9TBcLoC9kF61TJl6ajzrePgFml7EPJG4DgPAj7bkq1lAckIJp
 tAO/LrvIve1o0efWQdp+eUDB2AfcBWNWng5+LDY8SHPbNEimLvnKLJsAd
 cXr+QsMJ9vSNGSN2pMdmrPaCRfFYHClMydgSiRVZKGUTKBuL3vAI9qaUR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475493"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475493"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031890"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031890"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:29 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:49 -0700
Message-Id: <20230316202549.1764024-6-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/mtl: WA to clear RDOP clock gating
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Haridhar Kalvala <haridhar.kalvala@intel.com>

Workaround implementation to clear RDOP clock gating.

Bspec: 33453

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e7ee24bcad89..92cfc71324c4 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1703,6 +1703,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		/* Wa_18018781329 */
 		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+
+		/* Wa_14015795083 */
+		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
 
 	/*
-- 
2.34.1

