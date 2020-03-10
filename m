Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCB617F774
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F336E221;
	Tue, 10 Mar 2020 12:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 387 seconds by postgrey-1.36 at gabe;
 Tue, 10 Mar 2020 12:30:05 UTC
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619EA6E221
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:30:05 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-134-nZB81PfeP52EGTki-0E5KQ-1; Tue, 10 Mar 2020 12:23:34 +0000
X-MC-Unique: nZB81PfeP52EGTki-0E5KQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 10 Mar 2020 12:23:34 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Tue, 10 Mar 2020 12:23:34 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Chris Wilson' <chris@chris-wilson.co.uk>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] list: Prevent compiler reloads inside 'safe' list
 iteration
Thread-Index: AQHV9r1KBrT+D4Vo2U+Op9v/Nv0od6hBsdzwgAAEwQCAAAWYAA==
Date: Tue, 10 Mar 2020 12:23:34 +0000
Message-ID: <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
In-Reply-To: <158384100886.16414.15741589015363013386@build.alporthouse.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
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

From: Chris Wilson
> Sent: 10 March 2020 11:50
> 
> Quoting David Laight (2020-03-10 11:36:41)
> > From: Chris Wilson
> > > Sent: 10 March 2020 09:21
> > > Instruct the compiler to read the next element in the list iteration
> > > once, and that it is not allowed to reload the value from the stale
> > > element later. This is important as during the course of the safe
> > > iteration, the stale element may be poisoned (unbeknownst to the
> > > compiler).
> >
> > Eh?
> > I thought any function call will stop the compiler being allowed
> > to reload the value.
> > The 'safe' loop iterators are only 'safe' against called
> > code removing the current item from the list.
> >
> > > This helps prevent kcsan warnings over 'unsafe' conduct in releasing the
> > > list elements during list_for_each_entry_safe() and friends.
> >
> > Sounds like kcsan is buggy ????
> 
> The warning kcsan gave made sense (a strange case where the emptying the
> list from inside the safe iterator would allow that list to be taken
> under a global mutex and have one extra request added to it. The
> list_for_each_entry_safe() should be ok in this scenario, so long as the
> next element is read before this element is dropped, and the compiler is
> instructed not to reload the element.

Normally the loop iteration code has to hold the mutex.
I guess it can be released inside the loop provided no other
code can ever delete entries.

> kcsan is a little more insistent on having that annotation :)
> 
> In this instance I would say it was a false positive from kcsan, but I
> can see why it would complain and suspect that given a sufficiently
> aggressive compiler, we may be caught out by a late reload of the next
> element.

If you have:
	for (; p; p = next) {
		next = p->next;
		external_function_call(void);
	}
the compiler must assume that the function call
can change 'p->next' and read it before the call.

Is this a list with strange locking rules?
The only deletes are from within the loop.
Adds and deletes are locked.
The list traversal isn't locked.

I suspect kcsan bleats because it doesn't assume the compiler
will use a single instruction/memory operation to read p->next.
That is just stupid.

	David



		

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
