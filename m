Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825456E923C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 13:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D6F710E0B6;
	Thu, 20 Apr 2023 11:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F56910E0B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 11:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681989406; x=1713525406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vQ8IbJOxSj/Mp2aoHpME6ldDAZEpxN0jgSqJKLGGfMg=;
 b=cYTW5KdTSZj7NxmgV1UWvqHyPzWy+n1kJHtBAZjz2OmQK7uo/LMBV5pi
 h7f6nNKM2SN0WuumMNbW2ay4ry9moI5K9l+GdGgaSpmxi/t4gDLIOhNu9
 4UiDPXk879sEIpGZk+KuEBlDIhXgDNtegQeqm8sY3MP3OxQFsjz//k38b
 vuMDYS0vBpZzKJ/+ub1h7ZlR6kuPeOvyQaOvfcHfCxtSn8fR1AyGrXJQ6
 lgXx7j07K51aIziNbzGVD7OP/58T+xnACbJ4xhr0GU0Och2crWr9CxiB/
 v+jleNEQtDDV3ki/Du5hwiH+KR3qlquS57mtY7VV/r0mCy429ui3TEmOj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="345712483"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="345712483"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="691877967"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="691877967"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga002.jf.intel.com with ESMTP; 20 Apr 2023 04:16:43 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 16:51:23 +0530
Message-Id: <20230420112123.3486469-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add workaround 14018778641
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

WA 18018781329 is applicable now across all MTL
steppings.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 312eb8b5f949..c73d2b5410d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1695,17 +1695,22 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
-	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
-		/* Wa_14014830051 */
-		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
+	/* Wa_14018778641: MTL */
+	if (IS_METEORLAKE(gt->i915)) {
 
 		/* Wa_18018781329 */
 		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
 
-		/* Wa_14015795083 */
-		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+		if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
+		    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
+			/* Wa_14014830051 */
+			wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
+
+			/* Wa_14015795083 */
+			wa_write_clr(wal, GEN7_MISCCPCTL,
+				     GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
+		}
 	}
 
 	/*
@@ -1718,7 +1723,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
+	/* Wa_14018778641: MTL */
+	if (IS_METEORLAKE(gt->i915)) {
 		/*
 		 * Wa_18018781329
 		 *
-- 
2.25.1

