Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A30319DF6E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 22:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D4B89AB2;
	Fri,  3 Apr 2020 20:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FEB89AB2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 20:34:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20793911-1500050 for multiple; Fri, 03 Apr 2020 21:34:26 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663FFFCC3E1@fmsmsx107.amr.corp.intel.com>
References: <20200403190209.21818-1-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663FFFCC3E1@fmsmsx107.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <158594606463.5852.10172868919470731029@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 03 Apr 2020 21:34:24 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start
 timeslicing after a submit
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

Quoting Ruhl, Michael J (2020-04-03 21:31:42)
> >-----Original Message-----
> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> >Wilson
> >Sent: Friday, April 3, 2020 3:02 PM
> >To: intel-gfx@lists.freedesktop.org
> >Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Wait until we start timeslicing
> >after a submit
> >
> >If we submit, we do not start timeslicnig until we process the CS event
> 
> s/timeslicnig/timeslicing/
> 
> >that marks the start of the context running on HW. So in the selftest,
> >be sure to wait until we have processed the pending events before
> >asserting that timeslicing has begun.
> >
> >Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >---
> > drivers/gpu/drm/i915/gt/selftest_lrc.c | 6 +++++-
> > 1 file changed, 5 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> >b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> >index 985d4041d929..9e02917695b1 100644
> >--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> >+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> >@@ -1244,7 +1244,11 @@ static int live_timeslice_queue(void *arg)
> >               if (err)
> >                       goto err_rq;
> >
> >-              intel_engine_flush_submission(engine);
> >+              /* Wait until we ack the release_queue and start timeslicing
> >*/
> >+              do {
> >+                      intel_engine_flush_submission(engine);
> >+              } while (READ_ONCE(engine->execlists.pending[0]));
> 
> Is this guaranteed to clear?  Or should there be a count to protect against
> the endless loop?

Yes. If the HW stops, we reset it and clear the submission queue.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
