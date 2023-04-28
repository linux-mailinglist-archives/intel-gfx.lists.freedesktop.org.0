Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5776F1887
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 14:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 304CE10ED3B;
	Fri, 28 Apr 2023 12:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F71D10ED39
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 12:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682686517; x=1714222517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ICWqlND+Lj5oJAASF/BKq17dKrTaNS/+R43ZRfTsxRo=;
 b=MkVEdmNJTqit9QQfzrqdJmWNASFZABedggMIY6rquYIUSoS/nn8XIKUy
 P8WQ7TEon4ll37Hc9Y1XoRHBs3OCsax63Ok+pFnlstr1sivgdw1zFPV8z
 oKv3tge+4o3a+eTnBJJLF1Au6I7ACjev+yDuyLVTzIo87DK3+DXZ1sc5h
 3jRb6HyGlbQYJi18jSpxiYJWe1L64/jyJ69VRhqrevo4VjPvHtUZe2zxL
 0beeh2nBUD7JQjwcVWxBeBTu0irdHTK4Fdy5onMv/64kTugjPmyBbnFrc
 P5EQbSmABlh/zfD5IV1DWTUBZQVHJCI5v0gk/DUi6R4eHjyv+kqcriZ9J A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="413127893"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413127893"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 05:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="759646913"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="759646913"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2023 05:55:04 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 18:29:52 +0530
Message-Id: <20230428125952.4037964-3-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
References: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Use gt_err for GT info
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It will be more informative regarding
GT if we use gt_err instead.

Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_gem_evict.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 37068542aafe..f68ef4074088 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -27,6 +27,7 @@
 #include "gem/selftests/igt_gem_utils.h"
 #include "gem/selftests/mock_context.h"
 #include "gt/intel_gt.h"
+#include "gt/intel_gt_print.h"
 
 #include "i915_selftest.h"
 
@@ -507,7 +508,8 @@ static int igt_evict_contexts(void *arg)
 		}
 		err = intel_gt_wait_for_idle(engine->gt, HZ * 3);
 		if (err) {
-			pr_err("Failed to idle GT (on %s)", engine->name);
+			gt_err(engine->gt, "Failed to idle GT (on %s)",
+			       engine->name);
 			break;
 		}
 	}
-- 
2.25.1

