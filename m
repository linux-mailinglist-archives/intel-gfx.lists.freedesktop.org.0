Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1347E4F9A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 05:02:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67F9810E373;
	Wed,  8 Nov 2023 04:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB1FA10E373
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 04:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699416154; x=1730952154;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mzev32Afg1NgI7oVbQMzWzV3k3sx/DahSOXUhZssbv4=;
 b=mJuTIdh2qCMd6GGykTOjNuQbDbbwIzC270K59LrBGXGGj8gCjlS0O+pI
 4I5EPsk31BmFq78edmu5t/Ie8An8OTU1U/2Xjsz916ALSyXZdql5f/NIu
 ohk3Tj7V9mSmvwDfK+ENmwjdnn4mYZywu5nnWFgF8CWp2xIdyW8zk8pXV
 /cFwKntyy+8A8mUbhVsPFVtc5ZoTjk4WjxG6ttA7ZiZ02W2fE9Ghfqr88
 HydUi7OLL7V/LbZF6hDFFy2IdOikXT6xV0ZdPI5eq4z3Ky5jFX+IuNETi
 xeeO0ec7YsMo4M1WWTBxPkFWTBMxLNMTLGTWkJayy+EnfxfgUuml/Jfvf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="392553786"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="392553786"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 20:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="906649249"
X-IronPort-AV: E=Sophos;i="6.03,285,1694761200"; d="scan'208";a="906649249"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 20:02:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 20:02:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 20:02:32 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 20:02:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNYzVeFH0M05xxg00KA3qvhueXb9K1gEMS1RqhZDiq6MBJlN3jixZAn9/1lfKiNi2syVOUsZg1nIXovmhRi8GIgsjhe+cAU9hdZzcGEN1Ag1SrcdoX0xg799lX1XE/0mahCZqcR3GkiUqml2+vQ2alxirMqkWh06ezDGmTm0j+79yKWG+Bbf1CgWIsnPyKwF8+IuMCVj16DY4Z20yIP1cVyb4h5chDlCRGtMUrBbKy1zxSLY+MzO9FrwP8P8UsSycA6F/qGMi/oY2lCs1F4qY0RcyaLqMjKDZ9DJkcI9uYu9jo+O4JSGURa7rKavWLXvH4wP+N354BqzmhOKnSlhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCErfoyq5cUJ/QFmmj4F2c54ovbvBmlCef3FOdOfPC0=;
 b=EO/p1AVy4gnDCxofKGA/3HDFou27k0co9R5xGL4fxwH8PFjCdc9NTTpiKjbgSZoEb9gPDAujvXcEPbH2vNvvIu8teFbUb4kHA5X8vrzY/WJfeDeRamYXsaXtpeH9KclDempmBiBF1cC4Jogjhc3R+DsLJfIO6cg2Xeu3S2VkpEFtzdA2Zmp3JJZYLwi157dCnNoFiBO4r1GlikEnkC4qb1hU1GwLjb0GeN7E7dJL9+IP+/jQR5kTKvUAkibGMyTEwKhx6WTw0cG/IScB8AmyKJYZN/8EAVnKg1mr+aAqkuzg7DX0etQT5pp6hPfD+1DYNpG4iUcNAVvZEdoNyEk+TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5107.namprd11.prod.outlook.com (2603:10b6:303:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 04:02:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 04:02:30 +0000
Message-ID: <3694562e-4886-c779-ed36-3f36d92158b7@intel.com>
Date: Wed, 8 Nov 2023 09:32:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
 <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
 <877cmtzxzo.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <877cmtzxzo.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5107:EE_
X-MS-Office365-Filtering-Correlation-Id: bf3bd1f6-cdcc-42cf-b4e0-08dbe00f8755
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q0R4Jvf5dYKFTMGYBP20CZs+6/itZChPmsYsImWCFkAFev6KmiorW+8jPbYgj72hVOn5aJf239gzqNm8u4rZrHDlsAcemiNoo4BZmQNsgI0oZlzES/CUtvJidlWnjrI7SFaIs7umJcfYill2Cs6lZ2AvgIfIOu+0EfeSPNbwUDpTzFFKQ8w4SuBe9pKTFrihCNkmP6BhfStRdrAMacVWogK1LCXm+HefRqp/u1WRHq1lHN4vbdwxh1p8sC4z5lvXZejZq090fcXXURXpC3TwaQp5DbfVu3aSrz6Az4dwoAKeVPJXCkMtRP3AQwWvqS+qIm9YAhXYQ++1g6o2qHnQspolR+msTZNehhFnkUSRvBtg2s7N39A/VhLpJV5/RiURr2l1oeD2RMaSF/CLRsECM58ENvoSVMoGtt5SqqkCjyswIuMCyixRIcwCl6w3zTKEpCc0X+cKUsU7RfyO9RSTLcSTMH1T1KU64D+8AQGYLGQbBuxtzZ+UrC+BMttsVJMf+ZhLFcWSpAMwljtLJpLJU83APVXl37EJLus1QBcn1thyPDVkDXKAB9sjdrxVCwUvCaDwPMqAoPi6vyQR5YuyG2KNN2VQiMv04Bf6r5VIvbSWiwYecnWh/vSKH1ecxfYMWjvMuSaao1s+NYRQFynyew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(136003)(39860400002)(346002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(107886003)(6666004)(6506007)(55236004)(6512007)(2616005)(26005)(41300700001)(53546011)(8676002)(8936002)(4326008)(2906002)(5660300002)(6486002)(478600001)(66946007)(66556008)(66476007)(316002)(83380400001)(36756003)(38100700002)(86362001)(82960400001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnF4ZVU0QkZmbElCak5MYSthL1lER0NXQUptbmdoUFdFcytCbmQ1c1pPRzN2?=
 =?utf-8?B?RDZDZndaN3diTkpmS0ROZmUzNHBISXhkZ0lUSXY0UUJFajlSRFIvTExQV0Va?=
 =?utf-8?B?WlVGd2ptZ3UvWnBoNHBRdXZIdHBOclV1ZWNncWk2TmtMcEpkWEhPTXY1Uzhi?=
 =?utf-8?B?UUtGZ1diVVFRbTdTcWNHZ2diMC9Lc0x3NVlGd1RPMVViSWc5a1NDZ3ZQMndv?=
 =?utf-8?B?OE1mQU03ek1iNGdVWHh5UFQrdHFMN25QUlBwTkxPYlh6SzRuNVhtaVlwMVNn?=
 =?utf-8?B?Y3NKZmRwL0psemUzeVZPQTBCS05Cci9MbDlEdVlKUzkyN1FkTXdNdW8xaHhF?=
 =?utf-8?B?TktDRFF6T1pvTnZjWURERTNlY2E5VWxkcXRyTGV4TEIrd3U4ejJnM1ZrVmtN?=
 =?utf-8?B?eVpTdHNPR2xlYWllRGZJVUY3dGpJTXdpNE5DM0RtUjVYSnoxRFhRZFEvdElz?=
 =?utf-8?B?bWZqeUs1UlRyWFJJYUkwWkpScU9rRFpVRUxoOW9oNTdjVDUvSTJMRS92cENR?=
 =?utf-8?B?dGtVQzYycGo4NGVYS1hHeXkxWWw3MlhaSU1RS0xMV1BzdWZyUVRURCt1N2wy?=
 =?utf-8?B?NHNEYVdZV2tUZllEK09ncjdwYndsY1VxTUtsd3VOMURMY2c2SGxIcE9zTlAv?=
 =?utf-8?B?TFJtYUV0bUhxYWVOV0FYeHcrR0J0RmRiY01LaHdpT0tIZ0Z1bXJxUEFBVUI2?=
 =?utf-8?B?N1hkTldoc295djF6OTF0T0N2MjRPN2c2Z2xQaVlvbVlFTjUwWXVBMVlvOFlr?=
 =?utf-8?B?WmJ5VXNZY3Bnc2d6QVdBVDA1ME1mUjhTcDNrazNRaUxxT3F1SGE2R3ZqUGZH?=
 =?utf-8?B?SUtCUzhTdTRDVXcvbnA3VitiMGNNU2lVL2tkSnNMZ3EyQjJWVFNvUmd1MVM0?=
 =?utf-8?B?OEdMTlNhQk81Q2lsY1VNL0FUa3pCT3FTT2ZlNnZINjB2di8vVDBTRmlHc3ov?=
 =?utf-8?B?T1grRUlBWklDWnRwTUYxQWlRMm1JMlQxT1BEdE9ValRuWHdzUUNNUVdkR0ls?=
 =?utf-8?B?Rjd3eXd6WFRRMENZaXpTc3JEb2JSdGtBRHhvWXZtLzNISTFoNDZzVE4zZ0w1?=
 =?utf-8?B?OFdYMXFCM0JZSGZic2VLc2JqZTdVejRrOWhHNVkxSWUrM0RUcDZNU3cyWDVn?=
 =?utf-8?B?a3pJUlA5Z0ZWSGFKQnVYVWsyOEpiZmRLaVNKVHpscnhDSXZiZC81bjc4Tmo3?=
 =?utf-8?B?V1NFbCt2aW9UMmZuQjNRaTFBN09yTkhleXhXOEQ0d1RjVStGVW4xN0dhelp0?=
 =?utf-8?B?bFJ5Zlg5b0QxUktEV1pmY0lWOVFuelZveGVRY1JuN0ptRjlyM3dWbkdIRDB2?=
 =?utf-8?B?S1UxYVZZZlFhRHc4anFRbFozUWNCTHdrR3prcEEzMU02bUhQUUgzMTUwa3l1?=
 =?utf-8?B?eDVJWUpLUkNvNUhHM3hmV2YrTWVkaXVNQ09SNXIrZ0k2ZlJtM3JTa3BRY2xz?=
 =?utf-8?B?dTFqelhIQksyc2VadTlPTlhEL3VyMnRMVXE0RCszdmFtdExrQUExU2VtdlU1?=
 =?utf-8?B?QTRGbDg5bzNnYnZnWlJYajJvUUxNSWZYSHdGRjJZSUh4Uy9xL2ZlU3dmUzFG?=
 =?utf-8?B?a1lJVE9YbDZ5a25jL21PYWVIUDVsbDIzVkFGWW1uekdnSksvSTRuVkxZOXdU?=
 =?utf-8?B?SHF0RG9hMjJ3S2JvT2R0dmRTaGRGUDVSbStjRTZXdDJpbHJCNzEwK0k4VUV6?=
 =?utf-8?B?cEpmdjIrZTdPMFhHT2Jhc1c3MEpIS1NwTmhTdEtLc0t6ZE1aQW1UVmlzYXpS?=
 =?utf-8?B?Q3RPSTBYN0hacnhKNUFpQTVkbTFVbFUxNHNPUVVKazYzTVRTTm55ekx2c1B6?=
 =?utf-8?B?RkM4RGNiU2VNWjlvQlA3Tm1YZzBzVEozcEpRUmNRNm9NVDFaNE0raTJmbHJ6?=
 =?utf-8?B?dmYraUh2OUpRbXdLSGJOR0hJT3ZCVndXTVltV3V3Vmo1NFJ0SE5EYTd1Z0cy?=
 =?utf-8?B?NHJ4VklsUDNlRFJNbFBRbEY0OXpGRng4WkNMTHMwZUZKOG1qWUJXQ1hnOXA3?=
 =?utf-8?B?NTVOUUhSM2E4VXJRYWwyMVJkQld5bUtUenZPRE43VjczWnhVTmJCTVMwTlRS?=
 =?utf-8?B?WWk4eFRlS2ltTXp2b2o4RFlGY1ptVHliVURRVUNIS0VDbmowVFVPTWQ4dk5N?=
 =?utf-8?B?eUNRQ1BLaDV4ZktjVWlBN0J1YUZEeGxOcStUemQ4cmhJTVhKQXZ3Zitxc3dF?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf3bd1f6-cdcc-42cf-b4e0-08dbe00f8755
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 04:02:30.6010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vcwyuvc+0SiLb1Aunq3Rn0KbpqWrU/3ky/xFD/UtKXd147q9Bmc4cqkoq7cTz7bF+INvLpSA7qq8FEFn+A/53+lB2RyTXOBD/zhQItBT5bM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
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


On 11/7/2023 3:28 PM, Jani Nikula wrote:
> On Tue, 07 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Return 0 if platform doesn't support DSC, and return 12 for Display ver
>> 12+.
> This just describes the diff in English. I'd be more interested in
> reading e.g. whether there's a functional change here.

Effectively there is no functional change.

At the moment, it is implicit that DSC is supported on ICL onwards so 
platforms earlier than ICL should return 0 for this function.

The change is to make it explicit that if the platform does not have DSC 
support (using the HAS_DSC macro), return 0.

I should have mention this in the commit message. Will update the commit 
message and resend this patch.


Thanks & Regards,

Ankit


> BR,
> Jani.
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1891c0cc187d..d9e1d15a386e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1569,13 +1569,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   static
>>   u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>>   {
>> +	if (!HAS_DSC(i915))
>> +		return 0;
>> +
>>   	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
>> -	if (DISPLAY_VER(i915) >= 12)
>> -		return 12;
>>   	if (DISPLAY_VER(i915) == 11)
>>   		return 10;
>>   
>> -	return 0;
>> +	return 12;
>>   }
>>   
>>   int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
