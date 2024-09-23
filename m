Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE0897EAF5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 13:45:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CBF710E3E4;
	Mon, 23 Sep 2024 11:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h3gRqgDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AE910E3DF;
 Mon, 23 Sep 2024 11:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727091950; x=1758627950;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=o8vaZJxrTmZYJGBdKLHx7iRkXj/VX32aWDMQkxVqdpI=;
 b=h3gRqgDjcwucGRMTrjW/+C8v1PDhPGCL3h5RPtQsGy4d1n0p4Qk6pOG+
 imy5YVQyZeAgy9/ITu6i9po6Q4S0jcaxwW73v5evdXx026Td2S/jqTs3q
 JE19cLUykxTdX+sAqXRY2l0SYaMVociziSfQoPBv2OfKfebyWR69bQUwp
 0bYjnwpgkUgz2ZLyF+jv250l/ijW/26wjaZ+AfVixeLX8PVCFjFb/H83A
 WQbdCzn1fftVG8IjPE+EmyOaRRV+vngBVUl6lRr4AcwvzYuOQZELpoNZu
 Cp801WxTptAzZ5j+IPZ2JBzzGKpoPmdI4qNsM1Oh61GMXVy7ZZW8vnX3C A==;
X-CSE-ConnectionGUID: ZfLMyAzsSDyxvmLCUZJJtA==
X-CSE-MsgGUID: VQIu+xX6TqiqLE4Zg9acQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="28929705"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="28929705"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 04:45:50 -0700
X-CSE-ConnectionGUID: E+xTNmH4RIaCctGj0993IA==
X-CSE-MsgGUID: DhNPIzcbQy6ld2OGfF65sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71074762"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 04:45:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>, "Kandpal,
 Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
In-Reply-To: <CH0PR11MB550828F237C40440851BA923C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-4-arun.r.murthy@intel.com>
 <SN7PR11MB6750FF1460FA59B579B93954E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <CH0PR11MB550828F237C40440851BA923C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
Date: Mon, 23 Sep 2024 14:45:44 +0300
Message-ID: <87ldzi61av.fsf@intel.com>
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

On Mon, 23 Sep 2024, "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com> wrote:
>> > -----Original Message-----
>> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
>> > Arun R Murthy
>> > Sent: Thursday, September 12, 2024 10:36 AM
>> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
>> > <nagavenkata.srikanth.v@intel.com>
>> > Subject: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
>> > timeout
>> >
>> > As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this
>> 
>> Adding where in DP spec example dp2.1 section x.x is a good idea
>> 
> Please refer to section 3.5.2.16.1 128b/132b DP LANEx_CHANNEL_EQ_DONE Sequnce
> and Figure3-51: 128b/132b DP EQ Time Budget Illustration of DP2.1a spec.
>
>> > timeout value is exclusively for the Aux RD Interval and excludes the
>> > time consumed for the AUX Tx (i.e reading/writing FFE presets). Add
>> > another 50ms for these AUX Tx to the 400ms timeout.
>> 
>> Is this something we came up with by trial and error or is this also a part of spec
>> 
> It's not by trail and erros. Timeout value of 450ms is part of DP.

It's a very poorly written spec, and contradicts itself. The only place
where I see 450 ms even mentioned is Figure 3-52. But everywhere else it
seems to say many times 400 ms is the max, without a hint that it would
be exclusive of aux. It does not say anything about the sum of rd
interval being related to the max of 400 ms either.

Regardless, I have no qualms about relaxing the timeout by 50 ms.

With the commit message explaining the above, with references,

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
>> Regards,
>> Suraj Kandpal
>> >
>> > Signed-off-by: Srikanth V NagaVenkata
>> > <nagavenkata.srikanth.v@intel.com>
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > index ca179bed46ad..b6573934c6dd 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> > @@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp
>> > *intel_dp,
>> >  	}
>> >
>> >  	/* Time budget for the LANEx_EQ_DONE Sequence */
>> > -	deadline = jiffies + msecs_to_jiffies_timeout(400);
>> > +	deadline = jiffies + msecs_to_jiffies_timeout(450);
>> >
>> >  	for (try = 0; try < max_tries; try++) {
>> >  		fsleep(delay_us);
>> > --
>> > 2.25.1
>

-- 
Jani Nikula, Intel
