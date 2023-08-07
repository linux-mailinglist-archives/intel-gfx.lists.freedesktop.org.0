Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDFC7725C8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 15:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6507B89E1A;
	Mon,  7 Aug 2023 13:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DFFC89E1A
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 13:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691415028; x=1722951028;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eJZQLVL4uc9Od/EJAuYnKad28V0uxfCwK9+QdTXhnbQ=;
 b=dCZvZLUdS0+2dJueAxG4eeixf0M1QEMeuiBXIeot6pSpK5Rko26mcbzv
 /tAyGUP9umgOPe5sI7TrtHH/AMXRrsKn0m2Zux7qU72hFCuOItMoCD4SU
 yqDJBt3iB4mzEf+c9whRGgxc5PTAuowuYpQu0ZHLrxS6vyeZAf5UAMgmk
 Wm1SUhRs5QD+Ppjih8Lk9Gr7Oy7IoEn4cI5QTr/qyKj/cHsf/lx0Do988
 2RSdHkJZ3n4ivCBbVRmqc8i09KEwdZECaRkxxMcwF3ewlJUtfnMQnfNf7
 SdylA7Bk8/7/ESUyc4WEEqAF2tvZ4AesTiQhJbnDlXBFok5DWGwVwPmtM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="355484690"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="355484690"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 06:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="766004388"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="766004388"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 07 Aug 2023 06:27:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 06:27:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 06:27:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 06:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9rEWNOtssdQBEZLsvwaK+Yb/1IZMdWQZ1XjCkkm9ZaK+n52mZzSZfyAIOlq4IR7NcWq0KvV+fgUb7LdKXF2H0HVnzP3xD3nI9IcZa6+4RWprjqFqglSKkwBIjUq1mytxR+viMQo6MthxMFBPv6DxhW3dQ+7H2jZtaRC9WtVUH7wqTYCEOLA4K2x9HP0/cuLoyr9FCK3px4QRzt50mxIVbkhIiO/3PtTSUJ3BJ7uxKSCwaHq+ercxH/Cl9Lryl0M5AClGE3upJvEuLIPVE70Musr023/R2pWKTiA+V9py/nkEtJk4+Uw/5T3xD6uayHcHLnTjwxNUMXCMTugEElBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfCTRAnvWNJ0rlSMoRJbl+B0yB4D8rsizoFtsfKeneU=;
 b=UQgij4SwuEiUOWhOMEAGFHUcS3Wi6Gue4GQ8hKG4P7AOgAbOCxHT4CLbOeWAhuzo7tUuCmSlEf7vPS+SEESVyUKWm2bLizF0bGTfiGIcnS1anSfQ4Wuu9tksSyaXRVEf54CkKP6f8tW3be5ItJ1llHSGufB7JVloorKZZr+++oMNyIjWmY8GuJh7pbiKaNRhvEzZB+WwHUa0N7ITji07hktFZC0zVz2QCd0Cy7sHJMIf22V52bbAACm1Wdo2we1OJg3dv3kAv3x6hWdBDfbtxv0yoLFUzFUXfHqKIqtENc2TrGugrVg6HVK8UNpP2IVxIJItFhfsQE+M2g+M9AaEZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4841.namprd11.prod.outlook.com (2603:10b6:806:113::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 13:27:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 13:27:03 +0000
Message-ID: <9a39a0f2-fa5e-1e17-9bf9-10e538f5a17f@intel.com>
Date: Mon, 7 Aug 2023 18:56:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
 <20230803130337.3784597-6-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230803130337.3784597-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4841:EE_
X-MS-Office365-Filtering-Correlation-Id: 03d14881-dec1-4cba-5fd7-08db9749fcb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ePWT64/cq5IlYXrzSITBv8IJDHGT1fi/pwFVKn7JuPojfjoZJ/rSS1LJNgJChIba+UpClNm1LyyomSxxpcpSiJ6dtmskcmY7gF6aRfSt9aabFZox7SIIZlzjosdnnmuFTSxnvka6ryojw4xUqs3Jxc48JkKRyv/IVlbSryITiMVROQPvxhl9zYJRZIpkVzG5qqvL419iEUu6zWEXbdklp/Vn/QgiaWkper305NplssgVr8Tm90O8JVKRe4aT75dFWzdxRkdmNXGTgHD/zBWClh9aROXJap0l5ocvJET5qQDQFDpwjutoTDaZ2AVL9wxTLVefRPW2m0/td5XBO0MLdCWTXYuxxwV0VBiZOsNAWWLzfrQACeVj8jb3rpSaII3kf5ZsEfT0011t1amAflsNfTb3l3598MzB/qfYrD3SnHl0FysgE1NmUe1Y1IIfxIfrYfQvmLVfUMSau3N2zEusMjGQEyYYc8/p9clX/TFvIM8oPodYXDB33+f7CfzvnGx0aE1qkeqcw1ZdLTTEgMSE4mwiFFQfQxjAPQuZ2pl2Gh0+1O0d4qlosil6lGEt2W3I3TIALNOGY3c1J6I2VoAEixGbzl9H+B8i0uoL7K1sWG0EwTI0S4PE656Ls78FzAEr8RmEKBx2b2PTw+db1d7eXA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199021)(1800799003)(186006)(31686004)(83380400001)(2616005)(2906002)(38100700002)(66476007)(66556008)(66946007)(316002)(8676002)(8936002)(41300700001)(30864003)(6512007)(6486002)(86362001)(478600001)(6666004)(5660300002)(53546011)(36756003)(6506007)(26005)(82960400001)(31696002)(55236004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHhmQzQ2bDdFc1Vaa1RGcmpQejVlRVpyUUVYd1lXOVhUZFJPN1pYWnFHOHdj?=
 =?utf-8?B?RUdjWk1SUE85ZnVKR3RQZ2RMeGZpYXA0RHpYMWtnSDFOOVF4WmlydG8ramxX?=
 =?utf-8?B?Q1hQVjhabVl3VkVvNnZ1WDdIaWpxWHpQUFlCZGVDRzYwUjEveDQzdDc5SGxB?=
 =?utf-8?B?OWIxaHdDdnNqbEJDTnFQeWhaSkRXRFppc01pb09ma1hCWE8wZElwc0I0TUJs?=
 =?utf-8?B?NUY1QzZNaTNYMXNCYU5MWnovb1E1dEZHZkczbktSRHYyYmp6cHgwaVgrTnJs?=
 =?utf-8?B?NEVlLzhEelltRVl4N0NRMjZvWTJQVkpBaU5VY1FPNzMybmt3U0lPM1RsRWFy?=
 =?utf-8?B?NlVtUWFvcDZtZG1jNWorc2J0VGxmYnlVNmN3dTk5Y0k2bHNYSEVscjZUdVRK?=
 =?utf-8?B?SEtGTktCVnIxNE52NjBjRFU0MDVyUDhPck0zckw4ZmRvSUlCcHFUZDJVck1W?=
 =?utf-8?B?Uk4xdkJWcVA3V1VaNWNiWXZuYndJVUZTdkgwbDZzTlZ5Ni9mdjRYUE5KbmFE?=
 =?utf-8?B?QjRvWWt5SnFPb0M4Z0ZBaXJ0R2NPQzJGS2dlVVdpN2hLQ1JXSHlhTVlBR0J3?=
 =?utf-8?B?YzkxMmdIM285RU1pajBmYk5DVXRTOGpYUWUyWm92S0JkajE3M2QxV1VaWnVn?=
 =?utf-8?B?R1BwazFIdlpIcXFYMm1JTlJwTjRzT2FHbmZNUmZuN0JMZjEzMGtjMUtudmxu?=
 =?utf-8?B?eUdCek5sVlprcWFWR1l3WEdHbmlmTlRGdzNvdFJhblRqMlE1ZWhmYW5GWkRK?=
 =?utf-8?B?dEIzazhxblVIN2tvR09vUVA1T2NQWkJZVnI5cnpkY3dyVk5laXR5MHFsZnRI?=
 =?utf-8?B?M0tVQ01Pc0drbjJQRENoc2N0UDFyWFJRaXFXaWx6UFFHNnFUOVRSZEZlVXZz?=
 =?utf-8?B?ekxmZjlES1NsOUkxclhMS1JucFNKejNOZDNRQXpLUGU1N1F0bE5rWEE1RUZV?=
 =?utf-8?B?ZVVpMmNmLytENkFESnhld1JEOUE3OXVhUnFEb1FsYTFXUjFjTjhkbERVa2Fk?=
 =?utf-8?B?Nm8wV0kyNlIvNWUxajFJUUhGSkNtL01YQ0dhdnNMZlRmRnhrRE0wbGdNNElQ?=
 =?utf-8?B?Mzk0TXBzRmNrVHg2NThCcGd3V3pIVU56eUpTampyQlJHUm1wTTZpci9mcUhx?=
 =?utf-8?B?VlZjVW1Mamt6dVB2cFpyZFVLVVE0ZmpST0ZrRVdESTFnMEZYTHFEQmRMT0xB?=
 =?utf-8?B?N2ExRE1FUzlFaW9wbmVOSFRBb2NkUlBucDVZQ2hUaHlEMk13U3VWdEVrdFhh?=
 =?utf-8?B?NkZiSGg4K3BxTHgvQXBaZ2dpUkdDZ2w1OHJYM1ZodWxQL0xZVDJBc3czWWht?=
 =?utf-8?B?TUFWeStVcElacXVPRDczbmlIeld6OWJScWZ4bTU1VFQ3aFpxUVg1Zk4vSW41?=
 =?utf-8?B?YjhERmpGREtQTThZSWVndmVWYzhmV0NuZWNEWFFkTUEyaVhMekZVTlhhYkJh?=
 =?utf-8?B?cWRtd05sbnZOdWQ3RWFPQ0wwM2NNNCtMb0d5Y2VvSEZEREwvQStvK0JFRzRU?=
 =?utf-8?B?bHdmTXFuZUdlYXpHcEE3S0t6UGV3ZEU4UFgzSXlOcVpvd3FrVXhNVWNzSW91?=
 =?utf-8?B?Y0UxQXNFaFRWaTJodVhyNjY2enJ1bzhlK1VFZmFXNmdrVlRjVjdSSUZGZ3Ix?=
 =?utf-8?B?L1V1YWsyR1QydEYvZ1hLQkVlSllVVjFNcGxDZ25xWnhOVlVjZ0ZxazVCUGtn?=
 =?utf-8?B?SHdsYUUvNEdHNGlhek9xd01FMHU1YnN6Mk9IQWVHVlVCV3B2S0Y0VGpKNEpL?=
 =?utf-8?B?UEVra09YMDlaYWwwamtDRjA4SEQ0dGd6OHBPY0xYUld5c1N2YU8rNUh0NkdT?=
 =?utf-8?B?S2wzRmkrZkNiUnovb25MV0lnYU9BRzYvZ21tZTQwMGFVUnphNWc2b05YZ1Jw?=
 =?utf-8?B?bWx6RGwyaFZ5OG5kRkJBdDdVczdFN2xoU3pzZktHZEJxSk9DUEJCM1ZYYmVa?=
 =?utf-8?B?bTY3c25IZ3VXNlZFSjVHc0VIUkpOOHM4cER4UisrV0g3QVRlYVdKcUxsQ2Z2?=
 =?utf-8?B?SkIwWWZyYkNYekhhSlRKdkNPTzJFbTVIdVlZVzBoVG0yNlRvb2o5dW1XMFln?=
 =?utf-8?B?R1dXRGtZdWF4NmJWa3lwa0ZxMmZYYit1YkRHeWMzdzJMNDRVeWM4STNmZjJK?=
 =?utf-8?B?RkpRSjVEZU00Y09DSnZzUFFFTmlnYjVjVmxYZTZJQUtUZzQrbmNmYU1Tc0Q0?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03d14881-dec1-4cba-5fd7-08db9749fcb9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 13:27:03.2868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i4TpvvRpXdnFVixoyvqWGAH0DRI9o/nkyiSMFXu0qdcqHcqQj0lXDkX9pXn92X2xcXbAU4D/MfKLbm0s8RrE60Hanbl2l4WioSZinWZK1kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4841
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 5/8] drm/i915/vdsc: Add function to write
 in PPS register
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


On 8/3/2023 6:33 PM, Suraj Kandpal wrote:
> Now that we have a function that reads any PPS register based
> on intel_dsc_pps enum provided lets create a function that can
> write on any PPS.
>
> --v2
> -Changes need as PPS enum was dropped
> -Remove duplicated code in intel_dsc_write_pps_reg [Jani]
>
> --v3
> -Use dsc_split instead of num_vdsc_instances [Ankit]
>
> --v5
> -Changes to implement the new dsc_reg array variable passing
> [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 309 +++++-----------------
>   1 file changed, 66 insertions(+), 243 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index f283580c2860..93c1658d3a67 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -365,7 +365,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   	return num_vdsc_instances;
>   }
>   
> -static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
> +static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
>   				  i915_reg_t *dsc_reg)

I think lets have this change where the function is introduced.


>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -388,6 +388,28 @@ static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
>   	}
>   }
>   
> +static int intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
> +				   int pps, u32 pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	i915_reg_t *dsc_reg;
> +	int i, no_vdsc_instances_per_pipe =
> +		intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
> +
> +	dsc_reg = kcalloc(no_vdsc_instances_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
> +	if (!dsc_reg)
> +		return -ENOMEM;
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg);
> +
> +	for (i = 0; i < no_vdsc_instances_per_pipe; i++)
> +		intel_de_write(i915, dsc_reg[i], pps_val);
> +
> +	kfree(dsc_reg);
> +	return 0;
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -401,6 +423,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	int i = 0;
>   	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>   	int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
> +	int ret;
>   
>   	/* Populate PICTURE_PARAMETER_SET_0 registers */
>   	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> @@ -423,149 +446,53 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	if (vdsc_cfg->vbr_enable)
>   		pps_val |= DSC_VBR_ENABLE;
>   	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS0 not written err:%d\n", ret);

As mentioned in the patch 4, lets send the vdsc instances per pipe from 
here to intel_dsc_write_pps_reg.

Regards,

Ankit


>   
>   	/* Populate PICTURE_PARAMETER_SET_1 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>   	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS1 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_2 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>   		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>   	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS2 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_3 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>   		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>   	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS3 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_4 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>   		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>   	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS4 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_5 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>   		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>   	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS5 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_6 registers */
>   	pps_val = 0;
> @@ -574,100 +501,36 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>   		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>   	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS6 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_7 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>   		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>   	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS7 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_8 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>   		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>   	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS8 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_9 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>   		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>   	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS9 not written err:%d\n", ret);
>   
>   	/* Populate PICTURE_PARAMETER_SET_10 registers */
>   	pps_val = 0;
> @@ -676,25 +539,9 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>   		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>   	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS10 not written err:%d\n", ret);
>   
>   	/* Populate Picture parameter set 16 */
>   	pps_val = 0;
> @@ -704,51 +551,27 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>   					vdsc_cfg->slice_height);
>   	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
> -				       pps_val);
> -	}
> +	ret = intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "PPS16 not written err:%d\n", ret);
>   
>   	if (DISPLAY_VER(dev_priv) >= 14) {
>   		/* Populate PICTURE_PARAMETER_SET_17 registers */
>   		pps_val = 0;
>   		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
>   		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> -				       pps_val);
> +		ret = intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
> +		if (ret)
> +			drm_dbg_kms(&dev_priv->drm, "PPS17 not written err:%d\n", ret);
>   
>   		/* Populate PICTURE_PARAMETER_SET_18 registers */
>   		pps_val = 0;
>   		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
>   			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
>   		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> -			       pps_val);
> -		if (no_vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> -				       pps_val);
> +		ret = intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
> +		if (ret)
> +			drm_dbg_kms(&dev_priv->drm, "PPS18 not written err:%d\n", ret);
>   	}
>   
>   	/* Populate the RC_BUF_THRESH registers */
