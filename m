Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D501E618F11
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 04:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F06E510E011;
	Fri,  4 Nov 2022 03:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F5810E011
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 03:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667532536; x=1699068536;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JXLY4bPZj9YWto2O42qqe+5bQgyWT9es3Y3+rQ+u55M=;
 b=PXdvXQ5kP5QAd43zgcFumLmKxUv6Jxpv/y7SrVei8jNWdh4fsvbmVlZP
 TfIqBQH60cEPNXqmPZh8Krj1M0FKXvS5Rt6ViUHcw2OjRjTL9hQifMxn/
 2XVpp1kxw8OAeI/Jdsgxc5vnCKwQq0YZ95BzKlhabPMH9TwQj8HfgNCZP
 bde0Vhe1kQYm5e3Ddr03CJLUmwlq9lZ1OENHAxlH4LuvWWb61TDNoC4Tr
 RnLM6OCnQuYeD+XbRuEVcAPvZx3DI2XbRsl3AaND4uqLmEjG1jCSe+wF/
 HHzkrHun4s4wwOHDvAyf6sizRBbrJPzq3Sqwe9a3hkQn/rCItYpFZ0m6t Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="374105878"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="374105878"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 20:28:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="666218247"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="666218247"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 03 Nov 2022 20:28:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 20:28:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 20:28:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 20:28:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUcsj15vyMYpf1Te09OgORjKJt063r/4Ykq4fba1BrRXJDPJltjKShEPRj8w6kMmQCW5iqAHQ1fHeyx8qwOUqCDnv16iNi4Oc65HpK2pqB4/p1TdtE+uXD7/DOFd+nbIybB4C8SSeYa1Lu2oF0mzNKWjkvGPcYl8i2GhuOS9BprEjI88V5so3MfSgJU09CMyxMx+97kMYrwFXtVzeeCD9RbOhrTY06WijizoG3T3M0m1nehEEliZxWc7exe87sSCheLqvIhYpphXDkznLqvnayt4UYcXi8M9DbLU8N4qyT/WsoxrBGnHBlgiFUtE1+SOwwZz3yUXUKfpjHkYcndNCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xktuwGmUkb0zdgqCc7ZOF55iTWLSHhlSjvYZ4Q7P9Nw=;
 b=DY9+nsmKkYS9MsHp+32U/FT5D3B1vlg3rBNAlVJaxvIEwrbOW3PxfU5wYuQ91WyW97y2QGpCkCq53yc2hBr/c67vYH6mSqBPxeUe4rHkymst82GfmROgMLtjTbTIWBurFB5wgxlBHDpUot9clSOw6jORlUvsi+WcJOlRdRVpNmRpi56XjLm44G1NEHmnABmDYWKkvM+lglLrO/Ieb3KYv17lnwR1rLr8b7fetluUJ9CpVw93PQeh5gPZ+PAp0USL7rmt5TN14+EY9jGbBr2AOqufoXof/dbHoBLSJGiubSRiYY63GXcv+ZnV2e+058b/cH4tWRf7xab+yfvjAQtltA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DM6PR11MB4691.namprd11.prod.outlook.com (2603:10b6:5:2a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Fri, 4 Nov
 2022 03:28:49 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::d3a0:457:9c46:51a7]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::d3a0:457:9c46:51a7%4]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 03:28:48 +0000
Message-ID: <24f6d366-e53c-6131-ab5b-93624eb3a23e@intel.com>
Date: Thu, 3 Nov 2022 20:28:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221031051411.3739031-1-riana.tauro@intel.com>
 <20221031051411.3739031-2-riana.tauro@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20221031051411.3739031-2-riana.tauro@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0057.prod.exchangelabs.com (2603:10b6:a03:94::34)
 To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DM6PR11MB4691:EE_
X-MS-Office365-Filtering-Correlation-Id: e4b71462-e860-4d40-2192-08dabe14b004
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZArFVcuOd5JqBK4fomciQbKBDOa6DiDMaWV5GpsfneLuVOVNQ7yU4Jn2N3ky3wxLL+xHgbCOEc0pXfIUsvkGfQY/4gFdUrjpiWYYSezvQdjKML/YKct3Xb6pJ/d99WSRPx6NJpQOYxmmZPXiRAQGPikAePMzsw3GSmx6uziFMoCON270TiPp7aWX60tmsP4UgVj6fBQVFNKcytQM1GZ0oLW1huo7lzM5nwZ9MB8L71NjRsqdF5FNu3zgb8jvFU2GEJhikkGD/Eh1RDBucAqFmkCGyufsIogtKKsyZtHMKSMdDuWN9gWvzvprdzWnE+YWEXsTAqNpZ+vWt+K5QwzT8+PZrpbWmBF+IsMeNTzgLri8yfzQRfPODK4g9kMv24bc6z8EK1a5FNjuBNlqR3ugaelytQqdvD1Ul0Udf1WRIER1YkrECBbSxFbsNCz+qPP6Smkhuc7kbeYdObMx6rluP446eFK/VE2Zt2p1waybSKf+IFNMtLTE14UFDvgqeESjWKVa2vC7p863gkQdU9NFW+kyoVBRQsuLE9gSDV4JCW2qckcfj/2LciTdfxyGuL5ottb+uHYHH5IYS3FmG87mooVyQrxNy81VqJTDyF6xZrRYCon4cAy2+y6JVSCAe7PO2EgwPtauiqbIvypfMurDamh5DUKt/E5AoTr3IbGq3DjoTLPtIC9BI9oQK6toGBn3+mLBV4L43p2MuLAHTor7eYOD6NEs6Gi7sLKjlKPgdLSyVc79qV63bc978wjjF5cRP07GT/ez1Oldj780Jff39rb6GvFghMBCbv3n1yK7vD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199015)(6486002)(478600001)(186003)(66556008)(6506007)(8676002)(53546011)(26005)(66476007)(6512007)(2906002)(41300700001)(5660300002)(2616005)(8936002)(66946007)(83380400001)(4326008)(38100700002)(31686004)(316002)(86362001)(36756003)(82960400001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TUVyUjBHYlczUE1UV2kvWWE5ZUFZbWJCVWV5RStOanZXR2xaMkpnbXZWMnRN?=
 =?utf-8?B?Q0dXQ1o4UEhzVzdZQkxOSFV1R1dRNXFpSi9CVlFRRkQrd2VvVzNwbjhTemZa?=
 =?utf-8?B?N084a0E0NWNsTnhFaXJ2YUZBN24vSDZKVlhvZFF1d25Qd3AxL3ZqRDhvKyth?=
 =?utf-8?B?MUIzZ25sdnEveG9wZzNlNmlZZmxhTE92VEtSY2xZdEFaUENtKzArQm5TTlQv?=
 =?utf-8?B?ZENUOUJCNXZEYURLN3AzaFdUZDFOZEk4emx4WjEzY2p3NmM3dUNhdENQNW9o?=
 =?utf-8?B?OTZoN09FK0prQ0ZkelNFS2hXK2xYL0hHNVo1QnRVbUUvQ2ZOL0JQNEpOVU1s?=
 =?utf-8?B?QkRqNEdWZFIybGY2Vm15U3E5b0ZYa2w3TWN3a0xZWUErOE1YbEZocUxRenFL?=
 =?utf-8?B?cEo5REp0eG42VjNiZkt0OTAxV0h6MXhGTDZuVWdnWWFUbFJ2TXc4aVJDcENG?=
 =?utf-8?B?MEtXdW1HYzlCZ1R0VENwUC83bEZYYWZUdFg0OFBKWjVFU0ZSQk5kL0xEMmdQ?=
 =?utf-8?B?L0FkZllvTFBZSCsxaG91YXhMcUUwdnFjZnRPUEdlMVdsRUsxeXZ2L3RnSlBz?=
 =?utf-8?B?UUM0ZGFUVW83UGx4TW5qUmV1MWd1OGRCaVJzS0o2UXVqYzByTG5LUWhjUTh3?=
 =?utf-8?B?Y08rQ2crZ3ArWDhNYTF2VUdXTmhXak1nWUI2OTZ0RUVLNy8wbHZ0QnJNbGha?=
 =?utf-8?B?WlJWWTdBQTdCN1MycndBOHRaTUJUY3pLbTc4SUtNQzR4dUdtdDhOSHA4UEo2?=
 =?utf-8?B?ejVXL0FMdm1pRHFKdklrVCsrSUQ0U1J2NzRwd0tnb3BMN0NWOGFaYUljdDBS?=
 =?utf-8?B?bjhsVGE2QmdkZ3ZraTVQeTFlOHVGSGpZNEY5c2ZnR0s3UkJ5Tm83bkVmOENL?=
 =?utf-8?B?azZpMnZaekkvYVZha3lieU11RnpQZ21KczdzSjNGNFJKR2c0Z2ZFNGhMbTFY?=
 =?utf-8?B?bkVyN0lvNGEvYWtRQ2pNMWZxankvc0gzZXR0N0dGVExMN2tlMHlHb05OYTRH?=
 =?utf-8?B?NHlNaC8xV0pWTjNRZ3Y5NmwycUdnMGtXSjlFQ0R3eDdzeHBQei9maDZMc29H?=
 =?utf-8?B?ZVBhdGxBSjNvTVo4VDBQM1pnSDF5alhFemxrRWdpdUVNVjg0TXowSmRGUkFW?=
 =?utf-8?B?MVF0N2FEZzVacXZlditoV1NGWk1DUXNINDQ5bjNKN3VQTkJwdDNLcEdXVlM2?=
 =?utf-8?B?MXpOWVB1Qk9taFkwR1hRTFhFUGJvR3oxNUtublVnNXd1SUVrdW8vdDRCZWtu?=
 =?utf-8?B?TGRYSFVQV1pkR21XRmRVMHVGQWJuZkt1d3UrWDVZR1UxVHpqSnlUMzUwd2hO?=
 =?utf-8?B?UXExMkpMUEpFM1d6WUVaR2NDSGd6QjNkR2dsTHA2em9oMmJXQ3UwaldHSGpj?=
 =?utf-8?B?Ums3NXRWLzd6M25XVGNlSG12N3hJL2lhZTB5ZWVIWmR1SG5ZZVFSTEhXdWNO?=
 =?utf-8?B?citJR2pZcVBHdFMwR0JhV2VMNzFZdk5PclRwOWV5WFJnQkpPYnR4M2lUWlBH?=
 =?utf-8?B?NDgzalpFWE5kMDF1aEN4QzBzRXFlYk5XWDZxcXh3cEs1ZDV6c0NsajRBNDBC?=
 =?utf-8?B?WG5tOWdMMDVRUHp2N1paMFQ5T09IOFJHQnNCcTJSYWhSb2lDTTlrK1VRTWQz?=
 =?utf-8?B?bExqajM3Z1dFK3V0NklZa0JlZ0VmVlJOeUM0NGp5MWxjMFRoQ0JEYUFmU0pH?=
 =?utf-8?B?ZnFCY1dqaUlZLytvVmEzc2RkWGpwek9SemtDSjVpZG12aVcrc3ZINzYyOEVL?=
 =?utf-8?B?RkpZbCt4cGV1YWg5bThEaTdBZlcxdm9ybmlKeEZYRWd6TmdLOVFGZDRpbXhs?=
 =?utf-8?B?M1VNeXorc0JLY3JSd2lmaUhsSmdUZ080emM1MlNCaWYxc0N1dCs2aDg1MDAv?=
 =?utf-8?B?N1owdFVSc2dZNmN2YW0rVVM5aHVDNVZEWmtFYU41Qk16UDI2TGdSeGtReFFl?=
 =?utf-8?B?TUNES2FSTVIwczZnbXlteDlJcUJBTytXMHI4QUpkRWpvYUIxYnIzRjJMRFV3?=
 =?utf-8?B?am0wYmRpaHZENWlrY1RyQVFsOWZwNGtPcEhRRER0bmpYSHhhK3oxS05veFJk?=
 =?utf-8?B?dEU5MnNJc3psMEoreTl1SHMyOThGRThKUUhxbWJFUStPc1NQV1pZbzBCT3Fh?=
 =?utf-8?B?RWJhNmtLUml1Q3pLNlVVM0hxdkpzT1dJK244K0tyQXdhY3ZOeERSeE9iMjd5?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b71462-e860-4d40-2192-08dabe14b004
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 03:28:48.9124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1NCaBPLW9k7iPc1fpiLni/yGONncNmSKBqUR7OevpxVp26vYAKxv31/oPx8UQLT27/eudySYyJ6A7VAJdOmnBArWlg1/8mMJgU83fjGXSss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/guc/slpc: Add selftest for
 slpc tile-tile interaction
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


On 10/30/2022 10:14 PM, Riana Tauro wrote:
> Run a workload on tiles simultaneously by requesting for RP0 frequency.
> Pcode can however limit the frequency being granted due to throttling
> reasons. This test fails if there is any throttling
It actually passes if there was throttling. Only fails if actual 
frequency does not reach RP0 AND there was no throttle reasons.
>
> v2: Fix build error
> v3: Use IS_ERR_OR_NULL to check worker
>      Addressed cosmetic review comments (Tvrtko)
>
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 60 +++++++++++++++++++++++++
>   1 file changed, 60 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 82ec95a299f6..427e714b432b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -13,6 +13,14 @@ enum test_type {
>   	VARY_MAX,
>   	MAX_GRANTED,
>   	SLPC_POWER,
> +	TILE_INTERACTION,
> +};
> +
> +struct slpc_thread {
> +	struct kthread_worker *worker;
> +	struct kthread_work work;
> +	struct intel_gt *gt;
> +	int result;
>   };
>   
>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -310,6 +318,7 @@ static int run_test(struct intel_gt *gt, int test_type)
>   			break;
>   
>   		case MAX_GRANTED:
> +		case TILE_INTERACTION:
>   			/* Media engines have a different RP0 */
>   			if (engine->class == VIDEO_DECODE_CLASS ||
>   			    engine->class == VIDEO_ENHANCEMENT_CLASS) {

So, for MTL, this will just stop the spinner from running on the media 
tile and return 0, right? Not sure we are testing anything in that case 
(just one spinner running on the Render tile). Should we try and find 
out what media RP0 is and expect that here?

Thanks,

Vinay.

> @@ -426,6 +435,56 @@ static int live_slpc_power(void *arg)
>   	return ret;
>   }
>   
> +static void slpc_spinner_thread(struct kthread_work *work)
> +{
> +	struct slpc_thread *thread = container_of(work, typeof(*thread), work);
> +
> +	thread->result = run_test(thread->gt, TILE_INTERACTION);
> +}
> +
> +static int live_slpc_tile_interaction(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt;
> +	struct slpc_thread *threads;
> +	int i = 0, ret = 0;
> +
> +	threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
> +	if (!threads)
> +		return -ENOMEM;
> +
> +	for_each_gt(gt, i915, i) {
> +		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
> +
> +		if (IS_ERR(threads[i].worker)) {
> +			ret = PTR_ERR(threads[i].worker);
> +			break;
> +		}
> +
> +		threads[i].gt = gt;
> +		kthread_init_work(&threads[i].work, slpc_spinner_thread);
> +		kthread_queue_work(threads[i].worker, &threads[i].work);
> +	}
> +
> +	for_each_gt(gt, i915, i) {
> +		int status;
> +
> +		if (IS_ERR_OR_NULL(threads[i].worker))
> +			continue;
> +
> +		kthread_flush_work(&threads[i].work);
> +		status = READ_ONCE(threads[i].result);
> +		if (status && !ret) {
> +			pr_err("%s GT %d failed ", __func__, gt->info.id);
> +			ret = status;
> +		}
> +		kthread_destroy_worker(threads[i].worker);
> +	}
> +
> +	kfree(threads);
> +	return ret;
> +}
> +
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
> @@ -433,6 +492,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_slpc_vary_min),
>   		SUBTEST(live_slpc_max_granted),
>   		SUBTEST(live_slpc_power),
> +		SUBTEST(live_slpc_tile_interaction),
>   	};
>   
>   	struct intel_gt *gt;
