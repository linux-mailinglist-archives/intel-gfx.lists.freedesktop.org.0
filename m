Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D25E0136E70
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 14:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3BD06EA23;
	Fri, 10 Jan 2020 13:46:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 712F96EA23
 for <Intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 13:46:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19834749-1500050 for multiple; Fri, 10 Jan 2020 13:46:05 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200110133049.2705-4-tvrtko.ursulin@linux.intel.com>
References: <20200110133049.2705-1-tvrtko.ursulin@linux.intel.com>
 <20200110133049.2705-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <157866396458.10140.13791407344296706854@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 Jan 2020 13:46:04 +0000
Subject: Re: [Intel-gfx] [RFC 3/8] drm/i915: Track per-context engine
 busyness
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
Cc: kui.wen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-10 13:30:44)
>  #endif /* __INTEL_CONTEXT_TYPES__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 825c94e7ca0b..9a346c060469 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1543,8 +1543,20 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
>  
>                 engine->stats.enabled_at = ktime_get();
>  
> -               /* XXX submission method oblivious? */
> -               for (port = execlists->active; (rq = *port); port++)
> +               /*
> +                * Mark currently running context as active.
> +                * XXX submission method oblivious?
> +                */
> +
> +               rq = NULL;
> +               port = execlists->active;

execlists->active is never NULL (it always points at one of the arrays).
*execlists->active may be NULL.

> +               if (port)
> +                       rq = *port;
> +               if (rq)
> +                       __intel_context_stats_start(&rq->context->stats,
> +                                                   engine->stats.enabled_at);
> +
> +               for (; (rq = *port); port++)
>                         engine->stats.active++;
>  
> @@ -2250,6 +2277,7 @@ static void process_csb(struct intel_engine_cs *engine)
>         rmb();
>  
>         do {
> +               struct i915_request *rq;
>                 bool promote;
>  
>                 if (++head == num_entries)
> @@ -2305,7 +2333,11 @@ static void process_csb(struct intel_engine_cs *engine)
>  
>                         WRITE_ONCE(execlists->pending[0], NULL);
>                 } else {
> -                       GEM_BUG_ON(!*execlists->active);
> +                       rq = *execlists->active++;
> +                       GEM_BUG_ON(!rq);
> +
> +                       GEM_BUG_ON(execlists->active - execlists->inflight >
> +                                  execlists_num_ports(execlists));
>  
>                         /* port0 completed, advanced to port1 */
>                         trace_ports(execlists, "completed", execlists->active);
> @@ -2316,13 +2348,15 @@ static void process_csb(struct intel_engine_cs *engine)
>                          * coherent (visible from the CPU) before the
>                          * user interrupt and CSB is processed.
>                          */
> -                       GEM_BUG_ON(!i915_request_completed(*execlists->active) &&
> +                       GEM_BUG_ON(!i915_request_completed(rq) &&
>                                    !reset_in_progress(execlists));
> -                       execlists_schedule_out(*execlists->active++);
>  
> -                       GEM_BUG_ON(execlists->active - execlists->inflight >
> -                                  execlists_num_ports(execlists));
> +                       execlists_schedule_out(rq);
>                 }
> +
> +               rq = *execlists->active;
> +               if (rq)
> +                       intel_context_stats_start(&rq->context->stats);
>         } while (head != tail);

Actually, we can do this after processing the entire event buf.

if (execlists_active(execlists))
	intel_context_stats_start((*execlists->active)->context->stats);

Once we apply the fix in
https://patchwork.freedesktop.org/patch/347934/?series=71809&rev=1

We can in fact do this as a part of set_timeslice() which means we have
all the time-related updates in the same spot.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
