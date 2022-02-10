Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7A74B098F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 10:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05C810E7AF;
	Thu, 10 Feb 2022 09:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564C610E7AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 09:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=I+KdT8Ft4gEDreuv2bs/lK/WKosbMae+Gs2ZDIi52r8=; b=v5x6DP/o1WOVzInYWj+OWguYjf
 eLQpr7RM3CnxAAk3jaO2rcVftZ1e+5phpKIodTkLSxDXOwSvcTLi4qk5/ySJRc/hI1ychJkAen1z0
 Zp9OoP3OirWBCpXqLYBpe9/Sj5681YQ0jr1jxFHLaRwcMpikdJabxjYU5JWHBXZkz9o4nzeVsrg6P
 3kcm8y3Q7W1+pNSL5ou9mrCzcTeYQh59B1RYKiy79tD66DAHw03/JjWeZzPf9H4ShJonEVXh+vnnk
 BnDNFiE1x/ux56JFcpXclclJQt/Xhc668p+s+htSe08/XCrlKbLPn7mqxLMMMLhiQWq2+o3CtuCxk
 YxstcdEw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI5p4-009J34-3j; Thu, 10 Feb 2022 09:33:06 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CBA9A3002DB;
 Thu, 10 Feb 2022 10:33:03 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B6A72201D84A1; Thu, 10 Feb 2022 10:33:03 +0100 (CET)
Date: Thu, 10 Feb 2022 10:33:03 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Message-ID: <YgTbz55YtOQbnA3m@hirez.programming.kicks-ass.net>
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220209090908.GK23216@worktop.programming.kicks-ass.net>
 <24fe6a08-5931-8e8d-8d77-459388c4654e@redhat.com>
 <919214156.50301.1644431371345.JavaMail.zimbra@efficios.com>
 <69e5f778-8715-4acf-c027-58b6ec4a9e77@redhat.com>
 <CAM9d7ci=N2NVj57k=W0ebqBzfW+ThBqYSrx-CZbgwGcbOSrEGA@mail.gmail.com>
 <718973621.50447.1644434890744.JavaMail.zimbra@efficios.com>
 <CAM9d7cj=tj6pA48q_wkQOGn-2vUc9FRj63bMBOm5R7OukmMbTQ@mail.gmail.com>
 <f8b7760f-16a2-6ada-de88-9e21a7e8fef9@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f8b7760f-16a2-6ada-de88-9e21a7e8fef9@redhat.com>
Subject: Re: [Intel-gfx] [RFC 00/12] locking: Separate lock tracepoints from
 lockdep/lock_stat (v1)
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
Cc: rcu <rcu@vger.kernel.org>, paulmck <paulmck@kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Boqun Feng <boqun.feng@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 cgroups <cgroups@vger.kernel.org>, Tejun Heo <tj@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-btrfs <linux-btrfs@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 09, 2022 at 03:17:38PM -0500, Waiman Long wrote:
> 
> On 2/9/22 14:45, Namhyung Kim wrote:
> > On Wed, Feb 9, 2022 at 11:28 AM Mathieu Desnoyers
> > <mathieu.desnoyers@efficios.com> wrote:
> > > ----- On Feb 9, 2022, at 2:22 PM, Namhyung Kim namhyung@kernel.org wrote:
> > > > I'm also concerning dynamic allocated locks in a data structure.
> > > > If we keep the info in a hash table, we should delete it when the
> > > > lock is gone.  I'm not sure we have a good place to hook it up all.
> > > I was wondering about this use case as well. Can we make it mandatory to
> > > declare the lock "class" (including the name) statically, even though the
> > > lock per-se is allocated dynamically ? Then the initialization of the lock
> > > embedded within the data structure would simply refer to the lock class
> > > definition.
> > Isn't it still the same if we have static lock classes that the entry needs
> > to be deleted from the hash table when it frees the data structure?
> > I'm more concerned about free than alloc as there seems to be no
> > API to track that in a place.
> 
> We may have to invent some new APIs to do that. For example,
> spin_lock_exit() can be the counterpart of spin_lock_init() and so on. Of
> course, existing kernel code have to be modified to designate the point
> after which a lock is no longer being used or is freed.

The canonical name is _destroy(). We even have mutex_destroy() except
it's usage isn't mandatory.

The easy way out is doing as lockdep does and hook into the memory
allocators and check every free'd hunk of memory for a lock. It does
hoever mean your data structure of choice needs to be able to answer: do
I have an entry in @range. Which mostly disqualifies a hash-table.

Still, I really don't think you need any of this, it's just bloat. A
very limited stack unwind for one of the two tracepoints should allow
you to find the offending lock just fine.
