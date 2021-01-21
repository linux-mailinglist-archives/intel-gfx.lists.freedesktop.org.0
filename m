Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 717D62FEECC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 16:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37B16E913;
	Thu, 21 Jan 2021 15:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887126E90F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 15:31:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23662123-1500050 for multiple; Thu, 21 Jan 2021 15:30:47 +0000
MIME-Version: 1.0
In-Reply-To: <YAmch2OCciQsJuh9@jack.zhora.eu>
References: <20210120122205.2808-1-chris@chris-wilson.co.uk>
 <20210120122205.2808-3-chris@chris-wilson.co.uk>
 <YAmch2OCciQsJuh9@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Thu, 21 Jan 2021 15:30:47 +0000
Message-ID: <161124304729.3166.18295284926526969469@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Strip out internal
 priorities
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

Quoting Andi Shyti (2021-01-21 15:23:51)
> Hi Chris,
> 
> > -static void __bump_priority(struct i915_sched_node *node, unsigned int bump)
> > -{
> > -     struct i915_sched_attr attr = node->attr;
> > -
> > -     if (attr.priority & bump)
> > -             return;
> > -
> > -     attr.priority |= bump;
> > -     __i915_schedule(node, &attr);
> > -}
> > -
> > -void i915_schedule_bump_priority(struct i915_request *rq, unsigned int bump)
> > -{
> > -     unsigned long flags;
> > -
> > -     GEM_BUG_ON(bump & ~I915_PRIORITY_MASK);
> > -     if (READ_ONCE(rq->sched.attr.priority) & bump)
> > -             return;
> > -
> > -     spin_lock_irqsave(&schedule_lock, flags);
> > -     __bump_priority(&rq->sched, bump);
> > -     spin_unlock_irqrestore(&schedule_lock, flags);
> > -}
> 
> was, indeed, this function used anywhere else?

Completely overlooked that we had removed the last user a while back.
In my excuse, these have been sitting around for sometime since removing
the no-semaphore boosting.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
