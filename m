Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8B0517F35
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 09:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EF5510F63C;
	Tue,  3 May 2022 07:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F32D10F4AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 07:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651564396; x=1683100396;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wsRE/DY/WlN7ukJQ1PW6pOJaqxOMmy2Yn0/KaR5NbVU=;
 b=LQLEsCXV7HhSIVpC1mKEZZNVjeVzelqpize8ULsCAvP0Yyn4fpSDLZlU
 Fq+rxv/+SZilFZl8DhsJo14zbOBMvJxPcom84Jv1AI79LTOOllR2y8DrB
 UfW0Wp/OFQ+kcBPQwaD/8NDGVLl4cioAJBKlRPPfMQJW7siDK1iExm8Uq
 cfqqORFf7+KmHocjrIg55LD2JVN4zY2SBn0kEt0CxzHmCrT1Cem1lJ6MX
 d2BLMOv5+sH72P8fvP7OOOGEX3cvKf92MnWTX9UPOHhS56nrFMkC4j5kC
 YCsGuvOmThfi1TvV4ypoGSWeioL0UDEQP2sDeSkmp1mWA3cEN3IVm6BDe w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267580137"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267580137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 00:52:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="584102068"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 00:52:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <Ymbxvoay8QqjdVP+@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220425154754.990815-1-jani.nikula@intel.com>
 <Ymbxvoay8QqjdVP+@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 03 May 2022 10:52:49 +0300
Message-ID: <87sfprqcha.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove superfluous string helper
 include
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 25 Apr 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Mon, Apr 25, 2022 at 06:47:54PM +0300, Jani Nikula wrote:
>> Remove the duplicate and incorrect (uses "" instead of <>)
>> linux/string_helpers.h include.
>> 
>> Fixes: cc1338f259a2 ("drm/i915/xehp: Update topology dumps for Xe_HP")
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_sseu.c | 2 --
>>  1 file changed, 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
>> index 9881a6790574..fdd25691beda 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
>> @@ -10,8 +10,6 @@
>>  #include "intel_gt_regs.h"
>>  #include "intel_sseu.h"
>>  
>> -#include "linux/string_helpers.h"
>> -
>>  void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
>>  			 u8 max_subslices, u8 max_eus_per_subslice)
>>  {
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
