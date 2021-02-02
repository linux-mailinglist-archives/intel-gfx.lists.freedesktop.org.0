Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DBB30C76A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 18:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F6E89916;
	Tue,  2 Feb 2021 17:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0109589916
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 17:22:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23775339-1500050 for multiple; Tue, 02 Feb 2021 17:22:37 +0000
MIME-Version: 1.0
In-Reply-To: <8a718e4d-ec77-5829-e4c5-d29981731239@linux.intel.com>
References: <20210202151445.20002-1-chris@chris-wilson.co.uk>
 <20210202151445.20002-7-chris@chris-wilson.co.uk>
 <8a718e4d-ec77-5829-e4c5-d29981731239@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 17:22:37 +0000
Message-ID: <161228655776.1150.8825398813530055896@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [CI 07/14] drm/i915/selftests: Exercise priority
 inheritance around an engine loop
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

Quoting Tvrtko Ursulin (2021-02-02 16:44:26)
> 
> On 02/02/2021 15:14, Chris Wilson wrote:
> > +     err = 0;
> > +     count = 0;
> > +     for_each_uabi_engine(engine, i915) {
> > +             if (!intel_engine_has_scheduler(engine))
> > +                     continue;
> > +
> > +             rq = __write_timestamp(engine, obj, count, rq);
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     break;
> > +             }
> > +
> > +             count++;
> > +     }
> 
> ^^^^ vvvv - two of the same by copy&paste error or couldn't be bothered 
> with outer loop?

It was just my thought process at the time, I wanted the
A->Z; A->Z pair so that it clear that it was cyclic and just didn't
think of putting it inside another loop.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
