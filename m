Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F24830BF55
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 14:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0462E89FD1;
	Tue,  2 Feb 2021 13:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7D589FD1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 13:27:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23772258-1500050 for multiple; Tue, 02 Feb 2021 13:27:43 +0000
MIME-Version: 1.0
In-Reply-To: <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-17-chris@chris-wilson.co.uk>
 <77b97a4c-5bcb-5025-cf4a-f2f4b75a0f47@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 13:27:44 +0000
Message-ID: <161227246439.1150.11558689575002322169@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 17/57] drm/i915: Extract request suspension
 from the execlists
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

Quoting Tvrtko Ursulin (2021-02-02 13:15:52)
> 
> On 01/02/2021 08:56, Chris Wilson wrote:
> > Make the ability to suspend and resume a request and its dependents
> > generic.

> > +bool __i915_sched_suspend_request(struct intel_engine_cs *engine,
> > +                               struct i915_request *rq)
> > +{
> > +     LIST_HEAD(list);
> > +
> > +     lockdep_assert_held(&engine->active.lock);
> > +     GEM_BUG_ON(rq->engine != engine);
> > +
> > +     if (__i915_request_is_complete(rq)) /* too late! */
> > +             return false;
> > +
> > +     if (i915_request_on_hold(rq))
> > +             return false;
> 
> This was a GEM_BUG_ON before so not pure extraction / code movement.

It was part of making it generic to allow other callers.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
