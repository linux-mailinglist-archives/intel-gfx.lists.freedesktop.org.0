Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 562CB1CB425
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 17:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0236EB27;
	Fri,  8 May 2020 15:56:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC86B6EB27
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 15:56:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21153368-1500050 for multiple; Fri, 08 May 2020 16:56:50 +0100
MIME-Version: 1.0
In-Reply-To: <87eeru4ej3.fsf@gaia.fi.intel.com>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-3-chris@chris-wilson.co.uk>
 <87a72ixwt0.fsf@gaia.fi.intel.com>
 <158895262946.30605.1038065551850826772@build.alporthouse.com>
 <87eeru4ej3.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158895340689.30605.2560182810543435021@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 08 May 2020 16:56:46 +0100
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Prevent using semaphores to
 chain up to external fences
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

Quoting Mika Kuoppala (2020-05-08 16:44:48)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Mika Kuoppala (2020-05-08 16:37:15)
> >> Chris Wilson <chris@chris-wilson.co.uk> writes:
> >> 
> >> > The downside of using semaphores is that we lose metadata passing
> >> > along the signaling chain. This is particularly nasty when we
> >> > need to pass along a fatal error such as EFAULT or EDEADLK. For
> >> > fatal errors we want to scrub the request before it is executed,
> >> > which means that we cannot preload the request onto HW and have
> >> > it wait upon a semaphore.
> >> 
> >> b is waiting on a, a fails and we want to release b with error?
> >
> > Yes. B is submitted before A, and if B is relying on A to setup GPU page
> 
> I guess this has to be A is before B.
> 
> > tables or other interesting things, we can't let B run if A dies. For
> > the EDEADLK if B is waiting on A, but then A is submitted with a wait on
> > B -- we have to untangle that mess.
> 
> Avoiding the hw semaphore makes sense

It's an unfortunate necessity, unless we can work in a conditional jump
after the semaphore. But it also requires sampling all the possible
error signals :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
