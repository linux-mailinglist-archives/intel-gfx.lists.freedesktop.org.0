Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8954FFF35
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DD610E437;
	Wed, 13 Apr 2022 19:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E634510E437
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878058; x=1681414058;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CMPtV1Pn93YzzLyn8FzfA5o5C1GJig4FpIjzm7UjM0E=;
 b=nNS1iCEs96WIhnxo7VqUOFMQ0ug+tL0/OMf5pthzhDlxl5w3yKipILR9
 MYHYZksqp7JpOLiQzE8STU4SEoKNELs0SrILmeZ8NZcibn57h9sVmOorB
 FFu5CyylQRsyt9RSQZaZ5C2dniWihtzcyaYoGOU5NOGSrPUNSCBCDrIUU
 78GIBAtqJzI/X4CJPSwy9tRm0VUAoUCNVD4oP+06Kc8QKl45ncv5l5kHf
 ZgiJk3Qw+bIUVHe+YqQjD5qC4t2Tqq+mP9MZcarfKFQH2wCrDKvuYISc0
 Bq1H3nhNm8dC8KVqfQjTHofkUImEVYlF7DIPBzfb2u3MOVujNDTR7D+dX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045092"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045092"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290505"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:30 -0700
Message-Id: <20220413192730.3608660-11-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/dg2: Enable
 Wa_22012727170/Wa_22012727685
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

From: John Harrison <John.C.Harrison@Intel.com>

The above two workaronuds regarding context isolation are implemented
by GuC. The KMD just needs to enable them.

v2: Use dg2 stepping for ctx isolation WA (Umesh)
v3: Rebase (Umesh)
v4: Fix WA comments (Daniele)
v5: Drop Wa_22012727685 for G10 as it is n/a
v6: Undo v5 change since the G10 condition is needed

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 228070e31ef0..2c4ad4a65089 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -319,6 +319,14 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
 
+	/*
+	 * Wa_22012727170:dg2_g10[a0-c0), dg2_g11[a0..)
+	 * Wa_22012727685:dg2_g11[a0..)
+	 */
+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_FOREVER))
+		flags |= GUC_WA_CONTEXT_ISOLATION;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index e389a3a041a2..42cb7a9a6199 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -101,6 +101,7 @@
 #define   GUC_WA_GAM_CREDITS		BIT(10)
 #define   GUC_WA_DUAL_QUEUE		BIT(11)
 #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
+#define   GUC_WA_CONTEXT_ISOLATION	BIT(15)
 #define   GUC_WA_PRE_PARSER		BIT(14)
 #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
 #define   GUC_WA_POLLCS			BIT(18)
-- 
2.35.1

