Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAB27F9E58
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 12:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAEFD10E234;
	Mon, 27 Nov 2023 11:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D711110E234
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701083825; x=1732619825;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=51sM4Rv/xA6LVL47Tns85N2x8bhy49MfFu6cPJ5V5C0=;
 b=M6ZhWEovM1tiVSv00j6Y6+dF8clH7YMlnMbCGX4ejFHIhCl35hKX+hiO
 Cj7kNUm7DUEkEOyXbPsDnCuFs+HfDYJTWqB1jWncW/v38tIWRbxV7oSVz
 0Dy4w+6rfm1mLquhuPeKlHGNRp5DCBvXak2NM9jAiAdnJZXNBcesRBJbM
 yRKH999ZOmtVAxNUBTjJlX5VWeGfSXuLBXPk3uY+EP2E8fpyxQtUChhXe
 1OUMlXxYEynehetuY+HGGP6IIFTFliOehKCLwNSUei+a6freR01AUtBY8
 8XGw+TLxD5W+KALeF/rR+o+f7AdoP1T2L3k+wZiL5ImdmspwHUAd3+8qG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="395499087"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="395499087"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 03:17:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="1015525447"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="1015525447"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 03:17:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 03:17:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 03:17:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 03:17:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z/ScPeNncs/4UeVb6JZyFutmykxiTTf+nGArnTHEVT7bmwebVPR8DyQzOCEZU44aJMZconqbU7CtKhEQ6vr5WzvF7PkzN/iuV8mYrXVi1+aG5Bi8tCsbBH+OOsG4RrzikpFMde+MstROKsYguJe4Iq8ayeqk1WhTZD0+DzMMpekfUQyN2/g58h6NuLiKun0uoKQId0M9+U2UB1fpASOqSdoicETUZgUcn8i8ZU9nba+mBfV+37D52Tj5oM+APxeN7A1c607MXILTXDgUdwLROmKlBDDivTpj+N9dCad5gY6jFHuXI/zKOXLo7twC5jqtpf2DxfcT4ImGfNVSyGBsxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KitU2VHaBW3OCOxWc8yQnKUHNyquOOREa7oJC5a8NcI=;
 b=lQYXPIbVRoxzXqfkpuPdIQV9HZxvsEqmCyVTFc8Jrg7AV9/B2q6FuBySeDoLPFfw0d8rdNpZ+vaPsQGxlo3OeKClzmszSVWd4s7Zrzjerrv8YTOypu5zNNNkyPlFu/W3pmNQ+Tw3Gqg6GxBSLq65VVVd022xo7yZ4u+8Z8+6d4cKWyQ8yDaP7Q+q4AJS+1fYy1YHFfhGl4kjEK+oip9ySR1osKpqEb5qzluHPelwX//74R08V06OpONmsrkNQEeY95eLp76WiM6aTdV0/1jgmIVZqSaZjO1PeYJGmD7y5DQWk+T0co2YePppNqTviqPmrpjZUjZel9OmWCXW/7g6Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Mon, 27 Nov
 2023 11:17:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 11:17:01 +0000
Message-ID: <73c69e0c-291b-4671-b857-f7cccb09653c@intel.com>
Date: Mon, 27 Nov 2023 16:46:53 +0530
User-Agent: Mozilla Thunderbird
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231123042733.1027046-4-ankit.k.nautiyal@intel.com>
 <20231127063926.1630925-1-ankit.k.nautiyal@intel.com>
 <875y1na64w.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <875y1na64w.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0185.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5861:EE_
X-MS-Office365-Filtering-Correlation-Id: fe40e549-c7c8-40f4-5528-08dbef3a6008
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: toqFR9Y9KVqSmmvkp97MQ7C9u2CjCQ7SGevUZfnmT2To2q+cgeYNNgSyQn1rLZJEmvUhjsCkWA6e/637zqTik6VAiAytAwM0XUNsLK4zTJa0bKyopkyWijSjszY0jpEi2XYe8V2jGbwfPyQLfcCqI/9qQJ/rzjrhKIQADuhg5jXu7EDbOqP1tUlqW1vYQV6L+ldmYxw9PvKATg96J9F5VxiFhPtuJLNuskOzbq8axSobs9oUeB4XWq4F2nv5v4wmdIlb1EnqEfraFP16gSN2BbA00lXHMt1229ZnZpPl4kcySsVy12l5p4/cWDlKdvKlycDS4CQAjV1XNgL/2kc7gdYdY1OU915YL20A89TDhU2IhdPuEZW3TTWBddAhyO652qnbmJRfWY5JLAFQC8bYlQAForI98x8gFAeonrw9zAusKtIX64k7+Lv88RZ9IAZOKKya0SNQW2BBXkw0d9FA+Cf1kn7jbvl/roQSFjXsCsJFYLCd/DTpKIEots66PExJ6f+1OclgSJn5HFy3aovEMbXSqfqvL2/Nivtkbfoy3NidnE49ivBBiA6MS2qb5PU11bXnZU1da/9QzVZZcr6nOFosjEqbN725T/tvwW4EVVpdlLJ+kRN1ubiyMnMGDc2X30M9OucNqPcq+beyQwdNKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(396003)(346002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(2906002)(31686004)(41300700001)(66946007)(53546011)(6512007)(55236004)(8676002)(8936002)(316002)(66476007)(66556008)(478600001)(6486002)(6506007)(6666004)(5660300002)(4326008)(107886003)(2616005)(26005)(83380400001)(38100700002)(86362001)(31696002)(82960400001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUg4U3c3MGkvYjFvTGxHMnc1VXhXcFFJNjg4ZTArS1BrNnpHMGxnTGI2a256?=
 =?utf-8?B?ZmkrcFBYN2U2QnFuV0EyVEZseDBiNTF4NXRKZkJ6U2tSd0ErOXJHeWo1M0tM?=
 =?utf-8?B?NUJuMlZhdDdveC9zcGEyNmlJRURBM2VSc0VVcHpqRGxpWlFrQUdwZFpGTUxa?=
 =?utf-8?B?dU85S0ovb2JHeWFUYTQyM3BlWFZpZGRLbWNrcHp3alB4VkorTGwxZ24rT2l1?=
 =?utf-8?B?MHl2YmlKMFcvRTZkMkhYV3U3L1VEblQzZUs2WlpEQko2V3kzMEh1NEVjSXM5?=
 =?utf-8?B?L05IOGF3VzJKNUY4S2VlSU11NlJONm9CdDVSR1hpc201ZkhZNGcvTjNIcEFl?=
 =?utf-8?B?UjU4S2lkdVJRcVVLSHJzeGJIVjJpNk9aSy9teTcyN3R3THN0MkFUUm5qWjFq?=
 =?utf-8?B?MDcrVzZRZ255eFg3cTltUVcxeVhuU2FPNkh6QlFGaUN3aUd3REJUTXZEY0hy?=
 =?utf-8?B?dW50Sml1am1RVDRMd25xMkVoL21ZTXBkY3BSUmwxemljZ3BmWWZOS24zTzVn?=
 =?utf-8?B?UmJ6RnA1OFlydis3dmMxUEs3Q1VkcUlYWmg3Y2p3aFl1Rmd2bytOdGREMmJj?=
 =?utf-8?B?U3d6d0xsTitjYytCRmlJdnBiZyt3VkdvTXUvRC9SRlZEdnNRRmhGSDJKQ2hT?=
 =?utf-8?B?aWNVYVF1S3BHWnJkNnNpakRrS0xldm1DSGpqRGY4ekZSVFN4eElKT1JldkUz?=
 =?utf-8?B?VStvdHUyeGJIM09CVVJNYm5jeDVJUll6bW1TYkdVN0tPM2hMaWRKckRYR0ZF?=
 =?utf-8?B?dytUeC9qR3V0TnJSZDFyVHJBbTljaldSWmdQU2dtTENhcG9Ga0tzS1dDZ2Rt?=
 =?utf-8?B?cDlCUTJRUXl2Sm1VSXZpU2xpV2d0MnoyVmozK2d4WSsvSzBUUEVKcFkwcUpX?=
 =?utf-8?B?Vkg4cUtwR1d0aHdUdUo5N2E5YXZFUUF3cWR2V2RTeTAycVI4ajRjQXRLdXUw?=
 =?utf-8?B?WllybmVvc0VuRUVMbnl0L1dPWFJiSWNwT1J2enJ5bUZ1MmNGdGVwbUFXZWNl?=
 =?utf-8?B?NzB6V2VNOG00K2twdmU4dXRZV3F4eXJhMEFwaDRPb2dwNUw5ZHlKMzNKNTkx?=
 =?utf-8?B?NnZoSHhRTmdlRzhORWdNM2FNMUdxQkxuRHN2WjBnMlhkSndOejFwdkNxMTNm?=
 =?utf-8?B?STkwMU5oS05XckJac0M0aEJqR3V0amZiT2NrcTJNelNUMzhFNHpLVnRHVU1y?=
 =?utf-8?B?eXVOcHBIOHFNbE84V090TEtXbFBDN0J1TERaZjNKUXVnandmd2FYb0g5ZWVn?=
 =?utf-8?B?QmFTK1dHU2FyQklYV0lpMkx2YmNvSkZBbENTUG1xdlQvSTE4dWgxMGk5YkFs?=
 =?utf-8?B?SFZCTHY3cVNWYWNyaVR1QklLaWhYM0hMZ3M4Vk9rclY5RUFkTHU3WSt6cGpq?=
 =?utf-8?B?SG01VzF4SzkzazJTVy91YXlMQXBRODN3bW92RzZyVS9WMFQxRVNhcGxNUnF4?=
 =?utf-8?B?ZnFONWFVb3o0VzlXU3RGMVdTekx3U0pHWEdwWm9xMFVxS3dWRlc1SWFXK2Iy?=
 =?utf-8?B?Rm1HakFRT2xrZk90anhyeXJUdW5RTjZaZ0FWWmRKamtoTm80MDZMUldLaXY5?=
 =?utf-8?B?ZkxEWUltZ2xwMVJLQnZqb0hmMnRzZmcyQ0cyOHVrLzFGa1hqdEM3c0dEby96?=
 =?utf-8?B?U2h5ekZYakE5UTdJUzhXd2tqTC8velhrNm5yVHhhdDFXUFFYRWZ3alErNHFX?=
 =?utf-8?B?bkxvZ3FjdkNFaDdncEFQSUQwbS95UlBqL0RVejlPUVExNmhmMXNkZndYd1BL?=
 =?utf-8?B?RFlLYm4ybmljU0N3d2plNVdYRDErTTdoa1NGQ2hqaXI0UU1wOTF1QkxseDBW?=
 =?utf-8?B?cE9UOGovY0JLRDh5MEJLd1F0VVl0Z2MvcERVc3pic1poMENBRDFiaXJDVnpk?=
 =?utf-8?B?ZCtQVkM5ZkJpVlZLcUI3a3NLOW5lc1NIT1VJd3Q1dDNGUjlHdytUMlFWNy8r?=
 =?utf-8?B?V3ZiekF4dEp5d0ZCWTlTU3BMZWlSUG93VFZsVHZsSUxBaTNFYXZCQVl5aGps?=
 =?utf-8?B?SWsva25JWUdTblIwVGxCZEw3aDJrcmY4NnRDVTVUUjdJSDE5L010c1ZRT3Q5?=
 =?utf-8?B?VzhDSG12MVVUOVFWMU0vMStERXBJTFR5ZjVndEhlMnAxQ2Zld3RpREg2VlRG?=
 =?utf-8?B?WGhzMEx3VmlNUXhIbDVDTFRGa3BPcFhxNk1JSHptVWh4amhRMm5oMklUNHQ2?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe40e549-c7c8-40f4-5528-08dbef3a6008
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 11:17:00.4731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RutGSlgdqmV80yzBvMcROR5G0CJ02cUXH2ahHzyuHVQYSDKNRvcDzJ082kLWv6SGGLtLY4/iwRkXXeNu8tAy6nbtmN2M1fn/3SFhdBw9PIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5861
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Use helpers to get dsc
 min/max input bpc
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


On 11/27/2023 3:07 PM, Jani Nikula wrote:
> On Mon, 27 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Use helpers for source min/max input bpc with DSC.
>> While at it, make them return int instead of u8.
>>
>> v2: Make the helpers return int instead of u8. (Jani)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     |  6 ++----
>>   drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++++-------
>>   3 files changed, 8 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1f68d4819282..74000b65829e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1622,8 +1622,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   	return -EINVAL;
>>   }
>>   
>> -static
>> -u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>> +int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>>   {
>>   	if (!HAS_DSC(i915))
>>   		return 0;
>> @@ -2022,8 +2021,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>>   					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
>>   }
>>   
>> -static
>> -u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>> +int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>>   {
>>   	/* Min DSC Input BPC for ICL+ is 8 */
>>   	return HAS_DSC(i915) ? 8 : 0;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 05db46b111f2..f613ced9eda6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -184,5 +184,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
>>   					struct link_config_limits *limits);
>>   
>>   void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
>> +int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915);
>> +int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 63364c9602ef..01e9d6fb9548 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -293,17 +293,14 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
>>   	int i, num_bpc;
>>   	u8 dsc_bpc[3] = {};
>>   	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
>> -	u8 dsc_max_bpc;
>> +	u8 dsc_max_bpc, dsc_min_bpc;
>>   	int min_compressed_bpp, max_compressed_bpp;
>>   
>> -	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>> -	if (DISPLAY_VER(i915) >= 12)
>> -		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
>> -	else
>> -		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
>> +	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
>> +	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
>>   
>>   	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
>> -	min_bpp = limits->pipe.min_bpp;
>> +	min_bpp = max_t(u8, dsc_min_bpc * 3, limits->pipe.min_bpp);
> I thought it would be obvious you'd also need to change these to ints
> and drop the forced u8 etc.

Ah ok. But still in some places we need to force to u8 when comparing 
with conn_state->max_requested_bpc,which is u8.

Regards,

Ankit


> BR,
> Jani.
>
>>   
>>   	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
>>   						       dsc_bpc);
