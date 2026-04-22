Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNhLMKGT6Gl9MgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 11:23:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36971443E61
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 11:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D7C10E997;
	Wed, 22 Apr 2026 09:23:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="SdjYoXB4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E3610E98A;
 Wed, 22 Apr 2026 09:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=lSqPa1PdmXI2jpkxmLTsPfh8jceAyrsRpIgBAmWEFSk=; b=SdjYoXB4e3eTeS+jgZukX6E879
 rNfencW57vICi/oaA1/zhjb0/YTLZYyNArHIJyO2QuPLabv7ayFwG/V9HPAbEuYWYsy+ECMJcLmMD
 8DXOOAL2TNOJh4YsSOe5sm3ZG8y6X+5FV8TvF01gB5UdXa9ZG01cC00FvN9laqSsuUXj+O0Tm36W9
 8KFTWP+9qp6Ce0IL8cMnsm0CsvrZZBHoKisGkklipulnm8kFW/txkaMdoKJ+JtPN5yRpmBxZCaD6p
 qGrovYUqwMjheHPYbw69t5XZs3Br3bL2E7qb2Cer6Y5FzC2cZfKHejs5C8FoE1B6wfh5jCzrx40EP
 Z91zRiuQ==;
Received: from
 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl
 ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1wFTo1-0000000BVot-0Nc6; Wed, 22 Apr 2026 09:23:37 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 94F393008E2; Wed, 22 Apr 2026 11:23:35 +0200 (CEST)
Date: Wed, 22 Apr 2026 11:23:35 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: John Stultz <jstultz@google.com>
Cc: K Prateek Nayak <kprateek.nayak@amd.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 willy@infradead.org, linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <20260422092335.GH3102924@noisy.programming.kicks-ass.net>
References: <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
 <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
 <CANDhNCr-+x8pTLhXZW=ATHaKTYEmXMPukz4+t8P-FeJ11Jrz9Q@mail.gmail.com>
 <20260421205647.GL3126523@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260421205647.GL3126523@noisy.programming.kicks-ass.net>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=casper.20170209];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email]
X-Rspamd-Queue-Id: 36971443E61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 10:56:48PM +0200, Peter Zijlstra wrote:
> Excellent, I'll write it up tomorrow.

How's this? It 'passes' the ww_mutex selftest thing in so far as that I
get the same:

[    2.312369] Beginning ww (wound) mutex selftests
[    4.853240] stress (stress_inorder_work) failed with -35
[    9.379572] Beginning ww (die) mutex selftests
[   16.435831] All ww mutex selftests passed

before the offending commit and after this patch.

---
Subject: Subject: locking/mutex: Fix ww_mutex wait_list operations
From: Peter Zijlstra <peterz@infradead.org>
Date: Wed Apr 22 10:38:41 CEST 2026

Chaitanya and John reported commit 25500ba7e77c ("locking/mutex: Remove the
list_head from struct mutex") wrecked ww_mutex.

Specifically there were 2 issues:

 - __ww_waiter_prev() had the termination condition wrong; it would terminate
   when the previous entry was the first, which results in a truncated
   iteration: W3, W2, (no W1).

 - __mutex_add_waiter(@pos != NULL), as used by __ww_waiter_add() /
   __ww_mutex_add_waiter(); this inserts @waiter before @pos (which is what
   list_add_tail() does). But this should then also update lock->first_waiter.

Much thanks to Prateek for spotting the __mutex_add_waiter() issue!

Fixes: 25500ba7e77c ("locking/mutex: Remove the list_head from struct mutex")
Reported-by: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Closes: https://lore.kernel.org/r/af005996-05e9-4336-8450-d14ca652ba5d%40intel.com
Reported-by: John Stultz <jstultz@google.com>
Closes: https://lore.kernel.org/r/CANDhNCq%3Doizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ%40mail.gmail.com
Debugged-by: K Prateek Nayak <kprateek.nayak@amd.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 kernel/locking/mutex.c    |   40 +++++++++++++++++++++++++++-------------
 kernel/locking/ww_mutex.h |   34 ++++++++++++++++++++++++++++++++--
 2 files changed, 59 insertions(+), 15 deletions(-)

--- a/kernel/locking/mutex.c
+++ b/kernel/locking/mutex.c
@@ -198,27 +198,43 @@ static inline void __mutex_clear_flag(st
 }
 
 /*
- * Add @waiter to a given location in the lock wait_list and set the
- * FLAG_WAITERS flag if it's the first waiter.
+ * Add @waiter to the @lock wait_list and set the FLAG_WAITERS flag if it's
+ * the first waiter.
+ *
+ * When @pos, @waiter is added before the waiter indicated by @pos. Otherwise
+ * @waiter will be added to the tail of the list.
  */
 static void
 __mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
-		   struct mutex_waiter *first)
+		   struct mutex_waiter *pos)
 	__must_hold(&lock->wait_lock)
 {
+	struct mutex_waiter *first = lock->first_waiter;
+
 	hung_task_set_blocker(lock, BLOCKER_TYPE_MUTEX);
 	debug_mutex_add_waiter(lock, waiter, current);
 
-	if (!first)
-		first = lock->first_waiter;
+	if (pos) {
+		/*
+		 * Insert @waiter before @pos.
+		 */
+		list_add_tail(&waiter->list, &pos->list);
+		/*
+		 * If @pos == @first, then @waiter will be the new first.
+		 */
+		if (pos == first)
+			lock->first_waiter = waiter;
+		return;
+	}
 
 	if (first) {
 		list_add_tail(&waiter->list, &first->list);
-	} else {
-		INIT_LIST_HEAD(&waiter->list);
-		lock->first_waiter = waiter;
-		__mutex_set_flag(lock, MUTEX_FLAG_WAITERS);
+		return;
 	}
+
+	INIT_LIST_HEAD(&waiter->list);
+	lock->first_waiter = waiter;
+	__mutex_set_flag(lock, MUTEX_FLAG_WAITERS);
 }
 
 static void
@@ -229,10 +245,8 @@ __mutex_remove_waiter(struct mutex *lock
 		__mutex_clear_flag(lock, MUTEX_FLAGS);
 		lock->first_waiter = NULL;
 	} else {
-		if (lock->first_waiter == waiter) {
-			lock->first_waiter = list_first_entry(&waiter->list,
-							      struct mutex_waiter, list);
-		}
+		if (lock->first_waiter == waiter)
+			lock->first_waiter = list_next_entry(waiter, list);
 		list_del(&waiter->list);
 	}
 
--- a/kernel/locking/ww_mutex.h
+++ b/kernel/locking/ww_mutex.h
@@ -6,6 +6,19 @@
 #define MUTEX_WAITER	mutex_waiter
 #define WAIT_LOCK	wait_lock
 
+/*
+ *           +--------+
+ *           | first  |
+ *           +--------+
+ *                |
+ *                v
+ *  +----+     +----+     +----+
+ *  | W3 | <-> | W1 | <-> | W2 |
+ *  +----+     +----+     +----+
+ *    ^                     ^
+ *    +---------------------+
+ */
+
 static inline struct mutex_waiter *
 __ww_waiter_first(struct mutex *lock)
 	__must_hold(&lock->wait_lock)
@@ -13,26 +26,43 @@ __ww_waiter_first(struct mutex *lock)
 	return lock->first_waiter;
 }
 
+/*
+ * for (cur = __ww_waiter_first(); cur; cur = __ww_waiter_next())
+ *
+ * Should iterate like: W1, W2, W3
+ */
 static inline struct mutex_waiter *
 __ww_waiter_next(struct mutex *lock, struct mutex_waiter *w)
 	__must_hold(&lock->wait_lock)
 {
 	w = list_next_entry(w, list);
+	/*
+	 * Terminate if the next entry is the first again, that has already
+	 * been observed.
+	 */
 	if (lock->first_waiter == w)
 		return NULL;
 
 	return w;
 }
 
+/*
+ * for (cur = __ww_waiter_last(); cur; cur = __ww_waiter_prev())
+ *
+ * Should iterate like: W3, W2, W1
+ */
 static inline struct mutex_waiter *
 __ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
 	__must_hold(&lock->wait_lock)
 {
-	w = list_prev_entry(w, list);
+	/*
+	 * Terminate at the first entry, the previous entry of first is the
+	 * last and that has already been observed.
+	 */
 	if (lock->first_waiter == w)
 		return NULL;
 
-	return w;
+	return list_prev_entry(w, list);
 }
 
 static inline struct mutex_waiter *
