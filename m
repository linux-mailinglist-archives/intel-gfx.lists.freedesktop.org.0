Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79265EABCF
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 17:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5021210E70F;
	Mon, 26 Sep 2022 15:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1B289CFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664207879; x=1695743879;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gf7fNTcJPkcDUi1FmO4rjqDXpovd+CkgZX2ovduA0ak=;
 b=PZKvMI5DO0o3EdSi4aiczJv+dlf0wIXzYQbmXwe/Iel2iGuAAVg3VWU2
 yXkIz5UrGsS9exk5U/43OyeCCuYZ4p8B+UvjgFbTFYqjRqf/zNebD0L5j
 S719ESJ7KHKtOmlrixpdugJn0jx0j1kLgzLpMLxhFkd3ZrUvO56ZbG3fJ
 A9bW5+cJj0CuM4YPZZpKo87OyrbpFgdeECEKhkYdC3+wZOiTStfnaP6zw
 1QZVGtKmljpafunpI0WsClKJyixgyA7ZwBLMt1Yl5Dd9zRE4ij4URiWrr
 tOGr0zK7UBlprelNy6xyfJVpX2kEKZGmgsp35ev1b2mC0i8NfkANdNJE2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="281439583"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="281439583"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 08:57:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="710168453"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="710168453"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2022 08:57:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 08:57:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 08:57:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 08:57:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 08:57:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALgFNhCzSMNxasZET9HvgDRsSw5kUlPix2k5lyR7aWgEPurSCc6mWLcAj9tDJLlgocOud+89fBFhP6WHDblPglMBvCtLuhyWBcy5sObWm54azlallwYetJXgWjDg/no4Hvi/kqXs4bVPqsDZGEF0L0Rkc+iTZp9ROqAaq960A05/ZDCPhItgWOwEg6kMh07tkKYwneHiSASzQJ6q0upUVgMA/7Qo6gbfQqfo5zKKDUrquhKSdC7OdZHRhx8XI9yCNsEH8DtsSg5A07VErRu9XCBzw5m7/++OhDl+8xBiHF4qjCeJO7vVFCA/uQse7SGwblHmjfzZGnEqG0QIzEgdYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8XF3UXkNtykqEWxp3OHfnD/0oJQUlmR93DKUATJbWkY=;
 b=XSnYqLYNlUcUSH0J5HK+5oga6AGd7qgNnfeku2fEqq2E5AZ0SNwyqKE6yMpZxwa8LyOdCcU5BG74OW0pI6k4+5pjw5eYexQytee038PGSjmsheQet5IV2fXzy0qhq75ts34bDnNRYVeqoebl/k70X6biq0mcG6iSoBPwhTrKIskDig2DHLZpTDEgC4yL8cKuUjvDCtJNB0WCn1NvUdNcxCHvWdpWXIx3pTMSooL9j4j8rtn9QfL1+LT8IoDBEULPr6gxO9agKa+V7y3D86LItL8s6rKhgOGYtQvNaSWjy4RKjbd49nthW6ws0p+LDtEZzLW2RBVB/mwowrQkQsLDYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SN7PR11MB7068.namprd11.prod.outlook.com (2603:10b6:806:29b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 15:57:54 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 15:57:54 +0000
Message-ID: <e6a8896e-1b48-a5be-4b3a-f21ec883fcef@intel.com>
Date: Mon, 26 Sep 2022 08:57:52 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-3-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20220923110043.789178-3-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0093.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::34) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SN7PR11MB7068:EE_
X-MS-Office365-Filtering-Correlation-Id: d257d169-c1ff-46ce-7674-08da9fd7df7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uoypXNfwVvbN85CVCO/6fi9904JeCfk0Jby5TaACOj3LRd2TQNzTE9DkhDMIKWvlnLBaLYqrQgvDW1+OucpoGiuOAXnOXrzjxI7eqyWQeRIp/AU6XE8RQpm7UubWwIU2PhE21Ry74zMG0TmjRIUFeR4lVie2wnBYxVdaRUxBW094BnCyHJF47xGF569QSPySvQPmoSL819d/iZRwSbZU4UWY/jsHP1JC0a95sb/FcgICjBn2/Sh7gJjTOm1/k1CN98XuqiURuoMYHK9g40yKrGBXtH1HvGrsM0cXwR1bvmxxOiPb27FFRmNnuXecgE4X+NoL0mtOFhYC3xeS7nw2EzJdpJCRKQSyXJQ1q/1zcxFutUprAzZdXABMSDFYDgZwSVpNFjwqtOPnxxHQ5G91Clh2EKqeOlvoc9fflTR7bETwy0jGatChPX31O9+hyOt+XDRhmeVeoYS7ZfnM4Y9neq0LNQdgRwQPs1bgo2XdgK66GUXi0REJsG5oA++vAn0Eo6QbaCdhIVxVyO5r+czYvNCs1H9Aw40/gv2ZBkfGFy8DIkpHYAZcH8mTLtUc7s0JLjPekCC/gWyUgNBJKpklXOicfuun16YcDNQuMhkbnXjgU15aPldIH/3CP4MTTXaZdymI5K6kaTGYeaBjXodCoVSiXgxBCoAQxr6lVIcs3gxKPtXy220K8G/gcC7GR0XqDe5es98kDhgIR9lZE4c1FPF0oEEM6V4rNVBXmufjkJxDCP1jA5+GrzuU1cp6s0rsoGPhxZc+5X5mI+2R3XSx+Z0s7wlfm9Ay49XvdLjv/KI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(136003)(39860400002)(396003)(451199015)(82960400001)(31696002)(86362001)(38100700002)(36756003)(31686004)(2906002)(186003)(2616005)(5660300002)(6512007)(26005)(478600001)(41300700001)(6486002)(6506007)(53546011)(107886003)(83380400001)(316002)(8676002)(4326008)(8936002)(66556008)(66476007)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajhjWXRuQWxQbUdKeHpMbnZpcWVxdDhkRTBkT1E1ZzR4eC80M3NCRkJiRnQw?=
 =?utf-8?B?SFBwaVRmeHBENFR0OVNnQithNGxEaFFkNmZFbmlBMERpaFdDLzlkOG9RWUp0?=
 =?utf-8?B?eC9uMU1OZ1F4UGdvc1JpWkR1SkorMWFVUE9WdUQ3clcyN0ZzVThBNS80WGxs?=
 =?utf-8?B?ZXh6dnliZVp1ZDk4b1JRTkhkeDdvUGFmVzROdlpjcU5ZQW9kUUJ1Rnl1VGxj?=
 =?utf-8?B?ZE0rclhGZFZ6VFB3VDRJN050SkRuc3kvUnZMT3RMVHVXN3huS1p0eGQ3QnFv?=
 =?utf-8?B?NG8reTY5dkVGYlZzbmZ0ZEd3cG13SW5wTkpUbENIUm9qR1czN21Jc1R2eWFy?=
 =?utf-8?B?bTNNVGlEdmJUb1FyL3V0c1U2ZG5vL2hkUVNkRFpTZVF0OVpuMGl1Mnd0K2gr?=
 =?utf-8?B?VzI0RDFpa0M4QitoSDRmK0Z0MDg3eFV0aVB6WVlFa0tCZG9lbTI5b1BXbVQy?=
 =?utf-8?B?enhUbmlRcm9qdVBuZWlzNXNUZk9qV0NGeDRzd0pvMWlVd0dNT3VqSHphTnBq?=
 =?utf-8?B?dkhZRHh2Y3lGb0tCeXRFZ0RZb09FOUdsV1lWRlFVUkNFRnhBNDk2bEIvbFJ4?=
 =?utf-8?B?OTltakUyQ3VNNEgrOWVFUE1CTXdoaHpidDUwZ1c1d1lwazVWcDk0WHBYR2VB?=
 =?utf-8?B?ckk3bkJxdzRBUjI1MzlXcks2WGVKOXMzNndiVmhzTVlqZ280bERSb2ZxSyt0?=
 =?utf-8?B?bzNhM2hJeDZGTW9LeXlhelUyTHEvekNYc2FST2t1UitJMnRqWVdkUFIvcTB1?=
 =?utf-8?B?dTBiMGptUlF5cjhidzVLeFhlTzhjRmhTYy90WjV0T2RkenBhY1ZxNmJ3Y2tF?=
 =?utf-8?B?U3FnVkNseVlIdDZnU0RydlREL3JJcFk0Ulk2eU5JVFZpNkp0eUpHQ3RPVXNU?=
 =?utf-8?B?Y0NvM1FWMTFCeFREWmdTRk9VVkxDRDJ2VDJ5YS9DaGFFMDVzbHh5Lzl3ZHlw?=
 =?utf-8?B?MHF4RzU2MnROc2xVcGVkaEd2N0NDN3hOSXluaDArN1Q5SDRYZFRIRDlJMGxY?=
 =?utf-8?B?M1hYU0xYQXBBSXdwRUJxTkRJcSt2YVQ2M0RVa05QY0JyYjBwVkNKeFhodWF1?=
 =?utf-8?B?RU9UMUhzK0VVbkFGSFdCeWx4RFdlOG1MRWJjK21scmdIekpJajFrUVRRRUJZ?=
 =?utf-8?B?SVIrSVY4S0JOY0gvY2Myank0U2ovT0VMUE5WSVR2bjZKM1VaZGdWYXA4MUIv?=
 =?utf-8?B?T1E3N0IzNnZndWNrVDdJT2RDQmR1MzJPSXBqMUsxb2ZYcEV4cFJHMlVwK2xC?=
 =?utf-8?B?VCtHOHRYbUVobDBWZWRnbnNGdFhoN2RhL0FOdUE0c1VlV0xRTlZ2WFVOVisy?=
 =?utf-8?B?Y2JDMStXQ2pWRFJOdkNPVUwwdUZFR1EyalNwZkN2MVFjNjIxZlNIVDd2WnR4?=
 =?utf-8?B?eGtpTFBSZEd1OU1yNi9nN3daUzFNRVI2d3lQdnJFbzIyQVBKT0FFT0NPUUd4?=
 =?utf-8?B?NEMyd3c5SitsS0JEUGtvaWJDbzl4VjhwdU1GY2g4dUoyUGxhN2QxamhQRk1X?=
 =?utf-8?B?OWIrRnlBRGREWEUzejJTYjE2aTBYM1RGTGwyZ3RLM1M4NDIrcVlLRFREend5?=
 =?utf-8?B?RVI5V2dsVSt2VCtmdDdwa0ZhR0ZDTTFOK0IrcWhrUnBZaEpkMmw5NExYclFJ?=
 =?utf-8?B?b0x1QXpjK3dqTTdUc20zNEluSmdKUG5FaVMxY0EzWlpYbFBsb0VUVytVMXJN?=
 =?utf-8?B?V1BIeXdUdmh0YU9qaFVVS1B4Wk5uMEtNQzA0U3BncEFha0E1RDQxTEFLWG9I?=
 =?utf-8?B?N2ZralJwcVpqOS8zcGZjSkk0bFVWeXdsT1hIYkRwNjIxRmVua2Y3czlqeEZD?=
 =?utf-8?B?ZkY5ZGpPTzNEQnVvSWdzY0VPWXg3Z2Zod1FFRWRpemloWVFsZWRhTlBNUElz?=
 =?utf-8?B?T2pub0NFc1F4TjN2em5KM3JpY1dpdVZkK3pmRHg2Yms2YkxZQTd0M0FWV2U0?=
 =?utf-8?B?SEUxeFArbVpwWkpSTEVvaWFwcVFDdXVtMkhqY1RubGVSazQzelp3bVQ4c0E5?=
 =?utf-8?B?ZS9vT0NpVkRnUlZlU1V5QUoweGhWamdHeDNtaVpMT1V0M0NsWVZwUlg1SE1Q?=
 =?utf-8?B?RU9BT3cvT1NkblNEQW5NYk11RGpSeTNSL2dESTBJZ1R3bytMNTY5dDFkQ216?=
 =?utf-8?B?VlRvU1h1MWtqLytONnpkVkdNc3UrRGY4UnpvTjFwV0NKTlVpR3h6cHVKNmsr?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d257d169-c1ff-46ce-7674-08da9fd7df7c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 15:57:54.3857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksJg2L2P0lof5bbupgmx/LJMJl6++RZPTop1ZEnWpHsUiLAhkku28IfHylNchbMbqVbWo3tTeAjbso3jUsV3eHvZAUvC71xOhBYE1WsafUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Add helper function
 measure_power
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


On 9/23/2022 4:00 AM, Riana Tauro wrote:
> move the power measurement and the triangle filter
> to a different function. No functional changes.
>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 12 +++++++++---
>   1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index cfb4708dd62e..99a372486fb7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1107,21 +1107,27 @@ static u64 __measure_power(int duration_ms)
>   	return div64_u64(1000 * 1000 * dE, dt);
>   }
>   
> -static u64 measure_power_at(struct intel_rps *rps, int *freq)
> +static u64 measure_power(struct intel_rps *rps, int *freq)
>   {
>   	u64 x[5];
>   	int i;
>   
> -	*freq = rps_set_check(rps, *freq);
>   	for (i = 0; i < 5; i++)
>   		x[i] = __measure_power(5);
> -	*freq = (*freq + read_cagf(rps)) / 2;
> +
> +	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
>   
>   	/* A simple triangle filter for better result stability */
>   	sort(x, 5, sizeof(*x), cmp_u64, NULL);
>   	return div_u64(x[1] + 2 * x[2] + x[3], 4);
>   }
>   
> +static u64 measure_power_at(struct intel_rps *rps, int *freq)
> +{
> +	*freq = rps_set_check(rps, *freq);
> +	return measure_power(rps, freq);
> +}
> +
>   int live_rps_power(void *arg)
>   {
>   	struct intel_gt *gt = arg;
