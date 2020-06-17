Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D6D1FD179
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582466E130;
	Wed, 17 Jun 2020 16:01:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66DB36E130
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:35 +0000 (UTC)
IronPort-SDR: J37Yga88HMlo3YPXuV4/OsfVZUtJ8ZLfoW+qQwKLsmIMthAPTzT9bk8MLykPgvSfNm5SSqvtD9
 PfyvswFTY6MA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:35 -0700
IronPort-SDR: 9UwZNN3svwZ0XqfuHtn2rYr7rMQPjmh1O1s8pNGyXCjvue70RqJp8/aqTndb/Y+md7l4+sehlL
 e8fAXjnuVM0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186130"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:14 +0100
Message-Id: <20200617160120.16555-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 04/10] gem_wsim: Move BO allocation to a
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
index 60982cb73ba7..5893de38a98e 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -1472,6 +1472,11 @@ get_ctxid(struct workload *wrk, struct w_step *w)
 	return wrk->ctx_list[w->context].id;
 }
 
+static uint32_t alloc_bo(int i915, unsigned long size)
+{
+	return gem_create(i915, size);
+}
+
 static void
 alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 {
@@ -1483,7 +1488,7 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 	w->obj = calloc(nr_obj, sizeof(*w->obj));
 	igt_assert(w->obj);
 
-	w->obj[j].handle = gem_create(fd, 4096);
+	w->obj[j].handle = alloc_bo(fd, 4096);
 	w->obj[j].flags = EXEC_OBJECT_WRITE;
 	j++;
 	igt_assert(j < nr_obj);
@@ -1528,7 +1533,8 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 	else
 		w->bb_sz = get_bb_sz(w, w->duration.max);
 
-	w->bb_handle = w->obj[j].handle = gem_create(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
+	w->bb_handle = w->obj[j].handle =
+		alloc_bo(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
 	init_bb(w, flags);
 	w->obj[j].relocation_count = terminate_bb(w, flags);
 
@@ -1685,7 +1691,7 @@ static void allocate_working_set(struct working_set *set)
 	igt_assert(set->handles);
 
 	for (i = 0; i < set->nr; i++)
-		set->handles[i] = gem_create(fd, set->sizes[i]);
+		set->handles[i] = alloc_bo(fd, set->sizes[i]);
 }
 
 #define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
@@ -2323,7 +2329,7 @@ static unsigned long calibrate_nop(unsigned int tolerance_pct, struct intel_exec
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
