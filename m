Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEF3188B58
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 18:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3AD6E5BB;
	Tue, 17 Mar 2020 17:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2DC6E5BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 17:00:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20592667-1500050 for multiple; Tue, 17 Mar 2020 17:00:16 +0000
MIME-Version: 1.0
In-Reply-To: <2a5f1822-8d2e-5d7e-2588-af1f91b9af1d@linux.intel.com>
References: <20200317163208.30010-1-chris@chris-wilson.co.uk>
 <2a5f1822-8d2e-5d7e-2588-af1f91b9af1d@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158446442026.6873.14273327891388719690@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 17 Mar 2020 17:00:20 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Always reschedule the new
 heartbeat
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

Quoting Tvrtko Ursulin (2020-03-17 16:50:02)
> 
> On 17/03/2020 16:32, Chris Wilson wrote:
> > In order to better respond to new heartbeat intervals given via sysfs,
> > always reprogramme an active heartbeat upon change (i.e. use
> > mod_delayed_work to reschedule rather than queue_delayed_work which
> > ignores an already active work.)
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > index dd825718e4e5..5136c8bf112d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > @@ -31,7 +31,7 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
> >       delay = msecs_to_jiffies_timeout(delay);
> >       if (delay >= HZ)
> >               delay = round_jiffies_up_relative(delay);
> > -     schedule_delayed_work(&engine->heartbeat.work, delay);
> > +     mod_delayed_work(system_wq, &engine->heartbeat.work, delay);
> >   
> >       return true;
> >   }
> > 
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> What about the transition from disabled (or long) preempt timeout to a 
> normal one?

They all use next_heartbeat() (from calling intel_engine_unpark_heartbeat)
to reschedule if going to an active heartbeat. On disable, we call
intel_engine_park_heartbeat() which does the cancel_delayed_work.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
