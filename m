Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EE53DA1F4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 13:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA4C66ED26;
	Thu, 29 Jul 2021 11:18:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A58546EBB7;
 Thu, 29 Jul 2021 11:18:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="193136691"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="193136691"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 04:18:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="438234702"
Received: from eoghanru-mobl.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.215.170])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 04:18:56 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 12:18:47 +0100
Message-Id: <20210729111848.729888-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: fixup igt_shrink_thp
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
Cc: Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

Since the object might still be active here, the shrink_all will simply
ignore it, which blows up in the test, since the pages will still be
there. Currently THP is disabled which should result in the test being
skipped, but if we ever re-enable THP we might start seeing the failure.
Fix this by forcing I915_SHRINK_ACTIVE.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a094f3ce1a90..acc435f14ac9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1572,12 +1572,15 @@ static int igt_shrink_thp(void *arg)
 		goto out_put;
 
 	/*
-	 * Now that the pages are *unpinned* shrink-all should invoke
+	 * Now that the pages are *unpinned* shrinking should invoke
 	 * shmem to truncate our pages.
 	 */
-	i915_gem_shrink_all(i915);
+	i915_gem_shrink(NULL, i915, -1UL, NULL,
+			I915_SHRINK_BOUND |
+			I915_SHRINK_UNBOUND |
+			I915_SHRINK_ACTIVE);
 	if (i915_gem_object_has_pages(obj)) {
-		pr_err("shrink-all didn't truncate the pages\n");
+		pr_err("shrinking didn't truncate the pages\n");
 		err = -EINVAL;
 		goto out_put;
 	}
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
