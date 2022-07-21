Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E3457CA92
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 14:21:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B6914AF0D;
	Thu, 21 Jul 2022 12:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058C914A673
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 12:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658406097; x=1689942097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6OiSxbW/2wv4IIgjWBBfDWeukDEopr8PbPpKZ7r4ne0=;
 b=f+9e2AsojphjqXcv8AsCrtnYXlJJZ6q+Jd/TBu071pk5I35wFFeOEyYV
 7Xmu652CUN8J0y5Wnbzj6pglK/GSbXQdtzQoEhcG2mc6+GwRW+fDfP/IU
 xtSQfgUjXCnp8nxnXJNMAX8gny7Rm7J6zTJlbzH7z36xE8Z6nTwo9DSwS
 XncCyieDrAblS8trqPXj5fUG3ENjksoWKEBQh56dBvHwIaBcRR5JCi2sM
 MMSfY87uboEa661/z78Y8K4MmTxq8nx0RwLfmtbAoRrCl+e2OlD4efutc
 b8VRc/jJoFGSXnpM7tnj+LZw1uNvM8SO3R7LiKeiFz04D6fKLLe3ck5Ru w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="266805143"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="266805143"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 05:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="740657612"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2022 05:21:36 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 05:21:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 05:21:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 05:21:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hu9GKuUosVdvKZ8leKfYdzBhNx3iOMuGEjWLi5EbPgZU/fw44rFNECKWJcq4oL7IkFqNY3fgW/1ZxS62NUfy9eg4gnROPIBaNawjtnifHgVxXMmeBFgq/5ZK8JjSnq7ZO5A0Tx5IVKBaZDgjU3FAYqOlg4rtFx5bWpkyJcsSpgOu8y7FVBQI/S/bgYBzIFnOz6jBVaHpexw7x2WKkZCu3rSlsWCwZG6Knb7rNFPXw0shCGY1MZZ/ggQWPV0R7xdlr9vXyK5ccPg7kQP6Md6dMNH9dOZq7Rvw6wpiW9WtEwkIbatFxw3GuBCABQ6mNuxvGNap57r5cAQBvaIsB2BxdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o+/TBiUGnWBgkYgpnEM95yW6QT0KpQffBdIWxt4QQ/M=;
 b=Vv1kuuE+VurTDZBg74QCD3vx86t4Jiurf28U7g3YSpxFDEqODNTbnsNKaNbVYOMDA4/n46yX/7RZPZIt5SaUU2FMf4X4LBTOpv4bhONe0XJNcpU1lXoScJkKOgQYPiH2o54OSx9qZJyycW4JyeuR78EdQNdL5Yj6b9wUJYh0qk5XQhXP1UXAWJTNfQkE66N7gUxZPXUuO7PQuEifSA3RMK3G+WbQURLKEbW5pTmv9T02Ob3LFsjGZacCIczASojPuDbgPVt09XgS5qtccWit0sba1H/dN4bm/1RBH+2cP1rjAxTQ9/r6X3ItT+a3Y/we5Xji7K/zzlqW8x9xBuK8Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Thu, 21 Jul
 2022 12:21:34 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::71c4:bbd3:4a5a:ad1f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::71c4:bbd3:4a5a:ad1f%4]) with mapi id 15.20.5438.024; Thu, 21 Jul 2022
 12:21:33 +0000
Message-ID: <68b2ab4a-b671-d3ff-43cf-5abfc2cf00ef@intel.com>
Date: Thu, 21 Jul 2022 14:21:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220720122321.18270-1-nirmoy.das@intel.com>
 <31613498-5b96-766a-f9e8-8a73f0022089@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <31613498-5b96-766a-f9e8-8a73f0022089@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0628.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:294::6) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc594a20-7175-456e-5086-08da6b138c72
X-MS-TrafficTypeDiagnostic: SA1PR11MB5802:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u4KxyktHpRA2KsNJuI5zU8aw8eYxpPpfmPGtWxneZ3aCAqADouDSeAOVd2kwprRpsBVlfEfLAm/fkn+VY2LOHGkcB91Vs6csyvoZjgZan82pDl2U8T6xuZKwM1vDgjPQnB2K2vLAaQ8at2RrManavaFyenj5RIktpO4wBSWstuDOPpgQHBoH9g8uBO27vntMnNSqVQmKO4lj9vQtlhpRG5vnYyubRjPOk9R0eUPoWsw1hM52j+OCgOUZnaJ7V0oLrleIcLEq++DQWh6gaqDZgf2Er9B2uPHqj57vDEleLW/7U2m8kQRZHT+V7mCDfdTCfYJminFoyGGgnxwtRchZyW+OrNINzTPuQ40Pamp3QY9PkPhO31Z2+ULZAgwkW/59Ka9/DVJCKzRYH+Yk0Cy1q0r1b/FouPHdkex1/mMoUuX6XcaSFvH36D5kY4lh5GUWVydXpGWH0WXjsEvRzaMKwiwGx13SZn15HxU2bfst4eWQwTSvqB9PxWCzi2NHAUvaAHE1cX9R02cNfVmY+7RznnS94IL3K+yBXlcTtV1W6Oz7bt6NDqdFymXZG+bZJcc0RUzCgTwslDLajdyLAXpdyzZpNsyaZGpBkgoAlWijUcPgrHaG8igrc64oscGW6CoNy8hN+5voJDj2v92AH/zalfuZenyHf7Iyc9cSn8HKNXXMoCnSciDj2acnneOnO0Rboz96KgaX1HcyYI1uy9y6GZMNvSNAS8Gsr10fGoUN9Z9Cm3oCXB8PU78BWlbKWOjl9klogDxRIskdDhucWUJzGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(346002)(376002)(39860400002)(136003)(26005)(66556008)(38100700002)(966005)(6506007)(31696002)(86362001)(2616005)(4326008)(5660300002)(66476007)(8936002)(53546011)(66946007)(316002)(83380400001)(36756003)(41300700001)(82960400001)(107886003)(8676002)(186003)(2906002)(6486002)(478600001)(31686004)(6512007)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RldQVnVKRnpzSmpxRW8rR25uUStRWngzOUdNOEFlbGR0cXNad3dMNTVpOFNJ?=
 =?utf-8?B?NHgyMGdNRGliaWlvcHlBeVFwUi93aUVQMjJUV001S0xzRzRIVEtaREN0YUow?=
 =?utf-8?B?QUJhS01TdERvQ0t5UUVTQTRuM25LV09aUkpndkN6QWpiK2ttVFZRcDlWdTRR?=
 =?utf-8?B?b1g5ZVBNYW1sT1pJbEMyVWJPcjlJOFB5TVZDRW8vcGJ4U0R2Zm9LTkcxUTRj?=
 =?utf-8?B?RHRRakRLMmJRdlpqRWR5WDd5T3VJRklYUlkvNk1aRys3ekFsOHZqWS80TGxC?=
 =?utf-8?B?dERGRldXL1dzM1g0Si8vajJtSFFrR1ZJSGs0Y1FWSFhzZGlXTVkzY0ZHYXJx?=
 =?utf-8?B?N2RRY0NiNzdxTHk3R2ZZd3N1S0N6dGdiM3IvZ0ZhSTZBYVNxMzZ0SXRmVERQ?=
 =?utf-8?B?aVRScjJWRGpBTFVvZzZqcGhTS1NnUGpCdDl6NmVwenRiekw0a0J5RTZYK0wx?=
 =?utf-8?B?ZWNnM29HOElDdmhBOFZPWHBqNUNuZmNUaytPWVVDOFpPL2lKR0ZzV2x1dy9v?=
 =?utf-8?B?MEFkaEZhNVcwZGRGU3RSNEZWNERQYzRTT1ZZWTEvRitud1B1aXRhalNvZnAw?=
 =?utf-8?B?NUozbDNjQmhaS0xyVlNkWkVwenNSRmcyT2xncXA1Rmx3NzlwYnpVL0RJc3FJ?=
 =?utf-8?B?ak0wdlM1SWYvbmRtcmgvSHBRSENQckxSOVR3REtBWXg3czQxWnVyWnFvSEFn?=
 =?utf-8?B?bjJEYnVIckY2Ym1tSUJYcWdXR01DeXJwd0J5L3QzMnBNeiszRHE3b24reVcv?=
 =?utf-8?B?eXdCVlhPVlF0eDV4Um9TRjhrMkJVTy81QjZ5VVVrVGRiWElzNER4WkYxbnZy?=
 =?utf-8?B?Y3NHYjBBbGhZb1BBNzYzNWI0VlpFTFN0d3ZUNXEyWWM4RVFKeCtuTERtZ2I2?=
 =?utf-8?B?MGlUUDk5MDZZcnArbFo5bWNxYjZKZ2RoQU5Bbmx4aDlZNlQ1T3NGay84WFZI?=
 =?utf-8?B?TkJKWVlwTHIwK3lWUHlML0I2cldVcUQ2SzZUY1BwUzIzODRhNDNhUkFTbnQx?=
 =?utf-8?B?M1J3cS8rSnQxVk4xZTBIWUFONjh5U296dGhkMGptOWxuNFhyMHR1MGFtaGJY?=
 =?utf-8?B?d1VXNWZ3cmszR0h4OGdoeUxxaDl1cU1Wc0JSS3pCOGY0VUpnZXQ5UWw0aUxp?=
 =?utf-8?B?SU1jTGxDckJvQ0lNMC9PTFB0NkpDU0l6MDAwNTZjSEJtaFZrQldOaWM1T2VF?=
 =?utf-8?B?RWdPOTR0TU9BYURCQ09jbXRVS1l6aFl5Rmo1ZitUTTJDSDVrT0tSZkR1L21L?=
 =?utf-8?B?YldKV2pGRU9YUkpYbGZVbm1JcUYxcmJFL1FMLytidHdZaHVCNjlCZ0VaSDdT?=
 =?utf-8?B?aHF6YzBBVSthSFNqTTZ1WXI1M3M0aWZEa01ZZWFsU0RTWVdhWFFrb3l3Q25N?=
 =?utf-8?B?S2FpRi9Wb09QQTEySnNYM2x1NnV0UGRoRGQ1UUJ3ODQ2M2NEQXdaWDNhSXZV?=
 =?utf-8?B?SEczekpyd3hNSDNSV1BLOEc3RFhhTVhORzhxdzRqSlVqYXM5cTZ5Tm0xQ0U0?=
 =?utf-8?B?V3ZWOHh3VXk2UFJsNFBIeTlwTkhyODErRWsreWNJMjdzRzRFWHZWbmxnVWJM?=
 =?utf-8?B?RUtFdVFvTXF3OGdhWll5dktjLzd4T05sM1RVYnh3cU9LdDJ5dG5GZHZ5ZFJN?=
 =?utf-8?B?OFcwNTBnQ0h6NlJ4RGpXK2VaOU9mbUFrR05tVG5RNDBYUzIxZzFHQjhLbmZJ?=
 =?utf-8?B?TXZ1Mkk5czRjNThiemtISGdQMy85WEhEd3lhTEdxSlRva3Y1Z2ExeEFGWlNl?=
 =?utf-8?B?ZTUvWnAxNjNFR0NwbEtRRjJsOU1XNmhTNG9aZG1WaW1HYncwVWRQQmlBd2Fh?=
 =?utf-8?B?ZVkxRVY1RWw1aHQwVHZMamthcGFGc2tPVDFCT3IwME1OSTRxT0x1L0I0YklQ?=
 =?utf-8?B?M094M1dzWW1Db0ZvdWRNd2ZBVERZWVFBQnpZMElidXRKSWZWd25MVUJEekNj?=
 =?utf-8?B?d1NRbHh5a0ZncjVjditkZGRrMUl2OFdsd21jZzlOMXFvd1EzTmR0dWU0TWZz?=
 =?utf-8?B?NTEwVHh2dGVNTzRrdjJRdnpCUE1Ia2FvMlVIazkrMjhrQ29TYWo4VTcrb2p1?=
 =?utf-8?B?YVdRVWdETTBaUUlUekxJZENUQkZ3MzJlTVFyMHBDN3p0VHlhZ1BaOThnQVlS?=
 =?utf-8?Q?+OuTNFP8Hr6l8HHrStpKKHqIU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc594a20-7175-456e-5086-08da6b138c72
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 12:21:33.3386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aY3PZmn1r+By+wNb5fQeOxVEHlEWM9ZoWH0MG59fKJrJTidtprMPi/c7nRAfoIu5nrqlVx+3o2tUGQYH858+ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: chris.p.wilson@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/21/2022 11:49 AM, Matthew Auld wrote:
> On 20/07/2022 13:23, Nirmoy Das wrote:
>> From: Chris Wilson <chris@chris-wilson.co.uk>
>>
>> We report object allocation failures to userspace with ENOMEM, yet we
>> still show the memory warning after failing to shrink device allocated
>> pages. While this warning is similar to other system page allocation
>> failures, it is superfluous to the ENOMEM provided directly to
>> userspace.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
>
> Is it not possible that this triggers OOM warning when calling 
> sg_alloc_table() or similar?


I haven't observed any after running the test for a while but I think it 
might be possible, Do you think I should add __GFP_NOWARN for that too ?


Nirmoy


> I guess shmem_read_mapping_page_gfp() is the most likely spot where 
> this triggers OOM, but that doesn't have to be the case?
>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> index 4eed3dd90ba8..4466173e1bcc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> @@ -137,7 +137,7 @@ int shmem_sg_alloc_table(struct drm_i915_private 
>> *i915, struct sg_table *st,
>>                    * trigger the out-of-memory killer and for
>>                    * this we want __GFP_RETRY_MAYFAIL.
>>                    */
>> -                gfp |= __GFP_RETRY_MAYFAIL;
>> +                gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
>>               }
>>           } while (1);
