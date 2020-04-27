Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E591B9A24
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 10:27:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54B86E0A1;
	Mon, 27 Apr 2020 08:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A164B6E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 08:27:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21031941-1500050 for multiple; Mon, 27 Apr 2020 09:27:33 +0100
MIME-Version: 1.0
In-Reply-To: <20200426232857.GC13001@jack.zhora.eu>
References: <20200425175751.30358-4-chris@chris-wilson.co.uk>
 <20200425185400.8938-1-chris@chris-wilson.co.uk>
 <20200426232857.GC13001@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158797605262.17035.3588974110739058797@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 09:27:32 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Switch to manual evaluation of
 RPS
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

Quoting Andi Shyti (2020-04-27 00:28:57)
> Hi Chris,
> 
> On Sat, Apr 25, 2020 at 07:54:00PM +0100, Chris Wilson wrote:
> > As with the realisation for soft-rc6, we respond to idling the engines
> > within microseconds, far faster than the response times for HW RC6 and
> > RPS. Furthermore, our fast parking upon idle, prevents HW RPS from
> > running for many desktop workloads, as the RPS evaluation intervals are
> > on the order of tens of milliseconds, but the typical workload is just a
> > couple of milliseconds, but yet we still need to determine the best
> > frequency for user latency versus power.
> > 
> > Recognising that the HW evaluation intervals are a poor fit, and that
> > they were deprecated [in bspec at least] from gen10, start to wean
> > ourselves off them and replace the EI with a timer and our accurate
> > busy-stats. The principle benefit of manually evaluating RPS intervals
> > is that we can be more responsive for better performance and powersaving
> > for both spiky workloads and steady-state.
> 
> basically, when you unpark, you wait a bit depending on the
> workload before actually setting the rps and you do this by
> creating a timer.

Right instead of the HW using a timer internally and checking it's C0
counters, we use a timer on the CPU and check out busy metrics.

It's a win because we can be more flexible in how often we run and
reclock the GPU, as well as preserving statistics across idle periods.
Not to mention that tgl EI are snafu.

> > +static bool has_busy_stats(struct intel_rps *rps)
> > +{
> > +     struct intel_engine_cs *engine;
> > +     enum intel_engine_id id;
> > +
> > +     return HAS_EXECLISTS(rps_to_i915(rps)); /* XXX init ordering */
> > +
> > +     for_each_engine(engine, rps_to_gt(rps), id) {
> > +             if (!intel_engine_supports_stats(engine))
> > +                     return false;
> > +     }
> > +
> > +     return true;
> > +}
> 
> mh? what's the exit point here?

It will be once we have a way of determining whether or not we have
busy-stats, after determining that support. At the moment, that is setup
too late for us to us in init. If I pull it to rps_enable, maybe...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
