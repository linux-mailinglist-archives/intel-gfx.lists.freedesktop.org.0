Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A11230F397
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 14:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F01C6E071;
	Thu,  4 Feb 2021 13:02:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D401F6E071
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 13:02:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23786556-1500050 for multiple; Thu, 04 Feb 2021 13:02:49 +0000
MIME-Version: 1.0
In-Reply-To: <87zh0kt2gl.fsf@gaia.fi.intel.com>
References: <20210204110620.32422-1-chris@chris-wilson.co.uk>
 <20210204110620.32422-2-chris@chris-wilson.co.uk>
 <87zh0kt2gl.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Feb 2021 13:02:48 +0000
Message-ID: <161244376810.3075.13392322799908904944@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/gt: Double check heartbeat
 timeout before resetting
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

Quoting Mika Kuoppala (2021-02-04 12:57:46)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Check that we have actually passed the heartbeat interval since last
> > checking the request before resetting the device.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2780
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > index 48a91c0dbad6..93741a65924a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> > @@ -31,7 +31,7 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
> >       delay = msecs_to_jiffies_timeout(delay);
> >       if (delay >= HZ)
> >               delay = round_jiffies_up_relative(delay);
> > -     mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay);
> > +     mod_delayed_work(system_highpri_wq, &engine->heartbeat.work, delay + 1);
> >  
> >       return true;
> >  }
> > @@ -103,6 +103,13 @@ static void heartbeat(struct work_struct *wrk)
> >               goto out;
> >  
> >       if (engine->heartbeat.systole) {
> > +             long delay = READ_ONCE(engine->props.heartbeat_interval_ms);
> > +
> > +             /* Safeguard against too-fast worker invocations */
> > +             if (!time_after(jiffies,
> > +                             rq->emitted_jiffies + msecs_to_jiffies(delay)))
> > +                     goto out;
> > +
> >               if (!i915_sw_fence_signaled(&rq->submit)) {
> >                       /*
> >                        * Not yet submitted, system is stalled.
> > @@ -139,6 +146,8 @@ static void heartbeat(struct work_struct *wrk)
> >                                             "stopped heartbeat on %s",
> >                                             engine->name);
> >               }
> > +
> > +             rq->emitted_jiffies = jiffies;
> 
> Would possibly interfere with throttle. But who would get handle to
> internal request.

Indeed. And it changes the meaning of the pretty printing in the debug
message, but I can live with that.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
