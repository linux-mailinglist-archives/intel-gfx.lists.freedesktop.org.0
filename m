Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F2423D92D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Aug 2020 12:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FDC06E8AF;
	Thu,  6 Aug 2020 10:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D466E8AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Aug 2020 10:14:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22048565-1500050 for multiple; Thu, 06 Aug 2020 11:14:33 +0100
MIME-Version: 1.0
In-Reply-To: <77d41536-bcfc-dd05-b57e-d254f603a434@linux.intel.com>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
 <20200805122231.23313-3-chris@chris-wilson.co.uk>
 <77d41536-bcfc-dd05-b57e-d254f603a434@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 06 Aug 2020 11:14:32 +0100
Message-ID: <159670887210.25811.8072740035865390718@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/37] drm/i915/gt: Protect context lifetime
 with RCU
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

Quoting Tvrtko Ursulin (2020-08-05 16:03:58)
> 
> On 05/08/2020 13:21, Chris Wilson wrote:
> > Allow a brief period for continued access to a dead intel_context by
> > deferring the release of the struct until after an RCU grace period.
> > As we are using a dedicated slab cache for the contexts, we can defer
> > the release of the slab pages via RCU, with the caveat that individual
> > structs may be reused from the freelist within an RCU grace period. To
> > handle that, we have to avoid clearing members of the zombie struct.
> 
> Is this related to debugfs race, optimising the driver latencies or 
> both? Need to hack up mutex_reinit bothers me, on top of general desire 
> to avoid even more rcu complexity.

There's an issue in the next patch exposed by virtual engine
destruction that needs a fix handily provided by the rcu grace period,
and it's used in the following patch to reduce irqoff lock contention.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
