Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5912B6215
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 14:25:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F41196E203;
	Tue, 17 Nov 2020 13:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 591B16E203
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 13:25:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23018050-1500050 for multiple; Tue, 17 Nov 2020 13:25:26 +0000
MIME-Version: 1.0
In-Reply-To: <5672a04a-bc05-1d32-e051-b9a5a0fcc82d@linux.intel.com>
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-8-chris@chris-wilson.co.uk>
 <5672a04a-bc05-1d32-e051-b9a5a0fcc82d@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 13:25:29 +0000
Message-ID: <160561952917.22621.15356472644492375343@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/28] drm/i915/gt: Show all active
 timelines for debugging
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

Quoting Tvrtko Ursulin (2020-11-17 12:59:44)
> 
> On 17/11/2020 11:30, Chris Wilson wrote:
> > +             if (show_request) {
> > +                     list_for_each_entry_safe(rq, rn, &tl->requests, link)
> > +                             show_request(m, rq,
> > +                                          i915_request_is_active(rq) ? "  E" :
> > +                                          i915_request_is_ready(rq) ? "  Q" :
> > +                                          "  U");
> 
> Can we get some consistency between the category counts and flags.
> 
> s/count/queued/ -> Q

Hmm, if you are sure. Q would then not match with the engine info.

Still favouring count over queued; I think count indicates more clearly
that it is the superset, but queued may imply it excludes ready and
definitely sounds like it should not include inflight.

> ready -> R (also matches with term runnable)
> active -> E ? hmmm E is consistent with the engine info dump.
> 
> Not ideal but perhaps every bit of more consistency is good.

Not sold yet, but not happy with the current flags either.

If we go with 'R' for ready, we should also update engine info.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
