Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD0517F70F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E168A6E1D6;
	Tue, 10 Mar 2020 12:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01346E1CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:06:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20507989-1500050 for multiple; Tue, 10 Mar 2020 12:06:42 +0000
MIME-Version: 1.0
In-Reply-To: <08d601d5-1583-61e4-113d-8208a17d3d0f@linux.intel.com>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-8-chris@chris-wilson.co.uk>
 <e5360a24-91e9-a873-5a9b-5b6e5cca59ac@linux.intel.com>
 <158383855988.16414.10338993219228723247@build.alporthouse.com>
 <08d601d5-1583-61e4-113d-8208a17d3d0f@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158384200189.16414.17876359004396978057@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 12:06:41 +0000
Subject: Re: [Intel-gfx] [PATCH 08/17] drm/i915/selftests: Add request
 throughput measurement to perf
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

Quoting Tvrtko Ursulin (2020-03-10 11:58:26)
> 
> On 10/03/2020 11:09, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-03-10 10:38:21)
> >>
> >> On 06/03/2020 13:38, Chris Wilson wrote:
> >>> +                     intel_engine_pm_get(engine);
> >>> +
> >>> +                     memset(&engines[idx].p, 0, sizeof(engines[idx].p));
> >>> +                     engines[idx].p.engine = engine;
> >>> +
> >>> +                     engines[idx].tsk = kthread_run(*fn, &engines[idx].p,
> >>> +                                                    "igt:%s", engine->name);
> >>
> >> Test will get affected by the host CPU core count. How about we only
> >> measure num_cpu engines? Might be even more important with discrete.
> > 
> > No. We want to be able to fill the GPU with the different processors.
> > Comparing glk to kbl helps highlight any inefficiencies we have -- we
> > have to be efficient enough that core count is simply not a critical
> > factor to offset our submission overhead.
> > 
> > So we can run the same test and see how it scaled with engines vs cpus
> > just by running it on different machines and look for problems.
> 
> Normally you would expect one core per engine is enough to saturate the 
> engine. I am afraid adding more combinations will be confusing when 
> reading test results. (Same GPU, same engine count, different CPU core 
> count.) How about two subtest variants? One is 1:1 CPU core to engine, 
> and another can be all engines like here?

Each machine will have its own consistent configuration. The question I
have in mind is "can we saturate this machine"? This machine remains
constant for all the runs. And our goal is that the driver is not a
bottleneck on any machine.
 
> Or possibly:
> 
> 1. 1 CPU core - 1 engine - purest latency/overhead
> 2. 1 CPU core - N engines (N = all engines) - more
> 3. N CPU cores - N engines (N = min(engines, cores) - global lock 
> contention, stable setup
> 4. M CPU cores - N engines (N, M = max) - lock contention stress
> 5. N CPU cores - 1 engine (N = all cores) - more extreme lock contention

I hear you in that you would like to have a serial test as well. Where
we just use 1 cpu thread to submit to all engines as fast as we can and
see how close we get with just "1 core". (There will still be
parallelism one hopes from our interrupt handler.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
