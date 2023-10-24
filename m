Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6D87D4490
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D172710E2B7;
	Tue, 24 Oct 2023 01:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5EB10E2AF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109753; x=1729645753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IedyKEHyU1RMx+SPXABpFyNVfxVPjzpFCtzp/SQlQCo=;
 b=DDmNbCbZvtap0C0dJ52ty4vBYcOJ/k6lLckb5OwVQWmLMIq9Fj9aBRDq
 0iUWY39L61FVBtptKZP/XPL7OqORUUtFIMVE4GHeJ+m1w6h9cQdxpL543
 xTkHXksTPgS78PBOIPW/wZcM21L85RA6QRsV/Hsnzufzj4oyBsbUfYVU0
 KG0YTYqlD2xhQss84IzVPP4r+loUrnF5RD6LfOxJsS8DIkXB4agZEyd4s
 WGuha9jnSOnIyWPObmOu1m8EZ/pxJBEhsvwSXXgFyE45NhoXToMt2nMld
 wAaKEUY9CVaJRNIjKa12No0UiPQ4NOVzNEGqYQ2+8UbKBBcMkf1Nej8U5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304358"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304358"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870045"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870045"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:06 +0300
Message-Id: <20231024010925.3949910-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/29] drm/i915/dp: Specify the FEC overhead as
 an increment vs. a remainder
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

A follow-up patch will add up all the overheads on a DP link, where it
makes more sense to specify each overhead factor in terms of the added
overhead amount vs. the reciprocal remainder (of usable BW remaining
after deducting the overhead). Prepare for that here, keeping the
existing behavior.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2048649b420b2..0c0f026fb3161 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -85,8 +85,8 @@
 #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
 #define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
 
-/* DP DSC FEC Overhead factor = 1/(0.972261) */
-#define DP_DSC_FEC_OVERHEAD_FACTOR		972261
+/* DP DSC FEC Overhead factor = 1/(0.972261) = 1.028530 ppm */
+#define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
 
 /* Compliance test status bits  */
 #define INTEL_DP_RESOLUTION_SHIFT_MASK	0
@@ -680,8 +680,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 {
-	return div_u64(mul_u32_u32(mode_clock, 1000000U),
-		       DP_DSC_FEC_OVERHEAD_FACTOR);
+	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
+		       1000000U);
 }
 
 static int
-- 
2.39.2

