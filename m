Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858442EF2FF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 14:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CFE6E827;
	Fri,  8 Jan 2021 13:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9218C6E83C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 13:26:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23538462-1500050 for multiple; Fri, 08 Jan 2021 13:26:23 +0000
MIME-Version: 1.0
In-Reply-To: <X/hPhSqBCjHFKg9F@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <X/hPhSqBCjHFKg9F@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Date: Fri, 08 Jan 2021 13:26:22 +0000
Message-ID: <161011238272.28368.13711350036924329757@build.alporthouse.com>
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

Quoting Andi Shyti (2021-01-08 12:26:45)
> Hi Chris,
> 
> > diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > index 75839db63bea..59c58a276677 100644
> > --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > @@ -852,6 +852,9 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
> >               }
> >  
> >               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> > +             if (!t[0])
> > +                     continue;
> > +
> 
> are you assuming here that if t[0] is '0', also the rest of 't'
> is '0'?

It's sorted into ascending order with ktime_t... Hmm, s64 not u64 as I
presumed. So better to check <= 0.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
