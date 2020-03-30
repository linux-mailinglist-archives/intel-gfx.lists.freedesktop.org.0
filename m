Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B38198163
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 18:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 349676E0AA;
	Mon, 30 Mar 2020 16:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AE66E0AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 16:38:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20742747-1500050 for multiple; Mon, 30 Mar 2020 17:38:25 +0100
MIME-Version: 1.0
In-Reply-To: <87blodrg5n.wl-ashutosh.dixit@intel.com>
References: <20200330091411.37357-1-lionel.g.landwerlin@intel.com>
 <158556296041.3228.10327206845355852563@build.alporthouse.com>
 <87blodrg5n.wl-ashutosh.dixit@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158558630373.3228.12237015093988279920@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 17:38:23 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: don't read head/tail
 pointers outside critical section
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dixit, Ashutosh (2020-03-30 16:55:32)
> On Mon, 30 Mar 2020 03:09:20 -0700, Chris Wilson wrote:
> >
> > Quoting Lionel Landwerlin (2020-03-30 10:14:11)
> > > Reading or writing those fields should only happen under
> > > stream->oa_buffer.ptr_lock.
> >
> > Writing, yes. Reading as a pair, sure. There are other ways you can
> > ensure that the tail/head are read as one, but fair enough.
> 
> Sorry but I am trying to understand exactly what the purpose of
> stream->oa_buffer.ptr_lock is? This is a classic ring buffer producer
> consumer situation where producer updates tail and consumer updates
> head. Since both are u32's can't those operations be done without requiring
> a lock?

> > >         spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> > >
> > > -       return OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
> > > -                       stream->oa_buffer.head - gtt_offset) >= report_size;
> > > +       return pollin;
> 
> In what way is the original code incorrect? As I mentioned head is u32 and
> can be read atomically without requiring a lock? We had deliberately moved
> this code outside the lock so as to pick up the the latest value of head if
> it had been updated in the consumer (read).

It's the pair of reads here. What's the synchronisation between the read
of tail/head with the update? There's no sync between the reads so
order is not determined here.

So we may see the head updated for an old tail, and so think we have
plenty to report, when in fact there's none (or someother convolution).

Normal ringbuffer is to sample the head/tail pointers, smp_rmb(), then
consume the data between head/tail (with the write doing the smp_wmb()
after updating the data and before moving the tail). [So the normal
usage of barriers is around access to one of tail/head (the other is
under your control) and the shared contents.]
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
