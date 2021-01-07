Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0AE2ED540
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 18:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1A9D6E46B;
	Thu,  7 Jan 2021 17:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061CE6E46B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 17:15:57 +0000 (UTC)
IronPort-SDR: 3IvoqCzZn87MSoccHeXgn8AZDaxL0AJ5ANPj45n3Ye8Gno5hLPXvmqEMLymH+auAkf8+luT6o0
 RNlZhCYMonvQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="174880919"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="174880919"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 09:15:57 -0800
IronPort-SDR: QcLjuau2QSFoI1Hzm5B8ZfSnr4z5nFfbQpHHw96WCUKOOLM69o5eQs2YL0GooPhiQaPLokKINJ
 opWg+MOrAfgg==
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="362038798"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 09:15:56 -0800
Date: Thu, 7 Jan 2021 09:10:35 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210107171035.GA9023@sdutt-i7>
References: <20201229120145.26045-1-chris@chris-wilson.co.uk>
 <20201229120145.26045-36-chris@chris-wilson.co.uk>
 <20210107160507.GA31817@sdutt-i7>
 <161003793126.28368.13767958122371874524@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161003793126.28368.13767958122371874524@build.alporthouse.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 36/56] drm/i915: Fair low-latency scheduling
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

On Thu, Jan 07, 2021 at 04:45:31PM +0000, Chris Wilson wrote:
> Quoting Matthew Brost (2021-01-07 16:05:07)
> > On Tue, Dec 29, 2020 at 12:01:25PM +0000, Chris Wilson wrote:
> > > The first "scheduler" was a topographical sorting of requests into
> > > priority order. The execution order was deterministic, the earliest
> > > submitted, highest priority request would be executed first. Priority
> > > inheritance ensured that inversions were kept at bay, and allowed us to
> > > dynamically boost priorities (e.g. for interactive pageflips).
> > > 
> > > The minimalistic timeslicing scheme was an attempt to introduce fairness
> > > between long running requests, by evicting the active request at the end
> > > of a timeslice and moving it to the back of its priority queue (while
> > > ensuring that dependencies were kept in order). For short running
> > > requests from many clients of equal priority, the scheme is still very
> > > much FIFO submission ordering, and as unfair as before.
> > > 
> > > To impose fairness, we need an external metric that ensures that clients
> > > are interpersed, so we don't execute one long chain from client A before
> > > executing any of client B. This could be imposed by the clients
> > > themselves by using fences based on an external clock, that is they only
> > > submit work for a "frame" at frame-intervals, instead of submitting as
> > > much work as they are able to. The standard SwapBuffers approach is akin
> > > to double bufferring, where as one frame is being executed, the next is
> > > being submitted, such that there is always a maximum of two frames per
> > > client in the pipeline and so ideally maintains consistent input-output
> > > latency. Even this scheme exhibits unfairness under load as a single
> > > client will execute two frames back to back before the next, and with
> > > enough clients, deadlines will be missed.
> > > 
> > > The idea introduced by BFS/MuQSS is that fairness is introduced by
> > > metering with an external clock. Every request, when it becomes ready to
> > > execute is assigned a virtual deadline, and execution order is then
> > > determined by earliest deadline. Priority is used as a hint, rather than
> > > strict ordering, where high priority requests have earlier deadlines,
> > > but not necessarily earlier than outstanding work. Thus work is executed
> > > in order of 'readiness', with timeslicing to demote long running work.
> > > 
> > > The Achille's heel of this scheduler is its strong preference for
> > > low-latency and favouring of new queues. Whereas it was easy to dominate
> > > the old scheduler by flooding it with many requests over a short period
> > > of time, the new scheduler can be dominated by a 'synchronous' client
> > > that waits for each of its requests to complete before submitting the
> > > next. As such a client has no history, it is always considered
> > > ready-to-run and receives an earlier deadline than the long running
> > > requests. This is compensated for by refreshing the current execution's
> > > deadline and by disallowing preemption for timeslice shuffling.
> > > 
> > > To check the impact on throughput (often the downfall of latency
> > > sensitive schedulers), we used gem_wsim to simulate various transcode
> > > workloads with different load balancers, and varying the number of
> > > competing [heterogenous] clients.
> > > 
> > > +delta%------------------------------------------------------------------+
> > > |                                a                                       |
> > > |                                a                                       |
> > > |                                aa                                      |
> > > |                                aa                                      |
> > > |                                aa                                      |
> > > |                                aa                                      |
> > > |                               aaa                                      |
> > > |                              aaaa                                      |
> > > |                           a  aaaaa                                     |
> > > |                           a aaaaaa                                     |
> > > |a              aa   a      aaaaaaaaaa aa               a               a|
> > > |                                A_|                                     |
> > > +------------------------------------------------------------------------+
> > >    N          Min           Max        Median           Avg        Stddev
> > >  108   -23.982194     28.421527  -0.077474828  -0.072650418    0.16179718
> > > 
> > > The impact was on average 0.1% under contention due to the change in
> > > context execution order and number of context switches. The biggest
> > > swings are due to the execution ordering favouring one client or another,
> > > and maybe room for improvement.
> > > 
> > 
> > I haven't dug into this series deeply but it does seem plausible for
> > execlist submission. However this new scheduler seems completely broken
> > for Guc submission.
> 
> Underneath it's the same topological sort, just with a different key.
> At worst, that key can be the plain priority again. But that's pretty
> much immaterial in terms of deciding the order which requests are
> transferred from one queue to another. Execution order wants to be based
> on resource prioritisation (beyond request priorisation), ideally we
> would keep our fine grained scheduling control.
> 

So maybe just hook for the key?

> I'm not convinced by the state of the fw's scheduler...
>

Can't really argue here, but I think it would be really helpful if you
raised your concerns with the fw team so that can be addressed.
 
> > The scheduler really isn't used that much with GuC
> > submission but when it is the old one works perfectly. The vfunc for
> > the scheduler is deleted in patch #25. I don't think that is good idea
> > as it appears we are trending to 2 separate schedulers.
> 
> You still use the i915_request_set_priority() entry point as the
> caller into the backend bypass.
>

I thought we want to avoid backend specific branches, hence vfuncs.

> Isn't the current guc.fw a second closed driver for the same HW anyway?
>

Not sure I follow this.
 
> > Lastly this series seems to be on the wrong list, I believe it should be
> > posted elsewhere first.
> 
> It's the right place for upstreaming bug fixes on stable platforms. And
> after a year of being here, that's a moot point.

Wow, I feel your pain if this has been out here for a year. But still it
is wrong place. I can help and will help with the reviews if it is in
the correct spot.

Matt

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
