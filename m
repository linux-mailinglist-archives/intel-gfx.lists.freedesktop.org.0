Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 350BF960403
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 10:09:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848F210E295;
	Tue, 27 Aug 2024 08:09:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SThi+32i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF1910E046;
 Tue, 27 Aug 2024 08:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724746143; x=1756282143;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=IQuUVZp3xuyOx2tR/mw1EV2mnawNe0ve7vsMhh7VYYo=;
 b=SThi+32iX6RtvLdTEJuu7S1KRv6KFn4AWYGgC83AYNfnM0LfVuwlc4yL
 /OKbVuilj1mvsvQLJJp/j11HTnZmZewuq4uNaXWNiWNKjempChUJn4RAh
 TCFSrRO+XVOlcDPNf3VQ5TzEo+KbGJR7qq4Ma7aIkZEuZDcPhvfo9o+1b
 KIVAbE8gMOyWUkr84BxbV2Ooj49oHy8feCU7Rv6m7hqR+1qBezAfISF4g
 hvzrf4UkiHQdWPFNIUaG0TmWFCzmIRWJnvoGZO3V3cBS0TJzXjSklg2lb
 EnhSd9fOe9/dAsQFwW2ZNwkX1jj3vAUORg52VWHKnyVLTeeqgH/k3uffW A==;
X-CSE-ConnectionGUID: jKebzTSTRz6xxbqSSpnvdw==
X-CSE-MsgGUID: ctJTEXOdSPW9JrdAVhEOPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="26107339"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="26107339"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:09:03 -0700
X-CSE-ConnectionGUID: 3yZIFZp9TgCTFxRWLu441Q==
X-CSE-MsgGUID: fLUQTZtvQKC3Kl+vbN68ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="67119707"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:09:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: BMG supports UHBR13.5
In-Reply-To: <IA0PR11MB7307E3C377E8F3725937B7B2BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
 <87a5gy1ki6.fsf@intel.com>
 <IA0PR11MB7307E3C377E8F3725937B7B2BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Tue, 27 Aug 2024 11:08:58 +0300
Message-ID: <874j761j6t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 27 Aug 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Tuesday, August 27, 2024 1:11 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: Re: [PATCH] drm/i915/display: BMG supports UHBR13.5
>> 
>> On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > UHBR20 is not supported by battlemage and the maximum link rate
>> > supported is UHBR13.5
>> >
>> > HSD: 16023263677
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>> >  1 file changed, 11 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 789c2f78826d..3232ec4b2889 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -528,6 +528,10 @@ static void
>> >  intel_dp_set_source_rates(struct intel_dp *intel_dp)  {
>> >  	/* The values must be in increasing order */
>> > +	static const int bmg_rates[] = {
>> > +		162000, 216000, 243000, 270000, 324000, 432000, 540000,
>> 675000,
>> > +		810000,	1000000, 1350000,
>> > +	};
>> >  	static const int mtl_rates[] = {
>> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000,
>> 675000,
>> >  		810000,	1000000, 2000000,
>> > @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>> >  		    intel_dp->source_rates || intel_dp->num_source_rates);
>> >
>> >  	if (DISPLAY_VER(dev_priv) >= 14) {
>> > -		source_rates = mtl_rates;
>> > -		size = ARRAY_SIZE(mtl_rates);
>> > +		if (IS_DGFX(dev_priv)) {
>> 
>> Why dgfx instead of bmg? Should be explained in commit message at the very
>> least.
>> 
> Likewise IS_DH2 / IS_MTL we don't have IS_BMG as its Display 14.1. One of the way to differentiate this is DISPLAY < 14 are integrated and this BMG is discrete and hence using IS_DGFX() for identifying BMG platform.

But isn't dgfx completely incidental here?

>
> Will add this in the commit message if not other comments and get Rb on this patch.
>
> Thanks and Regards,
> Arun R Murthy
> -------------------
>
>> BR,
>> Jani.
>> 
>> > +			source_rates = bmg_rates;
>> > +			size = ARRAY_SIZE(bmg_rates);
>> > +		} else {
>> > +			source_rates = mtl_rates;
>> > +			size = ARRAY_SIZE(mtl_rates);
>> > +		}
>> >  		max_rate = mtl_max_source_rate(intel_dp);
>> >  	} else if (DISPLAY_VER(dev_priv) >= 11) {
>> >  		source_rates = icl_rates;
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
