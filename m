Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A418972040C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0662E10E693;
	Fri,  2 Jun 2023 14:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101D610E693
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715095; x=1717251095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iHnTy+rGdynPSN2oUg3l6ddZoSKYljpn1oATVCjWczE=;
 b=VllVIeXyN0k+j1gh2PGCuwLHX/lue1SgD+6tyy7TpMHM/B1oEnQf+4Pq
 GM1n+knw5xPv6Bn2ep4cZpD6nFANsm4UGNq4b51f5gb2qpOEUOZnYHu1e
 bCd7Nxe7OcoA3xhQk+mcxkcuzbuY6AL41H5Y+pkSc/U7nGIv7w95ldVAZ
 GynVVfy66tZOFzoPZRaOLm+/uLAy3OvyaT2wVGoBnKV4PvpsAQfiDvFKN
 W395YT8qXBWCvZcjVle7+6b9yyt2D5Pw05Qd8LGEnJaGjnOtByiqe5NaZ
 p5b6nzqDkr+FsF21BLlhxbKANqhm8t1hboBXv48548/o+PKT1ShOWDjR1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335489224"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="335489224"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="772897285"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="772897285"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.46])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:11:32 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Fri,  2 Jun 2023 16:11:27 +0200
Message-Id: <20230602141127.291372-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Use the correct error value when
 kernel_context() fails
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
Cc: Nathan Chancellor <nathan@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

kernel_context() returns an error pointer. Use pointer-error
conversion functions to evaluate its return value, rather than
checking for a '0' return.

Fixes: eb5c10cbbc2f ("drm/i915: Remove I915_USER_PRIORITY_SHIFT")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Chris Wilson < chris@chris-wilson.co.uk>
Cc: <stable@vger.kernel.org> # v5.13+
---
 drivers/gpu/drm/i915/gt/selftest_execlists.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 736b89a8ecf54..4202df5b8c122 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -1530,8 +1530,8 @@ static int live_busywait_preempt(void *arg)
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	enum intel_engine_id id;
-	int err = -ENOMEM;
 	u32 *map;
+	int err;
 
 	/*
 	 * Verify that even without HAS_LOGICAL_RING_PREEMPTION, we can
@@ -1539,13 +1539,17 @@ static int live_busywait_preempt(void *arg)
 	 */
 
 	ctx_hi = kernel_context(gt->i915, NULL);
-	if (!ctx_hi)
-		return -ENOMEM;
+	if (IS_ERR(ctx_hi))
+		return PTR_ERR(ctx_hi);
+
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
 	ctx_lo = kernel_context(gt->i915, NULL);
-	if (!ctx_lo)
+	if (IS_ERR(ctx_lo)) {
+		err = PTR_ERR(ctx_lo);
 		goto err_ctx_hi;
+	}
+
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
 
 	obj = i915_gem_object_create_internal(gt->i915, PAGE_SIZE);
-- 
2.40.1

