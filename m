Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56A1802A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558A46E888;
	Tue, 10 Mar 2020 15:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62256E2CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:50:31 +0000 (UTC)
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA3A12468D;
 Tue, 10 Mar 2020 12:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583844631;
 bh=4nXPnykUsacARlS2dVosm+pERhdkOACkmujynfGKPDc=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=LxJaWEYOLamJTgK85rUm0S/gisC6gK1qb5rPeeF4ZttSvr+VX0xdaDonSnclURJVU
 Oy2hFi/tprPB5V1gzSnp2yfjyegJUdbpT81qPOYJlhED/knyJfBTC/PU3PI7ZVMup4
 dhN3oqm5xBXAa4kcjPbXcmCra5t10+x/VnV3oK6c=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id 5558E35226CF; Tue, 10 Mar 2020 05:50:31 -0700 (PDT)
Date: Tue, 10 Mar 2020 05:50:31 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20200310125031.GY2935@paulmck-ThinkPad-P72>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
 <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 10 Mar 2020 15:59:27 +0000
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
Reply-To: paulmck@kernel.org
Cc: elver@google.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 12:23:34PM +0000, David Laight wrote:
> From: Chris Wilson
> > Sent: 10 March 2020 11:50
> > 
> > Quoting David Laight (2020-03-10 11:36:41)
> > > From: Chris Wilson
> > > > Sent: 10 March 2020 09:21
> > > > Instruct the compiler to read the next element in the list iteration
> > > > once, and that it is not allowed to reload the value from the stale
> > > > element later. This is important as during the course of the safe
> > > > iteration, the stale element may be poisoned (unbeknownst to the
> > > > compiler).
> > >
> > > Eh?
> > > I thought any function call will stop the compiler being allowed
> > > to reload the value.
> > > The 'safe' loop iterators are only 'safe' against called
> > > code removing the current item from the list.
> > >
> > > > This helps prevent kcsan warnings over 'unsafe' conduct in releasing the
> > > > list elements during list_for_each_entry_safe() and friends.
> > >
> > > Sounds like kcsan is buggy ????

Adding Marco on CC for his thoughts.

> > The warning kcsan gave made sense (a strange case where the emptying the
> > list from inside the safe iterator would allow that list to be taken
> > under a global mutex and have one extra request added to it. The
> > list_for_each_entry_safe() should be ok in this scenario, so long as the
> > next element is read before this element is dropped, and the compiler is
> > instructed not to reload the element.
> 
> Normally the loop iteration code has to hold the mutex.
> I guess it can be released inside the loop provided no other
> code can ever delete entries.
> 
> > kcsan is a little more insistent on having that annotation :)
> > 
> > In this instance I would say it was a false positive from kcsan, but I
> > can see why it would complain and suspect that given a sufficiently
> > aggressive compiler, we may be caught out by a late reload of the next
> > element.
> 
> If you have:
> 	for (; p; p = next) {
> 		next = p->next;
> 		external_function_call(void);
> 	}
> the compiler must assume that the function call
> can change 'p->next' and read it before the call.

That "must assume" is a statement of current compiler technology.
Given the progress over the past forty years, I would not expect this
restriction to hold forever.  Yes, we can and probably will get the
compiler implementers to give us command-line flags to suppress global
analysis.  But given the progress in compilers that I have seen over
the past 4+ decades, I would expect that the day will come when we won't
want to be using those command-line flags.

But if you want to ignore KCSAN's warnings, you are free to do so.

> Is this a list with strange locking rules?
> The only deletes are from within the loop.
> Adds and deletes are locked.
> The list traversal isn't locked.
> 
> I suspect kcsan bleats because it doesn't assume the compiler
> will use a single instruction/memory operation to read p->next.
> That is just stupid.

Heh!  If I am still around, I will ask you for your evaluation of the
above statement in 40 years.  Actually, 10 years will likely suffice.  ;-)

							Thanx, Paul
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
