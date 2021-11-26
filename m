Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3FB45EFC7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 15:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F8136F46D;
	Fri, 26 Nov 2021 14:20:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551746F413;
 Fri, 26 Nov 2021 14:20:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="296472000"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="296472000"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:20:22 -0800
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="607883720"
Received: from slee54-mobl2.amr.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.209.166.109])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:20:22 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 26 Nov 2021 14:20:16 +0000
Message-Id: <20211126142017.495693-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI i-g-t 1/2] tests/api_intel_allocator: Fix build
 warning
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

.../tests/i915/api_intel_allocator.c: In function ‘basic_alloc’:
.../tests/i915/api_intel_allocator.c:158:25: warning: this ‘if’ clause does not guard... [-Wmisleading-indentation]
  158 |                         if (j == i)
      |                         ^~

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
---
 tests/i915/api_intel_allocator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/api_intel_allocator.c b/tests/i915/api_intel_allocator.c
index 4b74317ed3d0..6d7764ca3f51 100644
--- a/tests/i915/api_intel_allocator.c
+++ b/tests/i915/api_intel_allocator.c
@@ -157,7 +157,7 @@ static void basic_alloc(int fd, int cnt, uint8_t type)
 		for (j = 0; j < cnt; j++) {
 			if (j == i)
 				continue;
-				igt_assert(!overlaps(&obj[i], &obj[j]));
+			igt_assert(!overlaps(&obj[i], &obj[j]));
 		}
 	}
 
-- 
2.32.0

