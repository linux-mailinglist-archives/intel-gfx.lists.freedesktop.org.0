Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FFC96040F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 10:10:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6276210E2A6;
	Tue, 27 Aug 2024 08:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ugk/V8gJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4017B10E245;
 Tue, 27 Aug 2024 08:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724746237; x=1756282237;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=f6vWmMmoY2kCA8y+g8svdCX/CzbCbh+YDTrPW9wbyaI=;
 b=Ugk/V8gJAGbbn9VQgVpyNG3M7jXRYcCEWd7jodhPmYne7pkDvdYNMuxs
 J8ZP+WGrk+pFRLtY5vRwqTkbXLr+ymf9GMApIzmAZb88LV5HOkUy22jpi
 HiGFD4yQ6gnC8lEvBNffJ0K2edpAeWWu8uj5G+CO3mmsJ6cwNfV+jFCF4
 JTLnrLuO2J8+qAgiw6/mn/dBndU2TbVdczpXEaf99mOXt1LJ0KW45Z+3q
 iHZpX+uhpZwslSbDvEb/8/+9GLjWtP0T6JSRS2Qr9aE/tKosmam+mWFGP
 3Mvl4TaB0ukO6yPvMa5UlGexHlDiUqVWjHGri8JtZUHRLeM7nJv5pm8l+ A==;
X-CSE-ConnectionGUID: sYvIUY49S+yc0Zw8hzf8mQ==
X-CSE-MsgGUID: SnFPyDGSRUC52jVwRNnIAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22729700"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="22729700"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:10:36 -0700
X-CSE-ConnectionGUID: FQaeHBMYTpKQuzvdEt7ZVg==
X-CSE-MsgGUID: dN+dDVSySz2gr1Ld0zDEIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="63504474"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:10:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: BMG supports UHBR13.5
In-Reply-To: <874j761j6t.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827064047.132278-1-arun.r.murthy@intel.com>
 <87a5gy1ki6.fsf@intel.com>
 <IA0PR11MB7307E3C377E8F3725937B7B2BA942@IA0PR11MB7307.namprd11.prod.outlook.com>
 <874j761j6t.fsf@intel.com>
Date: Tue, 27 Aug 2024 11:10:32 +0300
Message-ID: <871q2a1j47.fsf@intel.com>
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

On Tue, 27 Aug 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 27 Aug 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>>> -----Original Message-----
>>> From: Jani Nikula <jani.nikula@linux.intel.com>
>>> Sent: Tuesday, August 27, 2024 1:11 PM
>>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.org;
>>> intel-gfx@lists.freedesktop.org
>>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
>>> Subject: Re: [PATCH] drm/i915/display: BMG supports UHBR13.5
>>> 
>>> On Tue, 27 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>>> > UHBR20 is not supported by battlemage and the maximum link rate
>>> > supported is UHBR13.5
>>> >
>>> > HSD: 16023263677
>>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>> > ---
>>> >  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>>> >  1 file changed, 11 insertions(+), 2 deletions(-)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>> > b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > index 789c2f78826d..3232ec4b2889 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > @@ -528,6 +528,10 @@ static void
>>> >  intel_dp_set_source_rates(struct intel_dp *intel_dp)  {
>>> >  	/* The values must be in increasing order */
>>> > +	static const int bmg_rates[] = {
>>> > +		162000, 216000, 243000, 270000, 324000, 432000, 540000,
>>> 675000,
>>> > +		810000,	1000000, 1350000,
>>> > +	};
>>> >  	static const int mtl_rates[] = {
>>> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000,
>>> 675000,
>>> >  		810000,	1000000, 2000000,
>>> > @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>> >  		    intel_dp->source_rates || intel_dp->num_source_rates);
>>> >
>>> >  	if (DISPLAY_VER(dev_priv) >= 14) {
>>> > -		source_rates = mtl_rates;
>>> > -		size = ARRAY_SIZE(mtl_rates);
>>> > +		if (IS_DGFX(dev_priv)) {
>>> 
>>> Why dgfx instead of bmg? Should be explained in commit message at the very
>>> least.
>>> 
>> Likewise IS_DH2 / IS_MTL we don't have IS_BMG as its Display 14.1. One of the way to differentiate this is DISPLAY < 14 are integrated and this BMG is discrete and hence using IS_DGFX() for identifying BMG platform.
>
> But isn't dgfx completely incidental here?

We can check for display 14.1 and we can check for IS_BATTLEMAGE().


>
>>
>> Will add this in the commit message if not other comments and get Rb on this patch.
>>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>> BR,
>>> Jani.
>>> 
>>> > +			source_rates = bmg_rates;
>>> > +			size = ARRAY_SIZE(bmg_rates);
>>> > +		} else {
>>> > +			source_rates = mtl_rates;
>>> > +			size = ARRAY_SIZE(mtl_rates);
>>> > +		}
>>> >  		max_rate = mtl_max_source_rate(intel_dp);
>>> >  	} else if (DISPLAY_VER(dev_priv) >= 11) {
>>> >  		source_rates = icl_rates;
>>> 
>>> --
>>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
