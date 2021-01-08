Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2AE2EF501
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:41:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562E889C6C;
	Fri,  8 Jan 2021 15:41:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1198 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 15:41:54 UTC
Received: from 17.mo7.mail-out.ovh.net (17.mo7.mail-out.ovh.net
 [188.165.35.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C23E89C6C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:41:54 +0000 (UTC)
Received: from player738.ha.ovh.net (unknown [10.108.57.23])
 by mo7.mail-out.ovh.net (Postfix) with ESMTP id 626DF18BD0C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 16:05:05 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player738.ha.ovh.net (Postfix) with ESMTPSA id A2EFD19F3A77E;
 Fri,  8 Jan 2021 15:04:59 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R002364eaf5c-d494-4881-ac25-7167a39c5d85,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 17:04:55 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/h0l8EgTO9J4t27@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <X/hPhSqBCjHFKg9F@jack.zhora.eu>
 <161011238272.28368.13711350036924329757@build.alporthouse.com>
 <X/hjekGVV5F+sokg@jack.zhora.eu>
 <161011407580.28368.6023725628158257155@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161011407580.28368.6023725628158257155@build.alporthouse.com>
X-Ovh-Tracer-Id: 8403998381670121993
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeghedgtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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

Hi Chris,

> > > > > diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > > index 75839db63bea..59c58a276677 100644
> > > > > --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > > +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > > > @@ -852,6 +852,9 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
> > > > >               }
> > > > >  
> > > > >               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> > > > > +             if (!t[0])
> > > > > +                     continue;
> > > > > +
> > > > 
> > > > are you assuming here that if t[0] is '0', also the rest of 't'
> > > > is '0'?
> > > 
> > > It's sorted into ascending order with ktime_t... Hmm, s64 not u64 as I
> > > presumed. So better to check <= 0.
> > 
> > by division by 0 I guess you mean here:
> > 
> >         div64_u64(mul_u32_u32(4 * size,
> >                               1000 * 1000 * 1000),
> >                   t[1] + 2 * t[2] + t[3]) >> 20);
> > 
> > why are you testing t[0]? Did I miss anything else?
> 
> Since t[0] is the most negative value, if it is <= 0 that implies at
> least one of the measurements was bad. If any are bad, all are bad by
> association. I considered checking t[4] to make sure that at least the
> best was good enough, but paranoia won.

yes, that's what I actually meant with the first question.

Thanks,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
