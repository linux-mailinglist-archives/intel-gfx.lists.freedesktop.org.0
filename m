Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9FA691F13
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 13:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB49D10E25C;
	Fri, 10 Feb 2023 12:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66CC10ED04
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676032078; x=1707568078;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PBhq+eDTjLTrdcgXdz8p4hBOD6+x95oxn8W8NctDwVc=;
 b=Aotdz6ArxB4VVLNu6nwRB2MeTSB9tL7JNcYP0dFgb3dnSgThjfYKAxJO
 wmWhcO8kUvIQK5oEJP6QuXDdn4Y1GUZ67f42L8G9rH+JQ0CI4/va09a9Z
 33ab4pYS+KBnH8pSpkBiayKNVmCDabI7sptcxHki64jtt/DLag2+jRJE5
 jcl7YuB1asitkIf72+C1piTGlBytJeDKfkZ9gR46ZT+VcorH9aJehxB5n
 cko5u+7GT8sNirceH/tuSCiDuZe1agCl1MyqzUdFUfo4J6CkBQ1oH3gzP
 9IONLKJOyOA1d3NlpDmzR03mlzH8mhqDPq52+0A2bvA+xawk8dCAUaXcX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="331711708"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="331711708"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 04:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="700467398"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="700467398"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 10 Feb 2023 04:27:58 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 10 Feb 2023 04:27:57 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 10 Feb 2023 04:27:57 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 10 Feb 2023 04:27:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n+q+sCa5ca2MgeikeQ9wABjTYtoGq7d5sUeCla0jC8mPiBM6qMXTuv+fO+CrWJBZw/Lo9T1ErcVxzhP36rGOppo0vDyCcE4ijlfVcG2XWAtscxB40ozHxZPKlwLRiWoY4xgarM2a4qX1oRuinZGS6O1X/i3XeWWBpDtWdGymT1uMUdoZOqS2c/8jlouiSinM8Ng4t55an14T6NJwO45oATfHzGTPywfgVv0N91Cc9jAOwwO5jh/ODROXNMdWBj/nJfLA8lBRlAUfIV6EeAHke/GH0oHdQMjRwJNxDXKabLaGzgGDg1/NeEZaSTDFeE+SwdDl2/JMRDqFTSHIZsSLYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xNXIU+hxZb+AOVxXzaS1E1QmkiYk2TBeb/O7HTcaqGQ=;
 b=LVP6GMkH2TrqkRFCIHjh5DP/5k391PqLJNuBUuUPdLdqtBpJleD0hrnh4oTqJqqYs1zquYO0jryMMsIe6H6VEbPCWHQiglJDEGMCGfKC+DEPDE4qghPG5IbmrcQBIZHNO406lX49nBMq3mBrtsl+JsiiJ1YJOpho3ra8HigKsPOQncsRXQN87FmusLCiCmtoYNog9NImY8d7JB/PUR+6ZeRMt3KsdQaDHamgdxoYDWg9ahKPhs6J0VbtGJhPyKL84HGgokJuB2EoqUArTd8d3JDrCpJgcqMn4tbm89JiC+eldHSTv2K69FuL2KjAO5bqB0wVapGlNVdC/J6joRpZLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA1PR11MB5899.namprd11.prod.outlook.com (2603:10b6:806:22a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.19; Fri, 10 Feb
 2023 12:27:55 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::9f31:130:ef4c:97d6]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::9f31:130:ef4c:97d6%6]) with mapi id 15.20.6086.019; Fri, 10 Feb 2023
 12:27:55 +0000
Message-ID: <5e1eb840-c70a-0e07-b60f-9b408506955c@intel.com>
Date: Fri, 10 Feb 2023 13:27:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
References: <20230119095808.28004-1-nirmoy.das@intel.com>
 <87k01iaizc.fsf@intel.com> <Y+Y21jAdUlobK3dC@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <Y+Y21jAdUlobK3dC@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0142.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::15) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA1PR11MB5899:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ac607ab-d458-4e2e-6923-08db0b623c57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LJE/BSBgi59m6HFG4MxNAxiAn24J4F6swAe+3d2pz2Ska5jebDLbxRk6Q1bG0ArYryyyx90+dKKUEuYy8mWYtAT4sPLLxUzzdj0PmeQCvay6yaqvrESbunbkNvSapkIEMW2Q+TFK2lI/IfKoe7bv0n/D01GSxT8RQuETTtMGGDNDLsR5KkgbH8RxbkO3nSia0/JHQHsHyecXLlb+ueIadSQ/mnoTT7uf4hOcv7wL8qNvjC5lQ/Tt5wgHd+ZHGNuIfmUJjj89IcXqBv4k6sb0ki1oUcBXFVuS2g8jtP7R6neP6LLmzGZ7guYcz3FAGLIIAVHTel9vR/6mv+Ri4Pm2sCZuTGD5ke0JzM2y44s/4tOv8iE3WaPkn93qOtTQO7T2OTSaz+ynHcuEzwT0T1ySphrtbFt0HFJqmF0Cl+Kyd3qo9mUgebm4xwniH5BEF6glhscHZjFy5cX9mBZLJYjl5hyJG/KGY5Ovk+AiaQTY396JqkJXMs+IcHl3k19IXH1wXw3A2UvK285aMx2vAT2eEzuijiJKJasjYihzSJdy+qWRWTrPFxx36AVdcfmNk2JsOCnjBlSNmGr9S2ox2233cCRYXHxiDOcgrteZ6cXVOEfdY0xZHg/WpTXUMaD2aBgYkeh+wYABQXNqDAR+dvSDjLGK1XGanygjSTjls8FjoL1KDh03WC2waCDsF4Ndt6bb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(366004)(376002)(136003)(39860400002)(451199018)(2616005)(26005)(86362001)(478600001)(966005)(6486002)(31696002)(8936002)(53546011)(6666004)(186003)(6512007)(6506007)(31686004)(110136005)(66476007)(8676002)(4326008)(38100700002)(82960400001)(66946007)(41300700001)(66556008)(83380400001)(2906002)(316002)(5660300002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0lLOTYxZXRVOE9HZHJwZ1pkaWtKMGROS0JsM21qa3l0TWNLNkVmdFdIYmd4?=
 =?utf-8?B?RkdIaWFYRlNPY0xNS3hwRGZhQ2FUbngrRUtOaU1WVFlGL0gwaVhIM3QyVS82?=
 =?utf-8?B?WjZaenZ6MHpDZHFuc21yVjRmRmZtSmkvUWlpUGdIRjgrSkpjT3A2M1F6bnFC?=
 =?utf-8?B?d1VtQUhNclNnUnRiditIRmVxQklsMEorUm8zNkdaMjhjSGJNbmF5NzVOcVpk?=
 =?utf-8?B?a1NTTVhQWW1SNzg1bi9UakRwNHpuSU11UW1XL2toalZwaXNpa3pDRVNxNmd2?=
 =?utf-8?B?K0dSM3FwZ3FpN1BQamZldnk1bDV2Y3J4WkdJQTBrSmI4aUFKbkNnbG1EWWNh?=
 =?utf-8?B?SXN3VUtZQ2QwcU1FYTlIYk5jVHdNdGkvSEZGdDg1L09XcU1kRStxUDZ0NU1s?=
 =?utf-8?B?Zm1HU3BITlZKcFdIMG5rVnB2ODlBM1ZwUzNTd1VKZ2xIcFRKcTdpaU45eVBn?=
 =?utf-8?B?dHlzdlJXbm02WkN3QXpXeXJoeDRHblpEN3gySERrR0xkeTlUdHZhSmNhYVBK?=
 =?utf-8?B?emJ2NU5TNXJzZHlmVnNMeU1zeHBRN2JxRmtOam04VzFBTTE2b3BNcG8rSzlw?=
 =?utf-8?B?MFAyN2xCOGJqQkwzQk5JcVpDMzhVdEhxUlk3UVVLbS9KQ0p2Umlsc0xrQVFo?=
 =?utf-8?B?UkpwTFRSazZZSWJlM24xaEpwUnlHN2xiZ1VFeGlMZWwrdVA4OGpMUXNYZXZa?=
 =?utf-8?B?aE1kVlJqZ3dtV0J3UndFNStzYUFZMGUrT1RLa1V2eFJadzZjQ05uRXJVcnpX?=
 =?utf-8?B?YStuK1dGS1V3dHY3UGhLR2VxUUlJMzN6WFRxWVNTbHQ0OUNvL0Z4WWxXZ29x?=
 =?utf-8?B?aHhJSTB5cEErM2JoRC9SWlN1MnBDNXEwc0h5c3VEZFp6eUNKcVVwSE9YVUFM?=
 =?utf-8?B?MTRaMG5HTjFaYjFSMHQ2eUdwVlJnaWFBRWlFUHRjdzkxdDdLSDNhdi9YTG10?=
 =?utf-8?B?QzBQTHoxNzYzTzAwd01Mb3NwT3JnWktyQWVVaXFzd0pKQ0lTY241b21GOVVG?=
 =?utf-8?B?V1FxNlp1cjJ0aGMyV1pWK09GamxWWHdGUkFTYnRST1NpRU5Qb2k2MVZpZVMr?=
 =?utf-8?B?Ly9IYTM4ME1TWWhxeG1uTmJwQzJDV0FQTkhWMms3UGphb1l4UG5LeDdNb2Fu?=
 =?utf-8?B?YmdKMWQzQWhkV2RPdFpYdklaR3VvUFdiNzZEeEw5QjJxR1VmNC85UnVkMDl1?=
 =?utf-8?B?elUwMi83RGhrRXFYMjlvNXFSQU1pSDZ4anNNZHRmanVSWEdTdkNoRGcrQkFD?=
 =?utf-8?B?VDZObnhFRVNuY3NhOVk0WHlYSERUT3ZKbHRReWQ2MmFwYnowOUUwQVc1ZXox?=
 =?utf-8?B?d3pWd3o2RCtzWXVVTmEzNW5UdzRjTzdNb1pPcUxMempuNnFtOTBLdWxGRENV?=
 =?utf-8?B?S0M2RWp4V01KMmh6a29PYUh5cXBHK0ZHa0U2RXUxV25HbE1jQzJDeGpnUUhw?=
 =?utf-8?B?VUVhd2lwQjI2QXk5dExUTjU0aVVEbDJUL1V0K1FnOUYyc1pHMFFoZDRWeGo2?=
 =?utf-8?B?Yk5FN210dGVqQ3pxT1I5bTJKRkFRTGFCNCt5bWtmM3dxU21KU1N3M21qNm9w?=
 =?utf-8?B?L3Qyb2hmdE1OQXB1Q1I2eEx6aFQ5QW0vNWwydGwvMjhmUTJDOGp3TUNDeXRo?=
 =?utf-8?B?MkhqUVZlcUg3VXpiM0pld2RWQk9wQXpSWDhVR3dEYVdBWnBIZWMvVWRQTjBm?=
 =?utf-8?B?MFM1TjFxZFdiWnFMYkU4WXdmM29USzYxbHBJanhQTHJNRjcyY25ncGNlZ3ZX?=
 =?utf-8?B?SVk4U3lrbi9zVmt5dzYxSEE5RDZEVmlralB0bzZ6b0NSMWpneW90WFdDK2Uy?=
 =?utf-8?B?Qmd5QVRIbUFiMEJOUk4xVUpNTlNWeUVwYkIrR2tneVIzbXJzMnN6b2tHMkVm?=
 =?utf-8?B?eUcxakJPQXlZUmFTQzRhd2MxRGVjV2xFdldXNU5FUk9zWk1DMGNQS2E0Y0Y4?=
 =?utf-8?B?ZXhCem4zR2lnNkloNEZ6ZkFueFhrajRFalcvdkl5cE42Mm9TSTVQUlFvcDFE?=
 =?utf-8?B?cjdsK2poalByYjFoanQxVGozSXpIdlprUTZhN2dYV045aXI4N3YvL1pWRTR4?=
 =?utf-8?B?aDl5WWtHOWVNTG5aY3FJSWhzZVA5NGlLanhRWVRsNEVWdVQ1aWdnNGhWRHZN?=
 =?utf-8?Q?993tplENfA2z7sIaTfp91o250?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ac607ab-d458-4e2e-6923-08db0b623c57
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 12:27:55.1681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eigAEP1DqefyMiXETY3mJ8jAoL+6yZTlRcMTfy0fPi4mnEiUGwCwWGLsUl7PkaX70Uy3hmmblsCSYNGv+Nr2Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Pass drm_i915_private as
 param to i915 funcs
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/10/2023 1:21 PM, Andi Shyti wrote:
> Hi Jani,
>
> On Thu, Jan 19, 2023 at 12:58:47PM +0200, Jani Nikula wrote:
>> On Thu, 19 Jan 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
>>> For i915 functions pass struct drm_i915_private directly instead of
>>> struct drm_device.
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>
>> but maybe let's wait until we've synced up with drm-misc-next to avoid
>> the unnecessary conflict in drm-tip and linux-next?
> can we push it now? Do you want me to take care of it?


Would be nice if this is gets picked, though I still didn't manage to 
work on Jani's follow up "dev_privs to i915" cleanup patches.

FYI: this v1, I have a v2 for this 
https://patchwork.freedesktop.org/patch/520148/?series=113083&rev=3


Regards,

Nirmoy

>
> Andi
>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
>>>   drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
>>>   drivers/gpu/drm/i915/i915_driver.c           | 4 +++-
>>>   4 files changed, 12 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index c38a54efedbe..7584f65c6a7e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -8999,7 +8999,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>>>   	 * enabled. We do it last so that the async config cannot run
>>>   	 * before the connectors are registered.
>>>   	 */
>>> -	intel_fbdev_initial_config_async(&i915->drm);
>>> +	intel_fbdev_initial_config_async(i915);
>>>   
>>>   	/*
>>>   	 * We need to coordinate the hotplugs with the asynchronous
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> index 19f3b5d92a55..c2c52f8e5887 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>> @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>>>   		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>>>   }
>>>   
>>> -void intel_fbdev_initial_config_async(struct drm_device *dev)
>>> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>>>   {
>>> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>>> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>>>   
>>>   	if (!ifbdev)
>>>   		return;
>>> @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
>>>   		drm_fb_helper_hotplug_event(&ifbdev->helper);
>>>   }
>>>   
>>> -void intel_fbdev_restore_mode(struct drm_device *dev)
>>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
>>>   {
>>> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>>> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>>>   
>>>   	if (!ifbdev)
>>>   		return;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
>>> index 0e95e9472fa3..04fd523a5023 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
>>> @@ -15,12 +15,12 @@ struct intel_framebuffer;
>>>   
>>>   #ifdef CONFIG_DRM_FBDEV_EMULATION
>>>   int intel_fbdev_init(struct drm_device *dev);
>>> -void intel_fbdev_initial_config_async(struct drm_device *dev);
>>> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
>>>   void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
>>>   void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>>>   void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
>>>   void intel_fbdev_output_poll_changed(struct drm_device *dev);
>>> -void intel_fbdev_restore_mode(struct drm_device *dev);
>>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
>>>   struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
>>>   #else
>>>   static inline int intel_fbdev_init(struct drm_device *dev)
>>> @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
>>>   	return 0;
>>>   }
>>>   
>>> -static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
>>> +static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>>>   {
>>>   }
>>>   
>>> @@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
>>>   {
>>>   }
>>>   
>>> -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
>>> +static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
>>>   {
>>>   }
>>>   static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index 6469c7c1e154..cd6069c1762d 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -1071,7 +1071,9 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>>>    */
>>>   static void i915_driver_lastclose(struct drm_device *dev)
>>>   {
>>> -	intel_fbdev_restore_mode(dev);
>>> +	struct drm_i915_private *i915 = to_i915(dev);
>>> +
>>> +	intel_fbdev_restore_mode(i915);
>>>   
>>>   	vga_switcheroo_process_delayed_switch();
>>>   }
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center
