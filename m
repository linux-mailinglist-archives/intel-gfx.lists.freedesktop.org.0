Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C0B4E6FCA
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4143110E71E;
	Fri, 25 Mar 2022 09:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A4E10E717;
 Fri, 25 Mar 2022 09:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648199419; x=1679735419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zj7M0a1AiQ1uFOxfdCLtUWSTVbbXJ1xTCebyykRcmNc=;
 b=Vn7TeBOrbvVVxlzXrJ406/3J7uzR0r9D9WYe0XmzmAhaCuzyrbaYWJ2M
 LyksggkQNFvFtFoXJyrVwqpMXt7TLjAkGxLTnQOzztwH58VyBLQwMAklC
 1Jv2KjizKI00cS71AauVOVrq4W2gM+1PTq4V3ceYgFzliCoAyc4KzK5B3
 16v7mizq4p1pWwfQzabchdlVd3zVgltoyYQ+w6dPi2Z/6nDqZs8K+yDNY
 OpK0/292454AZoFT8vpBmtmr6qpRe/5M6AgmztVC/ua2NL22E9H5qJdQS
 hKjn2AAZUYwHerl7Pbe/5HEblANi5YAWh9hOeSzXYAxY+RyqvIsNF1Gd8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258559408"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258559408"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:18 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="561760169"
Received: from mhenry-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.10.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:10:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 25 Mar 2022 09:09:56 +0000
Message-Id: <20220325090958.408654-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 1/3] test/gem_lmem_swapping: account
 for object rounding
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On DG2 the object size might be rounded when allocating lmem. Make sure
we account for any rounding up.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 tests/i915/gem_lmem_swapping.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
index 582111dd..193ff370 100644
--- a/tests/i915/gem_lmem_swapping.c
+++ b/tests/i915/gem_lmem_swapping.c
@@ -72,7 +72,7 @@ struct object {
 };
 
 static uint32_t create_bo(int i915,
-			  uint64_t size,
+			  uint64_t *size,
 			  struct drm_i915_gem_memory_class_instance *region,
 			  bool do_oom_test)
 {
@@ -80,7 +80,7 @@ static uint32_t create_bo(int i915,
 	int ret;
 
 retry:
-	ret = __gem_create_in_memory_region_list(i915, &handle, &size, region, 1);
+	ret = __gem_create_in_memory_region_list(i915, &handle, size, region, 1);
 	if (do_oom_test && ret == -ENOMEM)
 		goto retry;
 	igt_assert_eq(ret, 0);
@@ -172,7 +172,7 @@ static void __do_evict(int i915,
 
 	__gem_context_set_persistence(i915, 0, false);
 	size = 4096;
-	batch = create_bo(i915, size, region, params->oom_test);
+	batch = create_bo(i915, &size, region, params->oom_test);
 
 	gem_write(i915, batch, 0, &bbe, sizeof(bbe));
 
@@ -199,7 +199,7 @@ static void __do_evict(int i915,
 			params->count = i;
 			break;
 		}
-		obj->handle = create_bo(i915, obj->size, region, params->oom_test);
+		obj->handle = create_bo(i915, &obj->size, region, params->oom_test);
 
 		move_to_lmem(i915, objects + i, 1, batch, engine,
 			     params->oom_test);
@@ -270,7 +270,7 @@ static void fill_params(int i915, struct params *params,
 
 	if (flags & TEST_RANDOM) {
 		params->size.min = 4096;
-		handle = create_bo(i915, params->size.min, &region->region,
+		handle = create_bo(i915, &params->size.min, &region->region,
 				   do_oom_test);
 		gem_close(i915, handle);
 		params->size.max = 2 * size + params->size.min;
-- 
2.34.1

