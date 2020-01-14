Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6BD13A886
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:38:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C98936E370;
	Tue, 14 Jan 2020 11:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D949D6E370
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 11:38:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19873618-1500050 for multiple; Tue, 14 Jan 2020 11:38:09 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200113104442.1753973-1-chris@chris-wilson.co.uk>
 <20200113104442.1753973-2-chris@chris-wilson.co.uk>
 <9b90921d-be2b-0c17-c1e6-32cdfec3ab19@linux.intel.com>
In-Reply-To: <9b90921d-be2b-0c17-c1e6-32cdfec3ab19@linux.intel.com>
Message-ID: <157900188699.27314.1253220724434401947@skylake-alporthouse-com>
Date: Tue, 14 Jan 2020 11:38:07 +0000
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use common priotree lists for
 virtual engine
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

Quoting Tvrtko Ursulin (2020-01-14 11:13:06)
> 
> 
> On 13/01/2020 10:44, Chris Wilson wrote:
> > @@ -2473,6 +2475,7 @@ static void execlists_submit_request(struct i915_request *request)
> >       spin_lock_irqsave(&engine->active.lock, flags);
> >   
> >       queue_request(engine, &request->sched, rq_prio(request));
> > +     set_bit(I915_FENCE_FLAG_PQUEUE, &request->fence.flags);
> 
> Move into queue_request so it is closer to priolist management, just like at other call sites?

Sure. When going through them, it felt natural to treat this as the list
operation. (That's what I was thinking :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
