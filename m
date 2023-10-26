Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A47E7D8396
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 15:28:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8261B10E129;
	Thu, 26 Oct 2023 13:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6323F10E7E2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 13:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698326920; x=1729862920;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5vxzUVVXoeh+3FMGYH1rgnc91ifmDba3CB5LjktmO1k=;
 b=bCRJ1Mq1HemLT2lvCFREUtzEeULVRfHfic4symNoAjtd6QGRxSUzJtSq
 fG78Etd5yB7/pnSCfHE/Y1sjTVDn2Q5v9rTzt0rcX93Dvru28C3nqbvVi
 pR07vM/8UStpBSg5Wae9Po1D9aYpkZK11B/PJsvPpwgeJAwiQN6T8GMGO
 IDt+7fbh0DO6ogDdTqi97pVtGnH7EQ91iRWBPKKdizWj9rM3ewP6M6OPa
 ZjVvkuWJgn5frYeWNVGCkrFCBoEQt/3oNY8cl+WTDbGhFfOTbE2/4IlVW
 JnX8PlrJPpu/FRZrNDr2Cz2nSeMA5nOcT19kE84Odk66VIE5OTBeO78is g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="454016759"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="454016759"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6909530"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:25:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SJ1PR11MB6129C4F69257CC05ABAF4659B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
 <20231018102723.16915-3-vinod.govindapillai@intel.com>
 <SJ1PR11MB6129C4F69257CC05ABAF4659B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Thu, 26 Oct 2023 16:26:38 +0300
Message-ID: <87msw57bw1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: remove display device info
 from i915 capabilities
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

On Thu, 19 Oct 2023, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
>> Sent: Wednesday, October 18, 2023 3:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sharma, Swati2
>> <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
>> <chaitanya.kumar.borah@intel.com>
>> Subject: [PATCH v4 2/2] drm/i915: remove display device info from i915
>> capabilities
>> 
>> Display device and display runtime info is exposed as part of
>> i915_display_capabilities debugfs entry. Remove this information from i915_
>> capabilities as it is now reduntant.
>> 
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>
> LGTM.
>
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the patch and review, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_debugfs.c | 1 -
>>  1 file changed, 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index e9b79c2c37d8..bb48feb3b12e 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -67,7 +67,6 @@ static int i915_capabilities(struct seq_file *m, void *data)
>>  	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>> 
>>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>> -	intel_display_device_info_print(DISPLAY_INFO(i915),
>> DISPLAY_RUNTIME_INFO(i915), &p);
>>  	i915_print_iommu_status(i915, &p);
>>  	intel_gt_info_print(&to_gt(i915)->info, &p);
>>  	intel_driver_caps_print(&i915->caps, &p);
>> --
>> 2.34.1
>

-- 
Jani Nikula, Intel
