Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C3456BB83
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0E110E20F;
	Fri,  8 Jul 2022 14:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3636010E20F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657289658; x=1688825658;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2YzE3N7fuJ5g62EAuepgsKQBAbzu2eF2jwBBTH6BP2I=;
 b=OoK1+yEggdellxa7aN7WoK/ByfpUTXAGe/PmTDoVmhm4JfjdXbb46xx9
 K3M+JCqca/1J1ks4tVT+6iC/ahfkEpvxX3/I9ollFMUIYgfsC6alSgreC
 Arq2PJy1SnRUDJm4Lo6j8Dgyr9I/X3eGmNGC/pOfkKIulQ7jN7dGBETFq
 6FuiLV+YqKnkwcezM8GOpYpr7ByK8vefJBKYOV/uf2DkFt8qZKcyiyzZk
 Cz4xs+aFZKxjkpw0qveEHOySJqj+HoV2pehOz4xbM2Ozl4uNEzWgZkh1T
 zQDcVno5dglwPq+5tNSRckerVCfVdCoyooyh0/ewne7zXHpUQfsTBvSxn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264701899"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="264701899"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="840316106"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 08 Jul 2022 07:14:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:14:17 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:14:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:14:14 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:14:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMuxYsh+NBRTbw5RnMRQIg9H6M4ex/kSzMOlT05DgE5h4icnqD3B1pNQo/r7CiRv1uBd2ZK35VB1sj4Nf/8PZ1MCV+hdQaqZUuvfAAOt6LRXfGTvF7LwzrXU2k4QKW1pgTtDG3kqkpb/I8jF+ZECIJEZUDBPvAc/kb+/pgvGXeoyfwvAlJ6hn+yAou6oOJ8bQHOqcCGavT1zGU4ru1JAWv74pdLQH+C/sJYBjNyh2PrFQmJgCX+2dTjWhFMtS4Zlud6TCLNpx5PeNjbVUw6i/ImLZqHVIJ1EeQvs9sifdz0XFAt6hlljhw2/fp/IZBwhoZzsQ/reLrMofA9SAz5dBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6utacncA6YcfOjHiy6aTHW7/C3VoPNnuoeWabsFRdo=;
 b=GF9YwXhzCLf1zULppKDt0QBw9uA0Gn+MmD21VNBcEzHX2cK0XtuFUHybZdaq0X9BNVabnB0oz9cqducjP+usuw1pHQDd0kIugkpv91AeER3EEvEBu/hsyUJiOOyoh4jji2vsia06wMKIY85uI2loEAASAwJ2Dt90TM6r/KdkRVvZzK7xNBAHnZhaWyXAWUqOjGQO97pNymOWNrlwjQNxpciI5VStoVtieNISIczAf9YpkGUYgVb0pBX7CNF4Xr57d6qIfzZEPt9Bk1sIP12y1M76x5DmxhqYwWS9rrnxEN3uIL2Glr5QZYNiVCQeKgFal6DYKUP9YVCGEMk47TjVNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by BL0PR11MB3186.namprd11.prod.outlook.com (2603:10b6:208:65::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Fri, 8 Jul
 2022 14:14:13 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d5e6:605:6707:1e17]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d5e6:605:6707:1e17%7]) with mapi id 15.20.5395.022; Fri, 8 Jul 2022
 14:14:12 +0000
Message-ID: <d447872f-38b7-ab32-1157-a9e78c6518a1@intel.com>
Date: Fri, 8 Jul 2022 16:14:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
 <YsceoP5CYySLWjJk@intel.com> <YsdVJTU+kZzZS1wb@alfio.lan>
 <d2601b7a-247f-4638-1068-92fa8f35ef58@intel.com> <YsgXIE6Vg+7BuFKS@alfio.lan>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YsgXIE6Vg+7BuFKS@alfio.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0087.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::9) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5413ec4f-b236-4429-9b71-08da60ec21f0
X-MS-TrafficTypeDiagnostic: BL0PR11MB3186:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8XjZMfQsEHFIuUb8Y2dpDx1a232BHj5Gh4Q9Zo9Q4PD6zycEuWhH868efW0y1c4lhjDwsXxLUXzCM6K5q75fMo8tk+LnL/cC3IAdOsqf8GyeRoBvvVVONr2pBaFlgPkkQasH7j7J+6gxvDvdWqzJPAqJkFD2fKT+mN1mqOuUZ4wDnbjbVqslA5wevXsBjsprnVTJqfOS2Pt8iWLwq9zWMWoNZmk5mbg/tIcxaafHr0U1LjmH0J7lewpHyDFAEvcvV6KCU0+d3EIKhyuuOTEOZshYRTS8VWwvR2pns3Spk7pE4FCzCWN8ssp6sbUo0IMO8ERhntLn2Wmv9DyUvYSwZ48uIHwasr+QYgEK5jovQ1FK3z3Md4/m2bZ5xJ9hgRi5ALs1KzIB3u7a8JHFLDgEtGz/ZGDI+wZwyXJcmyUthTtCdBCI1fOMbDlv+1x/zJnufRLVurqIfYz1S/JErew7LtTLqQjliwZET1xr4PPUdhtA4j7RNpLAF5KB/cJw6SYa9i662poKKILIAf3PKueLH4bjnbVsS9bZhmOK8yDeDM1T8Bez39eVppIhU2Ooij+hkDax8NkHVI7EIqsSgX8azF5IOQi712HoSQdo0oTJ94QLv4ICw6O3eqOIWc0c8LOxxd/CN07KTJygQnoCYg4CJDyZrfPDa4CHmSGMwd2SD5relrRMbxOidhzZNhYSi1jZkX5AUIgYgvigBFq+TND3ciAmamrJr+lEmilODc9oYmm4S3AShFPWmMNZ7smF2tXhaKjH96y7GfdU/lavkFQacyR3MYBVueuahgkSRQKkqIcUeYv1IC3mllnfAW5bKXZQwuHwvxxlmADZcWnR21d/XQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(366004)(39860400002)(136003)(346002)(82960400001)(316002)(6916009)(2906002)(186003)(38100700002)(83380400001)(31686004)(2616005)(36756003)(8676002)(53546011)(5660300002)(6486002)(36916002)(66946007)(66556008)(86362001)(478600001)(66476007)(44832011)(4326008)(54906003)(41300700001)(31696002)(26005)(6512007)(6506007)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dGlOMElvVTUzUDFDVElCaEtERU1LV2VLcEZwSEJqS2U1RTdkb1JneTgwazN5?=
 =?utf-8?B?NnR1eXEzMkpUcW1JME1DMVkxR0ZyeHNQNXFtOHRPS1hiVUJvWTd1R0tCUzRP?=
 =?utf-8?B?MjkxYlVoRzMrSHIxTWc5RVVhRjkxNXlLY1FCMGlBbjhhVEk4Y2VQZk5KQW9l?=
 =?utf-8?B?ZW1VZDdmRFp3Y2UySU9CMWE4ZERiaXhhV3NKVDE3T2U5cXVSZnJnWmhJdWh3?=
 =?utf-8?B?SUlUbVA3dDFFeDBpNThuYUxqSitCdzNrejFmcElRTUVCcjZ4eldzdmVBejJK?=
 =?utf-8?B?ZlJmQmQzb3htMU10Sk9Zb1FmV3F3bjNxaVVXOEFXUVZWcXlUZ3djRVd2Nmp5?=
 =?utf-8?B?N0owUHhhRHoyU1pTYUZ1elFuU0dyUS9jcldhOUwwRFZuOHRiOFI4Sm4rZjAy?=
 =?utf-8?B?NEY3dXVTY3RWS1hxRGZ5M01yTStaamtJcHNZRGhicjlGdzRhUFI5ZEhmWHZU?=
 =?utf-8?B?cDUrY1o3eDFTSHU3S1Y3T2g3cFEvU20zQ2dFOUNEQStVcWNidWoyM3M2ZUNH?=
 =?utf-8?B?dElIOWhDWkhJYzlJNEF1bU5TNzBYZkpiMmxQMGt4RVpOUlJ3ZENrSWpQVnpj?=
 =?utf-8?B?SkxiejV4UEFYb21XN0JVakNZemMvWWxlWU5wbHFmSWU1dUttMGw5WGhrd1pE?=
 =?utf-8?B?c2xpM05udzdyenJZVWxGdFRpL1lPN2wzQXN3L2NicWo5R281MDB5UmgxSGF6?=
 =?utf-8?B?MVN0RExKSEd5WmhDV09ocTMwbEszV1ZuampsQ0dlaFkrS3dHYVI2Q250cWpu?=
 =?utf-8?B?Z0VzMTFpdVcrZGZJdVQ5NXpwclEwRU5TVWxrVVpxcnM5cm5ZdmJwZlFUS21W?=
 =?utf-8?B?TTNlUUxBMWtaWTlMT2Z4a2thRytMMFJPa055Qzc0cWYwajlYZ2Q5eVVPOEli?=
 =?utf-8?B?Kzl0RDBROWZWTHRlZ1psUWs3SzM4RkhmYndyd2hMNmxXbDNqVWhkT0R6VmQz?=
 =?utf-8?B?RnJXYXpkaFNpQWJUYndpR0JEb0ZENnZHT09ETmxZNXRVWmwrT0FDQklMNEdK?=
 =?utf-8?B?aUFRZGNKSncwTEdjQlV0aGc3NmlYQzcvQSs0a1VNUWJQdm5BZnk4MEpRVFF4?=
 =?utf-8?B?bkdFbnVaYTYvcEcvNy9tYTJRRy9ON1VZZW80YlpWS3hQRkUvOEdCK2laYVI5?=
 =?utf-8?B?dmhXRFkwTlcraFFzUlhQUmdiS2JMSDluZ0JLT0Q4OWlOdEZCOE1VcHp1WjN0?=
 =?utf-8?B?L2Y5UWhRR2taaXZqY0Q4eHZweldVRDhWU05hYjVOREJxVjlUMXM4VnB6cEli?=
 =?utf-8?B?UmZpeVdNUWlXaEg4d0Qra2U1ei9xWktUQnNjYUxEanlLQURMZkpYcUZ6ZHZJ?=
 =?utf-8?B?NXRJZ28vejRuQklxR0ljSnlCVDRCWmdwK3QvRE01K3NXMEtZdEtOTkRNb2VW?=
 =?utf-8?B?bzRGWVRzOVIvRGJVNVIxUk1aU3BKMVdaR04zblRKN2JQUGJQZDhNTWUzaWFM?=
 =?utf-8?B?dnZ3MVpVdnEwdzRQZ01RTlpxTXZ0eGVXazVGaVU0MG5JNFdUNitSYWpqQmJL?=
 =?utf-8?B?czcxWi9DbVBXNU9RKzZQVjhWdzhvVkh2TDFzYVhLV0ZLaG9DTnZRNlBHQzBU?=
 =?utf-8?B?S0FMYS92VDhnMXpFb2RQZU1qZzhyWlpNdlUyVVpQdGxYN1dhamJoWUhwQkcv?=
 =?utf-8?B?Wm9GbmUyMnZCWlB1bnh4T3BuRTJ6T0prN3hpb3ZDaExjbkpYbmNodjFZTEM5?=
 =?utf-8?B?d2wvNmcvTG9tVXZidjNWdHQ2dGNLVE9NSmZXZ1NTRDVnZGFWMVpGMlhIY2dn?=
 =?utf-8?B?TXlEN2pvc09icUtIQlhEMGs5NUhWdDhHcHBma0Y5bi9vMVE3b3drSEN0UVl2?=
 =?utf-8?B?RlUrTG5VTFlVNkZYOGZ6bkk4eG4vWm9vV3lwSDZBNzlvM1V1a2pDWk9yUXF2?=
 =?utf-8?B?dEpKMFJrdWxESzMxQ21TbzNrelRDZHoveXRNZXRlQnduR20wTkwzVThtaVkz?=
 =?utf-8?B?U3BXS3VRVFFtK2svcXR2TnRMS2JrTDlxRXpYa1NUTGF6RCtxM3NpME8xeWhT?=
 =?utf-8?B?cFRYS2htRXF4NHBJQ3BPWjhIVCtFcnRsbG1QakZySGRvRGhzOFFMUlZMWGlE?=
 =?utf-8?B?aUdWR1RzbTRXNWZES0xiRDczbG5OWG5qN0RqUGN4aVR1VklTcGswZW9hUWdX?=
 =?utf-8?B?ZkJwS0lBaWxIVUVqaGNySXRvL0FrV1lNak5wUFBsSjdvUHdvaUZIZmkyZ2pi?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5413ec4f-b236-4429-9b71-08da60ec21f0
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:14:12.7123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4wKQiWkY8JLPb9WKAKk33uHntVP35caDfJn9ivFDzboJVVB5Q39apogaVrhYnr4fCX0DHixqWVcnT019PtQ9xylMW9TrO9mHuQlQ8/fXVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, chris.p.wilson@intel.com,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi,

On 08.07.2022 13:38, Andi Shyti wrote:
> Hi Karolina,
> 
> [...]
> 
>>>>> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>>>>> +		if (dma_fence_is_i915(fence) &&
>>>>> +		    !i915_request_started(to_request(fence)))
>>>>> +			intel_rps_boost(to_request(fence));
>>>>> +	}
>>>
>>> you can remove the brackets here.
>>>
>>> Andi
>>
>> Would you like me to send v2 for it?
> 
> if the committer takes care of removing it, then no need,
> otherwise, please yes, resend it. Even if it's a stupid nitpick,
> if it gets applied it would be very difficult to get it fixed[*].
> 
> Didn't checkpatch.pl complain about it?

Right, thanks for explaining this. checkpatch.pl only complained about 
unwrapped References tag (a false positive), but I can delete the braces 
and resend the patchset.

> If you are going to resend it, you can add my:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> also here.

OK, will so do, thanks


All the best,
Karolina

> Thanks,
> Andi
> 
> [*] Because just minor coding style patches are generally
> rejected, the only way for fixing style issues would be if:
> 
>   1. someone is working in that part of the code
>   2. someone will sneak in the code fix in some unrelated patch
>      screwing up git blame
>   3. someone will send a big series on this file and have some
>      trivial coding style patches in it.
> 
> Amongst the three above, number '2' is the one I dislike the
> most, but unfortunately that's also the most used.
