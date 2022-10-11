Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DCF5FAB2E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 05:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31ECF10E79D;
	Tue, 11 Oct 2022 03:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FBFE10E79E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 03:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665458927; x=1696994927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SqejX57MJsZV8z/ybFBBdQDZmtXOVk6uozKBZWTgNpM=;
 b=O3Mzew0RflTTX3MdyCGoXdEQXS5Uje2Asc1O6Siq/Tz24MuVbPq3QdoA
 oUnm4TT/7hFWphPU/g6jWpPlAekg+TNx9O2J5e8Bt1x+CCrMFB6BBtkvm
 d6B+IMYZiEvkpAPXEONuNEy9a8amJbhwE883Uo7EbEm++xbA496tHehcA
 BGRvB+DnRBLvwES3DhGbxXDEclRH7KraXITX8NfApLeDsx0OlYP3HKGPB
 7DU8p8yl6XwdY6E63w3/CYtCyjFxnF2sP66I7g6wIU/LUNhdIIhheWGzy
 y0O2G7qDxOEbrr1vtd92a7xFyWtnfidbHj6NiLeqd7dE17OiRv2P1Jf6K Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="284777774"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="284777774"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:28:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603977026"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="603977026"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 20:28:46 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 20:28:43 -0700
Message-Id: <e59e680be0d56fdb4c116f45fac94350832752ec.1665458639.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1665458639.git.ashutosh.dixit@intel.com>
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Don't do display work on
 platforms without display
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

Do display work only on platforms with display. This avoids holding the
runtime PM wakeref for an additional 100+ ms after GT has been parked.

Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7025
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 36 +++++++++++++++------------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f553e2173bdad..26aa2e979a148 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -70,19 +70,21 @@ static int __gt_unpark(struct intel_wakeref *wf)
 
 	GT_TRACE(gt, "\n");
 
-	/*
-	 * It seems that the DMC likes to transition between the DC states a lot
-	 * when there are no connected displays (no active power domains) during
-	 * command submission.
-	 *
-	 * This activity has negative impact on the performance of the chip with
-	 * huge latencies observed in the interrupt handler and elsewhere.
-	 *
-	 * Work around it by grabbing a GT IRQ power domain whilst there is any
-	 * GT activity, preventing any DC state transitions.
-	 */
-	gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
-	GEM_BUG_ON(!gt->awake);
+	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
+		/*
+		 * It seems that the DMC likes to transition between the DC states a lot
+		 * when there are no connected displays (no active power domains) during
+		 * command submission.
+		 *
+		 * This activity has negative impact on the performance of the chip with
+		 * huge latencies observed in the interrupt handler and elsewhere.
+		 *
+		 * Work around it by grabbing a GT IRQ power domain whilst there is any
+		 * GT activity, preventing any DC state transitions.
+		 */
+		gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
+		GEM_BUG_ON(!gt->awake);
+	}
 
 	intel_rc6_unpark(&gt->rc6);
 	intel_rps_unpark(&gt->rps);
@@ -115,9 +117,11 @@ static int __gt_park(struct intel_wakeref *wf)
 	/* Everything switched off, flush any residual interrupt just in case */
 	intel_synchronize_irq(i915);
 
-	/* Defer dropping the display power well for 100ms, it's slow! */
-	GEM_BUG_ON(!wakeref);
-	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
+	if (HAS_DISPLAY(i915) && INTEL_DISPLAY_ENABLED(i915)) {
+		/* Defer dropping the display power well for 100ms, it's slow! */
+		GEM_BUG_ON(!wakeref);
+		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
+	}
 
 	return 0;
 }
-- 
2.34.1

