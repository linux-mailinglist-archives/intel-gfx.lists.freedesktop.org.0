Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CCE7B8B20
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 20:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB2C10E1A8;
	Wed,  4 Oct 2023 18:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7324610E1A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 18:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696445230; x=1727981230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yfm0L8pwwccBLmpYUDrz+ZyIUF0BYrjGxFq8Uk7Fc3E=;
 b=ZeBm96as6ZVqerwmfI7rI9W/i1ZEJFOGW9oEkAWjMiugZO3LmzEIkYFX
 1DfyMidbd5uvTKu6pYfkC4B0iCM3EKh9X7XRRTVWaDyBuwYcOt2KJS4fO
 XlNzOYN1Cdiq+pd+sEn61sF6MjY2e4xBN+kFH5gc2YfMW2kxk6MsivHyk
 jyIJVD7Em5CEx349rNz4tKLBDh7bgxx7Tv+6jiPZ6TBfVkj0m7PIUKuiD
 KQ1KKCnpyqOp7TwZGqfqoPPVo1ZTHBbaVRFVpnWSozH4qtcn+u86MBQ2y
 ltFVv/1RY/YQm/x8Jm/3iW+128qIWCiRmBOTfZJ5sUgBVl4c7mLUi6D/N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="1864918"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; 
   d="scan'208";a="1864918"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 11:47:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="925274567"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="925274567"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 11:47:07 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 11:36:25 -0700
Message-Id: <20231004183625.1307100-4-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/gt: Increase sleep in gt_tlb
 selftest sanitycheck
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the gt_tlb live selftest, increase the timeout from 10 ms to 200 ms.
200 ms should be more than enough time, and 10 ms was too aggressive.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_tlb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 7e41f69fc818f..46e0a1dbecc8d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -137,7 +137,7 @@ pte_tlbinv(struct intel_context *ce,
 	i915_request_add(rq);
 
 	/* Short sleep to sanitycheck the batch is spinning before we begin */
-	msleep(10);
+	msleep(200);
 	if (va == vb) {
 		if (!i915_request_completed(rq)) {
 			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",
-- 
2.25.1

