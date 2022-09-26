Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F6A5EABE4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA9A10E182;
	Mon, 26 Sep 2022 16:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675E310E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664208182; x=1695744182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hN4a3GOyoTkUXYcTjaGw5L2siqLqb2j+Khj24eny58M=;
 b=hBjmws766HJvi2x4jfTLCZJMRxDD+KXmcbK5cWeQXZ+KSwQAK4R8ujDR
 WcaiTpt4hqcP/nqaReB3umBP/MmjdfuiHUg9EmL3XAr5qziT71DE8UjLV
 q7L8qCidoKj+wJHqJSvJcPCQmb5fccpuERKl/Kz0HrOA1t7D2kJVZV9d0
 E1TXr//DHUDbL4mxhZt6BIYDbtPkChXICBR8biSkJz9kE0Cns8W/df771
 6kNbX9JUmLIxtIVcLg9eSou6WTyu25iz69ObtyKfKm2vJ9lCquMC1tkRI
 v2/iZUUIIvVT6i4l5+A44DUliwcgKUB2SrYk+CQNhVUdbfeR+nIv89Tyi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="284184161"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="284184161"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:03:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725099049"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="725099049"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 26 Sep 2022 09:03:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 09:03:00 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 09:02:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 09:02:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 09:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwnMDx4xKqIjfydPb4msehXS04YuzstIlKridDEuo0WS3ba5hpPSHQCeyvCw2C6kbHSeYZYURzW7/sagFVMW10B/i4R9ugCPQOT0Fd+0ry8ce4CDuXJWohd2RAkkfiuqzKTa1+lS2JN+L4cT0B7hVzFd46x5jaICIE/3in3jU7w+PM75fQWRiDIG5JtzPBTWgd3NJ1cC0pQw/gec1t1g3uO8i+A89fkgoFdjEdAPrztxw8GQS3Vnn3aRUq22sthOo0Ka3onp948RMXxSxmGzWXcgVnnlVFXZcvZjGWa7al6L/+HXfwblRXpIflQgFUdyyJNXnTB8msGpuKMwlJA7Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OyZ/Gy24baYZrFR0MxWQ+mXymrQvGEMXHead1nZ5DuM=;
 b=ALVjaZYuuxkoHZOevw+r0yEO3c7uaasWNiH6nPUudo+anSr/PQ3Y3Dl1/8egUkurQdC8iq6+3ZCpfabA8nQpWWHi6ipO6NukA6QY0ThKF74muQLiagIC/kbM+NaAiOqYZEjmu8cHmHfpikt5zTQEvXSCAuP8xh8Fp/zFBZjdH4lyxnuB9T+x8SMSLkHiCfhGP0ttusyFDZDxQd5FE8aYA1dGSr61NpEDlYGFhl5RSiAwxaKiKYS+fCAC1xCKQdb+jdYly1CqdPvTYqjJVUNOddWQcy/8+jrCyUmoutJfP27HWTvPexZspVGeyX2eKOdh1FTxdzNy0K8S4KGbkMaNPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.24; Mon, 26 Sep 2022 16:02:58 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 16:02:58 +0000
Message-ID: <1ca7d0f3-081d-583b-ce27-36e3158e12e8@intel.com>
Date: Mon, 26 Sep 2022 09:02:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-2-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20220923110043.789178-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0369.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::14) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DM4PR11MB6503:EE_
X-MS-Office365-Filtering-Correlation-Id: d46ea149-85e6-4bb6-caed-08da9fd8948e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nelS1C5xRjK4m+t6rXgINNhgT8OhbdUl/dZUmK/ikzf8gCTWAvLudx9CE3a6m2f78QloZ0ZODCGEUhksk9RvWe8BbxxJLJD0A+uLjoKZ0yMY1IjdR1KKdxPqp2XPg2JtX8DpME2h7bmHoduY0SOtL4vf9TSYH6GfCJufwuZbspi0C3DoK8+QQBKaP3g0sZbxyI3m7GxRVcdw0iTRrOidVs3XXsG89f6lKeLvIcQoADIJs6vpCqBCewWvY7jUrimhN8wOmap0WSuVBhV9zSpT7+hDQ/65WMuEibrQSxQnRfftDoPAq2UPckQYCg6eXs9i2TjUhAml0+E1JRGaraZ9GXs3GzFn+QpT/dHjh996haKX6fu1COTRejsDq0u/Fh/b9qkGKeSqnG3sCpo/w9rBZrqibKepj6rHYEi+H1hWCU/V/IcvNznXfffmSprzvwuA3z08qNQouC5uwQ/48dtIfQ7fq31th61EPF60ofF1rFUr2HyGmX7ghSpuN6eKST/La4dpIFi8lAHbIyToIBbHe75rla5AFkJ6LeDyNkQ4L+CsSapUDrH3b0P//cY4Rgg1Wz5H9ISb8Q2nzdA+ijHESYsCVX1ay0T43GK1GUIavs3m5WtmPKP6Ac6qMjrpmRkWfkIFGvb3bfkz9c3jU5/JbbqdasFhuwmgoERiJj6zPoPPPauS6+MWOt+qzYmgaws4g1dNaWPnzHHjQuAQd6ya63SRrrytdDBalMbZFHynAYi+1P4W/AKQzmN1M+g9w0mDu2QM85Ye+irGaLVs7yvDFCp4CVu8mWepUZcDgidMGrc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39850400004)(346002)(366004)(136003)(376002)(396003)(451199015)(8676002)(86362001)(82960400001)(6506007)(478600001)(31696002)(186003)(41300700001)(316002)(8936002)(5660300002)(2616005)(53546011)(36756003)(38100700002)(83380400001)(107886003)(6486002)(6512007)(26005)(66476007)(4326008)(2906002)(31686004)(66556008)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0cxUkVLRWhLamNDWUhUUGVoRnZteXcyM0krdnV4T1NTaSt1SllIa2VhYWJB?=
 =?utf-8?B?S2JHZC9jQmNHK2t4bVU5WmRlVUlUMnd3K3RKWGcxUEJvRWZ1U1RFZVc4a3RJ?=
 =?utf-8?B?RzBZQzVuOEw3dUhjanpQSEQ0YkVTaUMrWlY4bWorWmZoaDNtN3o5V3VFNEtW?=
 =?utf-8?B?ZFpiaUhOOEZxY2RHK0xXZWdvL3VtM3pkTWU4YjViTkZSQjhZYnp5aVFkcHJv?=
 =?utf-8?B?MEEvSG5hVmxuQVc3VFJvdkUxUTZER2FlcklLakI2MmhheXZTbkJLRzhSVU1q?=
 =?utf-8?B?OWJlcjRkY1NFMmtZQjBhbm5SaytzcngwQytsRFVoY1pGcU9QWmdpbG1MaUsy?=
 =?utf-8?B?ZXZGUW4zWXdJcjd5Y3ZxbTg5YkoxZlViY24zNmtWZDk1cEtPOFVJQTU5VGw3?=
 =?utf-8?B?VXAzaGN3MkxIWVNEQkFDN2tJam9ONUhvVFZPaHczL2lWSFRVYmNONk9QbUpM?=
 =?utf-8?B?OWZEaTd3RU1IQ0dORFRZdVoxWlFhT2JDN2tqMzg2OXhLTjNQcFZkaVNtVUty?=
 =?utf-8?B?MjJ2ak8wcHZNdzROa25oRE5YWENPMUNwMWhmazRmMkN4TnV1NDhlZWVDSUVj?=
 =?utf-8?B?N3NUQ2sxZldURnBVVGhjZ2gxRG1peFQxMlkzSVFyeE9PVWxOcjcraUl1WVkr?=
 =?utf-8?B?TlZhcnNVYjhmYkczSDZIZ3had0JBZDd0eXVlTzZWd2taVGliMGd1Mzk1UEZn?=
 =?utf-8?B?SVg2U3NmdlVHWEFDNFZIT0hoNmdnakF4eGdTOVF6SFUxZ0V1cklsWUhOamls?=
 =?utf-8?B?Vm5xV0Jmb2pPMVRqeGZheERoT0JiRHJqQncwQzNFRjY0cnRldTJkbUd0RnIw?=
 =?utf-8?B?SFpXejJRb0x0OWhjbHNVZUZ3UW82STVXL2hDcUZPcTNmME9WdWY3dnZoaU1z?=
 =?utf-8?B?dytNZC85ZDlZdE5GUVpmSGVqTUJUYitaUFE4d2l2Mk9hRndPSmJVQ214TVhj?=
 =?utf-8?B?ZXlPWGIwbkprb3hHbG5GeXdJd2Z5WXRkM29HY0YxVy9vL3ZSdFgrU01DU1Fn?=
 =?utf-8?B?MndRQSt3YkNJelFEM3NtLzB6RTJkUDRQWlJyL3NWdEttalRZaWJiTmQxTmMv?=
 =?utf-8?B?cW90ejRMTGxNd2t6SUg4SHdLc2ZiL21qTDRtcTB2NFlnLzhzN1cvZ3RRdkQ3?=
 =?utf-8?B?ajFNNTUzdlNqRWRiVUVKcGlrcWxTVVoyNERBSU9XNUZDUm9Pdm5RRXVFTXVS?=
 =?utf-8?B?aDJIQW05OWZ1cFhjZUZTUm9hQUhoVFBJZmFHVU9GSDMvbWYxT25ZbUQzaTQ1?=
 =?utf-8?B?OFluUk0zR242SFlOZGdaZlU4MllwMEZlR0JwK1pVVFZrYy95aE1tTFQrSEFp?=
 =?utf-8?B?eFdBKzNJK21OZ0NxNTl6RXN0bndaRWhUZUMyWk5zSUxybG9QRnZGck1UZ2d5?=
 =?utf-8?B?RG5iZWZpaUZVYXdLb0M5d29xc09vdThwTmtUZ1RreHVRWGoxWVh4MHhocjBl?=
 =?utf-8?B?aW1jWXJXRzBsS0dkcGZJSzBuby80cnBEcWhZbjJ5bDIrRGpBQ1dsZ29zL0dq?=
 =?utf-8?B?aW80R3h5UlJyQkNLZU12VnJHYytkdFNjaGpTYU9ONUZ3cU56YU85Y2tKeFpJ?=
 =?utf-8?B?OXBObGg2K3pVd2MvaDNiTzQ0Z3JHUUF5NHZUTjR0T2RCWTd2UkhHR1lOU2Fp?=
 =?utf-8?B?czJ3T1RpQi9OMkVSN2dMTzl6S284ZzdIODBybHFZKzNVUlBnZVh3NWtYcnk1?=
 =?utf-8?B?V1dNSDlJYjlxZ2sxWTFLSGx2VldHSmpkUFM5Nm5TTUlxV2crVm5xZGFPaXI4?=
 =?utf-8?B?NHRQT3FRZHZ1ZnR1QjZrdU5ZamVDZFlLZHBrb0xDbWpvSDFhQllYdVd2MEhz?=
 =?utf-8?B?ZGhwUG5pSmtoNXUyMXd2Q2tvdFFINWZWOEJveS9pZFpkcDkrR3dERm9PcVc2?=
 =?utf-8?B?NnN0dzdDbnJMeWIza3NFa2JOdDlObUkwOEpvTjlrREV0a3YyekpNMUNjbEpt?=
 =?utf-8?B?eC9neUp1aThoQm1WWFQvUHZIaWdnVGdVSENnOHBIV1A2NWo5YUl6SWZydWVK?=
 =?utf-8?B?b1FvQ2J4UUZ5QjkvQ1MwbGRzSURqcytFUGgxQXQrOUo3WHN1WUhlbkRmUGwy?=
 =?utf-8?B?U0JpdnRFOElHb3dCVlh3b3E0VW1WOC9sUnRITUNJaU0yNTJwbGF4eks2bnhX?=
 =?utf-8?B?NG9aVHlDalVNNDVmOTBvK1BPd3Z0YzVTK1ltdCs5Vnp1czUwQmtKL0w5b3F3?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d46ea149-85e6-4bb6-caed-08da9fd8948e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 16:02:58.2359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UKsjmcpHlQlXhoW+2kgBCJmehdEaYcj4a3/T5hIvsVqMicm2Yt6SdCViqhI06TwOLrkeRjMHIUh4o2WRaluwwxjjAN+NmKeHgtFv3GPCdcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc/slpc: Run SLPC selftests
 on all tiles
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
> Run slpc selftests on all tiles
>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 45 ++++++++++++++++++++-----
>   1 file changed, 37 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index f8a1d27df272..928f74718881 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -270,26 +270,50 @@ static int run_test(struct intel_gt *gt, int test_type)
>   static int live_slpc_vary_min(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
> -	struct intel_gt *gt = to_gt(i915);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret;
> +
> +	for_each_gt(gt, i915, i) {
> +		ret = run_test(gt, VARY_MIN);
> +		if (ret)
> +			return ret;
> +	}
>   
> -	return run_test(gt, VARY_MIN);
> +	return ret;
>   }
>   
>   static int live_slpc_vary_max(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
> -	struct intel_gt *gt = to_gt(i915);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret;
> +
> +	for_each_gt(gt, i915, i) {
> +		ret = run_test(gt, VARY_MAX);
> +		if (ret)
> +			return ret;
> +	}
>   
> -	return run_test(gt, VARY_MAX);
> +	return ret;
>   }
>   
>   /* check if pcode can grant RP0 */
>   static int live_slpc_max_granted(void *arg)
>   {
>   	struct drm_i915_private *i915 = arg;
> -	struct intel_gt *gt = to_gt(i915);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret;
> +
> +	for_each_gt(gt, i915, i) {
> +		ret = run_test(gt, MAX_GRANTED);
> +		if (ret)
> +			return ret;
> +	}
>   
> -	return run_test(gt, MAX_GRANTED);
> +	return ret;
>   }
>   
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
> @@ -300,8 +324,13 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_slpc_max_granted),
>   	};
>   
> -	if (intel_gt_is_wedged(to_gt(i915)))
> -		return 0;
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i) {
> +		if (intel_gt_is_wedged(gt))
> +			return 0;
> +	}
>   
>   	return i915_live_subtests(tests, i915);
>   }
