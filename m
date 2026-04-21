Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBPQHsmL52lY9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:38:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C5043C26B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:38:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6931210E1B1;
	Tue, 21 Apr 2026 14:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="VXc5tKeO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17A910E8C9;
 Tue, 21 Apr 2026 14:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sUqvA3FMmRYF49bfuLkUbzZU3u9JT3bj4+pmtFa1tis=; b=VXc5tKeODdn4JEKxlL4MhFyqDf
 AiJTnKTnXJ9oTUwglx6JmI1qi+GEr/r2iFRMPoULQ15hZsbKClS+M8S7BVvE5VU27CmxPEz3rgome
 XUrGw8iOYxcDQstwcXYTtb8lJ/mrjs0/CacofksHaHj7cFehZSmDo58+p2wjiScNnKAA2ltQdK5PZ
 LulthwzFgJVxYmnkNJBRJgU3XB1/l9Ckbu3XnK+jB+F1hHAtUUQ2/QR/iNktaSzRAI8t02/BgOU7Z
 Pyh4ibIZ8jSeqXVvWXujrfq3ed2jqnEJEAqeI6qV8/Hbn6Khbo/MRgdZ9MO6G+pdJjKtKQ/JP06/x
 dN+34dSw==;
Received: from
 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl
 ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1wFCEc-00000009wEt-0G8z; Tue, 21 Apr 2026 14:37:54 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id B134D300BD2; Tue, 21 Apr 2026 16:37:52 +0200 (CEST)
Date: Tue, 21 Apr 2026 16:37:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: K Prateek Nayak <kprateek.nayak@amd.com>
Cc: John Stultz <jstultz@google.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 willy@infradead.org, linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
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
	R_DKIM_REJECT(1.00)[infradead.org:s=desiato.20200630];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: D8C5043C26B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 06:24:20PM +0530, K Prateek Nayak wrote:
> 
> 
> On 4/21/2026 3:45 PM, Peter Zijlstra wrote:
> > On Mon, Apr 20, 2026 at 11:45:12PM -0700, John Stultz wrote:
> > 
> >> So I tripped over this in my own testing today preping proxy patches,
> >> bisecting it down to the same problematic commit 25500ba7e77c
> >> ("locking/mutex: Remove the list_head from struct mutex").
> >>
> >> Inteed it does seem related to ww_mutexes, as I can pretty easily
> >> reproduce it with defconfig + CONFIG_WW_MUTEX_SELFTEST=y  using
> >> qemu-system-x86
> >>
> >> Where the test will basically hang on bootup.
> > 
> > *groan* indeed. This of course means no CI is running this thing :-(
> > 
> > Anyway, yay for deterministic reproducer. Let me go prod at this.
> 
> So I managed to unblock the ww-mutext_test with:
> 
> diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
> index 186b463fe326..623c892c3742 100644
> --- a/kernel/locking/mutex.c
> +++ b/kernel/locking/mutex.c
> @@ -209,8 +209,13 @@ __mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
>  	hung_task_set_blocker(lock, BLOCKER_TYPE_MUTEX);
>  	debug_mutex_add_waiter(lock, waiter, current);
>  
> -	if (!first)
> +	if (!first) {
>  		first = lock->first_waiter;
> +	} else if (first == lock->first_waiter) {
> +		list_add_tail(&waiter->list, &first->list);
> +		lock->first_waiter = waiter;
> +		return;
> +	}
>  
>  	if (first) {
>  		list_add_tail(&waiter->list, &first->list);

> First hunk orders the first_waiter if we are attaching to the
> tail of current first_waiter which would have previously ended
> up next to list_head.

This is the case in __ww_mutex_add_waiter() where pos == first, right?

Argh, I see... yes. Perhaps something like the below though?

> diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> index 016f0db892a5..2fcd6221fc64 100644
> --- a/kernel/locking/ww_mutex.h
> +++ b/kernel/locking/ww_mutex.h
> @@ -28,10 +28,9 @@ static inline struct mutex_waiter *
>  __ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
>  	__must_hold(&lock->wait_lock)
>  {
> -	w = list_prev_entry(w, list);
>  	if (lock->first_waiter == w)
>  		return NULL;
> -
> +	w = list_prev_entry(w, list);
>  	return w;
>  }

> The second hunk deals with __ww_waiter_prev() - since we are
> traversing back from w, I guess we must first check if we are
> at the first_waiter already or not.

Yes, that second hunk is what I found yesterday, although my fix was
far more verbose. I like this one better ;-)


---
diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
index 95f1822122a1..7d48d6f49f71 100644
--- a/kernel/locking/mutex.c
+++ b/kernel/locking/mutex.c
@@ -200,21 +200,34 @@ static inline void __mutex_clear_flag(struct mutex *lock, unsigned long flag)
  */
 static void
 __mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
-		   struct mutex_waiter *first)
+		   struct mutex_waiter *pos)
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
@@ -224,10 +237,8 @@ __mutex_remove_waiter(struct mutex *lock, struct mutex_waiter *waiter)
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
 
