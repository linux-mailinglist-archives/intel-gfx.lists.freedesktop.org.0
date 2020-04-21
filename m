Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C9A1B28C5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7605E6E98F;
	Tue, 21 Apr 2020 13:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB28C6E98F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 13:58:42 +0000 (UTC)
IronPort-SDR: wQaLzcTQLASU+2z6Cu89J8OlbpsSoFq+6lSeQRf5D1yDxzvwHl2LUHP+dju4aTBKhQqhmXoA3m
 c2ZLawgl+hVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 06:58:42 -0700
IronPort-SDR: p0GNHrzTuQk0eCErTnZrd9ZJKdZR05/Bp5xt4rfzM6gNs/fX84gH9jXHMIot982IycKcHc95ZN
 80yffcEz3UQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="402195363"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 21 Apr 2020 06:58:41 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F2EC85C1DA7; Tue, 21 Apr 2020 16:56:46 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158747705196.19285.2111455064932087716@build.alporthouse.com>
References: <20200421134512.27910-1-chris@chris-wilson.co.uk>
 <158747705196.19285.2111455064932087716@build.alporthouse.com>
Date: Tue, 21 Apr 2020 16:56:46 +0300
Message-ID: <877dy9lz6p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Make the slice:unslice ratio
 request explicit for RPS
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

> Quoting Chris Wilson (2020-04-21 14:45:12)
>> In RPS, we have the option to only specify the unslice [ring] clock
>> ratio and for the pcu to derive the slice [gpu] clock ratio from its
>> magic table. We also have the option to tell the pcu to use our
>> requested gpu clock ratio, and for it to try and throttle the unslice
>> and slice ratios separately.
>> 
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_rps.c | 11 +++++++----
>>  1 file changed, 7 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>> index 4dcfae16a7ce..07321e1b22f6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -662,14 +662,17 @@ static int gen6_rps_set(struct intel_rps *rps, u8 val)
>>         struct drm_i915_private *i915 = rps_to_i915(rps);
>>         u32 swreq;
>>  
>> -       if (INTEL_GEN(i915) >= 9)
>> -               swreq = GEN9_FREQUENCY(val);
>> -       else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>> +       if (INTEL_GEN(i915) >= 9) {
>> +               swreq = 0x2; /* only throttle slice, not unslice */
>
> 0x0 == use implicit slice ratio
> 0x1 == use explicit slice ratio
> 0x2 == use separate throttling

Care to enum/define these and add as parameter to GEN9_FREQUENCY?

Also if there is any bspec link, add a reference.

Thanks,
-Mika

>
> Not sure if 0x2 actually was implemented in the end.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
