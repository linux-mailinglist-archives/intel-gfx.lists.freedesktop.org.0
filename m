Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717DE7B974E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 00:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E45510E144;
	Wed,  4 Oct 2023 22:18:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA2C10E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 22:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696457904; x=1727993904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yfm0L8pwwccBLmpYUDrz+ZyIUF0BYrjGxFq8Uk7Fc3E=;
 b=Z4+B7LVlqMo5qOQ8pivJDmmu8d0q090F3TKBVLIu9J3qE8fd61O/rkt1
 r10R0daLUBj46A2hVxaT8/xQESUrP0SRu/MKxoa/rFgqjYTc84nakKaXo
 x7GYzEDMsxa6uvri99ERQ0pBO1zS6/oVN+yKfLe1yJ90Ock5wTYw/s7yG
 RBWJYQNYkltw1RI/3wsxKYWYu7mNujQO42hr3lBvy9vypxhYYr5+9SLZf
 FckzEzU64H0OIkgEw3rvaFZIfm+AvhwOJ1+denWf4gsu4dLA5+Ov8v1cI
 73HW6W+EG91U2nvf2JP1RNK37H2rO1t8niE61n3fs2Q8aMDwfJUqtob/s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="382195133"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="382195133"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867611825"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="867611825"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 15:18:23 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 15:07:38 -0700
Message-Id: <20231004220739.1313307-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
References: <20231004220739.1313307-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client v6 4/5] drm/i915/gt: Increase sleep
 in gt_tlb selftest sanitycheck
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

