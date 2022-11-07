Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8FB61F25F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 13:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6339D10E2F7;
	Mon,  7 Nov 2022 12:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DCB310E2F7;
 Mon,  7 Nov 2022 12:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667822684; x=1699358684;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=io6NOnhIUq2RlSYg25btAKQzTfxnZdUpofyPSRMBRsU=;
 b=JmK/bQFWwDV9tv9o7ek7zxyrrAQ+YarlpdiThTBGQVplNOXCi+qyNqjr
 Ouo1hSQ1WLz9j+dW6tFJgW38oxjBMTfm7V2RaDfE8QshitOeqXm1qK3D6
 dYtWHOYNQREA+3AdLMyurRGW+Ln9+lOgZngDtUh78tVh8vydj1MUUWlEA
 B1OEIFnw9JhSklsAJe80DXgXxx3k4aMWmdeH/aNYma1TKWQrJlFDxIzNP
 eVFnYUKdk+Px/pDwNlh/wL1iFtMC/rPLmyeQtWYV2JobLd+Pr8d6k6Smk
 pr31nHoUsoN10a1+Kia05aQZFa2mdk8yfOPRIbHgUR3OgmRY0RPFNTGka A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="312158795"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="312158795"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 04:04:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965127553"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965127553"
Received: from pmesquit-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.49])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 04:04:39 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:04:26 +0000
Message-Id: <20221107120426.22849-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_mmap_offset: use cpu_size
 in always_clear
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

If we can't fit the buffer in the CPU visible portion of lmem, then the
kernel will be unable to migrate the pages on fault on small-bar
systems.  Note that this doesn't restrict where the pages are allocated,
but should just ensure we don't SIGBUS, if we need to migrate the pages.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7382
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 tests/i915/gem_mmap_offset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
index 0adeb0b5..b27920de 100644
--- a/tests/i915/gem_mmap_offset.c
+++ b/tests/i915/gem_mmap_offset.c
@@ -750,7 +750,7 @@ static void always_clear(int i915, const struct gem_memory_region *r, int timeou
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

