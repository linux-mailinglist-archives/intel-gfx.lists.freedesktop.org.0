Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C8E2C31C6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115616E0D5;
	Tue, 24 Nov 2020 20:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6E56E314
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:16:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23096642-1500050 for multiple; Tue, 24 Nov 2020 20:16:14 +0000
MIME-Version: 1.0
In-Reply-To: <20201124194629.GA719740@intel.com>
References: <20201124183521.28623-1-chris@chris-wilson.co.uk>
 <20201124194629.GA719740@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 24 Nov 2020 20:16:13 +0000
Message-ID: <160624897327.29168.2809064069456029586@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Limit frequency drop to RPe on
 parking
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Rodrigo Vivi (2020-11-24 19:46:29)
> On Tue, Nov 24, 2020 at 06:35:21PM +0000, Chris Wilson wrote:
> > We treat idling the GT (intel_rps_park) as a downclock event, and reduce
> > the frequency we intend to restart the GT with. Since the two workloads
> > are likely related (e.g. a compositor rendering every 16ms), we want to
> > carry the frequency and load information from across the idling.
> > However, we do also need to update the frequencies so that workloads
> > that run for less than 1ms are autotuned by RPS (otherwise we leave
> > compositors running at max clocks, draining excess power). Conversely,
> > if we try to run too slowly, the next workload has to run longer. Since
> > there is a hysteresis in the power graph, below a certain frequency
> > running a short workload for longer consumes more energy than running it
> > slightly higher for less time. The exact balance point is unknown
> > beforehand, but measurements with 30fps media playback indicate that RPe
> > is a better choice.
> > 
> > Reported-by: Edward Baker <edward.baker@intel.com>
> > Fixes: 043cd2d14ede ("drm/i915/gt: Leave rps->cur_freq on unpark")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Edward Baker <edward.baker@intel.com>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: <stable@vger.kernel.org> # v5.8+
> > ---
> >  drivers/gpu/drm/i915/gt/intel_rps.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> > index b13e7845d483..f74d5e09e176 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> > @@ -907,6 +907,10 @@ void intel_rps_park(struct intel_rps *rps)
> >               adj = -2;
> >       rps->last_adj = adj;
> >       rps->cur_freq = max_t(int, rps->cur_freq + adj, rps->min_freq);
> > +     if (rps->cur_freq < rps->efficient_freq) {
> > +             rps->cur_freq = rps->efficient_freq;
> > +             rps->last_adj = 0;
> 
> this is indeed the smallest fix we can propagate:
> 
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> but I wonder now if we couldn't simply kill the last_adj now and always go
> with the rpe on park/unpark

Since we often have very bursty workloads that are less than 1ms, we do
want to keep the frequency across idling, or else we incur more latency
than is desired by the user (although unpark latency is no joke,
although that is mostly the context switches). The compromise for always
running shorter than an RPS interval is to "gradually" reduce the
frequency (so that compositors do not get stuck at max clocks, yet those
very same compositors also do require very quick autotuning so that
animations are smooth from idle.) Compute is another one where they have
both sustained and bursty workloads, and the shorter-than-RPS bursty
workloads are naturally expected to be to low latency.

So I still think keeping cur_freq is most often the best approach.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
