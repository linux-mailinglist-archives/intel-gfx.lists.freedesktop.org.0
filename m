Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DE1737DF8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 11:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0D710E41D;
	Wed, 21 Jun 2023 09:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C5210E41D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687338125; x=1718874125;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=jEOTqVp5SSPMDLqdf1H2LYnz//ptgovPvpuNKA/hnzo=;
 b=fLb5NWG7Uyx4nlImhIpQL5pbGHQMshOh0w0lWe60opxxl4VHxW8CdGjK
 cn14+uT2r9VeT5H2u2adcYCieR23SDfYC4TiQ2QkQJb+XByhIs7Fvj2oO
 vdNJRw665sPDm0YpCMCTwsZRZbEFEecC5ffPGl3G+tpbeLtVHRe1I8lsp
 eIXbQAern+hzvYh9K+J7rinvupflJY/RsnLZYHLn4UNWAQOUqxRL6zQo9
 uxz9x35+xZ20pXlGGCosIlqph0Y3+wpS+te0jWUxJ2N/DNTDfJXH6PmhM
 RKISCP/8YatTlGjSO2gvTFLsJtLSKFFPh7XKDt2OZ0qinq/bjpqRdZ+A6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="363534938"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="363534938"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:01:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="691769678"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="691769678"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 02:01:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB6750DC684457557AB55AC161E35DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620025243.979317-1-arun.r.murthy@intel.com>
 <SN7PR11MB6750DC684457557AB55AC161E35DA@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 21 Jun 2023 12:01:38 +0300
Message-ID: <87ttv1dw99.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Remove support for
 UHBR13.5
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

On Wed, 21 Jun 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> As per the DP2.1 Spec support for UHBR13.5 is optional. Hence removing the
>> support for UHBR13.5
>> UHBR10 can be used for 6k panels.
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>
> Looks Good to me

How? There are a *lot* of things that are optional in the DP specs.

BR,
Jani.


> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 9f40da20e88d..54ddc953e5bc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -465,7 +465,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>       };
>>       static const int icl_rates[] = {
>>               162000, 216000, 270000, 324000, 432000, 540000, 648000,
>> 810000,
>> -             1000000, 1350000,
>> +             1000000,
>>       };
>>       static const int bxt_rates[] = {
>>               162000, 216000, 243000, 270000, 324000, 432000, 540000
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
