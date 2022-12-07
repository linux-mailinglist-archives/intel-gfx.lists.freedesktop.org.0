Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9CF645379
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:37:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3466B10E0E2;
	Wed,  7 Dec 2022 05:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE97B10E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670391458; x=1701927458;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8pbetuVZyOEYEKwJm4VBRxeh4J9tFKcS8/yD/0RMhZA=;
 b=MNGwH/BMFELyFNZCVTtvknGRQjQTeyWhQhDTGki0EP9oksgJDZk/jXGx
 XMxOnoAIdjXaE2Ge/EDlKjv5Dz/cAN8+OUYQB0+PAmiKFOrBFb7D1dmi0
 vSPrLfX+1Nh5eBto+lFIzpXwqKoXoo7660JpKVv0nzUzAa019S0gvlk4D
 eR2OCB5gUHiG2sw9cnpSInWhBMZsz6uUxpI3PjiJmE4sr+nbYONB20TNU
 glnsVBeiyhwQpDKrZd28wHqo9Xn3QaKqS8UB1lJ9rMv+Hu4yoEt0+dj1k
 bRw7It3gpuzIcaIbaPgF79GKV4ZrhC5n3So65Blm6aRAQKcdb4S8Lb8YV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297161032"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="297161032"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:37:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="679010560"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="679010560"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Dec 2022 21:37:37 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:37:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 21:37:37 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 21:37:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MzQW5dqutU3xAS/sv9x9UIMZVfVN/4VGyvCRRSNR7D6AKIOLaDqZelLpbx1OqSGEhUR4EkQ+TcLcVsbtpX5r3DY1W/XQedPLFROEO9qWiSHawDsXYWDXEXTP2EsmCxAQxW3OHj86u4ZnOQEjzGyk5D36si/w2+eMn1ZU0x3c0kw/c3anR7GsTFIcNcqQ5FChh3ZXrXLiuOk2ud+FB5szwrzEA2yQ+ZeTNBt/rTuRLeVtAMBHoYtqz7s5Ph0vC0tbdHkPs+ZUNwfexxc80ecvi/zjPkkWMG4EzRIhwNRPPV8i217hUsRqwbfaMNUmpkoD27FFSMRXa2kLFKODcSkobQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyqzNjkLq8kcn5L/qCppO+1th8uXLCAPtU8+az8QPmg=;
 b=HYFCsh/jeeLol9O5uvyhantbLus6JY3dJxOy4233hQ/1LTG/JPJAncYhEx+9cfaq9Lg+kEUVZLqRlHldLkgKyyJcxbz5U8vavypc2CMLOCAPwwXDgO9mbE9wOCp0oe9NCl25EaW5JOiBDr/eqDvNpYzWgFYmEWexeJCeNmahgqwSrGt+uC8yffgKbBXZhTYqT8XyYxOzlQM4If9PWLwOeS1SlkeG8ZHdjJSE1x2pE9lfyuW/mI/WzLhVDX6U9lS+JPuKCNonU6GCUoU3BVscoNOmHegguJcBvjSBQxDkBrDalmDQxIWpBiQdEJYFc0kqIR5cA8Cf39eLyiyHKj+hvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 05:37:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::523f:5359:966c:bf88]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::523f:5359:966c:bf88%7]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 05:37:34 +0000
Message-ID: <b9ea4ee2-0a5f-2c51-3568-7596bc587c45@intel.com>
Date: Wed, 7 Dec 2022 11:07:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20221207051747.3212925-1-riana.tauro@intel.com>
 <20221207051747.3212925-3-riana.tauro@intel.com>
 <871qpbeqd9.wl-ashutosh.dixit@intel.com>
From: "Tauro, Riana" <riana.tauro@intel.com>
In-Reply-To: <871qpbeqd9.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: ed4a03e3-349c-4e61-3153-08dad8152484
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vncJGATO8k4UXyhh6RyTQR/lJzVkBRuUAuPwPm/j04s/uHVYAxzmfzdqyiZw331ZpgUQYukoyRBHLPGyD0Il3IM0OI89V3dInve9UDUZkO5SgG2Tr6hgXAQ/rIxPI4o6p0HDRiMlIeAd5fQRvEsDIHpbHosI1BmbI9MBOC66gQgBhMLqsqA+r2ptiDKZ4j7ON3ubF2hUQPY3s+2EIDhjN/1KmvOxbgHUKEt097zdrM886vmVr3dSWGSIN16fgkKE5CvSEXChZJBtTKIHkaygy6J5ecmfz3Z09T/gH/dpXubWfHPUz0T9wczoXJgvpsFAt7uRsUERoFABDZh7GdS4kbHZRamA3j6WNy5XGZN53Vv6p7rRmwnOejPEkUiiUVdJFg/hvVpv6JTLubdaZyZAXvrMwxZFGRXxzpHRxIUsV4BL2G8gD1t+v/gW2IexzYkFsa5yIs8juYUzepmW5pLJ/9eMSDIp8jx2b2SY+ls2ysG3IyPXawhzSGbZJ466E7OWDC2qug5JeAvl7+tUjS3KI3Q7eHQLxKdX+euM/WQfGfPjCFWDQICwbXJFg62BGolHFD51IQUD+9kuWADJN5XepVfZlXboeQVpJbJNhZjujMMPCj6DYRaeYun6bF0R1h2+wCOIKCO9J+a8SizzDN0nDjI+zWBc7xGPDl31taqVOQPPKu+BT7ax3dRW+gaGKOIvjC03M+i/3tDahgLQTArhTr1ABzoVlstuBO5kuGQe33c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199015)(107886003)(6486002)(31686004)(6506007)(6666004)(66556008)(31696002)(6636002)(66476007)(86362001)(37006003)(66946007)(53546011)(478600001)(316002)(8676002)(4326008)(26005)(6512007)(2906002)(82960400001)(186003)(38100700002)(2616005)(41300700001)(6862004)(8936002)(36756003)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTh3dVU0OGhMR295RlNtRjBITDJBUnJmWmpNWCtqZ1pFNWhCamx2RGQrU01t?=
 =?utf-8?B?RWFpdnB3SHpHK05XZWFpN3ZBNlJERmhSUGdQMmd6MmhDQUdFNTVnQ1RxSUlM?=
 =?utf-8?B?c0FiVHhmeS8wSk05YzVIVGpNay83aGhxbHlRbVhPTFIzYjF0VEhYY0U5a0hP?=
 =?utf-8?B?ck1VVVlPTDBIVjFtQjZZWTdUK3BHMExsL0FqRHR0emZzSWJMNnYvU3R2Ty80?=
 =?utf-8?B?dXN4d2xZSTRtbER2UWoxR0FUWGxzclJDMURtQmhyUm41bkpodDAxYy9GcXlK?=
 =?utf-8?B?VCtreDdxWkNDSkNhUTE4L3FXZlQ2cDNGdjZXQ2szdVU4eG1OUTJtbW5GbTZB?=
 =?utf-8?B?UTFua3I0dmRjU2JXSGc2ZFU3QWpGVnJxR0FFNkZUY1RBWTlBMEpLZ3M2MXo0?=
 =?utf-8?B?NHE5d3BYSUtVYm9jZ2ErS04vck9ENWZCTXZxQm5adXMwRDRrNGhsSW9PTWJE?=
 =?utf-8?B?VUtYei80UkMyZ2ZVTEZtSGJMVEJhc3BTK2dsWmk2TXhYaENKSDEvd3hkVzBG?=
 =?utf-8?B?UlkySElJL2ptSHpZaitmSjJ4Z1NiQVRKbCtaNS91N1FnRUpObDBhMFpmYnhB?=
 =?utf-8?B?VXd3Vm12U29LbnJsNjdPM3FiRkltcWpIOTYvVmllZzRaM095Tmx6UjBpSnZm?=
 =?utf-8?B?YmZGdUNieDlpbmwyZ2dZVE4zUkhsWXJjUVByWWtsbkxFRDRFNFpDalVEVnlV?=
 =?utf-8?B?VmU2aHQzZnVBeVhsaGxvWkxsWkZZRUJhbVJBTHJCeEVBdDA4MEZLY09NZXF2?=
 =?utf-8?B?NzU3V09kL3ArWitvaDVYcWJ1a1FyeWk2ZWh1UHh4c2dYNEZUREhOODlWM0V2?=
 =?utf-8?B?a2I3ZzEvbmRvZHAvM1laVXh1TDdiTldEUFpBOWtOb1BLVzFnOENSenlyY01Q?=
 =?utf-8?B?K1Z6SzVSQ3lZSkVLSHQzdkdnejcwL09HM0gwOXpLaFVJNnhzZm5nQ3FIOUIv?=
 =?utf-8?B?cDVtUjlEeXhhYWxLdW00Z2FpSXh2UGxhM2lKQkErbis5dlE4a3FoVElxK0c3?=
 =?utf-8?B?TTNaQmk4ZXIyUzRoYWJvQStydnFBYVpJQ1BGczAvL3BOa2c1Ujd6bTVML0Zn?=
 =?utf-8?B?eWNjTUNzaTg3d3ZSZEVXbEg4WGRKQ21VcTR5cThDRjdCYzZVbmtpc0ViQURV?=
 =?utf-8?B?VjlacFVQUGhvemluOGpENzBwY2pnVEVxYkJYWk9PakxSR0NJaGhKODhDdUZF?=
 =?utf-8?B?WnhTMk5pT2JyWmpZOC9xZmluaEJJTGpDbnhoc2laK1JSNHNYQ01pb0JUQkFG?=
 =?utf-8?B?MHBkalp2czdYOUN5My96bkhKWklZRGVoVzVBREF6dlRnbmtKeUVWSTNtWUhI?=
 =?utf-8?B?aGRrS2ZMUUI1RHhOMjVkN1ZrZEk2ZFVBUDduQmtrdVVON256ZXdYcW9EOUFQ?=
 =?utf-8?B?OFpoMzBzVzEvY2Uvckx0QldMRjk2L3ZvUXRrckE3R29kRTdnY1hpbmhmYWhP?=
 =?utf-8?B?ZzNZTkxyY0ZOd0d4ZkdGZXNnTUJ1R1JKU2JPdnhGTmgxdGlyZVRNclg3UVZp?=
 =?utf-8?B?SUQ5NDVzaC9uMDJwRDdwNE5iQ0VRc3NIU3RwWTBuMURnTW9TRk8vNW1yZzlm?=
 =?utf-8?B?QlllOXZaS05mMUhZd0dDZWVPN3NUaFpmcCtLZDNxVVpnY2NWck1ra0dDaUpl?=
 =?utf-8?B?TmNtT1BGZWZaL0JlTFU1aVIyOVdvK25kT3BvNFY0T1ZwMHhJbFUzWkV2OG4r?=
 =?utf-8?B?TUxRQmU5SHQzZEd0RkltRTFZWEZFRStSQUMvU0doWEJneUdjMm9LK25PQ25t?=
 =?utf-8?B?eVJETnNmZ2ZpSHZjdklHMkNEQngyM3FDVkxYSFErck83UzA0ZUhRTWQwU3VF?=
 =?utf-8?B?dFI0MnJvSnJyUFBsRW1kMnBSUWl1RFNDRFFCQVVPUElDNDVSOU5jMXZtWE1X?=
 =?utf-8?B?cXpDRzE5aXhZbkJIOG1LUXdYZ0ZCUEgzMmV2TGwyOHlwQWRHT21wZUhOUWk1?=
 =?utf-8?B?RENpT1EyZ1F0UUF4ZGMyVkF3WEgrWngzbVdITHBKUngzWXcvVlRpa2syWnE2?=
 =?utf-8?B?ZFlqcjRnWkY1ZU9Eb09LYlpzOWV6MEJSQWxrSFZBY3BtWW13WElnR0U4emFt?=
 =?utf-8?B?U2pCeEg2WDQ2VlEvSEU2SG02OGJkRUoyNTcrZmd0TVNOOGRmQ3pzOGFVTnFM?=
 =?utf-8?Q?rlVPTf/UrCW9TSF2m8En3UsuW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed4a03e3-349c-4e61-3153-08dad8152484
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 05:37:34.8651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+VU4gF30917ywJ2fQSjYOrNtnqRXWfQYAWN1vsjdIGp5zT0fca2mHFS2fRRc3QjiULlmFGn3nXrJbukRvhRiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/hwmon: Add hwmon support in
 libpower for dgfx
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/7/2022 10:56 AM, Dixit, Ashutosh wrote:
> On Tue, 06 Dec 2022 21:17:46 -0800, Riana Tauro wrote:
>>
>> diff --git a/drivers/gpu/drm/i915/selftests/libpower.c b/drivers/gpu/drm/i915/selftests/libpower.c
>> index c66e993c5f85..3d4d2dc74a54 100644
>> --- a/drivers/gpu/drm/i915/selftests/libpower.c
>> +++ b/drivers/gpu/drm/i915/selftests/libpower.c
>> @@ -6,29 +6,28 @@
>>   #include <asm/msr.h>
>>
>>   #include "i915_drv.h"
>> +#include "i915_hwmon.h"
>>   #include "libpower.h"
>>
>> -bool libpower_supported(const struct drm_i915_private *i915)
>> -{
>> -	/* Discrete cards require hwmon integration */
>> -	if (IS_DGFX(i915))
>> -		return false;
>> -
>> -	return libpower_get_energy_uJ();
>> -}
>> -
>> -u64 libpower_get_energy_uJ(void)
>> +u64 libpower_get_energy_uJ(struct intel_gt *gt)
> 
> Hi Riana,
> 
> Sorry, we can't do this otherwise the build breaks at this commit which we
> can't do. Note that the callers of libpower_get_energy_uJ are still using
> the version without any args (see Patch 3). That is why I had R-b'd patch 3
> so that we don't have to do this. It's not really needed.
> 
> If you really want to do this we'll need to port the version without the gt
> arg to Patch 2 and then convert everything to the version with gt arg in
> Patch 3.
> 
> I really don't think it is worth it. Maybe just go back to the previous
> version of the series and modify Patch 2 and we'll be done.
> 
> Thanks.
> --
> Ashutosh

Hi Ashutosh

Sorry, didn't check the build after that patch. I'll revert back to 
previous version

Thanks
Riana
> 
> 
>>   {
>> 	unsigned long long power;
>> 	u32 units;
>> +	long energy_uJ = 0;
>>
>> -	if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
>> -		return 0;
>> +	if (IS_DGFX(gt->i915)) {
>> +		if (i915_hwmon_get_energy(gt, &energy_uJ))
>> +			return 0;
>> +	} else {
>> +		if (rdmsrl_safe(MSR_RAPL_POWER_UNIT, &power))
>> +			return 0;
>>
>> -	units = (power & 0x1f00) >> 8;
>> +		units = (power & 0x1f00) >> 8;
>>
>> -	if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
>> -		return 0;
>> +		if (rdmsrl_safe(MSR_PP1_ENERGY_STATUS, &power))
>> +			return 0;
>>
>> -	return (1000000 * power) >> units; /* convert to uJ */
>> +		energy_uJ = (1000000 * power) >> units; /* convert to uJ */
>> +	}
>> +	return energy_uJ;
>>   }
>> diff --git a/drivers/gpu/drm/i915/selftests/libpower.h b/drivers/gpu/drm/i915/selftests/libpower.h
>> index 5352981eb946..e4410a886654 100644
>> --- a/drivers/gpu/drm/i915/selftests/libpower.h
>> +++ b/drivers/gpu/drm/i915/selftests/libpower.h
>> @@ -8,10 +8,12 @@
>>
>>   #include <linux/types.h>
>>
>> -struct drm_i915_private;
>> +struct intel_gt;
>>
>> -bool libpower_supported(const struct drm_i915_private *i915);
>> -
>> -u64 libpower_get_energy_uJ(void);
>> +u64 libpower_get_energy_uJ(struct intel_gt *gt);
>>
>> +static inline bool libpower_supported(struct intel_gt *gt)
>> +{
>> +	return libpower_get_energy_uJ(gt);
>> +}
>>   #endif /* SELFTEST_LIBPOWER_H */
>> --
>> 2.25.1
>>
