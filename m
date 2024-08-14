Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C729516E1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 10:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A0410E42D;
	Wed, 14 Aug 2024 08:45:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C10E7jS0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3135D10E42A;
 Wed, 14 Aug 2024 08:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723625131; x=1755161131;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9zHK0Wcr/Y7Lvz7AVcUCx7zjK1Vhjz9fl1zRwlkw1RY=;
 b=C10E7jS0g16rMPq9uT2s+XTnWwcjYQ8GuAcmCC9hesj8e8zbsfn96rpD
 Xp3VoMeBZvcpnuOpn1wtxRoQaqnQJn4ukB24TGky2WCGB8a/glD7IJ6k0
 tkBErGhDyTsuGM3Paa5fUO6L8Sd9HVVVUtoCfAdTy+g/DJVY39Bk7tTq2
 /IuTNBww4xj5Tv3fOxVn1xvd14bsT922gO5v2jSDX0yOGZATuVp72kFhz
 3Fsa8Px/vsbejdGGiAtogTY2YRY/lR8xFlGX760pdgjElc6wwZtslDqBz
 VGxGLppe7WQQSDMf13EjQLQZ2LpQZg5JOBkioyQfQHKFettMZZhZqIhwk w==;
X-CSE-ConnectionGUID: iaohyakxQxWNE0jBv3DZHw==
X-CSE-MsgGUID: y8Ne5izLRdmVOICOywrqpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21986546"
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="21986546"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 01:45:31 -0700
X-CSE-ConnectionGUID: 7T63j6uFSFWgKZawSXOOFg==
X-CSE-MsgGUID: lQMLzhymRI+JE18Xwxat9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,288,1716274800"; d="scan'208";a="58826066"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 01:45:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915: Preserve value of fec_enable calculated
 before DSC compute config
In-Reply-To: <SJ1PR11MB6129241F0F93400ACB2592FAB9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
 <87v8060xfb.fsf@intel.com>
 <SJ1PR11MB6129241F0F93400ACB2592FAB9852@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Wed, 14 Aug 2024 11:45:23 +0300
Message-ID: <877ccjze58.fsf@intel.com>
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

On Mon, 12 Aug 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, August 12, 2024 5:24 PM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: Re: [PATCH] drm/i915: Preserve value of fec_enable calculated before
>> DSC compute config
>> 
>> On Mon, 12 Aug 2024, Chaitanya Kumar Borah
>> <chaitanya.kumar.borah@intel.com> wrote:
>> > Before DSC compute config, fec_enable value is set in other functions
>> > (e.g. intel_dp_mst_find_vcpi_slots_for_bpp). We are ignoring the value
>> > by OR'ing its value in DSC compute config. One unintended effect of
>> > this is setting fec_enable in UHBR use-cases which is not needed for
>> > Intel hardware. Therefore, change operator to AND.
>> >
>> > While at it, add a comment explaining why we don't enable FEC in eDP v1.5.
>> >
>> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
>> >  1 file changed, 6 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 49a37b996530..3fbf9f33c3e4 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -2298,7 +2298,12 @@ int intel_dp_dsc_compute_config(struct
>> intel_dp *intel_dp,
>> >  		&pipe_config->hw.adjusted_mode;
>> >  	int ret;
>> >
>> > -	pipe_config->fec_enable = pipe_config->fec_enable ||
>> > +	/*
>> > +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
>> > +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
>> > +	 * eDP. Until, there is a good reason to do so.
>> > +	 */
>> > +	pipe_config->fec_enable = pipe_config->fec_enable &&
>> >  		(!intel_dp_is_edp(intel_dp) &&
>> >  		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
>> 
>> With this change, FEC will only be enabled for non-UHBR MST DP and nothing
>> else. This is the place where SST DP DSC gets FEC enabled.
>
> Thank you Jani for pointing it out.
>
> Something like this should work?
>
> 	pipe_config->fec_enable = pipe_config->fec_enable ||
>   		(!intel_dp_is_edp(intel_dp) &&
>   		 intel_dp_supports_fec(intel_dp, connector, pipe_config) && !intel_dp_is_uhbr(pipe_config));

Technically yes, although I dislike the fact that we now have fec_enable
and its rules split to multiple locations.

BR,
Jani.


>
> Regards
>
> Chaitanya
>
>> 
>> BR,
>> Jani.
>> 
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
