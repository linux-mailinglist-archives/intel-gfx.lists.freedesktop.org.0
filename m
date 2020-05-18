Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29411D74D9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B43989F8B;
	Mon, 18 May 2020 10:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB3689F8B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:11:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21227809-1500050 for multiple; Mon, 18 May 2020 11:11:48 +0100
MIME-Version: 1.0
In-Reply-To: <c3e6ecd0-a256-2dec-ff18-9cfe26359843@linux.intel.com>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <c3e6ecd0-a256-2dec-ff18-9cfe26359843@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158979670777.17769.4626092744336005060@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 11:11:47 +0100
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Move saturated workload
 detection back to the context
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

Quoting Tvrtko Ursulin (2020-05-18 10:53:22)
> 
> On 18/05/2020 09:14, Chris Wilson wrote:
> > When we introduced the saturated workload detection to tell us to back
> > off from semaphore usage [semaphores have a noticeable impact on
> > contended bus cycles with the CPU for some heavy workloads], we first
> > introduced it as a per-context tracker. This allows individual contexts
> > to try and optimise their own usage, but we found that with the local
> > tracking and the no-semaphore boosting, the first context to disable
> > semaphores got a massive priority boost and so would starve the rest and
> > all new contexts (as they started with semaphores enabled and lower
> > priority). Hence we moved the saturated workload detection to the
> > engine, and a consequence had to disable semaphores on virtual engines.
> > 
> > Now that we do not have semaphore priority boosting, we can move the
> > tracking back to the context and virtual engines can now utilise the
> > faster inter-engine synchronisation.
> > 
> > References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")
> 
> We'd need to dig out the bug report which the above commit fixed and see 
> what tests need to be ran to check for no regressions. Sounds tricky to 
> find without a tag. I certainly don't remember it from a year ago. :(

This is all about the semaphore priority boosting and inversions that
caused. The situation was that we would turn off the semaphore usage for
existing contexts, but new contexts would arrive and try and use
semaphore and be demoted in priority. Thus the new contexts would be
starved.

No semaphore boosting and the playing field is level again, and -b i915 is
no longer slower than -b busy/context/etc for unsaturated workloads.

I wanted to try and remove the saturation entirely. The impact on the
perf_density tests seems to be much lower than before, but I think that
is due to other mitigating factors.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
