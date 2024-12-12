Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A32A49EE316
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 10:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ED7A10ED17;
	Thu, 12 Dec 2024 09:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="BDWEcDWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF7710ED17;
 Thu, 12 Dec 2024 09:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MwCTXcozZT4eDlslnrvlbfOQ3/cmY9cTCJIYS84yNvI=; b=BDWEcDWY967TLB5KFT2gL0WwmP
 cIlD7vGNzAzQKWPhEuw0asKucXlcvRwV0G4UHitp1ZVI2A9AaC9tU+oNYpFcPmzeW3aoupOa2xCWu
 kEgvoplBEpqkL1kFqAdPME2LT8r8L/gVWwO+ckOSZQUTlWF35kO2eDF3weM9oMbCMJ4ujMarQ8P7u
 A2Uy8e5fgXRPMNypUW7r4+jkJ7m8F/5wg+S/nFROQhHUs07fo9eCKOC3x8ebZKcb8wXvYRXX/6Hx6
 U6lN21hf8RrAb4s4eMPACgjY2C9Hqlnr9njOjz8f5GLZILjCfpa6H1+Z1lawxgHNss73gXBCcmvpm
 1LQRCgUg==;
Received: from 77-249-17-89.cable.dynamic.v4.ziggo.nl ([77.249.17.89]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.98 #2 (Red Hat Linux))
 id 1tLfXX-00000004hhE-405c; Thu, 12 Dec 2024 09:31:24 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7D94F3003FF; Thu, 12 Dec 2024 10:31:23 +0100 (CET)
Date: Thu, 12 Dec 2024 10:31:23 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.saarinen@intel.com, Jani Nikula <jani.nikula@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org
Subject: Re: [RFT] Revert "lockdep: Enable PROVE_RAW_LOCK_NESTING with
 PROVE_LOCKING."
Message-ID: <20241212093123.GV21636@noisy.programming.kicks-ass.net>
References: <20241209135602.2716023-1-luciano.coelho@intel.com>
 <djny2tqz7mck5omsadowtn7flnegizoxgmpymyyfr3gvw4x7vf@67pbgkqftwxf>
 <Z1jG53Hy0PZKdJG2@intel.com>
 <c5r46che35oqieotvytdfj2utelhtidnbjgyfijfik64mtgmlt@6mi42dmtz2wh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5r46che35oqieotvytdfj2utelhtidnbjgyfijfik64mtgmlt@6mi42dmtz2wh>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2024 at 06:00:33PM -0600, Lucas De Marchi wrote:

> 	raw_spin_lock_init(&guc->timestamp.lock);
> 	raw_spin_lock_init(&pmu->lock);
> 	raw_spin_lock_init(&i915->mmio_debug.lock);
> 	raw_spin_lock_init(&uncore->lock);
> 
> And it's still not sufficient, because intel_ref_tracker tries to
> allocate while holding one of those and I'm not confident on making that
> pass GFP_ATOMIC.

You cannot allocate memory under raw_spinlock_t at all, ever. Nor free
for that matter. The allocators use spinlock internally.


> [  204.835058]  __kmalloc_cache_noprof+0x277/0x480
> [  204.839554]  ? __kmalloc_cache_noprof+0x277/0x480
> [  204.844221]  ref_tracker_alloc+0xd7/0x270
> [  204.848206]  ? ref_tracker_alloc+0xd7/0x270
> [  204.852357]  guc_engine_busyness+0x122/0x2c0 [i915]
> 
> 
> > 
> > > 
> > > It's a real problem only for PREEMPT_RT since otherwise there's
> > > no difference between the 2 lock types. However fixing this may involve
> > > quite a few changes: if we convert the lock to raw we may need to
> > > cascade the conversions to additional locks.  The ones I identified are:
> > > pmu->lock, which would also need to have uncore->lock converted, which
> > > would then probably cascade to quite a few others :-/. I'm not sure
> > > converting uncore->lock will actually be a good thing.
> > 
> > hmm raw_spinlocks for the lowlevel might not be a bad idea, but perhaps
> > we need to convert the other way around the upper levels?
> 
> that would mean:
> 
> <4> [96.733606]  #0: ffff88885f432038 (&cpuctx_lock){....}-{2:2}, at: __perf_install_in_context+0x3f/0x360
> 
> so inside the perf event infra, that has been using raw_spinlock_t
> since forever. I'm surprised we got this only 10 years later :-/.
> I don't think perf can sleep in that context, but Cc'ing a few people
> and lkml for that question.

You very much cannot sleep here. This is hardirq context.
