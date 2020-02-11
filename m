Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB759159422
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF256E500;
	Tue, 11 Feb 2020 16:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860ED6E500
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:00:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20189263-1500050 for multiple; Tue, 11 Feb 2020 16:00:09 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <877e0t9l28.fsf@gaia.fi.intel.com>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-3-chris@chris-wilson.co.uk>
 <87a75p9mhf.fsf@gaia.fi.intel.com>
 <158143518042.3635.5696176952305833936@skylake-alporthouse-com>
 <877e0t9l28.fsf@gaia.fi.intel.com>
Message-ID: <158143680805.3635.3897704980251056837@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 16:00:08 +0000
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/selftests: Relax timeout for
 error-interrupt reset processing
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

Quoting Mika Kuoppala (2020-02-11 15:54:07)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Mika Kuoppala (2020-02-11 15:23:24)
> >> Chris Wilson <chris@chris-wilson.co.uk> writes:
> >> > +                             /* Kick the tasklet to process the error */
> >> > +                             intel_engine_flush_submission(engine);
> >> 
> >> This pattern of usage in selftests makes me want to add mb(); to
> >> intel_engine_flush_submission(), as it does not seem to do it
> >> implicitly.
> >> 
> >> We want to flush submission and observe the effects, thus
> >> it seems like a good place.
> >
> > Hmm. From the cpu perspective the memory barrier would be on the other
> > side in clear_bit_unlock(), and flush_submission does unlock_wait.
> >
> > But, then, we have to factor in that we have to communicate with an
> > external client the GPU, so perhaps an explicit memory barrier...
> >
> > We certainly do perform the memory barrier in order to set the GPU in
> > motion, but have not relied on them for observing effects (aside from
> > the CSB ringbuf).
> >
> > I don't see a strong argument that adding a 'mb/rmb' here will make any
> > difference, I don't see what we are pairing with from the GPU
> > perspective. But maybe there is?
> 
> I don't have a strong argument from gpu side. But what if the
> flush only does the nonatomic wait and returns, and our
> CPU has read the state up front for the next comparison.
> 
> Or now thinking it, the saving grace is that if we don't need
> to flush in here, the tasklet has finished and finish has
> the barrier?

That's how we synchronize with the tasklet, yes. So by this point (as we
expect to have a request ready and scheduled the tasklet) we know that
the tasklet has completed.

So we know we've *initiated* some action on the GPU. Most of the
side-effects from doing so are without barriers.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
