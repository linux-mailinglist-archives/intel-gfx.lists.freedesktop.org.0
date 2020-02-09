Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BCA1569EF
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Feb 2020 12:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9706E5B0;
	Sun,  9 Feb 2020 11:02:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178556E5B0
 for <Intel-gfx@lists.freedesktop.org>; Sun,  9 Feb 2020 11:02:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20164221-1500050 for multiple; Sun, 09 Feb 2020 11:02:19 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
 <20200207161331.23447-5-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200207161331.23447-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <158124613669.2480.8633026989105437071@skylake-alporthouse-com>
Date: Sun, 09 Feb 2020 11:02:16 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Track per-context engine
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-02-07 16:13:29)
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
> @@ -2327,13 +2359,15 @@ static void process_csb(struct intel_engine_cs *engine)
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

We don't need to touch this branch...

>                 }
> +
> +               rq = *execlists->active;
> +               if (rq)
> +                       intel_context_stats_start(rq->context);

As this can be done after the loop. I think combining it with the
set_timeslice would be nice (both are 'time' related).

>         } while (head != tail);
>  
>         execlists->csb_head = head;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
