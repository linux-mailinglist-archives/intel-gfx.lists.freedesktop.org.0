Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE10616146
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF8810E46A;
	Wed,  2 Nov 2022 10:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7240F8992E;
 Wed,  2 Nov 2022 10:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667386465; x=1698922465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SWpaCvBBTSq8POciJqW+WW9bgkdUqBaUIFlS8n1c94Q=;
 b=RwCtUDQDJWnB+B+kHD3qzI3T2jqDdukb7Fcs5UHyLYBefbGykfkkiPo3
 k5OPa2IqnS19wZFGMIJt0OTkYCqyDTDf1W3EaQYMj8tUJAwVjXXsTpHrI
 4hRwe5/5uTLC9frNh1KLChhaIKNmxxxAeot4Fau3GfrBcj4K0kE57/B0O
 Mg7o0njcIxBER+g2vJCDh4rzF9dpwri599A5GBlAtQ1F4o7HRzL4g6oh7
 18G2X07gKIL/VifSISh7NXCMbwG1PmuJHqq7v5H2tx4qtsC7xtPOhyY/e
 TB+U5uEiQI4MFVXHgwFt2Xxdqodu0L7Fvg6YhhOpkvheBeS33lnudE9By Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="289089727"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="289089727"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:52:12 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="776850546"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="776850546"
Received: from kieranfl-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.30.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:52:11 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  2 Nov 2022 10:52:04 +0000
Message-Id: <20221102105204.208634-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_create: use cpu_size in
 always_clear
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the we can't fit the buffer in the CPU visible portion of lmem, then
the kernel will be unable to migrate the pages on fault on small-bar
systems.  Note that this doesn't restrict where the pages are allocated,
but should just ensure we don't SIGBUS, if we need to migrate the pages.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6967
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_create.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index 9c695fa4..af530ccc 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -271,7 +271,7 @@ static void always_clear(int i915, const struct gem_memory_region *r, int timeou
 	struct thread_clear arg = {
 		.i915 = i915,
 		.region = r->ci,
-		.max = r->size / 2 >> 12, /* in pages */
+		.max = r->cpu_size / 2 >> 12, /* in pages */
 		.timeout = timeout,
 	};
 	const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
-- 
2.38.1

