Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E984D5F3472
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3051110E44D;
	Mon,  3 Oct 2022 17:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C24A10E448;
 Mon,  3 Oct 2022 17:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664817939; x=1696353939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1fggGt3BhmQVjVi7mrXqHRWXcro/g9IMcywg2a0o394=;
 b=XyvOJUe/26mS4t296BFkB9plTuo+jNiW8HRHcMndswzHuBXoUQ1kjPtT
 GOGvC7jaHVoTG98tQiqCtpwQvcxa51aCEDkoJLoEk6peMHju1SoZKuQAl
 MimwOOQML66Gl8f1Xd0/Fmp/ydk8rpOdX79PkJgjkDmTI2qlzZ5eHtDLQ
 78fX30Xqf2FAfR1pjFIu0OrU5yoXqgLxHaZ+h5FGfS4wr/xdA6UB0liIv
 69+4V7yVdyUfSPUlhMxVU3C8x99dQmzjy+5B5zC2iZrK3GpBj0hJCqObS
 Krd8AMwDNFEkYWTFtiPsBnfb//rlXLJDNkW12V2eF9Tk9V6s0KAL/M4aX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282413393"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="282413393"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686202370"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686202370"
Received: from adejeanb-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.6.198])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:24 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  3 Oct 2022 18:24:54 +0100
Message-Id: <20221003172456.97522-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221003172456.97522-1-matthew.auld@intel.com>
References: <20221003172456.97522-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 2/4] tests/i915/query: fix
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

