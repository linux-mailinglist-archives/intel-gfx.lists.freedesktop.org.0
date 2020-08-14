Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737AD244F1D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 22:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2B16EC15;
	Fri, 14 Aug 2020 20:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453726EC15
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 20:18:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22131781-1500050 for multiple; Fri, 14 Aug 2020 21:18:21 +0100
MIME-Version: 1.0
In-Reply-To: <159743409290.31882.4297809836771338545@build.alporthouse.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-3-chris@chris-wilson.co.uk>
 <87ft8p135h.fsf@gaia.fi.intel.com>
 <159743409290.31882.4297809836771338545@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 21:18:19 +0100
Message-ID: <159743629912.31882.4041606652398941372@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Apply the CSB w/a for all
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-08-14 20:41:32)
> Quoting Mika Kuoppala (2020-08-14 19:41:14)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > > -     entry = READ_ONCE(*csb);
> > > -     if (unlikely(entry == -1)) {
> > > -             preempt_disable();
> > > -             if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
> > 
> > If we get this deep into desperation, should we start to apply more
> > pressure. Ie, rmb instead of just instructing the compiler. And could also
> > start to invalidate the entry which obviously if of no use.
> 
> I had a rmb() here; removing it did not appear to make any difference
> whatsoever to the average delay. The extreme case would be a full
> mb(); clflush(); mb() read. I haven't timed the average for that....

+static inline u64 __csb_read(u64 *csb)
+{
+       mb();
+       clflush(csb);
+       mb();
+
+       return READ_ONCE(*csb);
+}

[ 1554.274204] csb: 1793 misses, avg 475ns, max 14727ns

So no better on average or at worst.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
