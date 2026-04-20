Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNExJh4k5ml1sgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 15:03:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BE242B2EE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 15:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8976910E5C2;
	Mon, 20 Apr 2026 13:03:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="UrJKwYuR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8953310E5BB;
 Mon, 20 Apr 2026 13:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DKymh3PV+mgJqRM1Dkyok+MYcYFqgxUc2hE3q6tZYJ8=; b=UrJKwYuR4Nn5wr9LGww+RZvBQg
 H5I284dBNYhlgA6ApbrXn4xd74xAPuZVJiP/rEfIfxVN4uEjdIF/NeMa3nS2s+wQuv0ro4pnokLj+
 oHnpWIYFTE/AjWZwSo0UIFNVAmiWk9fWKyY6EadqTPFiLAqdbBHFwErlrnTYe1Qk2JW7XYJqPuyM3
 d7z4yeE2y5Pta1YP+PANWVHpV3pL+2qfL+IaFpRYSjlCC1XEeuj85kwDj0yMJMI4Qx5KLpmrzki6T
 1MYNUSK69CwGDv3G/yQG3Wpj74ttCEB49NoaieCrWtFgUf2Wj9oNkqmKrRdJmIzEYNSuATW/6Gqun
 eGN/nfxA==;
Received: from
 2001-1c00-8d85-4b00-266e-96ff-fe07-7dcc.cable.dynamic.v6.ziggo.nl
 ([2001:1c00:8d85:4b00:266e:96ff:fe07:7dcc]
 helo=noisy.programming.kicks-ass.net)
 by desiato.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1wEoHX-00000007ywO-1Gw1; Mon, 20 Apr 2026 13:03:19 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id B2A81300794; Mon, 20 Apr 2026 15:03:18 +0200 (CEST)
Date: Mon, 20 Apr 2026 15:03:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: willy@infradead.org, linux-kernel@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, ravitejax.veesam@intel.com
Subject: Re: Regression on linux-next (next-20260324 )
Message-ID: <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260330195037.GW2872@noisy.programming.kicks-ass.net>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	FROM_NEQ_ENVFROM(0.00)[peterz@infradead.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,noisy.programming.kicks-ass.net:mid]
X-Rspamd-Queue-Id: 15BE242B2EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 09:50:37PM +0200, Peter Zijlstra wrote:
> On Mon, Mar 30, 2026 at 01:56:33PM +0530, Borah, Chaitanya Kumar wrote:
> > > diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> > > index b1834ab7e782..bb8b410779d4 100644
> > > --- a/kernel/locking/ww_mutex.h
> > > +++ b/kernel/locking/ww_mutex.h
> > > @@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
> > >   	struct mutex_waiter *w = lock->first_waiter;
> > >   	if (w)
> > > -		w = list_prev_entry(w, list);
> > > +		w = __ww_waiter_prev(lock, w);
> > >   	return w;
> > >   }
> > Thank you for the response, Peter. Unfortunately, the issue is still seen
> > with this change.
> 
> Bah, indeed. Looking at this after the weekend I see that it's actually
> wrong.
> 
> But I haven't yet had a new idea. I don't suppose there is a relatively
> easy way to reproduce this issue outside of your CI robot?
> 
> My current working thesis is that since this is graphics, this is
> ww_mutex related. I'll go over this code once more...

Since you've not provided a reproducer, can I ask you to try the below?

---
diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
index 186b463fe326..a93e57fc53b1 100644
--- a/kernel/locking/mutex.c
+++ b/kernel/locking/mutex.c
@@ -229,10 +229,8 @@ __mutex_remove_waiter(struct mutex *lock, struct mutex_waiter *waiter)
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
 
diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
index 016f0db892a5..875b303511b3 100644
--- a/kernel/locking/ww_mutex.h
+++ b/kernel/locking/ww_mutex.h
@@ -6,6 +6,32 @@
 #define MUTEX_WAITER	mutex_waiter
 #define WAIT_LOCK	wait_lock
 
+/*
+ *                +-------+
+ *                |   3   | <+
+ *                +-------+  |
+ *                    ^      |
+ *                    |      |
+ *                    v      |
+ *  +-------+     +-------+  |
+ *  | first | --> |   1   |  |
+ *  +-------+     +-------+  |
+ *                    ^      |
+ *                    |      |
+ *                    v      |
+ *                +-------+  |
+ *                |   2   | <+
+ *                +-------+
+ */
+
+/*
+ * Specifically:
+ *
+ *   for (cur = __ww_waiter_first(); cur; cur = __ww_waiter_next())
+ *     ...
+ *
+ * should iterate like: 1 2 3
+ */
 static inline struct mutex_waiter *
 __ww_waiter_first(struct mutex *lock)
 	__must_hold(&lock->wait_lock)
@@ -18,23 +44,21 @@ __ww_waiter_next(struct mutex *lock, struct mutex_waiter *w)
 	__must_hold(&lock->wait_lock)
 {
 	w = list_next_entry(w, list);
-	if (lock->first_waiter == w)
-		return NULL;
-
-	return w;
-}
-
-static inline struct mutex_waiter *
-__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
-	__must_hold(&lock->wait_lock)
-{
-	w = list_prev_entry(w, list);
-	if (lock->first_waiter == w)
+	/* We've already seen first, terminate */
+	if (w == __ww_waiter_first(lock))
 		return NULL;
 
 	return w;
 }
 
+/*
+ * Specifically:
+ *
+ *   for (cur = __ww_waiter_last(); cur; cur = __ww_waiter_prev())
+ *     ...
+ *
+ * should iterate like: 3 2 1
+ */
 static inline struct mutex_waiter *
 __ww_waiter_last(struct mutex *lock)
 	__must_hold(&lock->wait_lock)
@@ -46,6 +70,18 @@ __ww_waiter_last(struct mutex *lock)
 	return w;
 }
 
+static inline struct mutex_waiter *
+__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
+	__must_hold(&lock->wait_lock)
+{
+	w = list_prev_entry(w, list);
+	/* We've already seen last, terminate */
+	if (w == __ww_waiter_last(lock))
+		return NULL;
+
+	return w;
+}
+
 static inline void
 __ww_waiter_add(struct mutex *lock, struct mutex_waiter *waiter, struct mutex_waiter *pos)
 	__must_hold(&lock->wait_lock)
