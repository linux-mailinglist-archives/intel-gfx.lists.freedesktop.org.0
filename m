Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D0918029F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8016E33A;
	Tue, 10 Mar 2020 15:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E056E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:10:07 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id j14so13262156otq.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 07:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UH/kbp/wpXOAAE3tRNnXeOhnV8pFJCL150z+9pntZ4A=;
 b=RWOmkRG/j7y49Wh3SB9PdFhimY5gdbbMOjfJjQXm6WmxbtGRhWUGE2xUdZ7PzL4/Y/
 Fpvm/Of6YjafgVW2nYRKdQxF+l0LSXglzjiU8dCzWmTqyOm/9m5a04/5C3CTbomPV+Wx
 BBf/GYHEx8y8vA0rDW3muZe3lQoMsG18tsNePYHtL7TDDTpKvQi5TzkvH3txUaUX7kfP
 2KUzZjvsiJ3MWXs49B++XTqiVQaLOz2Z44p2Yzy4G/nxGS8NZ52+OtdnD9qHt90rTzJ5
 fI7NhweRPwmp3LbgL1FaXgg0jWQqVtfHFWmrLzAxSRCbsZG2BT4OfAzKLfOe8C9Z8uc/
 z5CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UH/kbp/wpXOAAE3tRNnXeOhnV8pFJCL150z+9pntZ4A=;
 b=VSvUwwj5gC7mW594cqlX9T2GL3vy69rFtfgWdddr5Rk3kbx41lrROaeeI2Bc0LCxbD
 tF59FH0zI3u+cqUPAMTAM/7N4/21G92znEM6IDDmdAzgNWOArdILe4Cgo1PqjET4c9qN
 1yiLnUcvEWRMKNd8vrand6EkzISzASjrlKb0vEXrzMEvGOkhMpa32EJx9ojjgIbARz2z
 oLJczgHhmg7UEtZZio+C6Vun7bwcpmOt/Q2Ot/7gw2WLGqsG9K8aHq+FfZTjRoSbuS+W
 4sZp9fUCk8POzTMI6q5GayIvGqmGFxx0uWLgzuCR8ZMiUnaC8hfrSbGrxnz7OW8Iq91x
 51AA==
X-Gm-Message-State: ANhLgQ3qki5x0ZuJZ9LeV6ONPX+ft12o5IvysDsBSAWCzSF0pgiqfDZa
 FV1SXUAj3Au86LkAqyU5qoq0QAsX7nzVk8NN4xqhiQ==
X-Google-Smtp-Source: ADFU+vtwVdEQGAWAoaHHMTTQqrZlkWuEbwFRdLQaXgbygLf45P2NIhBJnC/ZRlCG+ZxCkxL54JOpEYeosmN3rZQiCHk=
X-Received: by 2002:a05:6830:1213:: with SMTP id
 r19mr9393949otp.17.1583849406243; 
 Tue, 10 Mar 2020 07:10:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
 <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
 <20200310125031.GY2935@paulmck-ThinkPad-P72>
In-Reply-To: <20200310125031.GY2935@paulmck-ThinkPad-P72>
From: Marco Elver <elver@google.com>
Date: Tue, 10 Mar 2020 15:09:54 +0100
Message-ID: <CANpmjNNT3HY7i9TywX0cAFqBtx2J3qOGOUG5nHzxAZ4bk_qgtg@mail.gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 David Laight <David.Laight@aculab.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Mar 2020 at 13:50, Paul E. McKenney <paulmck@kernel.org> wrote:
>
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

I'd have to see a stack-trace with line-numbers.

But keep in mind what KCSAN does, which is report "data races". If the
KCSAN report showed 2 accesses, where one of them was a *plain* read
(and the other a write), then it's a valid data race (per LKMM's
definition). It seems this was the case here.

As mentioned, the compiler is free to transform plain accesses in
various concurrency-unfriendly ways.

FWIW, for writes we're already being quite generous, in that plain
aligned writes up to word-size are assumed to be "atomic" with the
default (conservative) config, i.e. marking such writes is optional.
Although, that's a generous assumption that is not always guaranteed
to hold (https://lore.kernel.org/lkml/20190821103200.kpufwtviqhpbuv2n@willie-the-truck/).

If there is code for which you prefer not to see KCSAN reports at all,
you are free to disable them with KCSAN_SANITIZE_file.o := n

Thanks,
-- Marco

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
> >       for (; p; p = next) {
> >               next = p->next;
> >               external_function_call(void);
> >       }
> > the compiler must assume that the function call
> > can change 'p->next' and read it before the call.
>
> That "must assume" is a statement of current compiler technology.
> Given the progress over the past forty years, I would not expect this
> restriction to hold forever.  Yes, we can and probably will get the
> compiler implementers to give us command-line flags to suppress global
> analysis.  But given the progress in compilers that I have seen over
> the past 4+ decades, I would expect that the day will come when we won't
> want to be using those command-line flags.
>
> But if you want to ignore KCSAN's warnings, you are free to do so.
>
> > Is this a list with strange locking rules?
> > The only deletes are from within the loop.
> > Adds and deletes are locked.
> > The list traversal isn't locked.
> >
> > I suspect kcsan bleats because it doesn't assume the compiler
> > will use a single instruction/memory operation to read p->next.
> > That is just stupid.
>
> Heh!  If I am still around, I will ask you for your evaluation of the
> above statement in 40 years.  Actually, 10 years will likely suffice.  ;-)
>
>                                                         Thanx, Paul
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
