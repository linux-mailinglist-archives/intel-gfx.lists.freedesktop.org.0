Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E4C2EF380
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 14:54:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7774D88007;
	Fri,  8 Jan 2021 13:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1ED6E822
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 13:54:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23538769-1500050 for multiple; Fri, 08 Jan 2021 13:54:36 +0000
MIME-Version: 1.0
In-Reply-To: <X/hjekGVV5F+sokg@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <X/hPhSqBCjHFKg9F@jack.zhora.eu>
 <161011238272.28368.13711350036924329757@build.alporthouse.com>
 <X/hjekGVV5F+sokg@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Fri, 08 Jan 2021 13:54:35 +0000
Message-ID: <161011407580.28368.6023725628158257155@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/selftests: Skip unstable
 timing measurements
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

Quoting Andi Shyti (2021-01-08 13:51:54)
> Hi Chris,
> 
> > > > diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > index 75839db63bea..59c58a276677 100644
> > > > --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > @@ -852,6 +852,9 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
> > > >               }
> > > >  
> > > >               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> > > > +             if (!t[0])
> > > > +                     continue;
> > > > +
> > > 
> > > are you assuming here that if t[0] is '0', also the rest of 't'
> > > is '0'?
> > 
> > It's sorted into ascending order with ktime_t... Hmm, s64 not u64 as I
> > presumed. So better to check <= 0.
> 
> by division by 0 I guess you mean here:
> 
>         div64_u64(mul_u32_u32(4 * size,
>                               1000 * 1000 * 1000),
>                   t[1] + 2 * t[2] + t[3]) >> 20);
> 
> why are you testing t[0]? Did I miss anything else?

Since t[0] is the most negative value, if it is <= 0 that implies at
least one of the measurements was bad. If any are bad, all are bad by
association. I considered checking t[4] to make sure that at least the
best was good enough, but paranoia won.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
