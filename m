Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E12E1543DF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 13:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822B66EA56;
	Thu,  6 Feb 2020 12:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B936EA56
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 12:16:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 04:16:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="344800288"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 06 Feb 2020 04:16:39 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 25C345C0D66; Thu,  6 Feb 2020 14:15:45 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Andi Shyti <andi@etezian.org>
In-Reply-To: <20200205184055.GA3088@jack.zhora.eu>
References: <20200205105749.1769982-1-chris@chris-wilson.co.uk>
 <87v9ol9kcl.fsf@gaia.fi.intel.com> <20200205184055.GA3088@jack.zhora.eu>
Date: Thu, 06 Feb 2020 14:15:45 +0200
Message-ID: <87lfpfap3i.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: add basic selftests for
 rc6
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

Andi Shyti <andi@etezian.org> writes:

> Hi Mika,
>
>> > +static bool test_rc6(struct intel_rc6 *rc6, bool enabled)
>> > +{
>> > +	struct intel_uncore *uncore = rc6_to_uncore(rc6);
>> > +	intel_wakeref_t wakeref;
>> > +	u32 ec1, ec2;
>> > +	u32 interval;
>> > +
>> > +	wakeref = intel_runtime_pm_get(uncore->rpm);
>> > +
>> > +	interval = intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL);
>> > +
>> > +	/*
>> > +	 * the interval is stored in steps of 1.28us
>> > +	 */
>> > +	interval = div_u64(mul_u32_u32(interval, 128),
>> > +			   100 * 1000); /* => miliseconds */
>> > +
>> 
>> s/miliseconds/milliseconds.
>
> thanks!
>
>> I have a faint memory that the interval was not always 1.28us
>> but gen dependant.
>
> 1.28 is the incremental step and I haven't seen any different
> value in the docs. Have you?

I must have been mixing this with freq bins. Sorry.
And in this level as Chris said, we dont need to care.

>
>> > +	pr_info("interval:%x [%dms], threshold:%x, rc6:%x, enabled?:%s\n",
>> > +		intel_uncore_read(uncore, GEN6_RC_EVALUATION_INTERVAL),
>> > +		interval,
>> > +		intel_uncore_read(uncore, GEN6_RC6_THRESHOLD),
>> > +	       	ec2 - ec1,
>> > +	       	yesno(enabled));
>> > +
>> > +	intel_runtime_pm_put(uncore->rpm, wakeref);
>> > +
>> > +	return enabled != (ec1 >= ec2);
>> 
>> Wrap?
>
> actually here I forgot a couple of things that went forgotten in
> my git repo.
>
> Anyway, do you mean with "wrap" to add parenthesis?
>

I meant that if you take samples between wrap
period.
-Mika

>> > +	intel_rc6_unpark(rc6);
>> > +
>> > +	/* interval < threshold */
>> > +	if (!test_rc6(rc6, false)) {
>> 
>> consider removing the assertion of 'activeness' in parameter
>> and just if (!rc6_active(rc6)). Or am I missing something in here?
>
> yes, you are right, it's misleading. I will make it more clear.
>
> The basic idea is:
>
>  1. disable rc6
>  2. check whether it's disabled test_rc6(rc6, false)
>
> or
>
>  1. enable rc6
>  2. check if it's enabled test_rc6(rc6, true)
>
> Chris was skeptical about the naming as well.
>
> Thanks!
>
> Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
