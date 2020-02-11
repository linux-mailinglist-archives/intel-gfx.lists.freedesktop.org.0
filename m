Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917171592B4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 16:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E21086E504;
	Tue, 11 Feb 2020 15:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFE86E504
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 15:16:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20188678-1500050 for multiple; Tue, 11 Feb 2020 15:16:09 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87d0al9o0v.fsf@gaia.fi.intel.com>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-2-chris@chris-wilson.co.uk>
 <87d0al9o0v.fsf@gaia.fi.intel.com>
Message-ID: <158143416748.3635.10597980220131710976@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 15:16:07 +0000
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/selftests: Exercise timeslice
 rewinding
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

Quoting Mika Kuoppala (2020-02-11 14:50:08)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> > +             /* Release the hounds! */
> > +             slot[0] = 1;
> > +             wmb();
> > +
> > +             for (i = 1; i <= 3; i++) {
> > +                     unsigned long timeout = jiffies + HZ / 2;
> > +
> > +                     while (!READ_ONCE(slot[i]) &&
> > +                            time_before(jiffies, timeout))
> 
> you pushed with wmb so you could expect with rmb() and cpu_relax();
> I guess it works fine without :O.

The wmb() "pairs" with GPU; just paranoia.

> > +                             ;
> > +
> > +                     if (!time_before(jiffies, timeout)) {
> > +                             pr_err("%s: rq[%d] timed out\n",
> > +                                    engine->name, i - 1);
> > +                             err = -ETIME;
> > +                             goto err;
> > +                     }
> > +
> > +                     pr_debug("%s: slot[%d]:%x\n", engine->name, i, slot[i]);
> > +             }
> > +
> > +             /* XZY: XZ < XY */
> > +             if (slot[3] - slot[1] >= slot[2] - slot[1]) {
> > +                     pr_err("%s: timeslicing did not run context B [%u] before A [%u]!\n",
> > +                            engine->name,
> > +                            slot[3] - slot[1],
> > +                            slot[2] - slot[1]);
> > +                     err = -EINVAL;
> > +             }
> > +
> > +err:
> > +             memset(slot, 0xff, 4 * sizeof(u32));
> 
> was expecting slot[0] = 
memset32(&slot[0], -1, 4); /* weirdo */
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
