Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949FF12D1BB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE89789F19;
	Mon, 30 Dec 2019 16:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD57289F19
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:12:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19727839-1500050 for multiple; Mon, 30 Dec 2019 16:12:54 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOsrHys3HoaKxSXaTyod+EHzc8yC+uvWanZEewysPinPA@mail.gmail.com>
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-5-chris@chris-wilson.co.uk>
 <CAM0jSHOsrHys3HoaKxSXaTyod+EHzc8yC+uvWanZEewysPinPA@mail.gmail.com>
Message-ID: <157772237211.3861.11783918047295549189@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 16:12:52 +0000
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/gt: Ignore stale context state
 upon resume
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2019-12-30 16:06:47)
> On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >  static const struct intel_context_ops execlists_context_ops = {
> > @@ -3968,7 +3982,6 @@ static void init_common_reg_state(u32 * const regs,
> >                                             CTX_CTRL_RS_CTX_ENABLE);
> >
> >         regs[CTX_RING_CTL] = RING_CTL_SIZE(ring->size) | RING_VALID;
> > -       regs[CTX_BB_STATE] = RING_BB_PPGTT;
> 
> Zero clue what that does...

It's supposed to be a readonly bit that shows the state of the current
batch buffer, and is supposed to be only set by MI_BB_START. Broadwell
and Braswell disagree with the bspec. C'est la vie.

I broke it out into a separate patch for clarity.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
