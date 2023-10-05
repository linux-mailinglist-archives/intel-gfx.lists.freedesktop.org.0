Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73557BAA98
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 21:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B893B10E497;
	Thu,  5 Oct 2023 19:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8F810E490
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 19:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696535180; x=1728071180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yfm0L8pwwccBLmpYUDrz+ZyIUF0BYrjGxFq8Uk7Fc3E=;
 b=Popq7iNGmK/OQ7r8rx/ecYcne0HzzlFRcq1CaiM/RPyq5uSPaZ2Nzgas
 v452HGxYG+tEIl30ZpjQq51B3ObtQGOZQyUHcmo+7w5TLfwvJPbjrPAH4
 lg9WIkugSUZNnFWdr0duldjAxgeibU/TfXLli8/L2DryeyC8Xjscq8t23
 bhIi7VE+mEeYIX1Iifni3xJ+rEtSx9ffsArGVnasvZerACJHG+IOP1ykT
 gFOLX3eRQX7q1nBAuHP+U1NPNdVLJa5hFuuBvbCOJy0XwtvhvoNnOeQfv
 nYM6rWBOK4vwSQ8dOgzWEl79+iZMh/u4s8MuhdcZFyIJ+LFjbhzPvfCfl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="380876000"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="380876000"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 12:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="787107111"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="787107111"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 12:46:19 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 12:35:35 -0700
Message-Id: <20231005193536.1463159-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 4/5] drm/i915/gt: Increase sleep in gt_tlb
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

