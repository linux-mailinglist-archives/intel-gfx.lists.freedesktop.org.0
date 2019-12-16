Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3991D1205F6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB936E509;
	Mon, 16 Dec 2019 12:40:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBED06E509
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:40:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19594920-1500050 for multiple; Mon, 16 Dec 2019 12:40:38 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191216120704.958-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157650003726.2428.7411733849297083759@skylake-alporthouse-com>
Date: Mon, 16 Dec 2019 12:40:37 +0000
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Track per-context engine
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

Quoting Tvrtko Ursulin (2019-12-16 12:07:00)
> @@ -1389,6 +1415,9 @@ static void execlists_submit_ports(struct intel_engine_cs *engine)
>                 write_desc(execlists,
>                            rq ? execlists_update_context(rq) : 0,
>                            n);
> +
> +               if (n == 0)
> +                       intel_context_stats_start(&rq->hw_context->stats);

Too early? (Think preemption requests that may not begin for a few
hundred ms.) Mark it as started on promotion instead (should be within a
few microseconds, if not ideally a few 10 ns)? Then you will also have
better symmetry in process_csb, suggesting that we can have a routine
that takes the current *execlists->active with fewer code changes.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
