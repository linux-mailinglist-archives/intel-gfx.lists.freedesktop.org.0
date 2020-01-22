Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3E01453D8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 12:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB656F4C6;
	Wed, 22 Jan 2020 11:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 602EB6F4C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 11:33:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19969270-1500050 for multiple; Wed, 22 Jan 2020 11:33:02 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200122112905.482044-1-chris@chris-wilson.co.uk>
References: <20200122112905.482044-1-chris@chris-wilson.co.uk>
Message-ID: <157969278049.7477.11975311189163472390@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 Jan 2020 11:33:00 +0000
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/execlists: Take a reference
 while capturing the guilty request
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

Quoting Chris Wilson (2020-01-22 11:29:03)
> Thanks to preempt-to-busy, we leave the request on the HW as we submit
> the preemption request. This means that the request may complete at any
> moment as we process HW events, and in particular the request may be
> retired as we are planning to capture it for a preemption timeout.
> 
> Be more careful while obtaining the request to capture after a
> preemption timeout, and check to see if it completed before we were able
> to put it on the on-hold list. If we do see it did complete just before
> we capture the request, proclaim the preemption-timeout a false positive
> and pardon the reset as we should hit an arbitration point momentarily
> and so be able to process the preemption.
> 
> Note that even after we move the request to be on hold it may be retired
> (as the reset to stop the HW comes after), so we do require to hold our
> own reference as we work on the request for capture (and all of the
> peeking at state within the request needs to be carefully protected).
> 
> Fixes: 32ff621fd744 ("drm/i915/gt: Allow temporary suspension of inflight requests")
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/997
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 39 +++++++++++++++++++++++------
>  1 file changed, 31 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 3a30767ff0c4..59af136e1b1d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2393,11 +2393,16 @@ static void __execlists_hold(struct i915_request *rq)
>         } while (rq);
>  }
>  
> -static void execlists_hold(struct intel_engine_cs *engine,
> +static bool execlists_hold(struct intel_engine_cs *engine,
>                            struct i915_request *rq)
>  {
>         spin_lock_irq(&engine->active.lock);
>  
> +       if (!i915_request_is_ready(rq)) { /* no longer active */

Actually this will be better as !i915_request_completed() so it protects
the virtual_engine shenanigans better.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
