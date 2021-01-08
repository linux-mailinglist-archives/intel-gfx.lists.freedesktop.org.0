Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCE82EF4C3
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1AD6E170;
	Fri,  8 Jan 2021 15:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B956E170
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:25:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23539822-1500050 for multiple; Fri, 08 Jan 2021 15:24:48 +0000
MIME-Version: 1.0
In-Reply-To: <X/h3vgxF4DlV5jbN@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <20210107221724.10036-2-chris@chris-wilson.co.uk>
 <X/h3vgxF4DlV5jbN@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Fri, 08 Jan 2021 15:24:47 +0000
Message-ID: <161011948741.28368.9687495779764618235@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Restore ce->signal flush
 before releasing virtual engine
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2021-01-08 15:18:22)
> Hi Chris,
> 
> > +void intel_context_remove_breadcrumbs(struct intel_context *ce,
> > +                                   struct intel_breadcrumbs *b)
> > +{
> > +     struct i915_request *rq, *rn;
> > +     bool release = false;
> > +     unsigned long flags;
> > +
> > +     spin_lock_irqsave(&ce->signal_lock, flags);
> > +
> > +     if (list_empty(&ce->signals))
> > +             goto unlock;
> 
> does "list_empty" need to be under lock or you've been lazy?

This check is required to be under the lock, we have to be careful about
not calling remove_signaling_context() from here and signal_irq_work.
I put the unlocked check in the caller to avoid the function call as well.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
