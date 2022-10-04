Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C17815F46A1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBF010E710;
	Tue,  4 Oct 2022 15:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9859210E70F;
 Tue,  4 Oct 2022 15:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664897179; x=1696433179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2TDM69JJdlqzLx6tObLDhHFFpWOmYjLjnU2bKSTHhzM=;
 b=dPO3nxsVtOSD0lxQFawMfTbkLT7nbzFCuie7ZZL0XkjJqMWhhoEphL3H
 UgsREzzI9AJC4eBmjhi1ge1ZrujOAMFyQsxasy9JjBbbit446gIR1bvY1
 9FCuMGJifz9L8Fa88/KtecVyXsWlHNGb6kDiXoG858D4jFam2CAyxU0Ry
 POZkIy/nFSnOhtFUuObefjojjujS7Mg+qm4ixbEfSHAnMpbLoJBUMzIlG
 FGCn7EQ8BWWqBYeMZcfb7ibpeJf0BbPL8mY89Bg3+jbePatYfDfWbzKt4
 oPWwnaaqlvmVyqAJm8oPryBJTM81eVv6SIGKxBKw/EKzTrtXDs+FQr1C+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="301659410"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="301659410"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601655872"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="601655872"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:26:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  4 Oct 2022 16:25:47 +0100
Message-Id: <20221004152549.436801-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004152549.436801-1-matthew.auld@intel.com>
References: <20221004152549.436801-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 3/5] tests/i915/query: stop checking
 rsvd0 in region info
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

No longer reserved, in the near future this will be the GTT alignment.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/i915_query.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index b92d7593..4e43c7cd 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -581,8 +581,6 @@ static void test_query_regions_garbage_items(int fd)
 		struct drm_i915_memory_region_info info = regions->regions[i];
 		int j;
 
-		igt_assert_eq_u32(info.rsvd0, 0);
-
 		/*
 		 * rsvd1[0] : probed_cpu_visible_size
 		 * rsvd1[1] : unallocated_cpu_visible_size
-- 
2.37.3

