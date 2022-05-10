Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB08F520F46
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 09:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1981210E466;
	Tue, 10 May 2022 07:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A94310E1E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 07:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652169520; x=1683705520;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=73EWGMTsIT4i30v0/lHoZ1vrE97TUrzBffsC6Vs82V0=;
 b=Cs/dDxTaRRfAHeWskr3LSeEXPH7lPiZGw2IRdPyDGVxMup9zhxg4mgIq
 wFV8be6M6xoG5522rm3gRahwvdA8jGPnVZJoSMG29jkvZw+5RoVDiy3c3
 UsSlio1uImwOSjG3EndANAg1vHwFWX3VPmY24kdiYFYKyx3KVYbBNjZBj
 KQCYsHOggVVIO2wFQxJKMnE0gztOLg+Ay47M1/sd8Q1HmMS5N+cMJUPLm
 fIvxqwYmf4Z5ocHD5vAEvnTDKDNryB3POkjYtvVH2IMsDFTUceeiGWEol
 gmzp/3BngmzhobnEJ3yeAwIHrHewU/2FObjZ3jUizVsYWE0zJRphIk3vk Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="268963195"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="268963195"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:58:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="541656995"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 10 May 2022 00:58:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 00:58:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 00:58:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 10 May 2022 00:58:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 10 May 2022 00:58:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsmKUb0F5TeFuP+m+3JLJuWquipLcCyX9pMRA/k5MGw3e0Kw/I/oJj+dnCcsA6KEbzCGfbtQHZidnIpecgyo06dWRY7kUP3Nzu6cz2QDfzaXgN5fARh/uHTX8gINBemjSJx+IuOz9m+SGVCkFmBvkaQQoj4ebhW1yMSlZoXAY6wDmWnoG7GMi78EGR2X59puD207AC2fD/6dOShZbZdT+b3RPFQS7E96iSq087gTRtUVZsXrFofENbCQYRI8Ssc84CzVPJFFe6Mj4UUBEHtMSOK7N8tkHtkFhvbqoggo1g+yd5+zX/ZkgwjitRIL8Vvi/AAH37DOK7p807E6Ri/Tsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bDDsCnR5tzcUi2QR/eRgNW/UZ8bit15qlLXiost5Eg4=;
 b=nV80pA+JMpJtcM24/OS0oFlFQMIpMoBDh2tJw3KBJpIRwhyHWeY5/T3h41xT4Dsxh7vICZgYhR/U8K7yk+1OkBdmEf8WTLhUKNQmHOb5xDCy2CGVBE7wJyhgaIMX+MoDo5RM2ickharzy2LvuDYedNOSCgJzH8yxyoPJlLPNP0oGHi4F/FH7KLHmFslyHrdD+TZPUkTdxr4khL40aleJAbktCXoxxy//NDYmb+eoz8ufNRzzgVRZ2h4r4APPg51o6GBRvR66WysiJcmoGDNaD8lFuVKYygJ74iPuUavavr7oHt2fF1Sp6VHIekqEF9GPfxJQVG3yTn/BjgQlWZFPrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM5PR11MB1260.namprd11.prod.outlook.com (2603:10b6:3:10::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.22; Tue, 10 May 2022 07:58:36 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 07:58:36 +0000
Message-ID: <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
Date: Tue, 10 May 2022 09:58:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0135.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:193::14) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 638dd2ee-f084-4d6d-03a3-08da325ae2e8
X-MS-TrafficTypeDiagnostic: DM5PR11MB1260:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR11MB12603FA0893C3A6C0B75E4FFEBC99@DM5PR11MB1260.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dpsd9ZH29JhmJ3XssSDe5LuQ1Zg2y27xDCQS6VZz6nNDmZSUu0vEqsWgXSfv6q2FDWHP87wopyeld5Pz6ZZ6WNXoW0/JS/Ek8Wft1Tr9br0Izj7ZDF9jZXsA9B8W+3UEtVweCZZ5/3g0LZ2txfMd+d72UCr+yObQDGLTgvyx+xXMb0BB2dAUXrEULT6GV+nKI4M4KhiTmRV4UxO0JRMh4FUYRS3IWCGs/fnjP25nf7tLXCyuzKr0iQiagGMDO7WSH57B4Pv1QAQdHL0x+V8kzILFfa7CojgnA4nfl7JgOnMQzBq0ZHbtHt23+l8DsOOT6rklgUxKL9f8SBaebjz00EbLB4ThYcecKbIIUYThm+oJgj68ObENmOIvhCuOHGIKrt5bpyln7ScUKN0VUP1myYglmM3A6RNV/3nGkQmr2b+JlXMips5vbOkTEQ1QRZaZv1QJx9Y0rgzcs9vuNo8bmdGUfYgktQmMmIV7uPQg9TM7xAfvVl/Hm5ZE4481EAZsUzcsdL4fI28isPNoUAX3IlumVTMpsTP1zzpg0bbRzotvy7BQdl5hzikaY4JVuC9ORJasyuYOI/j66xeC8j7ErxRDAIzN5KBn3BASjgcXZ9dAysXwte5ljoOOdGub9lWDkw6pJof62UPWYhKmmCP+9D8ydwYfRkVfsr8pFRHAyjO6mD6t901dTIJaHHDaQmTBnN+7pFtdrDyaT/JzXRtELvJ+3ttBjp34ryAwnXY43aeHGifQS42qbAC26OtCj4Rs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(83380400001)(31696002)(2616005)(38100700002)(6486002)(186003)(86362001)(82960400001)(6512007)(508600001)(6506007)(53546011)(26005)(36916002)(6666004)(316002)(8936002)(2906002)(36756003)(66946007)(66476007)(66556008)(8676002)(4326008)(31686004)(5660300002)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFBEUlBua1RPeGhMM1RqOUtJaEduUFdqTWhZOE5WWlA3dTZhQUdWTWlvbTUz?=
 =?utf-8?B?U3Y4R1ZpbGlRWEo0WU10aG9oWG9NNWRmbTVwUXIrYTUvQmlWTllXV0lqQU9O?=
 =?utf-8?B?cWM0Q2RTL2dCajhLT0pNMU03QmZUbm5SQ0NwU09RUzU3dWRrRXh6Mjc4aWV0?=
 =?utf-8?B?QjRJQVI0TW1ORnZIU2pyKzF5dUxVVnVYUm5sNGhjUTdWMzRESEVHaWdVUUNE?=
 =?utf-8?B?S2FDUkhuU2lXZmNibHV6VGZrVVBaNk83dVRlN2l6Q3BDR1N3WHBJUTJuUmN4?=
 =?utf-8?B?M3MzUERpa2gvbzR2dDQySElIb2JBdXFScUlhVmplaGljdXhMMGFBZmllTzBZ?=
 =?utf-8?B?aGhaemk5QlZ0WU5tcjRiaDRpWUx1YjMxZHBLZzBQNnBvV2NSTUxvVkt4VXBH?=
 =?utf-8?B?YXZ4ZFpjYXVvWmp3S0pYVVdVWkNvNm4wdmczYVVXM09tMnliYlFHU0V5V2Fo?=
 =?utf-8?B?QVUwckxFZzRYb25XNEQyRlVELzkvdWZ4UVJ4MmZtSW1FNVZESStRR09ZZ2sw?=
 =?utf-8?B?VFNTbDU3T0RaaklVM0xoMitNVmFlVXNsMVJlTFpzVWxDa1lxUzIwZExBWUc1?=
 =?utf-8?B?UjVHTTBNaDZDc2crUDFNcTBvWUY5Um16cnZReUJWbUY2OXYyUlhFTVRSUkJj?=
 =?utf-8?B?MlI5QklWMGtZSjBQNDlYeEVza3NSRWFCV0lyMjhzQ0tsZEovcDRGZmUvTDF2?=
 =?utf-8?B?NU45eDExNVdzZVk1WnFkaTRlS1JRWTRSaTkzR0ZBZ1hqcUROTzljQjR5NjVV?=
 =?utf-8?B?Z3VTTjNVNGhqY2J0SzJJaG94WHNha2hUWXFiYmxYcERIdmpMdjl3dHY3SlJD?=
 =?utf-8?B?SkhTQXZFUVZDRVFRRjdoanlCNUh6UFpaY1R4ZDJhNHRhMUxXVDE0NTQ0VEQx?=
 =?utf-8?B?WG9HcG4xNDFyenUyamxNb1R1aEV4QWtqa1RZUGppZ2Y2U1YwWndxSkwxdHlV?=
 =?utf-8?B?TERzYjVndWM3QTZPcUcrZ2phc1Q5WWpucEdaU0dUMjFVbklYMnBZU3h4OGdE?=
 =?utf-8?B?Y252UVZ3TmpTeXpScGdwWit1c0NzNkgvamUzTmFjMDA2UzBrbUlmQjdrN1RW?=
 =?utf-8?B?bThzNzl3eUNFbkg5Uy9obmVCSjRmTzBpaGZXQkoxNDVwQncrQ2xFcFZjYUE0?=
 =?utf-8?B?NldSR2pzcldmY1NxbHMxdEtzbXhlRmt5dEswZ1RjblFHaUJjRVNyWkxIMFI2?=
 =?utf-8?B?ZkUxM3RwRE5jQ3dOMkdKNTk5MjdTdkZGUmpIVzlmR0hRRjJOL0Vtd0IxVEY5?=
 =?utf-8?B?YlI0QTdkSGhDaWcwNDZZQ21NZDJML2QvOVRDMkpjZ0M2WWNyaHo0UWlBdWN0?=
 =?utf-8?B?KzYvdDRKckl2UDhqQVhxOWphTjRPNXhyVDlPdlMzb3BlaXpYbnd5TG5wRUlJ?=
 =?utf-8?B?OFNaOGxiS05VeFMrUnh3dVprWVlSSm5keU5BQmxGandrcG5zc0ZFQU5HQTR6?=
 =?utf-8?B?bHpRQ2loR3o5VS85a1JvUkdoT2RxQjFUOGpIZGZoYWYwUHVKS1dkZEhBRlJ4?=
 =?utf-8?B?dGU1WXk2bTV1ZVNTbVFteU1XdWJrSVZBdkJXVGRFRytld1RIdU9Ta0I1U3ZP?=
 =?utf-8?B?dWtYUnp1RE9LSldWM2xCbGx4TUxRSTBwMXhoalpnZDZOeHJ0M1lNVmhJT1pE?=
 =?utf-8?B?NjU0REkrNUdzQ05ydU5ZZWdsSkdlVXVmckZPUFlVTTFLZDgyeHFTQ1VUcmF3?=
 =?utf-8?B?QTlqUithUGFLZDljU1lUaWRqMUw5a2J6MmlPU3hzM1BZb1NqMklKRU9ZYURj?=
 =?utf-8?B?QU1yN0RoeGtOTXlwRVZPZkhuSE53eXI2MzdvNWFudXhKUzBxNXhEcXJ6b3M2?=
 =?utf-8?B?ZURRMkl5cFp5d2JWaHNnM3l2Y2xVVVhBWG95cE1GYXlVeklPOHlMSHJFM2s1?=
 =?utf-8?B?dWpEY0lORlhGa1JoWEdGQVZrTVFHV1U5R2xPeEpkcHlHazJIc0srVDBHVHhB?=
 =?utf-8?B?TXdRclJiNHloYWVQdURjTnRZbEtjbjlvMFBiNytwa09qczM0OWZ2MWl6ZWJ4?=
 =?utf-8?B?UXRFVjhUUThabFZlZHNqY2FaVWE2c2RXd0xhZXBaalFia0lqTCtrSTlWVFk2?=
 =?utf-8?B?ODd4VHd4SzMzdUFPaEtqeWIrazBHc1pXOEpTS3ljUmIyR2FnK3ZiSUlncEJJ?=
 =?utf-8?B?a2hxZ2lUS2YybGRacWptR0xnNi84WVBDVFdNUUJ0VTcrcmJMalo1dVRsU2d1?=
 =?utf-8?B?Z1BrUnNNa2NlQ3l4QlowWld2ekE4RFEyajhDdVQrNURKSmdLc2dLY0hieUpG?=
 =?utf-8?B?UnJqSzhWVTFwRmFSNGtRUHZIZVJWSjRUYTJhTXVCZUtqSFRud0RwcjRxbjJa?=
 =?utf-8?B?SU9mamJLeDlXWmtZc0R3eUpPbzhuVkNxcXBrdDhzMGtnMlNrTUhEMUU4TWFC?=
 =?utf-8?Q?7FwBD7BgpBlM9JrE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 638dd2ee-f084-4d6d-03a3-08da325ae2e8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 07:58:36.3835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7vUL5QveZTfHOyJk5Fc3/zRo7jIM6rw4ArMzYB9L2zY8W8+y55gxEDHWfcpGkhqF2QiVJk44lRzIZmByhPn+VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 10.05.2022 09:28, Tvrtko Ursulin wrote:
>
> On 29/04/2022 20:56, Ashutosh Dixit wrote:
>> All kmalloc'd kobjects need a kobject_put() to free memory. For 
>> example in
>> previous code, kobj_gt_release() never gets called. The requirement of
>> kobject_put() now results in a slightly different code organization.
>>
>> v2: s/gtn/gt/ (Andi)
>>
>> Cc: Andi Shyti <andi.shyti@intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 ++++++++++--------------
>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
>>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
>>   drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
>>   5 files changed, 19 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 92394f13b42f..9aede288eb86 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -785,6 +785,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>>   {
>>       intel_wakeref_t wakeref;
>>   +    intel_gt_sysfs_unregister(gt);
>>       intel_rps_driver_unregister(&gt->rps);
>>       intel_gsc_fini(&gt->gsc);
>>   diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>> index 8ec8bc660c8c..9e4ebf53379b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>> @@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
>>     static struct intel_gt *kobj_to_gt(struct kobject *kobj)
>>   {
>> -    return container_of(kobj, struct kobj_gt, base)->gt;
>> +    return container_of(kobj, struct intel_gt, sysfs_gt);
>>   }
>>     struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>> @@ -72,9 +72,9 @@ static struct attribute *id_attrs[] = {
>>   };
>>   ATTRIBUTE_GROUPS(id);
>>   +/* A kobject needs a release() method even if it does nothing */
>>   static void kobj_gt_release(struct kobject *kobj)
>>   {
>> -    kfree(kobj);
>>   }
>>     static struct kobj_type kobj_gt_type = {
>> @@ -85,8 +85,6 @@ static struct kobj_type kobj_gt_type = {
>>     void intel_gt_sysfs_register(struct intel_gt *gt)
>>   {
>> -    struct kobj_gt *kg;
>> -
>>       /*
>>        * We need to make things right with the
>>        * ABI compatibility. The files were originally
>> @@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
>>       if (gt_is_root(gt))
>>           intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
>>   -    kg = kzalloc(sizeof(*kg), GFP_KERNEL);
>> -    if (!kg)
>> +    /* init and xfer ownership to sysfs tree */
>> +    if (kobject_init_and_add(&gt->sysfs_gt, &kobj_gt_type,
>> +                 gt->i915->sysfs_gt, "gt%d", gt->info.id))
>
> Was there closure/agreement on the matter of whether or not there is a 
> potential race between "kfree(gt)" and sysfs access (last put from 
> sysfs that is)? I've noticed Andrzej and Ashutosh were discussing it 
> but did not read all the details.
>

Not really :)
IMO docs are against this practice, Ashutosh shows examples of this 
practice in code and according to his analysis it is safe.
I gave up looking for contradictions :) Either it is OK, kobject is not 
fully shared object, docs are obsolete and needs update, either the 
patch is wrong.
Anyway finally I tend to accept this solution, I failed to prove it is 
wrong :)
Acked-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

Regards
Andrzej




