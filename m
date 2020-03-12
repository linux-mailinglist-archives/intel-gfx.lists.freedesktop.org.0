Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4A2182729
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 03:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 177E26EA13;
	Thu, 12 Mar 2020 02:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36A2E6EA13
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 02:58:11 +0000 (UTC)
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EAB4920755;
 Thu, 12 Mar 2020 02:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583981891;
 bh=wJdKQS6Gj9xiXn1BGxhMdcyOYuYKUt5sQjTbx3jinXE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=K8pZg/PKbre08qAnpKHYtRQEa3Y8eHQgSJ3fgLwtnqltex4FaiU8ZEIREHiNxjpb9
 qxfNUXGPXjA4gqUzprHjQcLRywJGzvrNEi9TTFQuebfkJWWooV/O8sPMetTVryirIh
 b+RYwrkYLKzVIQ3DjUV5cnyC5qOPAdbW/iiKlw60=
Date: Wed, 11 Mar 2020 19:58:10 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: paulmck@kernel.org
Message-Id: <20200311195810.959d4f40d6013ee59a238cf3@linux-foundation.org>
In-Reply-To: <20200310154749.GZ2935@paulmck-ThinkPad-P72>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
 <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
 <20200310125031.GY2935@paulmck-ThinkPad-P72>
 <CANpmjNNT3HY7i9TywX0cAFqBtx2J3qOGOUG5nHzxAZ4bk_qgtg@mail.gmail.com>
 <77ff4da6b0a7448c947af6de4fb43cdb@AcuMS.aculab.com>
 <20200310154749.GZ2935@paulmck-ThinkPad-P72>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
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
Cc: 'Marco Elver' <elver@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 David Laight <David.Laight@ACULAB.COM>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Mar 2020 08:47:49 -0700 "Paul E. McKenney" <paulmck@kernel.org> wrote:

> On Tue, Mar 10, 2020 at 03:05:57PM +0000, David Laight wrote:
> > From: Marco Elver
> > > Sent: 10 March 2020 14:10
> > ...
> > > FWIW, for writes we're already being quite generous, in that plain
> > > aligned writes up to word-size are assumed to be "atomic" with the
> > > default (conservative) config, i.e. marking such writes is optional.
> > > Although, that's a generous assumption that is not always guaranteed
> > > to hold (https://lore.kernel.org/lkml/20190821103200.kpufwtviqhpbuv2n@willie-the-truck/).
> > 
> > Remind me to start writing everything in assembler.
> 
> Been there, done that.  :-/
> 
> > That and to mark all structure members 'volatile'.
> 
> Indeed.  READ_ONCE() and WRITE_ONCE() get this same effect, but without
> pessimizing non-concurrent accesses to those same members.  Plus KCSAN
> knows about READ_ONCE(), WRITE_ONCE(), and also volatile members.
> 

So I take it from all the above that we should do this.

Did anyone actually review the code? :)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
