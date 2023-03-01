Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844636A6C01
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 12:58:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ADF210E0C5;
	Wed,  1 Mar 2023 11:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EA7A10E0C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 11:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677671925; x=1709207925;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tFvrplBcu+EKheyvuk+lVGnl5oftk7pcyG4igZAsgeg=;
 b=VhRVFAoi/EU7YkdPcYWE8og8TbRcQ+86YcLiy2ypzeINCDYzRD6ShWiU
 UIcr0pSm2zByBgtgse6sLx1C4r5I4fVJvVSrOAoQV9W+gOo9ehm1Y4q76
 55px23PPC7QzzEuKSFCUlm2Z/UH9f8LDbvEbtbsKI5n+oA1e9puHqcrkx
 iuM1FLsuUSUaG0Ei4LxUUHdvrwGcZbV85iBrbeVQAYCWbzWBuNXzrCslk
 c/9aM2OXe+irqUamsbZ8799lTTJrJB3E5muwO2KQlo2t36AiDSGi5G8wo
 Ts3vi71soTS8Al0tpyZXDoEmEAzVvp1QA4zTaGqRCk5yvTgT07NAYkamX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="396955863"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="396955863"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 03:58:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="798411890"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="798411890"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 01 Mar 2023 03:58:43 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 03:58:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 03:58:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 03:58:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MH6uXOjZPKBvPk08DRedZTPimO0E4i2LcdQ7x9wIKPeLeTlRIi630JHVGicZ5kI5Pdh1Ik7zy/B5aqwkTOWTudWlRls2xAVY106DuxJJzExh6+zs1CcWxclpJfHn+FuwQXe2EJjPTwGDyy7uD/YvC0pKaoRz1B8CkPbItwoCC9qKasUbwH6LGzmd7BJmJvSiEs/Rryjx4B1MJ1suZE7E7qw7/yfv03lZYo2vDrtCpY1y/D49o7SS1cV0tLEhmiLrq/YWXZSgbkgq06GXQdewD/TAU7v7Fs5IckNIb4OZajGPtlrxD+scG7/9mS1GcFPzuj9JjELTVj/v5woLBuM4sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bFLKQ5myZ4YlvhliXBVc/ihlShP89skq8vjPnebX/TM=;
 b=k0lb0Y9ImEkiK/suHHKqCKjDaFkep5Bx9bgfAgS9fmk/W3vcxBjtTFPwBiRzVGN/GjYYSDkO0kwp6YE3W939glKnFcqfPivqg4B3AswKq+omWTmqxZaJSxuYEcOPH2QF/tYyyjhaGFG1zbY1hoMhDfrKCpAaPHwuWGXaW91gnoysWOysWbRtl6rM95jnqsKVfZEhSi2qUWb63U1+Qg3rdSFNAnQxHLBHi8+w3cdGKzGYjMXcAqRjjyfseLYR5HlSBTp8CzqZnMo9TAAfWV/RDDE4MuJw7iTohNBJlpyykEoBIFL0eCTvhkUwBQvp+cxko7ApOE2ZR0NUYitf7Tk4zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DS0PR11MB7384.namprd11.prod.outlook.com (2603:10b6:8:134::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Wed, 1 Mar
 2023 11:58:40 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68%9]) with mapi id 15.20.6156.018; Wed, 1 Mar 2023
 11:58:40 +0000
Message-ID: <e02aa3f6-e9de-122b-987b-5e4e0968879f@intel.com>
Date: Wed, 1 Mar 2023 17:28:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230223100503.3323627-1-anshuman.gupta@intel.com>
 <20230223100503.3323627-3-anshuman.gupta@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20230223100503.3323627-3-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::15) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|DS0PR11MB7384:EE_
X-MS-Office365-Filtering-Correlation-Id: eb21b970-59ac-450c-dfee-08db1a4c4c35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1kk4MawfzgZLf7v36+bM9QahTf0EiWdxe0WejHLulfN9SKqSU84E5d47Uqpqaf7r8TqTtjfAQf2sZatOa5otp1WxCMTgCGAbNhyvqraWmh8ILKDWCUVr1/225Z3yXyhho1ntnzdTKv9nxIl1D/gGCWSP5NM3eTdaeH/jaL76yvTEcVVRPcMbXReUCLMtF43xvMW3XT63FW5jP3/90mdgc14PD9fRK5ULpsW6ps0rsOrrs5sCyu/1LXGZDrQ7F/A6/Jh0XxKHYi/hSOjVZeOp8oq161FWL9GmWf/5RHB2Itd4mPwdOEtVL015X6RpV643jdlQcAnsfCeSgh2+vtwst+djJMGs7fQ6hFPEdoQVpO3QV1BVfqNlq3/jRFZRUiINipMLkJXKaXY8lcRvdhWHvzIaHq5/SXnUc6QOfZuVNM8VvG9Gg/KfivkgyO4fa6spBBSRj1qAlHq7bsQtN4pYZLzp1PauPDTte0cfS7p1PV2N4j92o3fn5o1SOsGpbaWEMd69HBamfVqr2KzF6CvnFoKDq+LzxtF6Zt/BN/eeH9wpsoknfey6YOYmMzrAsISlsdqEOl78WrXfO3kN43xf5A+fRIAHFSNRclxF7gsXEKwiVGvimIFhu6w/H9COli9D4F8H7o200bSfVoCy1GIy42Cvm31WNYzvGkKLkWrAWP6XDWoD29exzN7J/XY2ic19wqlySEgskBtgCGRuDh7UPnLiNIEu7Rqe1NlXWdFCiTI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199018)(36756003)(107886003)(6666004)(8936002)(5660300002)(6486002)(316002)(66556008)(83380400001)(478600001)(186003)(53546011)(6512007)(6506007)(26005)(2616005)(4326008)(66946007)(8676002)(66476007)(86362001)(31696002)(41300700001)(82960400001)(38100700002)(31686004)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zjh1M0pERzhONGFFV3lNcVpNMkJOTGR6RE5oMUl1TFJqVmFYYWp6bnBneG96?=
 =?utf-8?B?OWJPOTJCSEZVUWFoYnpTSmRraFIxd041Y25DM2k5UWFGa3EyRjVPb01vOU1V?=
 =?utf-8?B?NFl6SXFIektnSTBNRlNsREp4c2lRekx0enlySWJRNkFsRkVHZXVBVWtpZ3N6?=
 =?utf-8?B?OURvUm1TOWoyWFhaQWNtZG1SejFoTWdSZmYzdGNRK0p1djByUTBhU1ZmaU1l?=
 =?utf-8?B?cDJVQzVpS2hiZ1ppVzlPNEhxejRzN0VuS1FnSHJvZjdDUnMvTGxsM05YRk5T?=
 =?utf-8?B?elk2RkU3RmZqYjgwclluWElva0l2bzkyNE4vRkMrcjBQMHZhQzdHOVlpWFlF?=
 =?utf-8?B?TWpkZngvSy81V24rNFZjMmo2VXdzcnNTQnVqTUpjTkgwVEowMEIrSkJqay9w?=
 =?utf-8?B?WTN3bUNET1BPdWdsUUxwMWNSOEFkNHk3aUIwYlo5ZmVTTmZsUUVaV2lJYU9I?=
 =?utf-8?B?cG02NWx6MjkwcExJN3JIS3ljbXZtVGFOTEx4cllsVkd3c1RBK3N5VzUvL2hr?=
 =?utf-8?B?N2hHejlWNUIvdy9MVHVVUnJJUldUTkloTHBIZ2FyR1B6S3c4WW9jODJ4OWd1?=
 =?utf-8?B?UGlWVGc0SFRZd1dKbVFHY1o1MDlsblM0WEF1MWpubTZUM0hGdUJ1ZmlMUThS?=
 =?utf-8?B?TXRjSW5oM21rRDBwMkhPTkhTaHBBNzlZbzlIQzRTK2FzdVRBcE1SZHQ0M2FO?=
 =?utf-8?B?dXliUjYzUUx3L1crVFQxNXA4SDI5UUlIbHlRb0VadEhBVFJ4OXFmaENYT2Qw?=
 =?utf-8?B?bEQ2NFcwcWRkeS9HQWhlSlQ2LytPN2p1R2o0QmpjeXRaWXdkcnc0Qkp0RU5Z?=
 =?utf-8?B?aEJQSGhDa1NhRE1XcUhZVFRBV1pEbGdwNHVjWktZZ2hrbmYwdUNQMmc5cnRj?=
 =?utf-8?B?WXd6QnBqaUFBWGRQalltWnBqSTJOdVRlR2ZVMHYrdis3TDFTUGVhSzlrL1JJ?=
 =?utf-8?B?d0FsYVQwOW9CVW1BVDUvWUlXRk5hYzUrdDNMbVF5VGlPV1E0MHJqdlJvYkNm?=
 =?utf-8?B?OE4zajJoN00wcUdVQ1NJbk9NcEswRWM4MzljcmRCUXcwckFzeUVXVktISW1i?=
 =?utf-8?B?ekNIMCs2Z1VVeDJORUY1dlU2MWhZU1J3eUFEYURQdW5lQTdVNTNRem4veDVH?=
 =?utf-8?B?dkMrM0J1bE11bitvR0xsL01UVGJpT3I0ZzJuOUx0Nng5aGtiZTJmajlKTkdo?=
 =?utf-8?B?ZnozdTV1cmNJbzZhMDR2TjFxeGlzOXcyZEd2cUZDT1NCN1ZMSWhBS09oalc2?=
 =?utf-8?B?QVgwZHpBUjJpVVNFclpIQTZIbWR4WWVObmh0Z3ZNTzR5TFBMcnRrZFA1L2Yx?=
 =?utf-8?B?cTBwb2hETDBPWHVOVEloMzJJTFl6Z1NsSDBVVFNOczhwNDZydzRtV0FvYlhG?=
 =?utf-8?B?Wmh3RTR1ZzZlT1NuMk12N2tsRDdtaFhnei9pYVAyTUcxd1lXdTVRZjJYNWg2?=
 =?utf-8?B?Q2M0Yy9aTGVqcXlHenRGVzFBYk95RjJQS3JIbjN6SGVpdHZnTkhjRTFONFZ3?=
 =?utf-8?B?anVDNlp5TmNubE00WjRPRE5najdhV3VxS0U5dnVGQ2U4bU9SVVEzb3FEb0ZK?=
 =?utf-8?B?dFByU1E3Q2FNbzdmRXRiMjM4OXpsb2tkSi90MDJmN09hM2VmWDhIdzB5Zk5R?=
 =?utf-8?B?Q09YamNZMGtrb3o4anVDZGhERTY1WDR1Q1dXSkIxeGVZWkh0bDhmUXRSS3Bj?=
 =?utf-8?B?TlFzOUhiMnUrcWZBaUk3OGhOcytORW9obEJvWm1QcksvUHVoTk56Y1VRZVFs?=
 =?utf-8?B?djVkdnFUYUdqWVlJT0JyWEdiRVhmTUZGT2hVaThLWFpFcEpJRDJlNDcyejA1?=
 =?utf-8?B?R3FBUXNxSHZPWEFhUmdoUStxR3c0VVA0MWpLSkN6MnhyNkhvQlJMMG5GUTdQ?=
 =?utf-8?B?Z096SGlzaTF0ano5U20rK3oxVStnTWpMM09ndVNkcytvZ2swelVSMnM1WTAx?=
 =?utf-8?B?elZFYUxVT2Y1emJubEJJNVFSb0pGcGZ3dGs0ZU52eFBVSFd3cU5Bb2YxcUJ4?=
 =?utf-8?B?dUFZVFBqK0xGQmxYVW00Z1ZJU25ON2Eyek5pc1pHYWNnUitzVUhVTCttME16?=
 =?utf-8?B?WW5lbFBIc0JVaTF2OTZQNUZtZWRpd1lnSitXRmVNS3h2cXB3eVNDVVFMbGFE?=
 =?utf-8?B?cjFSZis5VkNMRjdnbUJPQ29LZzNNUzNwNEZzUmJqdlhCSEw3ek1WbWttcVA2?=
 =?utf-8?B?bUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb21b970-59ac-450c-dfee-08db1a4c4c35
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2023 11:58:40.4944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /G4/yImtITn8cF2Tj+FtShJkt6TwFzYAI/SNfx5fljzHKavJAi3rSdxkvbCyclvuHUEcd7xgSFHFlVK7APb0bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7384
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftest: Fix ktime_get() and
 h/w access order
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

On 23-02-2023 15:35, Anshuman Gupta wrote:
> Use ktime_get() after accessing the mmio or any driver resource,
> while using wall time for various calculation that depends on
> the inserted delay in order to account any mmio and resource
> access latency.
> 
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index c0cc0dd78c7c..84e77e8dbba1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -537,8 +537,8 @@ static u64 __measure_frequency(u32 *cntr, int duration_ms)
>   {
>   	u64 dc, dt;
>   
> -	dt = ktime_get();
>   	dc = READ_ONCE(*cntr);
> +	dt = ktime_get();
>   	usleep_range(1000 * duration_ms, 2000 * duration_ms);
>   	dc = READ_ONCE(*cntr) - dc;
>   	dt = ktime_get() - dt;
> @@ -566,8 +566,8 @@ static u64 __measure_cs_frequency(struct intel_engine_cs *engine,
>   {
>   	u64 dc, dt;
>   
> -	dt = ktime_get();
>   	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0));
> +	dt = ktime_get();
>   	usleep_range(1000 * duration_ms, 2000 * duration_ms);
>   	dc = intel_uncore_read_fw(engine->uncore, CS_GPR(0)) - dc;
>   	dt = ktime_get() - dt;
> @@ -1094,8 +1094,8 @@ static u64 __measure_power(int duration_ms)
>   {
>   	u64 dE, dt;
>   
> -	dt = ktime_get();
>   	dE = librapl_energy_uJ();
> +	dt = ktime_get();
>   	usleep_range(1000 * duration_ms, 2000 * duration_ms);
>   	dE = librapl_energy_uJ() - dE;
>   	dt = ktime_get() - dt;
