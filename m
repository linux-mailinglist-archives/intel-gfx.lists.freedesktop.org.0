Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CD57EFCB2
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Nov 2023 01:45:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF1A10E0AE;
	Sat, 18 Nov 2023 00:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4167010E0AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Nov 2023 00:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700268295; x=1731804295;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PbJA85LBPc0i1sNpeSfn0/gFNra8tmV+92aalPDXi1E=;
 b=dL8AcOOTfszgYku8A/NT6zfPktz2NeNcyFso/GiF+GYQ0efdEwG/UiEB
 Yc+qhoRoR7q5Zqx6+GsalFMTvtCT6v+d4g3Y9aVZ3TvRnZ426yFmw+yb1
 LIr8CPCpcgeJzRd5RZZOM9Q8uiWnP2xTAQNm6taHpZJ4oz+7THAF+a7Cm
 INXr6Zpk+nzrh2+dcvpZGXDoXNXv2504bx6mqNmp+OKbV2xKgelJ7v0VE
 ++LXasGSJkk8+tLN03pO0bdchihbZeXobZRMpnnl5aOl+aHQGCOwcU9a5
 OHpFX6nJkMColhf39NibTfRNGktGve+krIBbUwvAGw0Obd+oeYJ52IQbJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="4476686"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4476686"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 16:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="1097253639"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="1097253639"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.131])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 16:44:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 16:44:46 -0800
Message-ID: <20231118004446.3077282-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Wa_22014600077 also applies to
 DG2-G12
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

This workaround now applies to all variants of DG2 so move it to the
corresponding block.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 9bc0654efdc0..038d4902b6f7 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2347,6 +2347,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
 				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
+
+		/* Wa_22014600077:dg2 */
+		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
+			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
+			   0 /* Wa_14012342262 write-only reg, so skip verification */,
+			   true);
 	}
 
 	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
@@ -2357,14 +2363,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			   0, true);
 	}
 
-	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
-		/* Wa_22014600077:dg2 */
-		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
-			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
-			   0 /* Wa_14012342262 write-only reg, so skip verification */,
-			   true);
-	}
-
 	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
 	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
 		/*
-- 
2.41.0

