Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A99557EA3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 17:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2C110E589;
	Thu, 23 Jun 2022 15:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D9910E589
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 15:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655998331; x=1687534331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OG4sC5J0xdBxH2a5zE1RzULfrbT1EaK4j4R1v1SSNGw=;
 b=FfO4mZUn5mbUstNLGU78zHC1dvpwA+dVLYx9FCFSHNJ0tUGvqEjh+suK
 bjIAth4Qai4X+XiZjLDsCb+Dq39fhC67Y8FogP8AwShc3f4r5C7ltoVWq
 /i/IB9ue+j6SeGDTrnp6nr7y920G7vuXK3Nt26XMgAJhxBxvW+vx5viCU
 mYRSWRyjdjRFId1PlbTN33SX3qH0w90dgaX+L7540Kem/BAwWtVzAgXcd
 EmZb3O1b37abfUOhmLetqaS3K/tHMiMVE/ZVg0oSNF+J6FsJehoo3JuCQ
 iO3XF0VoANbO0MuWNxjJtiOGoEkpEDt1kKtiZqPMigD8KgtOIpuhaeKYt Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="367071023"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="367071023"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 08:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="656220325"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jun 2022 08:32:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 08:32:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 23 Jun 2022 08:32:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 23 Jun 2022 08:32:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ukediw2mL5x4yuUsNO+/GLz4P7eumAVnOmg9+1cdi9qD51Gi+XplzoZJfdtgKDYiRH8N5YnxLHrsWSTO/CglNIwPJBC3itAdeBIM3uwjc4GjwKCx5TfnOnDSls/xImTpfWb1uHo1ixIl5TDKGOCAfdTy9jRmAJ8jC7GQvD2EkZiKzKh+Tlu2d9TvfbnQaW4E1zVqT5PkftphrrQkV3AVVczKJnrIFcr+yxuaJe76qlEjvT5Tv5XRG+nvpAbRtD+KdYij1Kpb3+RjxmvOxm8oNwn/yDVuxEBuG9WvQ5AkjzMyEoB2/s/x0LPU1olg1+vzJuRnzR8Q5EQsRZ3Err0l2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Go62uAluv5o8kI2uaJGDzo8iNuHQRrnXevtC+kELUfk=;
 b=IbQr5dO+OAb1G6QGp0A8nuOtwPKwT+MN39xVO0Tu/fu8tV9PM5KtgHEWvm5jJSua1Evxvzx7cTdhZCgoUSPolI5ZfKZjP6Rya/dGUCShoIX7Vhld/K74lrPAa5SRI2JeYNdSg0MLYjXDHxQkptUeCqxVjFbOzay0DN8zElKXiNn7f3wjrJ7ki02/KMZVcbl1bJQ7gSkJlHR1sv+ShLP0Qbx+8N/6FezNn/D40Q+/rXOQXf5Aqxew3mH18J22au/5kyqfNKTwI/k7pyNESkODUUNONEkYLq72qT72crc4jacKten1cFDDNnx2Z+SE863VXSEgueHqR1ZcK8mrwp1xGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.22; Thu, 23 Jun
 2022 15:32:08 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%9]) with mapi id 15.20.5353.022; Thu, 23 Jun 2022
 15:32:08 +0000
Message-ID: <f72726da-0399-e1bf-2560-d84ef2c62b2d@intel.com>
Date: Thu, 23 Jun 2022 18:31:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220617115529.17530-1-nirmoy.das@intel.com>
 <bd0dec62-cc7d-9150-9ef8-e04ffc201901@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <bd0dec62-cc7d-9150-9ef8-e04ffc201901@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: HE1PR05CA0278.eurprd05.prod.outlook.com
 (2603:10a6:3:fc::30) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9513479-54a8-4698-219b-08da552d88b1
X-MS-TrafficTypeDiagnostic: BL1PR11MB6050:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JNHUCXchZClZFCEpuCgCbag7HjPr363b2n6YldoQGflpx8OOd240r2Qe2hqF/6vzgoqKFHEo5lPourUD+6hO+YgUAlU0f03ojmypXVa2yTxFtEahfsvcIc745x7Flc2cfGMKgA0GAOxHYSZo2lRhhExob9A7mEPkbn25aDy0t2DxWWlNZzuhv1XU0QpRrI/0W3GvrA43L+00B3YSh996/TNLiDlTSlkcE9B15HImRQ18CR5jLn6njYgWDKzR4H4KWkGAs4eEgIY04RNwbVgSPxBhfmwUqbQVkOjOp8pnuVElKEogrB78dEDpX07aGq/vnFEj3HhYTHy/8dSKTf/88to5f9ehFZfIRdacmHnKmihPHb1bN4MO/LVgt3tPMyfaxItSb/Jl/5GeKrEg9S3ZNPZTcezQhDwd040NHqxNeq6hcZl9kSgwIQwawBK/3RsRPc/w5fpkrGcBV6gjxKpz+YO3E5Cwg8tOiCvR+cc3ws6LFJWgTWWhCz+jeUMoyNpzaWfSp520Vpzii+z9rJirfhQx+z471uRltv5I4vsMC2i+DUFDc2c/E7wnGI9TmOat+oN5QXVT5/5XqBguo6AlbErLBSj/mQet1enzgl5J1cGmcvDHj9rYOLTzq4Cta1EHxjqaku5cO7eSZJ0Y9vuJ9uDclX62jDEZ1ivnEomzqs+eiVXBCCHNst3cIl39ToIuiCnHydvb2zgVweMaXO5zh2DswFygPJ0D42okx9wPAs9gtvPzAlzglcYRu+WIXh3Saes0AFbEY1ru1LtJrLl1Nw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(136003)(366004)(346002)(396003)(186003)(107886003)(82960400001)(8676002)(66556008)(4326008)(38100700002)(8936002)(36756003)(31686004)(2906002)(6666004)(6486002)(66946007)(83380400001)(316002)(966005)(5660300002)(41300700001)(66476007)(2616005)(6506007)(26005)(53546011)(478600001)(6512007)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjE1bDNDUUNQK0M1T2dQQ0U1d1lsWU85cERybkNuU3pQNm40SjEwQTErM2p2?=
 =?utf-8?B?Y1l2RmMwVkp4RVhMbEh5dUZFa3pQQ21aUXByRnpSZ0lqSmxFa1RNZWdmVEs3?=
 =?utf-8?B?YWFBNksxV2twOVdLYXdjK1dkVncvUE5WVGViems2NHY5Q0pSRjk5SUZzM3Jp?=
 =?utf-8?B?MXRiY0srcW56ak03SmE1MlVqckxhdE0vSzB5NmU1WkRTOGx0U0tZZGZCZmo3?=
 =?utf-8?B?RmoyZUdhOHYxcUswTFBVRVV1amlrQVV5a09ybEtFS3hqWU02eFJrM3lCd0xO?=
 =?utf-8?B?Q1hrdTR4M2dFNEp4SlI2YjE2a1IwZ0RuMVhsVXBsQ3JzUFMyYitaNWJ5SUF3?=
 =?utf-8?B?dGN5MHczWmQwSWFJQ24ydmx6K3lHak1EbXg1K2hZcDJXRzFRdTJ1cE9KYkxx?=
 =?utf-8?B?YXRVcXM1d2VtbkRhR0NIdm50K3c1dkRWUVR3bWVwdlZWZzNQTWVucWRFVitT?=
 =?utf-8?B?NHo4VXozSEFJNjMvTE55VWwwNUlIejE5emNsL1hOVzBkTXZNeU9OZndjZjh2?=
 =?utf-8?B?Qk5uaWlUMmhIa1pETWVBY1ZCUzRhdHhWelE5dWpNcjNlUk9xT3pieml5R0tB?=
 =?utf-8?B?b3B6cDJjTWhJeHhaanNtK1ErWTJXWFVxVXlMbmFUczdQWWhacmJmdDNEN1E0?=
 =?utf-8?B?eTZVMVhId0hZWGNHRGp0cDZwTE91eFVxcGNxUWlYWEs0MEhxKzRKUzBoWFlH?=
 =?utf-8?B?U1FBRTluZ3FTK2pLTmJJTVc5d0VkbGJ6OVpONDQ4QnkyaXc0NWJvd0dmL2Q5?=
 =?utf-8?B?eFdXWjJ4ZmVneUNrWW1hWnZJVWRzZVovckZGbFV1UFZ3OFp4Q1hKWXQrNmJD?=
 =?utf-8?B?SW0xTlVpS3N2ZTBGMUdZNDQ2b1J5bE5MZ01Zb01Ia0ttTU8zc1RrWUpOUFN5?=
 =?utf-8?B?RGJCc29TNENSOWJXdXhIdStwTEVraFk4MWU1bWVkTmFFNExsUEdobXFIWC9v?=
 =?utf-8?B?ekhobHFPSm1YYWJpbWRSYWlKNERiZVJrZ0pQTUVvbExyY01rWW1uWElBc29v?=
 =?utf-8?B?ei9BdFRzS1JjQXBUSGZnelRRdm5vR1N3NHlyTFE2Qzdzb1pqTWlGamVGS2J1?=
 =?utf-8?B?b3VzdzR4eGFBMXNDbU05dStrM0V5NVJIZ1Y4TWUraTg3SUdFNFcwemVZbkQ0?=
 =?utf-8?B?cHRBSFZNZDBHRnIxaWhZU1lXVEdzUHgyNkFadGdGY0ZVSGM4MTI3UCtITXo0?=
 =?utf-8?B?Q01nZThkMktnOWpaM3hZR05NRE43QkJyN3NIeWxzNWxwVW94K2dkclM2OFpF?=
 =?utf-8?B?NW5jNDZ1VnJRYk9xdkFGQTg5eGxqZFNmcHoyd0VtRDFwejJzYThjQ1hWaW9o?=
 =?utf-8?B?bFF5cVN0dk5ORDRpUjZCelczamJTc2d5VnorRmRVRmdIdmdmcm9OMjBicjIx?=
 =?utf-8?B?cUhhb2VwWjA2WkcxYlN2Zko3eFdONVpSS3lONUFvL0MrUkRWNEdwQzFMTjNW?=
 =?utf-8?B?YnZGeVdGUzMzdFA0c2xnNXQrckhUbGNhNk1ndEJjUkxETmRKVmVaWEFZS1lD?=
 =?utf-8?B?Y0xOK2dHVjdTN2E3RkcwWGYwY0pvc2JGTTRTSzNjZDhWMDc1Rmx0UVhZRXR4?=
 =?utf-8?B?Mml0WEh2UHBlWFRzVDRpd2lnaUo1VVdvT1NPdUVOYVZ3TlJHRkJUNTZzZFRX?=
 =?utf-8?B?bWduU1h1cFNzbWNrUlRnVlpIVzZHUFBtOGsxdkxCWE1LekluRTg0MmVxWUU1?=
 =?utf-8?B?SW92RThNZXdoeFJlL0NpQ1RGWWdkTm56RGhDZFd0Y0pzKzZSL1hWaUFwQVhT?=
 =?utf-8?B?a3NINkhUYmJtQS9kWFRNZlV4b0NHdjNSMHlUQkhxMnlJd2E4VHZmY24wa1VP?=
 =?utf-8?B?NUdRb1NlaEhnNjJQeFpZN3Q3aU5hUWxkWlAwK3ZyRWZhYXRocVd1RHZzNlhQ?=
 =?utf-8?B?eng4dk1FWFRKTVNGL2tBemtiWU5DTDhBYWpzVGZLZkIvbTFqenMwNmZsa1pU?=
 =?utf-8?B?SkpRVW5DdmxaN3lwenlVc09aS2pnNmF2eE1lTWM2eENNY1QvZFV0eEIwZFo3?=
 =?utf-8?B?OWpFVzFqMW50N1lzTTl6eW1Pc3N6ZStXNzBKWWdZNDFqTitDa2Erd01KNkc4?=
 =?utf-8?B?Wmo0YVVOVVVJZUdRL2dZazZSYnZRQ0ROaDdSVFdaWFhud0pQRk41YnZkcW9Z?=
 =?utf-8?B?OGs4L1BKcEJZRSt5TjJqdVZxNHRVQmp1VTFyYW5KSmFyUWlTcmRxRGNLcG1v?=
 =?utf-8?B?R0RsS0lDOVY2RitYc2hLUXRGU3p5Q0JVZDFMalpmc3ZkQ0d2S09ETE9RRTdK?=
 =?utf-8?B?UUFwMWp4OEpqOE5XNFIvdGRtc0I1bzJwK3BiMkxwbzlwb1RwN2o1R2RKejVo?=
 =?utf-8?B?MlZkekJUNVJUUFpTSU52dVZhbnlZTktBVzg3dGptSDJKQ29uYnNVd21lTmdi?=
 =?utf-8?Q?Z5421/LqpQkofDdM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9513479-54a8-4698-219b-08da552d88b1
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 15:32:08.6400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kq0sqZ7/EhqUr1j+BYcMJTXaZGQcyY+LGv3xkb6vbNgRz2yf1xWe6W7dHqFNe0/G+uDrT9lCWnN290wWJUR4gS+gCFlJBdT6eX0shORkiSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6050
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a lockdep warning at error
 capture
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit message and code changes look good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

This is a question about the issue mentioned in this patch, not the 
patch. The tests 
(igt@gem_ctx_persistence@legacy-engines-hostile@render) mentioned in 
this issue ( https://gitlab.freedesktop.org/drm/intel/-/issues/5595 ) 
are dealing with a test that causes gpu reset / hang? Or did the reset 
happen during the test?

br,
G.G.

On 6/17/22 4:21 PM, Das, Nirmoy wrote:
> Missed the fdo issue ref:
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5595
> 
> On 6/17/2022 1:55 PM, Nirmoy Das wrote:
>> For some platfroms we use stop_machine version of
>> gen8_ggtt_insert_page/gen8_ggtt_insert_entries to avoid a
>> concurrent GGTT access bug but this causes a circular locking
>> dependency warning:
>>
>>    Possible unsafe locking scenario:
>>          CPU0                    CPU1
>>          ----                    ----
>>     lock(&ggtt->error_mutex);
>>                                  lock(dma_fence_map);
>>                                  lock(&ggtt->error_mutex);
>>     lock(cpu_hotplug_lock);
>>
>> Fix this by calling gen8_ggtt_insert_page/gen8_ggtt_insert_entries
>> directly at error capture which is concurrent GGTT access safe because
>> reset path make sure of that.
>>
>> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.c  | 2 ++
>>   drivers/gpu/drm/i915/gt/intel_gtt.h      | 9 +++++++++
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 5 ++++-
>>   drivers/gpu/drm/i915/i915_gpu_error.c    | 8 ++++++--
>>   4 files changed, 21 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> index 18e488672d1b..2260ed576776 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>> @@ -629,6 +629,8 @@ int intel_gt_gmch_gen8_probe(struct i915_ggtt *ggtt)
>>       if (intel_vm_no_concurrent_access_wa(i915)) {
>>           ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>>           ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>> +        ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>> +        ggtt->vm.raw_insert_entries = gen8_ggtt_insert_entries;
>>           ggtt->vm.bind_async_flags =
>>               I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>>       }
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index a40d928b3888..f9a1f3d17272 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -306,6 +306,15 @@ struct i915_address_space {
>>                      struct i915_vma_resource *vma_res,
>>                      enum i915_cache_level cache_level,
>>                      u32 flags);
>> +    void (*raw_insert_page)(struct i915_address_space *vm,
>> +                dma_addr_t addr,
>> +                u64 offset,
>> +                enum i915_cache_level cache_level,
>> +                u32 flags);
>> +    void (*raw_insert_entries)(struct i915_address_space *vm,
>> +                   struct i915_vma_resource *vma_res,
>> +                   enum i915_cache_level cache_level,
>> +                   u32 flags);
>>       void (*cleanup)(struct i915_address_space *vm);
>>       void (*foreach)(struct i915_address_space *vm,
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> index d2c5c9367cc4..c06e83872c34 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> @@ -493,7 +493,10 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw 
>> *uc_fw)
>>       if (i915_gem_object_is_lmem(obj))
>>           pte_flags |= PTE_LM;
>> -    ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, 
>> pte_flags);
>> +    if (ggtt->vm.raw_insert_entries)
>> +        ggtt->vm.raw_insert_entries(&ggtt->vm, dummy, 
>> I915_CACHE_NONE, pte_flags);
>> +    else
>> +        ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, 
>> pte_flags);
>>   }
>>   static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c 
>> b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index bff8a111424a..f9b1969ed7ed 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -1104,8 +1104,12 @@ i915_vma_coredump_create(const struct intel_gt 
>> *gt,
>>           for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
>>               mutex_lock(&ggtt->error_mutex);
>> -            ggtt->vm.insert_page(&ggtt->vm, dma, slot,
>> -                         I915_CACHE_NONE, 0);
>> +            if (ggtt->vm.raw_insert_page)
>> +                ggtt->vm.raw_insert_page(&ggtt->vm, dma, slot,
>> +                             I915_CACHE_NONE, 0);
>> +            else
>> +                ggtt->vm.insert_page(&ggtt->vm, dma, slot,
>> +                             I915_CACHE_NONE, 0);
>>               mb();
>>               s = io_mapping_map_wc(&ggtt->iomap, slot, PAGE_SIZE);
