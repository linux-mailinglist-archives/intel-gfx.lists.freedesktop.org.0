Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FF45846A0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 21:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFBE10FDD2;
	Thu, 28 Jul 2022 19:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5502110F8DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 19:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659037532; x=1690573532;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HtGK1Ax0q84fuy/JRQr4NRQYGvFMR6FVYTGYOiwNAQA=;
 b=nJfE+ovrE+eXKJOT1DXI9hpaSxG9idqJzKIY1q6nl6mO0UONcz3jfJ5V
 +5fLY83RHDCaht77r5jTST4InP9fU60noD2x5VGeEHOa1+gsZn5/MFURA
 IhFVMh54rCSBNFux/IiZqZCWa9DyenAppqk8vUSNZkWl318IkX7zHLi0p
 4unqEOpYCEX/2cGc0ElKOcebTGK/LMcCbyqegQWx9IDxTpV6czBefZwaW
 mIYnzmlCyHQyvoaPLRAfkiVNQDOx0p4/jfYrKuJpfEXj7AwybmznUNrpG
 X64q3+o+Ep2ob7ZvFVMbQrn2CuaXCSqNlRU91b0XCnn+QKLg/ZLooeHEW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289372330"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="289372330"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 12:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="659886886"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jul 2022 12:45:31 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 12:45:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 12:45:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 12:45:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7toeKiPdltyEHtbzRy8ZkXDlLGM3Hi2HsnLQlDd1eo9LPPhXyQPgSgMhPJrPTjF1W23vFyXsMBXyWEsRi6PHaxNl2/hRGMqRUilM+qOxUXgC/RpVyzovb1qWeBjZVQz3eB25LQEylRr8morBprCcd/UW7VRvO1IVafKDHCdrfif/9/ITXWTZxi5i2P99wboZ4qlqC390jnnjQROu9OVHbKBSnE/FxLlHhyyada5FnezGCxIRqkn5O+0cRuBHP8emGrYWkn5pQQPdpHox37qe+lpKt+NGT+yqlVUGa4R46g9OU3S2/K9gzfztPmjt+zvBGHr/HbpN6atmVd0F/1kWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=65AKBQuESat5vOcbBc+9CcBWHUOl4vV0WvGHYWKT/5Q=;
 b=S6X64pUOWhoLll46e8wuxxsIDsaGImbTIXz3MBMp99cpnhZXecUgQQflafnsxiky0qyQKIYfEnvn/F4d/RfW2vqPiBmmcSQYiXkaGfALD/hF2I1bhZx75E/WhwsPg01H5ZEOIl4DNLLdCnsSipp2Za++lcg9tNYsTtN5JNGfredZVSBm4P7vWOsp+DgFAYu4PiN4l43lnPL/0hT/FkT2cTr3u/IjB5EWIGeG5hp8pXbgPbLKiKRzN7qGAJnMjA73N+oAWp9e50i7UqYYiL0DrrTY7NIC0U78WdDE5sBhpK3Pj8GkFMkNp9wKDo4v49QmAx8ciUhtiLFh0tL10XNGEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY4PR11MB1720.namprd11.prod.outlook.com (2603:10b6:903:2f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 19:45:22 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5458.024; Thu, 28 Jul 2022
 19:45:19 +0000
Message-ID: <fe466ae3-5848-0142-205d-fe86a4c20155@intel.com>
Date: Thu, 28 Jul 2022 12:45:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220628055130.1117146-1-alan.previn.teres.alexis@intel.com>
 <20220628055130.1117146-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220628055130.1117146-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0034.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::47) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9846b9f9-8125-472d-e10c-08da70d1b383
X-MS-TrafficTypeDiagnostic: CY4PR11MB1720:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uOKT2vD8JaM1Z5IbfoaetramNMayMYOdpaCCX5Q/D4km3nmTtmm+CKZbTdDnXmZiVRI9CFE7kOROqwldvMwiQrf4U1ucy9mDNFi3vvUztwB/MMKNK4jPfjcn9EoV7W4+mbsmhubJwnRkICOZldBUxiikNDbGg7HJhkzbqfDTDA9ib24GYcUYMBo1KvWjSqqoPG72UyjTctGrCq1Tv/UELN0PyM48er2AFND1q0SqOdd9msPUzBD/nYF5vWQwV+wwn2kaxTudTfdEqSdR/UcFIykkf9k2/9OQW8d9MCDP7vL73/rLM/q/oo6tOMfPAPbNEJ2O9tgZW6avhkl0iuiU5z/C467XUu+2vBmZR5pf6y//RArJR/8BtKl09pYGAywW7DpRXaxsCG02NYRYmKVDtI8AD0KEsislXf9cRoXObdT9Y/xJ3ISrW4CwX6reYsHhBa1mYuO2FqSLyMFDXsi24u2Dmr6V3WWAHgT9a8Jhn37YONtrqLPef1u9egIVuzGJS3RaKWkyb3/bPDvG6FObk58lRspJsM/yy/gwVQSWk69fVgnpf4dw8RlFU9TRpxRBX/uDoFxjzyGcRa/nH+gmNpWxADoD2FAV/H1FKjP3ROLyxgeTyBrj0C6VYDOdm1rBjtHAqso1i7QHXSUUAMrkPGznKhyw0sMWyYSrtO8SVzzrxSgobg4YnQVFZZ4S1VkE7l88g/VW4MnAn9S4VXERp16n4sXCtwLrnXg+zou81uJwEGmynoSnLVeKavpyqw29J7OPi4UW/slcVaE88uwHzQopqv5+CbK1k2uMFR+4/z0kTVRE84MfscbAny3FhyaqkSSMvJfb/kwjAtk0jsLUng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(366004)(39860400002)(396003)(8676002)(86362001)(82960400001)(66476007)(66556008)(186003)(316002)(26005)(31696002)(6486002)(5660300002)(53546011)(66946007)(6512007)(478600001)(2906002)(6666004)(8936002)(83380400001)(36756003)(38100700002)(41300700001)(31686004)(6506007)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmNFR0ZwVkVSRDFOL3FtNmUwei9ocDRFS3ZJK0pzOHVUdzc2YUpQZklkZmd3?=
 =?utf-8?B?K2Znci9sT3VCa3YrT2JuZm05OFhDTi9ZRkVvYUFVUlMwQis1TWdsTWxOMHI1?=
 =?utf-8?B?d3FGMTZJQ0N3d3pFQmx2UGxMMEdPWG01VTlXS3R2ckRsb3Q3emdCVVRkTHpx?=
 =?utf-8?B?WndLZjRxWnl5T0k3UktsNDN5TlA1UmJHZlIzcWNWeTRrb21tbHd1MmJVRmZI?=
 =?utf-8?B?R0JPVjVQYk1zKzFRRlBGaEFUT3QrcjIrRXNaSnJvaktJbGpWRDh5VjNzMTJo?=
 =?utf-8?B?TUNNb3owTDVWYzdRRUFaaGJTa3hLdms5bGsxeDA2ZFA0Y2o1ZFFNSW5IVWhL?=
 =?utf-8?B?dVFWSXVnMEFmbVhjdklQZjNaZllBNFU4RWdOaXQ2b2FYRWlkOWRDaDJoc2Rw?=
 =?utf-8?B?MzhWeUVVUnJBanJjVnBTZGJ2bXIzdFlaakVqd2N0STh0OUZib0JFcmMxemQy?=
 =?utf-8?B?MTU4T1h4VHg5M0o5dEZZazlvaERjUzlxM0gyd0ZXcHFiY3UvRlE1aXNHS041?=
 =?utf-8?B?L2NGUlpiMGYzTk9KVSttOFBUOUtKZ1hNWU5CS2lDR0g5eTZBR1hKUjdnSUNP?=
 =?utf-8?B?eWtsWkZvV3ZXZmZkSWtaME1GWUZiK2JqSGxoeXdPZmljNmJ6Z3k5U3R6TEha?=
 =?utf-8?B?UnNJSGNrNHM2NzViSzlyVThPVzl3aWtZa2pQcDl1dlMrdVJ0SGl4UUxEMG4z?=
 =?utf-8?B?azZUa1QyMmFnMUZ0WmpEa3Q3TGJ3SzZlZUVYKzI0MnFmeFBmOHpWcnNIVGJx?=
 =?utf-8?B?eWxsdHo4bWVyY0pZRUluRjBKaVUwM1dYM2d1RTZOMVpGYnNJVUtqM1h0VURt?=
 =?utf-8?B?R1FwdjI3dGdhcjJkQVd1R3JZRjRnTkMvTS9jMzl2eU5DajZra3FGRlVWOW9W?=
 =?utf-8?B?aWRGUU9tLzRYbCtQQkl3QXVQWGxBNXU1SFhqd3g5UlMzbTQzbGlDcUVpbTV2?=
 =?utf-8?B?THZ5K3hDZlBiaE11QlJDWm55cEJqRnUvK2JJWEZsOTkyWXZwZmwzSm9nR2FL?=
 =?utf-8?B?bjE1Z1BkU3VCNWhnanpBeFNsS0d6UmdPQWhoSXhzaEpvRzA2blRSeUk3UHJW?=
 =?utf-8?B?c1pseDErS0Q1Wmx3RVZpTmo1V29TK0EvZzJ2b3BLK1M5bWk3K3ZOYXdSWW1D?=
 =?utf-8?B?MHFLTUE3NUdzb0tWSHFhZVFDUC9tZHhzc2hlZDN3dG1tVGpKWDVCK0ZaQnNr?=
 =?utf-8?B?MDRQTUZIV0xpQWFScjhzQUhyQ1hTRU1kQWRjMEh3Uks5c2ljWE5QMWNZb20w?=
 =?utf-8?B?ck5pV2RqZi9XUTBlZENvUWJsOGtkL21PS3Z6ck1SbjZ0VTRTMUIyWUxzZENu?=
 =?utf-8?B?b0I3TFRUeXByLzFMVDBld3hzZC9iVitUTkJFcnh4L052VVluZkZ4T3ViOXEx?=
 =?utf-8?B?UThPblNoRTgrdUhqYmNyUmxYN1dJZVZ1bTJsMFhNa3ZEQ2FTZi9XRzBzeHRP?=
 =?utf-8?B?NTJqeEV2M09aek5vYkk2ZzllT1dCVkFtZTh3U1RTNTZhRVBSVnlic3RFQkdQ?=
 =?utf-8?B?STl1OHNHUEM5Y0xodHlXSFEzbXRBK3ZmaHlNYXZuVzU1OEdxeEZYUjlDUWJ0?=
 =?utf-8?B?UDhaalFVVlM3NjhzQUErZnY1bHcrazM4Zm0rZnlaUjViaVFBQXJPTzFkbVBr?=
 =?utf-8?B?V1RvMkpNdDhYeHZ3ZlpOWWU2THFUaE1RSWJ3K1hVUk5LejhBdjZoYVJIc3BP?=
 =?utf-8?B?MG5LRzNSU1cwWTZEUGtPWWxNZGptMnZQcWxnZC9XNXBsaHpmcW9WQ3FadHZT?=
 =?utf-8?B?ZU5GbTZ1Qys0ZndxRHhBMEpQVndSb04zcW5CTEFOYjl1QUVQdVVlcWlHbEVY?=
 =?utf-8?B?c255b0tUdVRac0IxU2VLeFJPcCt3c1Q0UG1sbm9ia3R5R3c4a1duY1Vud1Az?=
 =?utf-8?B?ZGhsZmV5NHN6Y3FoK1VBSnFnQUpCYlVrVkxRSDIxNkk3bG9iQzdOTW0wYzNt?=
 =?utf-8?B?bEk5N2ZPL3IyV0hiSWJmaVdyWWRFekttQ0QwZERHNVdFVGVYVVgwT0xmT3FD?=
 =?utf-8?B?VUVZcGk2WlI1VnVCenRUaXpXOEFYSnByZDZSaTN2bDZmRkVBSTI2a1UzMm51?=
 =?utf-8?B?RU9LWE5HZmxzaFNYNE01aWxlMXBnQTAvbmZUWHhwV2llSU9rWWtyckxjRDVt?=
 =?utf-8?B?V3ZxNHBhNnAxeW1mdVBDSEFvOGZST3ZHQnNub2htdjJpQitCTEtXdmN4cjI1?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9846b9f9-8125-472d-e10c-08da70d1b383
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 19:45:18.9992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p1eYFXAd2LVSMZD1RukUppF2cOZ1OiNzhHD0nBWiPyiW0F6Y1LfHbXU5tppWfAYbpHUqFA0Iphvinu2SrVb/c2DaBIVHQZPlv6I1X5ONGuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1720
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/2] drm/i915/selftests: Use correct
 selfest calls for live tests
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

On 6/27/2022 22:51, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> This will help in an upcoming patch where the live selftest wrappers
> are extended to do more.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Alan, you need to add your s-o-b as you are posting the patch and 
thereby assuming at least some level of ownership.

With that added...
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
> index 5bc93a1ce3e3..f705e2b5c082 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1761,5 +1761,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
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
> index 8633bec18fa7..5813dbe929de 100644
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
> index c56a0c2cd2f7..b0d2fe119561 100644
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

