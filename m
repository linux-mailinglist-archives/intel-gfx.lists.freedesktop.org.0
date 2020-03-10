Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 712C61802A0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9046E358;
	Tue, 10 Mar 2020 15:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE0DC88E34
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 13:52:32 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D9E130E;
 Tue, 10 Mar 2020 06:52:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 26C433F6CF;
 Tue, 10 Mar 2020 06:52:31 -0700 (PDT)
Date: Tue, 10 Mar 2020 13:52:24 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Message-ID: <20200310135224.GA54660@lakrids.cambridge.arm.com>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
 <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
 <20200310125031.GY2935@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310125031.GY2935@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
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
Cc: elver@google.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 05:50:31AM -0700, Paul E. McKenney wrote:
> On Tue, Mar 10, 2020 at 12:23:34PM +0000, David Laight wrote:
> > From: Chris Wilson
> > > Sent: 10 March 2020 11:50
> > > 
> > > Quoting David Laight (2020-03-10 11:36:41)
> > > > From: Chris Wilson
> > > > > Sent: 10 March 2020 09:21
> > > > > Instruct the compiler to read the next element in the list iteration
> > > > > once, and that it is not allowed to reload the value from the stale
> > > > > element later. This is important as during the course of the safe
> > > > > iteration, the stale element may be poisoned (unbeknownst to the
> > > > > compiler).
> > > >
> > > > Eh?
> > > > I thought any function call will stop the compiler being allowed
> > > > to reload the value.
> > > > The 'safe' loop iterators are only 'safe' against called
> > > > code removing the current item from the list.
> > > >
> > > > > This helps prevent kcsan warnings over 'unsafe' conduct in releasing the
> > > > > list elements during list_for_each_entry_safe() and friends.
> > > >
> > > > Sounds like kcsan is buggy ????
> 
> Adding Marco on CC for his thoughts.
> 
> > > The warning kcsan gave made sense (a strange case where the emptying the
> > > list from inside the safe iterator would allow that list to be taken
> > > under a global mutex and have one extra request added to it. The
> > > list_for_each_entry_safe() should be ok in this scenario, so long as the
> > > next element is read before this element is dropped, and the compiler is
> > > instructed not to reload the element.
> > 
> > Normally the loop iteration code has to hold the mutex.
> > I guess it can be released inside the loop provided no other
> > code can ever delete entries.
> > 
> > > kcsan is a little more insistent on having that annotation :)
> > > 
> > > In this instance I would say it was a false positive from kcsan, but I
> > > can see why it would complain and suspect that given a sufficiently
> > > aggressive compiler, we may be caught out by a late reload of the next
> > > element.
> > 
> > If you have:
> > 	for (; p; p = next) {
> > 		next = p->next;
> > 		external_function_call(void);
> > 	}
> > the compiler must assume that the function call
> > can change 'p->next' and read it before the call.
> 
> That "must assume" is a statement of current compiler technology.
> Given the progress over the past forty years, I would not expect this
> restriction to hold forever. 

FWIW, this is exactly the sort of assumption that link time optimization
is likely to render invalid going forward, and LTO is starting to be
used today (e.g. to enable SW CFI stuff with clang).

Given that, I don't think that core kernel primitives can rely on this
assumption.

Thanks,
Mark.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
