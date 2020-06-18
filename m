Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009C41FEFDE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 12:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17636EB4E;
	Thu, 18 Jun 2020 10:48:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FC976EB4E;
 Thu, 18 Jun 2020 10:47:56 +0000 (UTC)
IronPort-SDR: fVayH6GNduQOWN+bSmg+kV4Vv+yBPEPiykx9RGi7Q/WfLkirEdwWCdmnaeY9kRg/tIL4Gbl8tH
 MTzKa85RzJEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="122269033"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="122269033"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 03:47:56 -0700
IronPort-SDR: IBRp+je75T5B/a+CN56JsogkeEbedCplpggYlUHBYzifgYKG8CeJeg2Ol19ilPdR6bM+9X6wur
 3EuLjEIizsFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="352378564"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.33.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Jun 2020 03:47:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 18 Jun 2020 11:47:40 +0100
Message-Id: <20200618104747.24005-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
References: <20200618104747.24005-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/11] gem_wsim: Move BO allocation to a
 helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index dd0b2e260a5a..23b81d181df3 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -1490,6 +1490,11 @@ get_ctxid(struct workload *wrk, struct w_step *w)
 	return wrk->ctx_list[w->context].id;
 }
 
+static uint32_t alloc_bo(int i915, unsigned long size)
+{
+	return gem_create(i915, size);
+}
+
 static void
 alloc_step_batch(struct workload *wrk, struct w_step *w)
 {
@@ -1501,7 +1506,7 @@ alloc_step_batch(struct workload *wrk, struct w_step *w)
 	w->obj = calloc(nr_obj, sizeof(*w->obj));
 	igt_assert(w->obj);
 
-	w->obj[j].handle = gem_create(fd, 4096);
+	w->obj[j].handle = alloc_bo(fd, 4096);
 	w->obj[j].flags = EXEC_OBJECT_WRITE;
 	j++;
 	igt_assert(j < nr_obj);
@@ -1546,7 +1551,8 @@ alloc_step_batch(struct workload *wrk, struct w_step *w)
 	else
 		w->bb_sz = get_bb_sz(w, w->duration.max);
 
-	w->bb_handle = w->obj[j].handle = gem_create(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
+	w->bb_handle = w->obj[j].handle =
+		alloc_bo(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
 	init_bb(w);
 	w->obj[j].relocation_count = terminate_bb(w);
 
@@ -1703,7 +1709,7 @@ static void allocate_working_set(struct working_set *set)
 	igt_assert(set->handles);
 
 	for (i = 0; i < set->nr; i++)
-		set->handles[i] = gem_create(fd, set->sizes[i]);
+		set->handles[i] = alloc_bo(fd, set->sizes[i]);
 }
 
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
@@ -2339,7 +2345,7 @@ static unsigned long calibrate_nop(unsigned int tolerance_pct, struct intel_exec
 	do {
 		struct timespec t_start;
 
-		obj.handle = gem_create(fd, size);
+		obj.handle = alloc_bo(fd, size);
 		gem_write(fd, obj.handle, size - sizeof(bbe), &bbe,
 			  sizeof(bbe));
 		gem_execbuf(fd, &eb);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
