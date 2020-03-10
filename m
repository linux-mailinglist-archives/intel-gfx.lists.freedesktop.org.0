Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B835317F6B3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6FD6E1BC;
	Tue, 10 Mar 2020 11:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE1A6E1BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:50:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20507742-1500050 for multiple; Tue, 10 Mar 2020 11:50:09 +0000
MIME-Version: 1.0
In-Reply-To: <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158384100886.16414.15741589015363013386@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 11:50:08 +0000
Subject: Re: [Intel-gfx] [PATCH] list: Prevent compiler reloads inside
 'safe' list iteration
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
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting David Laight (2020-03-10 11:36:41)
> From: Chris Wilson
> > Sent: 10 March 2020 09:21
> > Instruct the compiler to read the next element in the list iteration
> > once, and that it is not allowed to reload the value from the stale
> > element later. This is important as during the course of the safe
> > iteration, the stale element may be poisoned (unbeknownst to the
> > compiler).
> 
> Eh?
> I thought any function call will stop the compiler being allowed
> to reload the value.
> The 'safe' loop iterators are only 'safe' against called
> code removing the current item from the list.
> 
> > This helps prevent kcsan warnings over 'unsafe' conduct in releasing the
> > list elements during list_for_each_entry_safe() and friends.
> 
> Sounds like kcsan is buggy ????

The warning kcsan gave made sense (a strange case where the emptying the
list from inside the safe iterator would allow that list to be taken
under a global mutex and have one extra request added to it. The
list_for_each_entry_safe() should be ok in this scenario, so long as the
next element is read before this element is dropped, and the compiler is
instructed not to reload the element. kcsan is a little more insistent
on having that annotation :)

In this instance I would say it was a false positive from kcsan, but I
can see why it would complain and suspect that given a sufficiently
aggressive compiler, we may be caught out by a late reload of the next
element.

That's my conjecture, but I leave it to the lkmm experts to decide :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
