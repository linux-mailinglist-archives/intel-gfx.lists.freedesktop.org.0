Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8E05F469D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB3810E722;
	Tue,  4 Oct 2022 15:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F5010E70F;
 Tue,  4 Oct 2022 15:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664897178; x=1696433178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VI8xS+lNVNZznkWoVDxyvrxLVwdAmmGkz+rpfCtYR24=;
 b=Fx2/49tSrMcZu5DPJhQogXkN2cHsAhvJCBOIb3jXuqX2lDd5Mji+BmRd
 Avy+RwyAY9lZuWF22YudGIoXkwHnB7IjFPh441DHMYYXlnLfu+J6SPEyW
 CnYDxQVp3xZ0ciGNALnsd1c76a1uSWYdJr2FVoc5nlZ0TsOhgeIus139C
 qLqmsYxnn8f1ZTLusFnfkyWYjW6Tku8LqF3RHxqZzJFn5OKWloQxfdc2a
 t0rvD24rYdAVCw2vXK4qS3v0EOr1VTgeqeGZkTmfHE44YnSo64ufCQ/ix
 UOz4Vx/bCBZRwmSLCZDBaDh+K23eG6W7FX0tZM9Um3k88rV22UswR75/M Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301659401"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="301659401"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601655869"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="601655869"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:16 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  4 Oct 2022 16:25:46 +0100
Message-Id: <20221004152549.436801-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004152549.436801-1-matthew.auld@intel.com>
References: <20221004152549.436801-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 2/5] tests/i915/query: fix
 igt_assert_eq_u32
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

rsvd1 is u64 here.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 2744421c..b92d7593 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -588,7 +588,7 @@ static void test_query_regions_garbage_items(int fd)
 		 * rsvd1[1] : unallocated_cpu_visible_size
 		 */
 		for (j = 2; j < ARRAY_SIZE(info.rsvd1); j++)
-			igt_assert_eq_u32(info.rsvd1[j], 0);
+			igt_assert_eq_u64(info.rsvd1[j], 0);
 	}
 
 	/* Bogus; kernel is meant to set this */
-- 
2.37.3

