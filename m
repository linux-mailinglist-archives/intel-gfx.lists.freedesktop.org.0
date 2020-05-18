Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B676D1D7555
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2837389D64;
	Mon, 18 May 2020 10:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B482C89DC7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:39:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21228194-1500050 for multiple; Mon, 18 May 2020 11:38:58 +0100
MIME-Version: 1.0
In-Reply-To: <86ec181e-b8fe-5ce1-3c9c-e4a733f8bf65@linux.intel.com>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-5-chris@chris-wilson.co.uk>
 <86ec181e-b8fe-5ce1-3c9c-e4a733f8bf65@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158979833767.17769.16160768347014088937@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 11:38:57 +0100
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Incorporate the virtual
 engine into timeslicing
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

Quoting Tvrtko Ursulin (2020-05-18 11:36:15)
> 
> On 18/05/2020 09:14, Chris Wilson wrote:
> > @@ -5519,7 +5537,7 @@ static void virtual_submission_tasklet(unsigned long data)
> >   submit_engine:
> >               GEM_BUG_ON(RB_EMPTY_NODE(&node->rb));
> >               node->prio = prio;
> > -             if (first && prio > sibling->execlists.queue_priority_hint)
> > +             if (first && prio >= sibling->execlists.queue_priority_hint)
> 
> I got the rest but not why this is needed?

It's not. I failed in my mission to undo this chunk correctly.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
