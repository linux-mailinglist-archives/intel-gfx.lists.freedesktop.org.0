Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F036F8CE2
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 01:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D0710E065;
	Fri,  5 May 2023 23:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74D110E065
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 23:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683330420; x=1714866420;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CnShKHsFIGjzBTlTMuOJkUQYlB4XXSb1aZpBuJ8kf2M=;
 b=nuAZeAKXP2ljNg0lrEHw6RKPKeYaK8wquWq2PxGz71sErHoNgQnjcWtq
 MZAj02UvnK3L+ABZmuySmI9lv8hnRYDXsj7MsKryiAWCLGy57k/BLeXkJ
 h0ISYhl5Bvj0xDOvEXSaox4UGbGeLIfeGYfM2XSvStF0npewJglVU3uVS
 xuKxWq3oSupJVgPVYBc6fF92BRPkZdJh0e1lTiylUZSPRR+RlCtKq4itK
 m9zjJEKmqYSiygzYp+IWURWTLBhQ5jbz/UgM0jYktAWFE+NgXEUgYzp1x
 1W0yzfG76cuOfuGfGWpPbbhDBgHLfyMTYnNBVzVMKoj0U1VcuVSJ1YJoq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="329672642"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="329672642"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 16:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="675299458"
X-IronPort-AV: E=Sophos;i="5.99,253,1677571200"; d="scan'208";a="675299458"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 16:46:57 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 16:45:44 -0700
Message-Id: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
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

Fixes the right lineage number for the workaround.

Fixes: a7fa1537b791 ("drm/i915/mtl: Implement Wa_14019141245")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index ad9e7f49a6fa..786349e95487 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1699,7 +1699,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
-	/* Wa_14019141245 */
+	/* Wa_22016670082 */
 	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
 
 	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-- 
2.34.1

