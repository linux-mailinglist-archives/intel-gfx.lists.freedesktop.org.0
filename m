Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B06BA87C25
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 11:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 923E510E50E;
	Mon, 14 Apr 2025 09:46:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmG2aFdD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EBE10E509;
 Mon, 14 Apr 2025 09:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744624001; x=1776160001;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6c8eEjYriYGzKs7AH6lzCoa5+X1JTbrwaXKswFThMsQ=;
 b=KmG2aFdDRf79w0tgvANt87yw88+hz2lxi0IB1TrOLHiPRiYMexFmX9rc
 g1YtindsS0Ya+uh6VuNptK3mNIEdnDmg2H8a+h2lOyk//4rLFZYCRR29d
 F/R2nvBsqZojCXKd+iBpK3JhZyYq1TyS2/u1TOIGCwmB4qqluVwRrzITb
 LXVZVrzTD9FXCaliIA65384iWQb+PpMDc8x1EB6RevXdhYb90Wq39Fs8C
 VFv6bSX9+4KZPIB9V5iBdyvkYC0AKvJAsLyFqD6V1W2e1TGve73S3FRIJ
 RhBKZMXbgZmQK/8OJ8v3zQiwjYNqrdpLq1vVbW2HsMfsplYseukCESwtI g==;
X-CSE-ConnectionGUID: NfJ2/taQQiGJrQuNV8/Adw==
X-CSE-MsgGUID: R/MYplQpSS2kPlXSojLUzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="57452320"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="57452320"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:46:39 -0700
X-CSE-ConnectionGUID: OTnIQ61LSaOplfyKlqf9Fw==
X-CSE-MsgGUID: h6XTK1j/SLOnJo/hJJitvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="133872453"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 02:46:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
In-Reply-To: <IA0PR11MB7307CE76BA7C7B1E79003E11BAB32@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250404-dprates-v5-0-c93f561a095e@intel.com>
 <20250404-dprates-v5-1-c93f561a095e@intel.com>
 <IA0PR11MB7307CE76BA7C7B1E79003E11BAB32@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Mon, 14 Apr 2025 12:46:34 +0300
Message-ID: <87o6wzt6rp.fsf@intel.com>
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

On Mon, 14 Apr 2025, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> Any comments?
> Gentle Reminder!

This is the level of clarity and accuracy I was hoping for in the commit
message:

"""
Subject: drm/i915/dp: DG2 does not support UHBR 13.5

DG2 does not actually support UHBR 13.5 link rate. Reduce DG2 max link
rate to UHBR 10, and drop UHBR 13.5 from the supported source rates for
DG2.

The VBT on DG2 platforms should already limit the max link rate to UHBR
10, but be defensive about it.
"""

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>> -----Original Message-----
>> From: Murthy, Arun R <arun.r.murthy@intel.com>
>> Sent: Friday, April 4, 2025 10:25 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Deak, Imre
>> <imre.deak@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
>> Subject: [PATCH v5 1/2] drm/i915/display/dp: Remove support for UHBR13.5
>> 
>> The retimer issue for UHBR13.5 is fixed in BMG.
>> So for all platforms lesser than BMG(XE2_HPD/DISPLAY_VERx100 1401) disable
>> UHBR13.5.
>> commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
>> removes UHBR13.5 for MTL.
>> 
>> v2: Reframed the commit msg (Jani)
>> v4: Reframed the commit msg & update the max rate supported (Jani)
>> v5: Reframed the commit msg (Jani)
>> 
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index
>> f21f9b441fc2a4e644c69410e6ec6b3d37907478..92bca701a989b03e2ad4b3d9
>> e7d0a9ef12567e5a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -481,7 +481,7 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>> 
>>  static int dg2_max_source_rate(struct intel_dp *intel_dp)  {
>> -	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>> +	return intel_dp_is_edp(intel_dp) ? 810000 : 1000000;
>>  }
>> 
>>  static int icl_max_source_rate(struct intel_dp *intel_dp) @@ -550,7 +550,7
>> @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>  	};
>>  	static const int icl_rates[] = {
>>  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
>> 810000,
>> -		1000000, 1350000,
>> +		1000000,
>>  	};
>>  	static const int bxt_rates[] = {
>>  		162000, 216000, 243000, 270000, 324000, 432000, 540000
>> 
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
