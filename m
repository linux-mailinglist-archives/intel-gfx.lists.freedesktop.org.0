Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7061B9F4F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 11:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024B46E149;
	Mon, 27 Apr 2020 09:05:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334566E149;
 Mon, 27 Apr 2020 09:05:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21032468-1500050 for multiple; Mon, 27 Apr 2020 10:05:26 +0100
MIME-Version: 1.0
In-Reply-To: <20200427090014.10041-1-tvrtko.ursulin@linux.intel.com>
References: <20200427090014.10041-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Message-ID: <158797832517.17035.11396007512401587276@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 10:05:25 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] gem_wsim: Fix preempt
 period assert
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-04-27 10:00:14)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Recently added assert in a common helper used for calculating batch
> duration and preemption period is harmful when preemption is disabled on a
> context. Split out into low level and high level helper and use the former
> for preemption period queries.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  benchmarks/gem_wsim.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> index 81f47b86d619..ad4edb936920 100644
> --- a/benchmarks/gem_wsim.c
> +++ b/benchmarks/gem_wsim.c
> @@ -1151,7 +1151,7 @@ __get_ctx(struct workload *wrk, const struct w_step *w)
>  }
>  
>  static unsigned long
> -get_bb_sz(const struct w_step *w, unsigned int duration)
> +__get_bb_sz(const struct w_step *w, unsigned int duration)
>  {
>         enum intel_engine_id engine = w->engine;
>         struct ctx *ctx = __get_ctx(w->wrk, w);
> @@ -1165,6 +1165,15 @@ get_bb_sz(const struct w_step *w, unsigned int duration)
>         d = ALIGN(duration * engine_calib_map[engine] * sizeof(uint32_t) /
>                   nop_calibration_us,
>                   sizeof(uint32_t));

Preempt disabled == w->preempt_us = 0 => duration = 0.

Ok, that follows that d is expected to be 0. And the caller expands to
at least a page.

Not really convinced the assert is worth it, but
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
