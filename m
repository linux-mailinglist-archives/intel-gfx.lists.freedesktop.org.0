Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E82171835F9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 17:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423836EAF9;
	Thu, 12 Mar 2020 16:17:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7F66EAF9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 16:17:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20538668-1500050 for multiple; Thu, 12 Mar 2020 16:16:58 +0000
MIME-Version: 1.0
In-Reply-To: <2a10300a-14e8-53eb-5219-5d235ded8538@linux.intel.com>
References: <20200312115307.16460-1-chris@chris-wilson.co.uk>
 <2a10300a-14e8-53eb-5219-5d235ded8538@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158402981798.10732.3247425821079950473@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 12 Mar 2020 16:16:57 +0000
Subject: Re: [Intel-gfx] ***UNCHECKED*** Re: [PATCH] drm/i915/gt: Wait for
 RCUs frees before asserting idle on unload
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

Quoting Tvrtko Ursulin (2020-03-12 14:18:26)
> 
> On 12/03/2020 11:53, Chris Wilson wrote:
> > During driver unload, we have many asserts that we have released our
> > bookkeeping structs and are idle. In some cases, these struct are
> > protected by RCU and we do not release them until after an RCU grace
> > period.
> > 
> > Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Fixes: 130a95e9098e ("drm/i915/gem: Consolidate ctx->engines[] release")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_gt.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 3dea8881e915..d09f7596cb98 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -667,6 +667,9 @@ void intel_gt_driver_release(struct intel_gt *gt)
> >   
> >   void intel_gt_driver_late_release(struct intel_gt *gt)
> >   {
> > +     /* We need to wait for inflight RCU frees to release their grip */
> > +     rcu_barrier();
> > +
> >       intel_uc_driver_late_release(&gt->uc);
> >       intel_gt_fini_requests(gt);
> >       intel_gt_fini_reset(gt);
> > 
> 
> Not sure if GT or GEM is the place, but liberal application seems 
> required anyway nowadays.
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Either after gem_fini_contexts or before here, both have reasonable
arguments. One being the point of assertion, the other the point of
expected release.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
