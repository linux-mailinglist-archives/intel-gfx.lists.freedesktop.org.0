Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA2821B4CF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83396EC15;
	Fri, 10 Jul 2020 12:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C5F16EC15
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:15:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21777146-1500050 for multiple; Fri, 10 Jul 2020 13:15:05 +0100
MIME-Version: 1.0
In-Reply-To: <20200710120717.32484-1-chris@chris-wilson.co.uk>
References: <20200710120717.32484-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 13:15:02 +0100
Message-ID: <159438330296.23667.15875867481215591108@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Be defensive in the face of
 false CS events
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

Quoting Chris Wilson (2020-07-10 13:07:17)
> If the HW throws a curve ball and reports either en event before it is
> possible, or just a completely impossible event, we have to grin and
> bear it. The first few events, we will likely not notice as we would be
> expecting some event, but as soon as we stop expecting an event and yet
> they still keep coming, then we enter into undefined state terrority.
> In which case, bail out, stop processing the events, and reset the
> engine and our set of queued requests to recover.
> 
> The sporadic hangs and warnings will continue to plague CI, but at least
> system stability should not be compromised.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2045
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 8 ++++++--
>  drivers/gpu/drm/i915/i915_gem.h     | 2 ++
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index fbcfeaed6441..f22cf8ed47ac 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2567,6 +2567,7 @@ static void process_csb(struct intel_engine_cs *engine)
>         tail = READ_ONCE(*execlists->csb_write);
>         if (unlikely(head == tail))
>                 return;
> +       execlists->csb_head = tail;
>  
>         /*
>          * Hopefully paired with a wmb() in HW!
> @@ -2613,6 +2614,9 @@ static void process_csb(struct intel_engine_cs *engine)
>                 if (promote) {
>                         struct i915_request * const *old = execlists->active;
>  
> +                       if (GEM_WARN_ON_ONCE(!*execlists->pending))

I wonder if we should just default GEM_WARN_ON to be GEM_WARN_ON_ONCE,
CI reboots after a warning so the spam is unhelpful.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
