Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FC51B9F3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 11:00:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DFF6E12F;
	Mon, 27 Apr 2020 09:00:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412986E12F;
 Mon, 27 Apr 2020 09:00:20 +0000 (UTC)
IronPort-SDR: xfPBlNr4aJtBxQus441xMJhtfpo+MypkHPjE+oXQT3/CiaNZU3CJ4mJTECRfU1bj3vqEBq4/Lr
 S6VhkD5rnzHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 02:00:19 -0700
IronPort-SDR: uLW3l7guPMeG6mnRtow7mG5BYRVshg71CLTHxfTrRMvtzZMxsJCl8Tf7fpkCkNlgq4E5d316jI
 0jIpoNshnViA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,323,1583222400"; d="scan'208";a="292405546"
Received: from apopescu-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.53.226])
 by fmsmga002.fm.intel.com with ESMTP; 27 Apr 2020 02:00:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Apr 2020 10:00:14 +0100
Message-Id: <20200427090014.10041-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] gem_wsim: Fix preempt period assert
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

Recently added assert in a common helper used for calculating batch
duration and preemption period is harmful when preemption is disabled on a
context. Split out into low level and high level helper and use the former
for preemption period queries.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index 81f47b86d619..ad4edb936920 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -1151,7 +1151,7 @@ __get_ctx(struct workload *wrk, const struct w_step *w)
 }
 
 static unsigned long
-get_bb_sz(const struct w_step *w, unsigned int duration)
+__get_bb_sz(const struct w_step *w, unsigned int duration)
 {
 	enum intel_engine_id engine = w->engine;
 	struct ctx *ctx = __get_ctx(w->wrk, w);
@@ -1165,6 +1165,15 @@ get_bb_sz(const struct w_step *w, unsigned int duration)
 	d = ALIGN(duration * engine_calib_map[engine] * sizeof(uint32_t) /
 		  nop_calibration_us,
 		  sizeof(uint32_t));
+
+	return d;
+}
+
+static unsigned long
+get_bb_sz(const struct w_step *w, unsigned int duration)
+{
+	unsigned long d = __get_bb_sz(w, duration);
+
 	igt_assert(d);
 
 	return d;
@@ -1174,7 +1183,7 @@ static void
 init_bb(struct w_step *w, unsigned int flags)
 {
 	const unsigned int arb_period =
-			get_bb_sz(w, w->preempt_us) / sizeof(uint32_t);
+			__get_bb_sz(w, w->preempt_us) / sizeof(uint32_t);
 	const unsigned int mmap_len = ALIGN(w->bb_sz, 4096);
 	unsigned int i;
 	uint32_t *ptr;
@@ -1395,7 +1404,7 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 
 	if (w->unbound_duration)
 		/* nops + MI_ARB_CHK + MI_BATCH_BUFFER_START */
-		w->bb_sz = max(PAGE_SIZE, get_bb_sz(w, w->preempt_us)) +
+		w->bb_sz = max(PAGE_SIZE, __get_bb_sz(w, w->preempt_us)) +
 			   (1 + 3) * sizeof(uint32_t);
 	else
 		w->bb_sz = get_bb_sz(w, w->duration.max);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
