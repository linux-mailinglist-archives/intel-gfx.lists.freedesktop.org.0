Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD47679622
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 12:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1047B10E059;
	Tue, 24 Jan 2023 11:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5790F10E059
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674558329; x=1706094329;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=01nmx0aN6Pq8ZhZ5lUaLmOFDUSX/FTlPX6njN4OYpL8=;
 b=A1+1VVw/Ave90OIbrbeE2uCyxen7WmPx9o7QEbD0t8KKGQnmNkaDQig5
 VfNNHp++qF34ahkOsnCO2XYFAzzexhgI8yHucYy27G5/WpLuuR/+/+iyn
 +QgSv+6EFzrLShU7QRLxCo/cWteu2+ShtHZiNTR5DPAIigGRyQd0YDlrY
 TmoXQ4UQZ+H44UBwG2KTzjRHDEGeUZaLqURbMZWS11wmH9nwk4Ej31LbA
 U+QX4ejDbBy5fk8dZ5OxD5bbrzH76f/ci+lDJnjU5NIRspPKL4TCSSS6b
 C9idYXffn2mD+uS0AnEQeeZ+7VTeL9BAMLUpfO6zZ9h6dxyw9DL2g4Lcn g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328359570"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328359570"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:05:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="662101161"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="662101161"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:05:27 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 12:05:15 +0100
Message-Id: <20230124110515.17017-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Clear wedged status upon suspend
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
Cc: Nirmoy Das <nirmoy.das@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris.p.wilson@linux.intel.com>

Currently we use set-wedged on suspend if the workload is not responding
in order to allow a fast suspend (albeit at the cost of discarding the
current userspace). This may leave the device wedged during suspend,
where we may require the device available in order to swapout CPU
inaccessible device memory. Clear any temporary wedged-status after
flushing userspace off the device so we can use the blitter ourselves
inside suspend.

Testcase: igt/gem_eio/in-flight-suspend
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index cef3d6f5c34e..74d1dd3793f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -317,19 +317,17 @@ int intel_gt_resume(struct intel_gt *gt)
 
 static void wait_for_suspend(struct intel_gt *gt)
 {
-	if (!intel_gt_pm_is_awake(gt))
-		return;
-
-	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME) {
+	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME)
 		/*
 		 * Forcibly cancel outstanding work and leave
 		 * the gpu quiet.
 		 */
 		intel_gt_set_wedged(gt);
-		intel_gt_retire_requests(gt);
-	}
 
 	intel_gt_pm_wait_for_idle(gt);
+
+	/* Make the GPU available again for swapout */
+	intel_gt_unset_wedged(gt);
 }
 
 void intel_gt_suspend_prepare(struct intel_gt *gt)
-- 
2.39.0

