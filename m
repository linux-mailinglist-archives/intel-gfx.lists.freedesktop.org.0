Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 862452461CA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 11:03:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9F66E06D;
	Mon, 17 Aug 2020 09:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74B7D6E06D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 09:03:20 +0000 (UTC)
IronPort-SDR: OSv6dnIkwJvIBcfZuYF0fPxGxgiT9eqZUCOHLw0LWTkAxGYKT1lj/oPxLUfiAuEGaUMoFcC+zO
 SfNHrNJRc4RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="218987727"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="218987727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 02:03:19 -0700
IronPort-SDR: ZYntDGJH8Ot6aKf8h/3tNyMtwWFJTOdKnCAvAqYXnWcka96y5S2DNNXzpgzz70HV1kwBhtlSJM
 WHRN3VTkw+dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="400135478"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2020 02:03:18 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 498285C2770; Mon, 17 Aug 2020 12:02:31 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <159743629912.31882.4041606652398941372@build.alporthouse.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-3-chris@chris-wilson.co.uk>
 <87ft8p135h.fsf@gaia.fi.intel.com>
 <159743409290.31882.4297809836771338545@build.alporthouse.com>
 <159743629912.31882.4041606652398941372@build.alporthouse.com>
Date: Mon, 17 Aug 2020 12:02:31 +0300
Message-ID: <87d03p1w7s.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Apply the CSB w/a for all
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Chris Wilson (2020-08-14 20:41:32)
>> Quoting Mika Kuoppala (2020-08-14 19:41:14)
>> > Chris Wilson <chris@chris-wilson.co.uk> writes:
>> > > -     entry = READ_ONCE(*csb);
>> > > -     if (unlikely(entry == -1)) {
>> > > -             preempt_disable();
>> > > -             if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 50))
>> > 
>> > If we get this deep into desperation, should we start to apply more
>> > pressure. Ie, rmb instead of just instructing the compiler. And could also
>> > start to invalidate the entry which obviously if of no use.
>> 
>> I had a rmb() here; removing it did not appear to make any difference
>> whatsoever to the average delay. The extreme case would be a full
>> mb(); clflush(); mb() read. I haven't timed the average for that....
>
> +static inline u64 __csb_read(u64 *csb)
> +{
> +       mb();
> +       clflush(csb);
> +       mb();
> +
> +       return READ_ONCE(*csb);
> +}
>
> [ 1554.274204] csb: 1793 misses, avg 475ns, max 14727ns
>
> So no better on average or at worst.

Well thanks for trying it out. We can attach it to hsdes as
a note that there is not much to be done on cpu side :O
-Mika

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
