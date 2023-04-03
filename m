Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8BA6D4BC3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 17:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8131F10E4D0;
	Mon,  3 Apr 2023 15:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687E610E4D0;
 Mon,  3 Apr 2023 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680535473; x=1712071473;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QXdw+jneE3aPVAANfnBwOo9jani8ALsd6VAAnIFms8o=;
 b=hnEWrlg2o6I3+Z7Xh+5Zt3Muup71GwVADdV2L29WvgK/TwPmDgeRiUcX
 0MBouV8uWw9snglEZDyRAYWCtp45CldtnESi+8dFKZF9Y4sUFGz3hw63P
 xtr1UaO7i7IjWnH0u6hviSVmmsgzGJCnn7B2sdGD/wvtLEt13g9Zw02aJ
 veXPI2gFbofcrvNYB6YfPPjXlnSySwDalZfXJUUhXVpIGhivy0nUPgl3n
 d0MOIlfgoGvjhrVs0g9iALylCYyimF6CChv3ARFg9uF5LwAT0IQip1UAz
 xNlI6waT3ZA+DR6KLhGGnYGaayBM2UfHmREgUpFZOlyFCRZMokQFdItpL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="325936910"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="325936910"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 08:24:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="755298495"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="755298495"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2023 08:23:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 08:23:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 08:23:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 08:23:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 08:23:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABOEzKYMyw5VQfPAUsn3pENqu0Y/AvoQMXlRRoco38HklZbGlVXZD2qpPAND/wym81OuHVsjpfdG6bnNZ3HG3dAg5wk+JRLVZfVMzd+H1aoJcC0o7S7D7WMGffx/5lVReJ9wi/i108weKdYvQSrK2aKuELZ+CoNGH2HxwI575+N2x6nZPhcGxwyr3e1x0cePR9THk00GBtg9DJ2qERl/rZzu7bCTXTFRU9iSnAlS4y+AZuSXDFos8+g7mGv55pBLyYiG9kPVUAPzJaD70/WAJepwq/eUs2st8za2xchfMUXqUHZFSJdxKr+XG10GWENenRjDzmtnXPwaHW/nck481w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTrkKYnm3Fvaf0kF6fIKCESENCD23nSx3z8wtzfeJmM=;
 b=nxXIJdNPJ0YOGoBCHf5quXtQR087YPfoVLi4cl6TCI8MqH+cE+EkxQsXz065K+LLmh5eSm2Oj4dmXw25BSa93Ok3G1FJrk+SZ0pPk9NP7un5t49xlu+9gMqcK/n3QEuPCp+T0tYIPwApuH2rjUodLQN0SsfL6Gyqi+44iBf6UbWeWRn6ddRDBDyfynd9RqxglmCiEfpMR27Ts967iIyf1MfelzGdyNoDdgYhv7n+S3xo/lFl6c2s5UCYAlV9ingI8u+IcnAwzKiXdHzA6AEHXf7QFI430q8pTiiubxXtXP6cyLm/332iVw3XAzzLy7Vz64nEmY0He7hqVxTHywGWKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by BL1PR11MB5414.namprd11.prod.outlook.com (2603:10b6:208:31e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Mon, 3 Apr
 2023 15:23:47 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::9722:bfa9:c7a:1250%7]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 15:23:47 +0000
Message-ID: <7327d651-d31f-8e20-a9a9-38b0ec37b86a@intel.com>
Date: Mon, 3 Apr 2023 08:23:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230328020028.2143954-1-vinay.belgaumkar@intel.com>
 <20230328020028.2143954-3-vinay.belgaumkar@intel.com>
 <87bkk8h3uy.wl-ashutosh.dixit@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87bkk8h3uy.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR08CA0042.namprd08.prod.outlook.com
 (2603:10b6:a03:117::19) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|BL1PR11MB5414:EE_
X-MS-Office365-Filtering-Correlation-Id: e676e8ae-6f24-4b47-cb51-08db34576b96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kbEAVPjsudTDwbwu8bhbgWdZGOEmnmccyLAgFb1BS95hKuV/AEFdNYzECjZqzbjD62ew3ukbg+1DQ6Qp/nk8usf5wMMeSfSbJt5LFoyHC3eweZ4NWNb6KMO2+Xs/FZSNfJ9qHRGfAob0eLV8l0vADSnbr5fR2ZfySqTIBngJhw+zx/sbUCoLQhZt2iS9DUXsPcWmSxQwsFx3yhb1UDLQbSXfiAT1FVHHYhzQya/5KA2GlT3OYmB4tYug7gOmYFQUHgo+InGlSIOpeWYVBNCLmYreFK8eyokRGgvLiaRxtepQzeyoKtuafkmCq2PaqfwI2c0AuOPcJ2wIREvkXZRqYGQHIJ5qAHGk3iTgoQLB0EOxbcENt2mC3PMjU6vPyuKcHMVZJ48r8ebUTf5OhqslV6TmH0ZO45Hdi4tCfzqMTiaqxxwVago22zOsxBqW7cZG0N6BVuyD6BIzfU9d7dJnY38oZ95f2inJhLODZ1ecOpl3XVnWpt1f8PNzFwt3l/jneQiH6PKCLfc5A31dm5DxLjKSUooz9TWCBo3obMmuy6X4QTOxDeGyW4pBrXhv2JzI5ftaUShfKV9MbxMZgmPkSWwsiC6DX4t+LkDWSrXaFBXHTZif6v0EvvzkiJcNX4g58vayzOUkLhe5l9/LNy8IXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199021)(31686004)(2906002)(38100700002)(5660300002)(82960400001)(66476007)(66556008)(6862004)(66946007)(8936002)(41300700001)(4326008)(8676002)(450100002)(36756003)(316002)(37006003)(2616005)(31696002)(6636002)(53546011)(86362001)(478600001)(186003)(6512007)(6506007)(26005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2N3d3V5bFJydXlOY1BQYS96ZHRqdDlEUlRwT3Z5UEdCeVhoV0dGanRNWm1P?=
 =?utf-8?B?OUZ5cWpDVGlYQWY4SGtkSzVmY0FjZjRBbEJnUitXT1JYcDkzOUU5Ny9renNC?=
 =?utf-8?B?ZDV5MFk4bDNKRUpyaXRZaUxRekREcDF4RUg0Ynd1cEQ5bHdzSWZlaS9zOThr?=
 =?utf-8?B?STRBTGg1T0NxaTlTeFFmMWRKQmZZUlh2VVdGbE9GVU0vT0k5a1ZtK0dSS1l2?=
 =?utf-8?B?QmpaNnJiQmUySHB4N0U5VVNnV2RISW1GcGlTWEZSTnA1OHNUd0hRQkdXaEhP?=
 =?utf-8?B?aHFGUnhlMlhXc011MUYxOWV6dkQzMW5mQ0pJWlY1cEZHTXNBRXdjbkxjOExX?=
 =?utf-8?B?Q09NVGlwREdhaURadVdKVmpteUpMNDRIQ3RoeVVrUGhtK0dZdUtUSzFOYVBN?=
 =?utf-8?B?TXBqT0k5WFVNTkVCQlI3QWZtOCs3WjZWR3B1U29tcTQ3NU4rYlhoSXVmcDN5?=
 =?utf-8?B?YzhsZGtVQ0hPcWhETmp5QVRWR1lRUWtBeDZZdElvUG1HdzVQUGJYVmtGeHBk?=
 =?utf-8?B?aDV3RnV0c2h1KzRTeS9kYlRBRVYrU1ZmNzhtMC83N284Vk9pWjRBRXJSbEZx?=
 =?utf-8?B?eFRFNFNuQUIvTE13TXJRN0h6N1FDcmVZZUtIdDI3RHNBNnRNdmxTUlQrR3pH?=
 =?utf-8?B?ZGVmL3B2a3ZhSnFud3cxUjVBZnY4bjFiODhKcjJ0dmdkTXRCblV2S25HQ2VI?=
 =?utf-8?B?c0hFMFBicGtnOU5Ia1RrT3NpOXdyRzRaQW5uemVFaFRoYmxKcm40Z3hmQnFk?=
 =?utf-8?B?cHBqc21jeXQ5R2FlYkdsaWQwMlAwQ3RtNncrckdSakg3TFIvNHBXa3RJNWdp?=
 =?utf-8?B?eFVneWZCZDk0eXRjQW5VOFVpNTlzUTlvcmd0ZXFMNmdPYmZBbmh4WXdObE5B?=
 =?utf-8?B?TC9BNm1XZE9jeFNlZ0trbmxMM0JmNEltQTBqT2hyc1FnYnBYWnVXM1ZuRnI4?=
 =?utf-8?B?Q09KeW9RUUJNVUY0dWJiSE9MWGdON0JTcEdyOFNvQjZVT2o0ZlpBdDFxRFRp?=
 =?utf-8?B?cHRsMFpGenBYSm9DUTV1c2xHMzJoeS92WDUveDRZQWdZUUt3SFN6NXV0cTkw?=
 =?utf-8?B?TGtLdGRIckpvT1BMRXdQcklwVEFuS1hXVTVsT2VUUnZlUGxxei9iNDNsVVRW?=
 =?utf-8?B?aGpOYmN2TU1QbUhMNFlvNmNreERJNXZGY1NyRlVnOWFjaXpRNWt6QXdyT2ht?=
 =?utf-8?B?MlJQamJ4NjRGSmFNaTkvUWE5dzEwT25NcXlRdGNBSW95UkRDRDh2RVYvendZ?=
 =?utf-8?B?dGpBR3pUakk5VFRNSnlNMkE0ZHFoOGZ0ZkljWENnMS9SeWNtRDc0RTBtbWwz?=
 =?utf-8?B?dExLVlNOeUdHQWJNUDk5dDZRUWFDU2dVYVloQVkyZWYxYXIzanBncldJbTJj?=
 =?utf-8?B?ak5mSWkrSDlYM1J2SmNpRGFWVTQrcmxaL1QvWTA2bUJhMFNkUFZESEcxcnht?=
 =?utf-8?B?dDFCYmFHRGp1bGFOWWN5ZkVtRjQveTR3QVA2dDEwaExDa0ljK0tUMTBmcHNp?=
 =?utf-8?B?VWZuNVBaSENEUmZGdVRKaWExSVF4QzdPWi9pRWZGRDkrRUw5N3Qzb3FnRzlj?=
 =?utf-8?B?MWF3a2dCc2F6VTV5OGRIT0tyKzVDV3JzOHFFVFlrVUJKYmdmbGRNRHFZK1BU?=
 =?utf-8?B?NExtbllQYmtXTW9SZjlIenVueU40Qnc0UjNoVDhqM1ZUbytRQkswTzFWZlg4?=
 =?utf-8?B?QThLYTdEYTZML1FDQXROczFnUDVoYjRvTDA1SXRGSi8wY2dINHlBVTA3ZDR5?=
 =?utf-8?B?bVlrUTJTWEgyQTF6V0NzalBvT0UzZGhaQ2N1Rit2dHhOQWY4VDB5OGs5ckRT?=
 =?utf-8?B?aHRTMUZRbG43eWdIVzNzaXRBT0g4S2NSWWcwWFY1Q2tuUnhFUTl1aTVXL1B3?=
 =?utf-8?B?cjRlV1pIUkNQTTNPMnRNMzM2djdTK0hNZythd0ZVYWtCZ3RMUitvdnd4OEdj?=
 =?utf-8?B?TVRreCt1Y2diNnZET1BPT2p6Z3dtSnBHaG40cTNDOEZLTllUVTBtZFZ0cTRa?=
 =?utf-8?B?blgvVXI4LzBjcGtnZE1OTndjU2hWUUZSTzFrMDZ4WU9ZVU5wMEtFNS9wa3lr?=
 =?utf-8?B?L1NINldWMXJLVUJMMG1iTG9OY1NRNmdDUUdsUTdOZDBoWC9VK1VKYWhRUHY1?=
 =?utf-8?B?SWZBRDN5K1RKcTMwV1ZXU2N2dnJieEFobnlTeVZHdHNudWdPZjZ0NVFUbFVn?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e676e8ae-6f24-4b47-cb51-08db34576b96
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 15:23:47.6795 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: InAsIjWAhza9hWCO/SLZktI6DDJL4+bt6fbDA/v/QCrR+aY9ZqSn5qjK1SCLhtSiSRaiBfnhU/ayN9yG4kn1g305WJV2KDFtlypu4P6tByk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5414
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] i915_pm_freq_api: Add
 some basic SLPC igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/31/2023 4:56 PM, Dixit, Ashutosh wrote:
> On Mon, 27 Mar 2023 19:00:28 -0700, Vinay Belgaumkar wrote:
> Hi Vinay,
>
>> +/*
>> + * Too many intermediate components and steps before freq is adjusted
>> + * Specially if workload is under execution, so let's wait 100 ms.
>> + */
>> +#define ACT_FREQ_LATENCY_US 100000
>> +
>> +static uint32_t get_freq(int dirfd, uint8_t id)
>> +{
>> +	uint32_t val;
>> +
>> +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
> igt_assert?
ok.
>
>> +static void test_freq_basic_api(int dirfd, int gt)
>> +{
>> +	uint32_t rpn, rp0, rpe;
>> +
>> +	/* Save frequencies */
>> +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>> +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>> +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
>> +
>> +	/*
>> +	 * Negative bound tests
>> +	 * RPn is the floor
>> +	 * RP0 is the ceiling
>> +	 */
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
>> +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> Is this supposed to be RPS_MAX_FREQ_MHZ?
We could do this check for max as well. But this is trying to see if min 
can be set to below rpn.
>
>> +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
>> +
> After addressing the above, this is:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
> Also, before merging it would be good to see the results of the new
> tests. So could you add a HAX patch adding the new tests to
> fast-feedback.testlist and resend the series?

Sure, will do. Thanks for the review.

Vinay.

>
> Thanks.
> --
> Ashutosh
