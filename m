Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF62659657C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 00:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DD010E156;
	Tue, 16 Aug 2022 22:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979AD10E156
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 22:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660688883; x=1692224883;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GyU+8v0K1ghwa8YMDP3ipJ+DKy/yFzCDICm84YlptdY=;
 b=OlUoj3fY2O5yDw6hUbmD2ufyWrWdCbWyU4IODdVn3nqj/2i9qHpaadLH
 c8GaTocWiI+OvFNjY1fz0Ozd6BHYs2zfBuQfG0W/N3/1lJfGw00yKAb+O
 c8zP3KHlNyuiawNmu1Ot8tAg0ZP/a52vSpUj40ZkiQaS/ayIY1kPz5ayl
 WkXZJVSO9QgmCOpr4DvY6vzH80hpE2VuvBNj/K+mh+qfecITrRXj/NLMb
 DtP2d2LKQ2bftHn+faFpfzQPIkGsiCtZ/EvlzHJ3Z6ngLKJ76tpO2l3ij
 BZV6OWBvg4KaUIrTavbtP8f4Q9t9bKIGKvaSCP8hIJMpSNS3utgJW5xdQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354088435"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354088435"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 15:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="636091019"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2022 15:28:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 15:28:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 15:28:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 15:28:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 15:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E5HbC0l9fnwUdLE8PUUK0qfvbslR7HTeUIYv0Bgx1UnbEVF2eG7DQhJQxiVqZDbqrwlnvEkXpW93YZC2WyNkp6iddVux7mmYhtoRPQbFpwAgFMhrIPGoRT/mQvJiaWOlayvd84BfduKweT8K3qx3IiSBs040CnYMzsGo/pbBrgh0sHCSqrqw7fXGTSSZHr5pmHetRt/eJ5i5shT8Fit5jFKtN4iYSlsu3H9R7UWVMoEKO+wzyeTnjA9RiXn7z1jFj5ZQP90e+1qsz2K4o/YsSjixYw5VEuGIUQofp+v7nO1VWam4ntKA7iIA3X/N/2mtjhChTJAPGhvvdHYyo56HNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ErxLprJ0NiCPFbWiLC4ghlajPC3XVQWTPqz8JdG4S8M=;
 b=MBjG9CvnywmZWdX/u9El1yzGVgXKf9dQBAmu3PcpzdYx+5dX+MUnp3qqM8XeD0Vvyg4REJupbXYkjHJPCRPbuNlOngJZWLgLyyyHMrNxXNvItLWTU7GMBHERChoMwGBCiDBeBntr35yTPHseLBlzQZWAzonhel8cqMcmeOfw6JjYN3bJQkYAc+vSPHk1nVAQ4LodJeQOHIiDydLaG9uNaO4yRB4uG6FzPrh6GZPhDPs6jKQ84729pLMwxK7BOlDuopC8xoK7Xp7UzFCJ28uZ6Leu34AexIhnKpJWg6Ud9jvwa8KyC1hAHq7OJ+rNWgGJzYwNtO+BQoav6JCp8IlXBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MN2PR11MB4350.namprd11.prod.outlook.com (2603:10b6:208:191::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Tue, 16 Aug
 2022 22:28:00 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Tue, 16 Aug 2022
 22:28:00 +0000
Message-ID: <76c5c3f1-15f4-6eba-5d75-1cef03276308@intel.com>
Date: Tue, 16 Aug 2022 15:27:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220816021715.1835615-1-alan.previn.teres.alexis@intel.com>
 <20220816021715.1835615-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220816021715.1835615-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::14) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b20855d8-6237-4374-ef22-08da7fd69389
X-MS-TrafficTypeDiagnostic: MN2PR11MB4350:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4FsdIGXh5TrK3YYBux+/97GiLyba/UrpH5kVfRv3zWFzLEiHYi/9I+iYyqeDenkYUUlcX6Kyg8MVkBiBKakuOh+uufOWpzzgELuueCFCINHV//8sWEUvUCWZ2GPvQ5+og9tByhWWY+yD/XDdloPQd+Md3xISVgPuKO2quODgkWpnx2MK4XlWj8yrj0AGNqqajVfxMV2aZ8DO742W64CO934XSCDs38RKsSVz1J0YbFtzb3kwZ2HdvL9IW/Ru3ps2IH0a3RY5s5SD7Xv75yjhTXeAvjF4ZGjaxgb3gFKSjiij+Gq0muBqVBicJX/lxeKKebhWx1/8vMWFxuCjrOftnR1MA5WH+8mAroqzwyiFL3T0XTtpTXlvgVtMieeQxBsL4itNwq+1ZrQWIC04YHMTVDW4X0qvEgd/K3foMkJltNBfPjMbm/miUOsrGleAzcsnkx0Athqr4uRnZ1BQTf2qMs3N7cwTnFReJ7Xs1EOJMiM8/oIgmrkt6mVahXNFxHZS87QHj4HVF6xD8rXR87HT7Jq8NpNLaSIRwI8NIEC06we2eW9NVgDGbMa9NzJMaWZMheTJzpakg8UkMqZChMZuq+wj49WMtHK8rApsji2UJr55gPCuXMfDaVWUoN9Zxa40LMI0OBIvMF4BVoXj2bZV1xqKE6ah94s0OQ7MOjWrq2c5Dwv4TWFWV5yYOwQSgCM8bBDAmU3oOqk0doOmfPzdEx6jVCdIKY39UMwC5WL5UGv15uZVMjeJLlBwLzxnrIvRDJ3RVlTaT2v26F/XNsZv9lGlPVwCfCU+vw5B8rhoLHZQ9BYitwUu9noClkX4wXBfNuD6E9LeZHySgMeXV9UUtw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(376002)(366004)(396003)(2906002)(6486002)(5660300002)(478600001)(66556008)(66476007)(66946007)(8936002)(38100700002)(82960400001)(8676002)(31686004)(86362001)(6506007)(186003)(26005)(36756003)(6512007)(53546011)(2616005)(31696002)(41300700001)(83380400001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1A1YVp1UFhtMk96dG1FUnpkbXJadFg5QWw0cmowUmYyUGM2MUFTV2RMdkFP?=
 =?utf-8?B?M0M5M0ZCNFV5eVYwYUhLY1hRKzlvQkhlenBENHNqTDQ3OCtORzRxV05WY0sw?=
 =?utf-8?B?ckFUSjVycTdQUjc0NUc5MXNWMjV2djVOR2x5OVIybjBJNkM4S01lWWg1dnFP?=
 =?utf-8?B?SDNFV2NlV0pEUk40QWpTSzRtKzhVdTFPN1ZFQWZQdUgraU0zRUdiUlpYeU53?=
 =?utf-8?B?S2kzZkg3elQyTUVGUHFzaEYrS2pHWGg0NUg1SThDVlFueWlEeVVRdFMxaWQ3?=
 =?utf-8?B?WnRBUldwN0FkQlpuRWFyTldWV3QyZytlLzc5K3grWTFxVW92Wm9iLzd5Y2RZ?=
 =?utf-8?B?bVlyczhaS3A2M2thQnU1RXRBem05M2k1a1g1Yk8wNERTYWt6cDhIeVU4Z2w0?=
 =?utf-8?B?eFpmeWRCbDFkd013VU40OXBmQW45Nkt3Zm1nZlFoTHlTZ1kwS21hRlBqSmt3?=
 =?utf-8?B?RUMyUi9UajA3dW50WVphVk15YVJDR0JTbjNldllNUXBOTkt0NVdxSG0rSm5u?=
 =?utf-8?B?Z0F2YWlIckF3NUpsZFE1bjdFZnJOd1FRblFxSklOMnY2cHorL0s5L0k0MWR0?=
 =?utf-8?B?Uk4yeTdQa2NRQ09HY012T29TRHB2RHh3ZGFrZStjTEQ2QVdUWEV5S2xNQ25z?=
 =?utf-8?B?MmIxUFYrN214MEZLUDJhbWZsbWhJTlBTb2pERFo1eC8xVzlRd1ZyRmdVeWRY?=
 =?utf-8?B?T0VDckt1T3NLa3IyTlRMNTJqbkR5ZGV6dnkxUHAzeVlYYWp6cWpsSXMvT0Ur?=
 =?utf-8?B?NWt1TEZReVRrQzVVTjBHMkExK215VFk0dnY4UlQ4aW9VL0RweE11Y0h5eU9R?=
 =?utf-8?B?ajd2Wkc4Y25NTzR4bFBncFl2NUhPbE5LRXBBSHUwSmM3VTg3TVhqd05CVGlU?=
 =?utf-8?B?T1NJVzZkanM4U2F5RUk4b0VRZzBZODR6SXBxd2VDVWpJalVqbmxIY3J0Yzkx?=
 =?utf-8?B?NkxNSGVWMmxMKzRCWkQzdTR4TG9PeFcxcEpGYm8ySXR5dk5hRGFpb2JyaHVM?=
 =?utf-8?B?NDAwTytHd3VhOWNUY1cwZWd0bXpMdXF4aTEyUGxEcmJNNmVoL2lPc0pFMzhX?=
 =?utf-8?B?SmFrMXY0UmJmN1k1R0RsUjdlQUY3aTRvTnUxZGFWMUpDb210b1p2UGJxY1NL?=
 =?utf-8?B?UWMxUkd3eTlHRUdHQTZTYVpSbkk1cFJnemhLVWFoRHFDdWpHNXM2V1Q5M3d6?=
 =?utf-8?B?ejJuajUyUHJOcVREYUpqTWlxVWQ3aWx6TitEU1hWZzh0Y1dJRjl2UzhwRkFH?=
 =?utf-8?B?TFZEamRrajQ1Y0FDK2ppdlZBcEN5NlFhb2pBcWVhcnE5MHp0WlZHVEZXNThr?=
 =?utf-8?B?V09zMngwU29lWDlHUFZBRm9LZWk1TllmZUtqWmlCTW1XQzZwYVBwNkN6VkhZ?=
 =?utf-8?B?cmpQYXY1RTZXbmVIcWdtTy9SZkFZeXUvbkkwVmd0NlJsZXVwUHFkU1l5RnFH?=
 =?utf-8?B?cm9qaGI3ditlQWpEbGZadk03akJ3Qnp5YTRxNWhXZWttSklxWkFSREVDK2JM?=
 =?utf-8?B?S3EwdzFTR2xYZzBNMG1iU3hmUmIxU3RNL2J4TmxhQXNWRjZFVngrM1pvS2k0?=
 =?utf-8?B?OE9hNlNKNnhKT3dnQTVEOEZnQlNKWjlQNjBYQ0RYS3RvaHMyR0wxSE41Zk5R?=
 =?utf-8?B?S2V3RDM2RFJYTHRzcXEzL0sxZ1JhNVNORHlWK0Q3c3RNR3cxM2pNRWJFRm1U?=
 =?utf-8?B?WEUzTDlTcUhXRTFUYUhUaUVuME5sdEZqUUlPL3lYZWluWHB2OVdUWTNrcTlH?=
 =?utf-8?B?MXJQVFY1aXV6bk9sK0hSdHlpM1NqTzBMZXZ4c0I3T2NaK0J4OEZCeHE3TGN0?=
 =?utf-8?B?cndHTGNvN3ZlNG9PenJiTDdqdVFhQm9TM2NvbVNINlRlanZlTUNVaDdjQko1?=
 =?utf-8?B?OTY2c3N6VFhrcktTNmNCQlhyU3B6UVFiUS9ZbHdFVXhRZ1NJWGhtN2dsVHdR?=
 =?utf-8?B?WW56S1lvd3liMXp5REw2TzE0WjdGQ3lRYTBsTjJaVTdQcFAvOS9DMnVxQ1pL?=
 =?utf-8?B?c3hqUVB5OE02NDh0UVc3NTh4L205V0R5MjFCYkpESmdrTjc2Z1RoZG9hdm52?=
 =?utf-8?B?QllYWFE0M2xrbVVpZ0RtRWJ6VmpFSjN4ajJGWSt6dC9OVzZac1JDM1JlalBZ?=
 =?utf-8?B?L1hLVVYrcFlFNk1jUEJBKzJJQkM2VW5UajNvL25Bd3Z3S0xCRlBlMUp2enI2?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b20855d8-6237-4374-ef22-08da7fd69389
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 22:28:00.2459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OizuR8TldP1gdCUFgZ2N3gIRbxKE+swjYEWg/0QzKBAvN2aBkpbSuAR/kSABPEg3Gx1Hv3vGYg+PD7wVsadeQu+9sBKElm/lgrMUFFq6qR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Use correct selfest
 calls for live tests
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

On 8/15/2022 19:17, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> This will help in an upcoming patch where the live selftest wrappers
> are extended to do more.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c    | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c      | 2 +-
>   drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c    | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c           | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_perf.c              | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_request.c           | 2 +-
>   drivers/gpu/drm/i915/selftests/i915_vma.c               | 2 +-
>   8 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> index 13b088cc787e..a666d7e610f5 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_coherency.c
> @@ -434,5 +434,5 @@ int i915_gem_coherency_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_gem_coherency),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> index 62c61af77a42..51ed824b020c 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> @@ -476,5 +476,5 @@ int i915_gem_dmabuf_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_dmabuf_import_same_driver_lmem_smem),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 3ced9948a331..3cff08f04f6c 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1844,5 +1844,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_mmap_gpu),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> index fe0a890775e2..bdf5bb40ccf1 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
> @@ -95,5 +95,5 @@ int i915_gem_object_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_gem_huge),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index ab9f17fc85bc..fb5e61963479 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -2324,5 +2324,5 @@ int i915_gem_gtt_live_selftests(struct drm_i915_private *i915)
>   
>   	GEM_BUG_ON(offset_in_page(to_gt(i915)->ggtt->vm.total));
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 88db2e3d81d0..429c6d73b159 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -431,7 +431,7 @@ int i915_perf_live_selftests(struct drm_i915_private *i915)
>   	if (err)
>   		return err;
>   
> -	err = i915_subtests(tests, i915);
> +	err = i915_live_subtests(tests, i915);
>   
>   	destroy_empty_config(&i915->perf);
>   
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index ec05f578a698..818a4909c1f3 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -1821,7 +1821,7 @@ int i915_request_live_selftests(struct drm_i915_private *i915)
>   	if (intel_gt_is_wedged(to_gt(i915)))
>   		return 0;
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }
>   
>   static int switch_to_kernel_sync(struct intel_context *ce, int err)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 6921ba128015..e3821398a5b0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -1103,5 +1103,5 @@ int i915_vma_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(igt_vma_remapped_gtt),
>   	};
>   
> -	return i915_subtests(tests, i915);
> +	return i915_live_subtests(tests, i915);
>   }

