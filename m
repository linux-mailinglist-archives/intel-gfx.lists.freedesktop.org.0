Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 487E31802A2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 16:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A546E88C;
	Tue, 10 Mar 2020 15:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15AF16E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 15:47:50 +0000 (UTC)
Received: from paulmck-ThinkPad-P72.home (50-39-105-78.bvtn.or.frontiernet.net
 [50.39.105.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5C0320866;
 Tue, 10 Mar 2020 15:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583855269;
 bh=fxXBC6mLqLhF630XcKwvNoA3xYL1Mgjsv4/cnzDW8FE=;
 h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
 b=t6BwwWyfltp0cLV9XE4wIgEp201EDrtvpsCABAtdCg+fbpp7EdL6PG2iWnkxtPkQd
 Ik604FbqVyTy4wadVmpZAsXt2e7bm7XDJ3DIRBnb1ZhLVa1qlnYu0lMu71TBYTjzys
 EuahFLGqKgSz2Vm3dRqAs7NvA4Js9NZR3HqrOCFE=
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
 id ACDAD35226CF; Tue, 10 Mar 2020 08:47:49 -0700 (PDT)
Date: Tue, 10 Mar 2020 08:47:49 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: David Laight <David.Laight@ACULAB.COM>
Message-ID: <20200310154749.GZ2935@paulmck-ThinkPad-P72>
References: <20200310092119.14965-1-chris@chris-wilson.co.uk>
 <2e936d8fd2c445beb08e6dd3ee1f3891@AcuMS.aculab.com>
 <158384100886.16414.15741589015363013386@build.alporthouse.com>
 <723d527a4ad349b78bf11d52eba97c0e@AcuMS.aculab.com>
 <20200310125031.GY2935@paulmck-ThinkPad-P72>
 <CANpmjNNT3HY7i9TywX0cAFqBtx2J3qOGOUG5nHzxAZ4bk_qgtg@mail.gmail.com>
 <77ff4da6b0a7448c947af6de4fb43cdb@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77ff4da6b0a7448c947af6de4fb43cdb@AcuMS.aculab.com>
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
Cc: 'Marco Elver' <elver@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 03:05:57PM +0000, David Laight wrote:
> From: Marco Elver
> > Sent: 10 March 2020 14:10
> ...
> > FWIW, for writes we're already being quite generous, in that plain
> > aligned writes up to word-size are assumed to be "atomic" with the
> > default (conservative) config, i.e. marking such writes is optional.
> > Although, that's a generous assumption that is not always guaranteed
> > to hold (https://lore.kernel.org/lkml/20190821103200.kpufwtviqhpbuv2n@willie-the-truck/).
> 
> Remind me to start writing everything in assembler.

Been there, done that.  :-/

> That and to mark all structure members 'volatile'.

Indeed.  READ_ONCE() and WRITE_ONCE() get this same effect, but without
pessimizing non-concurrent accesses to those same members.  Plus KCSAN
knows about READ_ONCE(), WRITE_ONCE(), and also volatile members.

							Thanx, Paul
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
