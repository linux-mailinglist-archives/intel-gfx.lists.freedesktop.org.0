Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750B8456F37
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE5D6F569;
	Fri, 19 Nov 2021 13:00:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9D86F565;
 Fri, 19 Nov 2021 13:00:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="295222738"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="295222738"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:12 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="455769621"
Received: from egedeon-mobl2.amr.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.209.179.224])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:00:11 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 19 Nov 2021 12:59:43 +0000
Message-Id: <20211119125945.55056-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 4/6] igt/drm_read: Fix build warning
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

In function ‘read’,
    inlined from ‘test_invalid_buffer’ at ../../home/tursulin/wc/intel-gpu-tools/tests/drm_read.c:113:2,
    inlined from ‘__igt_unique____real_main258’ at ../../home/tursulin/wc/intel-gpu-tools/tests/drm_read.c:297:3:
/usr/include/x86_64-linux-gnu/bits/unistd.h:47:10: warning: ‘__read_alias’ writing 4096 bytes into a region of size 0 overflows the destination [-Wstringop-overflow=]
   47 |   return __read_alias (__fd, __buf, __nbytes);
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/drm_read.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tests/drm_read.c b/tests/drm_read.c
index 4a966a23b550..d422220d3c4a 100644
--- a/tests/drm_read.c
+++ b/tests/drm_read.c
@@ -289,8 +289,16 @@ igt_main
 		igt_require(kmstest_get_vblank(fd, pipe, 0));
 	}
 
+/*
+ * Has to be here and not in (or around) test_invalid_buffer() to work around
+ * a gcc bug https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98512.
+ */
+#pragma GCC diagnostic push
+#pragma GCC diagnostic ignored "-Wstringop-overflow"
+#pragma GCC diagnostic ignored "-Wstringop-overflow="
 	igt_subtest("invalid-buffer")
 		test_invalid_buffer(fd);
+#pragma GCC diagnostic pop
 
 	igt_subtest("fault-buffer")
 		test_fault_buffer(fd, pipe);
-- 
2.32.0

