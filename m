Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D56AD5A1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 04:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B9510E358;
	Tue,  7 Mar 2023 03:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E1610E356
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 03:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678159378; x=1709695378;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1KzTABygxzQivgwZH8itqRVS3w9F4N/q/5HkxFpL8ko=;
 b=DJQopZ26QRR28uQbSPG7DKgh0MIEu+qJPksBMLGPWg2MvKw2B6oXwqlj
 UxEVPX71e1dinOCAX2p4C8YJrrxOl19w0yA3vDvF5U+ixaDM6xS3J2E8R
 ynqUg+Tx46KauuHF+W3vXnb6sHXK6RNKfeMsoXfg4Gv98nC4m30Dl8xYf
 Jy33vUZB/HPmxnpLUZWb+yCNEHv2giNulgT87URKLELNT9l8TJZxgWLDJ
 /Vj6K5nl4XnfC/AXT87BsD9VZzgJbmU9fEeGYkiNCxOIt7+aBB/Dmi52R
 Ua2ae8D4eCncV1YMaTfLCEydD2cXwKgozEv/tjqMQjAzIKH2JIy06O7VK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="338075453"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="338075453"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 19:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="922183302"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="922183302"
Received: from kbourgeo-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.255.32.192])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 19:22:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 00:22:38 -0300
Message-Id: <20230307032238.300674-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/xelp: Implement Wa_1606376872
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

Wa_1606376872 applies to all Xe_LP IPs.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 08d76aa06974..4aecb5a7b631 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -478,6 +478,9 @@
 #define   HDC_FORCE_NON_COHERENT		(1 << 4)
 #define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
 
+#define COMMON_SLICE_CHICKEN4			_MMIO(0x7300)
+#define   DISABLE_TDC_LOAD_BALANCING_CALC	REG_BIT(6)
+
 #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
 
 #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 32aa1647721a..8092f289c492 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -743,9 +743,13 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2_GS_TIMER_224,
 	       0, false);
 
-	if (!IS_DG1(i915))
+	if (!IS_DG1(i915)) {
 		/* Wa_1806527549 */
 		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
+
+		/* Wa_1606376872 */
+		wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD_BALANCING_CALC);
+	}
 }
 
 static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
-- 
2.39.2

