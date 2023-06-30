Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 658707442A5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 21:16:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F068310E189;
	Fri, 30 Jun 2023 19:16:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9235610E189;
 Fri, 30 Jun 2023 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688152582; x=1719688582;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=paYkzaHz9uhJnQDIKHTLns6rRu9Kk6NXglO4WHdgTjs=;
 b=a3BFWnu0x4qyG4UJ2QO6aYpj2YI0X8MCcjsp4DNUgZO6vFbS27BIMeAf
 RvXj7D+0PSJ2t2/WvZxWumkzDD7gmORcyDf6UfUI82Mw9wl1wISTEWwMK
 6HIKIHGfXIJgHmrEvALnxqNHWDxsgrI6RR2rleXZmx+iLojr4zNuGEKMN
 nTvIBKRiIhlCpbui1OvxUJdQU9aqAxgUOo9D9NurIaPP1lZyv9UJiCeAD
 ZZGxXYoIOanU5LHhiXHSPqi20iZ5zkw2vD0FiZSJb4PhhP66ytPoc/T1n
 5oLh6gKULYcHIsIQHQzGRE3IVjbk6Sz7nQQahEEGnFdQeHo36mZCK3i6L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="359948883"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="359948883"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 12:16:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="964499470"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="964499470"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2023 12:16:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 30 Jun 2023 12:16:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 30 Jun 2023 12:16:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 30 Jun 2023 12:16:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+LNWSyQjx/5Rao8BdvsSOuAlPAGDWKIyaKkoBlEfrKD1vmlFMyoOf4c2neUaYp+vcqKRIN/9gDiIleywSwH+kN/EnWv33iPWBkLLnFzgCD4uJfdwPjyHkf79RIxoH2H1kErv6Nv1chpEkZNWhaRnO7nv/W2vuuqHUkzhfdyE2smSlsyu8RhjnQoaAyZFO7u5E5SvVryzW/zLCEypot7c/ZrmfcV/bpmthSEaNW5PNk1rBZ6gvwUgzRKuvFcC7xJZ2Cn6pWtkCWWwqMsvcYLnf5WqM4FsqAPvDDJ3BD04H0xEdw+gErFTBn28Xc7I1WXG1X12o/N7lVgsmEjLFSpHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pgE766uYthLpuhKt5ZdT0hQMgmiz9l7zUOMf9CXO85o=;
 b=KgyMNcM9u3aZ0CK5AW44R2wDJ+v1BmyiMvNIDuqnHfptA2l/p0aT48wPVaasKu1oDnZDgcdQ3d3fs292HTMN762NR++vXexyNiqad+LiTQzjdZndpvj/LJyyuBqRDia7QpCn0SMkXN5kj6OVbXwPm+jXLPbh/pworSiUIl6xxrfqMGHw4ZqlfadY26KjsKkbUUJg/jSegRc/c7FZXaoYIMpFJQC7RP2tJ6ld+ClTSJspKE2bOfU7PifpCEAYfdjYjbNI764FcHMwNrbDohfl0k/JiR1If3AF+gdVllZE7B6sxfaVS9Cu37rGqSZnT7zjct3z5HMU9zUwe/pAbrzF6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SA1PR11MB6664.namprd11.prod.outlook.com (2603:10b6:806:258::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Fri, 30 Jun
 2023 19:16:16 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::5ec8:e1d9:fbae:5b2a%5]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 19:16:16 +0000
Message-ID: <c0058e4f-faf4-fefd-408d-1837375f65af@intel.com>
Date: Fri, 30 Jun 2023 12:16:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, <Intel-gfx@lists.freedesktop.org>
References: <20230523105139.626772-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20230523105139.626772-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0113.namprd05.prod.outlook.com
 (2603:10b6:a03:334::28) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SA1PR11MB6664:EE_
X-MS-Office365-Filtering-Correlation-Id: d7ada35d-5ade-47f1-8bd8-08db799e7a1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PLfhDAvjfOF6vaXaOw3dyFfQMaXw7oey7vRawX1Je7QD2/RrYGHtiiImGFzubZPYhl9hor9eE0Mr4Sc7i7yIWJOGV+JN4xhcAlXiaO68YPqF7oUTexkZU55aEIciYoRsRlsPJj9Afdkv+1M3f6t+XhGpW44mnaJlH7gEJd+figWfjY6bXldmFXnYVDUZIWfbN0rSkR5pB3IRPp96VzjgE2FiCh0fnBJzdYU0H1j8m7ZpZLgtlt8xmLbL6DDfZ1QyZWJGJKX/GLBLMmCtvGEPiBhKL4p4Wf9SUHRYHDwHze58ZZcUolVLS2eSOzRKr6T38j35/VY5VS0ZTQqLeHUfDn3B628DA7hm7OI+uJDnWsd0MkaaSARFkhUinzeQiT9bAYlZlyJPkIXMJxHDOghucPTXn0l5pwwnxZ5PLdbiIVToHAk8q6xDdgku1wZ8PfvHITT/oM+U3deif9VZh0iDWIa1cKEa+pMoi++adiS9T92mwME8aeUvumEvONtJ3o04tYlpWDapDvuk0VoK6uvOm1jwedqPn/YjXEwkTsUYNoNWIVEUKUzOcRKagprzWMawd6onlOTkW4r+cMNmddJ95zFS5vCk1Qiko+b9B5+EeLIB43wQ5G7LlwaJh1vBCfTT4d51jGjooI1j59ES99qJAw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(376002)(366004)(451199021)(83380400001)(54906003)(6666004)(478600001)(6486002)(66946007)(2906002)(186003)(26005)(66476007)(6512007)(53546011)(6506007)(66556008)(41300700001)(38100700002)(5660300002)(8676002)(316002)(36756003)(8936002)(4326008)(86362001)(31696002)(2616005)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGtUTS9ZYTdJYnIyZkhhWkZuZnVMdnR0ZDRwVDFnenZBSnFBRk5BOGZIdVd4?=
 =?utf-8?B?VjFoV3pudnpFMXV5eUI1eE1YTGFqSG5GZzlNZGMzaklZMTdvaDFaSHJnekRk?=
 =?utf-8?B?YUljOXdSWCsrTlpCL2FYYkhEY0hVVjJoY3UxTGIyUlNSZ1VZenVHL0NzQ3Q3?=
 =?utf-8?B?YTArcEJGL3VEVk9pM0pOTHYwaEdyci9SVW4vd0ZOMjFJYTAyTHJnRTUwYzIx?=
 =?utf-8?B?aHRCbldtb0VnRHVmaVYyZVlXYTFiaGVmemlhVmRMMzZ6N3FVdHNCeW9nRTda?=
 =?utf-8?B?TVlxMDQzdGFuYTY3Z0hVRkgvKy9aNlNiMGZuMXVkOER5cG03NjNFSSt0d09p?=
 =?utf-8?B?N1ZwQkR5VXlDWXV3dzErRUdZOVJiZU5obmF3c3lPaXpUT1hWb2t1dVUzSkdw?=
 =?utf-8?B?WHFFTmQybzFiWDJSbU5iVnB5amZtb1JzMzk0dmhyT0dhV29KallmZzFUMFFD?=
 =?utf-8?B?NXlZU1hYRm45dDBNNVJtU3puRHFiNGplVDFMbkhDNUJ4VFQvZWpJZ3JWMVd0?=
 =?utf-8?B?cW9PNG5kVDNlOXVCRXR5ZWVrZWphNFZGcEJXRkttR3RoekpwTzhJZFJJSCt1?=
 =?utf-8?B?amFpUGtHd05yVHFoNDNNZ0g4T0s1UEptdEVNS0hpdythUGNRQ2tUZEhqMGFx?=
 =?utf-8?B?ci9yYmtIZnRRTUdIS2t2d0NjWk1SdENQQ3R6ZVJjT2ZRZEVQVk9VVUJnV2ky?=
 =?utf-8?B?SkZPR29yOE84Ynd3bWpSWUJocGhqRnN3T2lFMlI0VEl4TDNEVktNL1dRVTJY?=
 =?utf-8?B?dTBNdnJuSzY0WlEzYXBUTDlRTllDVitac1pjTWEzVWVpemlOa3BzTkhyL0tR?=
 =?utf-8?B?MENPZzhKcWllRzhSM1hHZXpndVlaWnFyaFFEZCs1M3ZST09HTjAwSVkwU1p0?=
 =?utf-8?B?eXBLUW05dUwxeTM3WWJpZDRlTTFudTlEaXNVc0pYTUkvbks4TzJ3K2NOVVQ3?=
 =?utf-8?B?ZXpuMWJxT0tOVXR5RTZXKzRKdnRsdHRlc1liM0RQbDJvZ28xZWRJR2lLL0g1?=
 =?utf-8?B?UzJsM1hzR2RneDBGWkxhZTF4VGJpZi9qMGxlV3BnMUhvQURpcExscUlqS28v?=
 =?utf-8?B?L1N5WG92ay9lRmJyeXo3c2lTcWpFbFByaVhQeW8xMmExdXR0aWZlN084c0RE?=
 =?utf-8?B?dUlZVVlhbDhOdHFVbkRhYWhXNDYyVWVZaHFHMVB2NlJkb2lJV3VTdmZoVzQ3?=
 =?utf-8?B?aGpLbW53YWFNTXV4a0tjbktGeXN2YmM0eFNyZE5IZm92RmZkamdlTkpEdGJ2?=
 =?utf-8?B?QWdMeVkrWnNXb3NleDF4a2lya1MvdFN1ZW5yNnRwazQwNndUR1BJd3pkTFYw?=
 =?utf-8?B?ODlFd0F1SHM1ZktRU2RUN0J1MGpEM0ZqZWFzb0NZUEw2QXhYdVErbXhSZ1B2?=
 =?utf-8?B?VXcrY3JWVjJHbDZOQXpvM3BHZmkvUzlrb2hLbG1OdzlaaDMvckRNdWxTRFJI?=
 =?utf-8?B?djRJUzhYMmE1Um9ldmN0OTBrVGhONEp5SkVmMVNoL1RsQjNzWDg2UXpyelov?=
 =?utf-8?B?dmJ4M0ZvUE9aTWdCcGZrWmRhVUg1c3lwRXRObEhETVo2TTlyLzBUVzQ4SVJT?=
 =?utf-8?B?Z3g1SjJDSXgvYUdIb0xxSGNWcE92cTdnU3NqbVVkeHJmOGFpVG9pTENlcmR6?=
 =?utf-8?B?OVgvR0V4VXBoTWNsT05vVlQ2ZzY5L3ZOYUMwU2tTa0h5Y2NsLzV2M2ozS2xQ?=
 =?utf-8?B?ZTU3WUJzWlZ3OWU4U3R1Y0JwMHg4ektwbVZUVDF0b3Bmc2tuZVdva2gyRzVF?=
 =?utf-8?B?UEpTckNicENxV2FHdmlyUi8waE56TDI1VFVnbm9HR2dleVZodFQ4VDdna1Fw?=
 =?utf-8?B?NnVoSmExZ2lLU1RkRTVFaEZCMlB5S1pnOWRGMmRCTzRyakttUzlXN3ArbGc0?=
 =?utf-8?B?VkFTWXpuK2h6TW40bEE3OUxyYTQ2Z2Y0dFhBL2VzbkJHaWpabXZDcDJPN0sw?=
 =?utf-8?B?MmRKVDh3c1lHK29uUUprUngzOTJuVDEzUVVvTE4reWtpK3Fycmo4SXZjeEdU?=
 =?utf-8?B?WEV6dzR5TEkzVGFSTzlIT3YvL1hNRzhhRWZKTU9ZaG5WV0J0MVRXekZHL0tY?=
 =?utf-8?B?bEhacjVCLzRFOExncHlZQUJ4b0tvK2xBK0wyaXA3WFVLbTVuU0tkbG91TjRv?=
 =?utf-8?B?RlBnNWxOUURCTm5NWUNTOEt5WThGTU9hSEE4SytFOWF2RjFzdzk5RzErYndp?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7ada35d-5ade-47f1-8bd8-08db799e7a1a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2023 19:16:16.5693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: geYZnfRMpOblyScwy2nQ39OriMYlvYIfBw++TC35EDWLTuEXrbnJG9gr5UBqfwJ96YE60o1hZFmKESaXk+2VELGjtBhOkZ7Gzuq4vo6hdi4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6664
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915_pm_rps: Exercise
 sysfs thresholds
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/23/2023 3:51 AM, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Exercise a bunch of up and down rps thresholds to verify hardware
> is happy with them all.
>
> To limit the overall runtime relies on probability and number of runs
> to approach complete coverage.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   tests/i915/i915_pm_rps.c | 232 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 232 insertions(+)
>
> diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
> index 050d68a16559..acff59207311 100644
> --- a/tests/i915/i915_pm_rps.c
> +++ b/tests/i915/i915_pm_rps.c
> @@ -39,8 +39,10 @@
>   #include "i915/gem.h"
>   #include "i915/gem_create.h"
>   #include "igt.h"
> +#include "igt_aux.h"
>   #include "igt_dummyload.h"
>   #include "igt_perf.h"
> +#include "igt_rand.h"
>   #include "igt_sysfs.h"
>   /**
>    * TEST: i915 pm rps
> @@ -914,6 +916,200 @@ static void pm_rps_exit_handler(int sig)
>   	close(drm_fd);
>   }
>   
> +static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> +			       const struct intel_execution_engine2 *e)
> +{
> +	struct igt_spin_factory opts = {
> +		.ahnd = ahnd,
> +		.ctx = ctx,
> +		.engine = e->flags,
> +	};
> +
> +	if (gem_class_can_store_dword(fd, e->class))
> +		opts.flags |= IGT_SPIN_POLL_RUN;
> +
> +	return __igt_spin_factory(fd, &opts);
> +}
> +
> +static unsigned long __spin_wait(int fd, igt_spin_t *spin)
> +{
> +	struct timespec start = { };
> +
> +	igt_nsec_elapsed(&start);
> +
> +	if (igt_spin_has_poll(spin)) {
> +		unsigned long timeout = 0;
> +
> +		while (!igt_spin_has_started(spin)) {
> +			unsigned long t = igt_nsec_elapsed(&start);
> +
> +			igt_assert(gem_bo_busy(fd, spin->handle));
> +			if ((t - timeout) > 250e6) {
> +				timeout = t;
> +				igt_warn("Spinner not running after %.2fms\n",
> +					 (double)t / 1e6);
> +				igt_assert(t < 2e9);
> +			}
> +		}
> +	} else {
> +		igt_debug("__spin_wait - usleep mode\n");
> +		usleep(500e3); /* Better than nothing! */
> +	}
> +
> +	igt_assert(gem_bo_busy(fd, spin->handle));
> +	return igt_nsec_elapsed(&start);
> +}
> +
> +static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> +			       const struct intel_execution_engine2 *e)
> +{
> +	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
> +
> +	__spin_wait(fd, spin);
> +
> +	return spin;
> +}
All the above spin functions have been duplicated across 2-3 tests, time 
to create a lib for them?
> +
> +static struct i915_engine_class_instance
> +find_dword_engine(int i915, const unsigned int gt)
> +{
> +	struct i915_engine_class_instance *engines, ci = { -1, -1 };
> +	unsigned int i, count;
> +
> +	engines = gem_list_engines(i915, 1u << gt, ~0u, &count);
> +	igt_assert(engines);
> +
> +	for (i = 0; i < count; i++) {
> +		if (!gem_class_can_store_dword(i915, engines[i].engine_class))
> +			continue;
> +
> +		ci = engines[i];
> +		break;
> +	}
> +
> +	free(engines);
> +
> +	return ci;
> +}
> +
> +static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
> +				const intel_ctx_t **ctx)
> +{
> +	struct i915_engine_class_instance ci = { -1, -1 };
> +	struct intel_execution_engine2 e = { };
> +
> +	ci = find_dword_engine(i915, gt);
> +
> +	igt_require(ci.engine_class != (uint16_t)I915_ENGINE_CLASS_INVALID);
> +
> +	if (gem_has_contexts(i915)) {
> +		e.class = ci.engine_class;
> +		e.instance = ci.engine_instance;
> +		e.flags = 0;
> +		*ctx = intel_ctx_create_for_engine(i915, e.class, e.instance);
> +	} else {
> +		igt_require(gt == 0); /* Impossible anyway. */
> +		e.class = gem_execbuf_flags_to_engine_class(I915_EXEC_DEFAULT);
> +		e.instance = 0;
> +		e.flags = I915_EXEC_DEFAULT;
> +		*ctx = intel_ctx_0(i915);
> +	}
> +
> +	igt_debug("Using engine %u:%u\n", e.class, e.instance);
> +
> +	return __spin_sync(i915, ahnd, *ctx, &e);
> +}
> +
> +#define TEST_IDLE 0x1
> +#define TEST_PARK 0x2
> +static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
> +{
> +	uint64_t ahnd = get_reloc_ahnd(i915, 0);
> +	const unsigned int points = 10;
> +	unsigned int def_up, def_down;
> +	igt_spin_t *spin = NULL;
> +	const intel_ctx_t *ctx;
> +	unsigned int *ta, *tb;
> +	unsigned int i;
> +	int sysfs;
> +
> +	sysfs = igt_sysfs_gt_open(i915, gt);
> +	igt_require(sysfs >= 0);
> +
> +	/* Feature test */
> +	def_up = igt_sysfs_get_u32(sysfs, "rps_up_threshold_pct");
> +	def_down = igt_sysfs_get_u32(sysfs, "rps_down_threshold_pct");
> +	igt_require(def_up && def_down);
> +
> +	/* Check invalid percentages are rejected */
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
> +
> +	/*
> +	 * Invent some random up-down thresholds, but always include 0 and 100
> +	 * just to have some wild edge cases.
> +	 */
> +	ta = calloc(points, sizeof(unsigned int));
> +	tb = calloc(points, sizeof(unsigned int));
> +	igt_require(ta && tb);
> +
> +	ta[0] = tb[0] = 0;
> +	ta[1] = tb[1] = 100;
> +	hars_petruska_f54_1_random_seed(time(NULL));
> +	for (i = 2; i < points; i++) {
> +		ta[i] = hars_petruska_f54_1_random_unsafe_max(100);
> +		tb[i] = hars_petruska_f54_1_random_unsafe_max(100);
> +	}
> +	igt_permute_array(ta, points, igt_exchange_int);
> +	igt_permute_array(tb, points, igt_exchange_int);
> +
> +	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
> +	for (i = 0; i < points; i++) {
> +		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
> +		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
> +		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);

Do we care if threshold_down > threshold_up?

Thanks,

Vinay.

> +
> +		if (flags & TEST_IDLE) {
> +			gem_quiescent_gpu(i915);
> +		} else if (spin) {
> +			intel_ctx_destroy(i915, ctx);
> +			igt_spin_free(i915, spin);
> +			spin = NULL;
> +			if (flags & TEST_PARK) {
> +				gem_quiescent_gpu(i915);
> +				usleep(500000);
> +			}
> +		}
> +		spin = spin_sync_gt(i915, ahnd, gt, &ctx);
> +		usleep(1000000);
> +		if (flags & TEST_IDLE) {
> +			intel_ctx_destroy(i915, ctx);
> +			igt_spin_free(i915, spin);
> +			if (flags & TEST_PARK) {
> +				gem_quiescent_gpu(i915);
> +				usleep(500000);
> +			}
> +			spin = NULL;
> +		}
> +	}
> +
> +	if (spin) {
> +		intel_ctx_destroy(i915, ctx);
> +		igt_spin_free(i915, spin);
> +	}
> +
> +	gem_quiescent_gpu(i915);
> +
> +	/* Restore defaults */
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
> +	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
> +
> +	free(ta);
> +	free(tb);
> +	close(sysfs);
> +	put_ahnd(ahnd);
> +}
> +
>   igt_main
>   {
>   	igt_fixture {
> @@ -993,4 +1189,40 @@ igt_main
>   		waitboost(drm_fd, true);
>   		igt_disallow_hang(drm_fd, hang);
>   	}
> +
> +	igt_subtest_with_dynamic("thresholds-idle") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_IDLE);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, 0);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds-park") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_PARK);
> +		}
> +	}
> +
> +	igt_subtest_with_dynamic("thresholds-idle-park") {
> +		int tmp, gt;
> +
> +		i915_for_each_gt(drm_fd, tmp, gt) {
> +			igt_dynamic_f("gt%u", gt)
> +				test_thresholds(drm_fd, gt, TEST_IDLE | TEST_PARK);
> +		}
> +	}
>   }
