Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9158A4CBD10
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 12:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C054D10E2A3;
	Thu,  3 Mar 2022 11:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51FC10E2A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 11:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646307977; x=1677843977;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Y5MafYlwARmWFYGdw4U+hrdceZT6688ygmRBJv7das=;
 b=m0pUKqBwfYM0xf4tLpeC8Uu0Z0XDvEvHy/GzaWqYscwxeOpNcjDuK88c
 auEkF1tmHlcm9B2wl+kiea4BDiJEp5ujehFCb0SMEX0xFyffcNR5wVmuo
 E1mcv6vlRphEvck79dyhcd9dzY0Z7ja8QMzQPwsUgyhrsiSwFogygU8bh
 8TnRMRKvmHg4xHyYlbvE+sOIJhIEGAPxZRQaCwq+XBmp8FMQbLBR9NGY4
 a4jIRMV3aziWoGkzJyT/R68lgUkk2qVU/wW2/ocpP3Pvp5T2GJxlFtMXm
 hx8jkZuU/P4ck6H0OADGPd6jscwq+AqhW2YSwq4IRtFtXCggCXeKsMwAT Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="314367663"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="314367663"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 03:46:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="551719049"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 03 Mar 2022 03:46:15 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 17:02:52 +0530
Message-Id: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl-n: Add stepping info
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add ADL-N stepping-substepping info in
accordance to BSpec.

Bspec: 68397

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 4fd69ecd1481..74e8e4680028 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -131,6 +131,10 @@ static const struct intel_step_info adls_rpls_revids[] = {
 	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info adlp_n_revids[] = {
+	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
+};
+
 void intel_step_init(struct drm_i915_private *i915)
 {
 	const struct intel_step_info *revids = NULL;
@@ -150,6 +154,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_XEHPSDV(i915)) {
 		revids = xehpsdv_revids;
 		size = ARRAY_SIZE(xehpsdv_revids);
+	} else if (IS_ADLP_N(i915)) {
+		revids = adlp_n_revids;
+		size = ARRAY_SIZE(adlp_n_revids);
 	} else if (IS_ALDERLAKE_P(i915)) {
 		revids = adlp_revids;
 		size = ARRAY_SIZE(adlp_revids);
-- 
2.34.1

