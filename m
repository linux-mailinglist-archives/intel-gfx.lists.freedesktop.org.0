Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3661C97B9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 19:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378A06EA38;
	Thu,  7 May 2020 17:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF91C6EA38
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 17:28:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21142219-1500050 for multiple; Thu, 07 May 2020 18:27:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200507152338.7452-3-chris@chris-wilson.co.uk>
References: <20200507152338.7452-1-chris@chris-wilson.co.uk>
 <20200507152338.7452-3-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158887247553.11903.2356325497393464087@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 18:27:55 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Remove wait priority boosting
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

Quoting Chris Wilson (2020-05-07 16:23:38)
> Upon waiting a request (when asked), we gave that request a small
> priority boost, not enough for it to cause preemption, but enough for it
> to be scheduled next before all equals. We also used that bit to give
> new clients a small priority boost, similar to FQ_CODEL, such that we
> favoured short interactive tasks ahead of long running streams.
> 
> However, this is causing lots of complications with timeslicing where we
> both want to honour the boost and yet ignore it. Those complications
> cause unexpected user behaviour (tasks not being timesliced and run
> concurrently as epxected), and the easiest way to resolve that is to
> remove the boost. Hopefully, we can find a compromise again if we need
> to, but in theory timeslicing itself and future more advanced schedulers
> should give us the interactivity boost we seek.

Fwiw, initial results show that it would be possible to remove
the NOSEMA handling as well now. Previously gem_wsim -r busy would be
hurt due to the inopportune semaphores and slow timeslicing. Touch wood,
that pain seems to be gone. But that will take a few days to get solid
numbers.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
