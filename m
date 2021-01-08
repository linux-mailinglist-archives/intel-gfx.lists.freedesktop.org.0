Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF272EF674
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EBC6E845;
	Fri,  8 Jan 2021 17:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 8398 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 17:30:44 UTC
Received: from 8.mo6.mail-out.ovh.net (8.mo6.mail-out.ovh.net [178.33.42.204])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804C06E845
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:30:44 +0000 (UTC)
Received: from player771.ha.ovh.net (unknown [10.108.54.172])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 350C2232023
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 14:52:02 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player771.ha.ovh.net (Postfix) with ESMTPSA id EF01819EBC975;
 Fri,  8 Jan 2021 13:51:56 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-96R00153d4cb5b-cbce-45e8-aaab-6a879adda1e3,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 15:51:54 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/hjekGVV5F+sokg@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <X/hPhSqBCjHFKg9F@jack.zhora.eu>
 <161011238272.28368.13711350036924329757@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161011238272.28368.13711350036924329757@build.alporthouse.com>
X-Ovh-Tracer-Id: 7170012084842840585
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeggedgheejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedurdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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

> > > diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > index 75839db63bea..59c58a276677 100644
> > > --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> > > @@ -852,6 +852,9 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
> > >               }
> > >  
> > >               sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
> > > +             if (!t[0])
> > > +                     continue;
> > > +
> > 
> > are you assuming here that if t[0] is '0', also the rest of 't'
> > is '0'?
> 
> It's sorted into ascending order with ktime_t... Hmm, s64 not u64 as I
> presumed. So better to check <= 0.

by division by 0 I guess you mean here:

	div64_u64(mul_u32_u32(4 * size,
			      1000 * 1000 * 1000),
		  t[1] + 2 * t[2] + t[3]) >> 20);

why are you testing t[0]? Did I miss anything else?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
