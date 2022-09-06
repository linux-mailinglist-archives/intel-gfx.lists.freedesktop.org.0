Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F34A5AF4B6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B051C10EA60;
	Tue,  6 Sep 2022 19:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E49910EA66
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662493739; x=1694029739;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0BeFCK9ahwu+/n89sJu3K5b8//p0zC+gKwjHadhk5OI=;
 b=gA3b6FZvKLGmdWYpKwerZOXBKyrdEGsFiekJtLrzL8W+Fr4Xr2pg9Ibg
 SmxAYSVbOsAMKo0yzKbk/P8Y9V20q9c4X/6H20Y4hBq6HpJDLqUSCeaS+
 V0zcfKV4uAae7dF9cv7AQHFHa5MbHv8mxUlvVuOfcYXJE3vP8hfu5tqCa
 G4SznRys9544ZAAuiHuJ0Vkpk7HeLk3sPVrDF8WGx2g/hErzbPotakq2H
 aFzDPcuNAT4CUgox9jYKoFk3xlLFJArOQ7yTYDi6in0l/nbAZWxgNvSYt
 Uh9VQXo/yB77z36ayxRRCP3HWEfXfIOvwJHDC5z2axkFrBth0GPpzvhrl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276429483"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="276429483"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="647348863"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 06 Sep 2022 12:48:57 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:48:56 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:48:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:48:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCfusynyC5pXIzJ6kU2AWebwrBgbXbNCfimNMUIJ+MeB4iHTr38P5Vm+jW1GnbsZy8M6IkuQX7clvfKnn5rU0yukrK39IlUqocLIV/tVPjYFZm2ILqmVwnJPhBLZlyHB2TtNXomYtXcdSBAVNmFfzGfEvB0+u6U2I+8ZclOIk6FFnO/yFc9q1uOd47RX/K9Fn4kbbmErD5MVTjdA+Ui2iAupuUZ0pf7ELgsqTggI6Dv5vx1aEiPXKIGxWOYzztE0sQWtTDSO1XxosXqLO8K1DQ7RpTVwCGwqC3sV10ufsRQ6aeYEow3hcYFf8UG1nFYWIGhf2hcYAVTmitjuZSABZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duLAOf+aO0+GhDkCLvBCX0ojb+eTpapSUW5f0tqxABA=;
 b=iDGS/XVzmv51lGKLXGpK91R5ytgUX4Prtiy8yBMeBdVT1DdVylWi6hCEfzJDpBVfBPJTyjt6HGSnCgJ+lVrOu17P2d7tEMKVQTJZqCDHE3nGTUIjsyE+E4Tjte6q00sygUTmZiVpd8jnueycfyFrtJ3DE7B3fPmtIdunq7Hm+8KYNdyGIbjnvOPUqTA2ZCr39tyPw5g2G7VhKGdjbjac3ZaLphGPPk1WLceNEUEltpf+z0AZaAMJ2mqxG7AHVq45KgmYlfpSAV46bZhhVR2/EovpzQ3cWecLTrTVOq3MASp8xgmfg0TwMBHngDxuBtCgw6CoFNBu27zA0LCZXjZIdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 SA2PR11MB4873.namprd11.prod.outlook.com (2603:10b6:806:113::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.12; Tue, 6 Sep
 2022 19:48:54 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:48:54 +0000
Message-ID: <00a6e452-9df1-04a0-1b91-056bf0bb1265@intel.com>
Date: Tue, 6 Sep 2022 22:48:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-5-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-5-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::9) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c6ec5e0-fd76-45ce-2bf4-08da9040d473
X-MS-TrafficTypeDiagnostic: SA2PR11MB4873:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ROPGvyl1JeYmr6RsyX+Wrx6MveaM3hioRNMDbjcA2RKmIKP4N3eZ/hD1l9elDQQgEWmyJvlFqDBX5QsYCdPlNSRSt8Mt2MHNcr54KVGCKtQOxO0rKL5d3IL4jQEQNOgBiKNW9hvylr2PdlZfLFfrbdPZ0AQlcpiBSm4D15rlE0scnHstVkDyEo7bXEvC0bnDH4J4NBzvNE5JrOiVI/HJaDIQN5SGDPdNtUCujrIDQnS0lMIUCavZwHNSW8cMS7qa2cdo7zKJnshquzKtIV1rgnPbx1jOOhpsoE0PqiGp4fGLDvIDnk7WzDyMmZ9SWY7B6UatjPUUTNS3aoCoO8izzvOeNEzh2y87o8KOYzVG1x/z3wPNJRzX1SivofQlFqrbnpBouIrpSF+N4P4Xj2rzqDu0NX62geIU6pMOUJbHtVXkhN0x/zlukBd9u+mqXzhNptIYwMPAQ9Tw2Y0b+BINHgjWJguLderqLWWE2nfyglHj1KKqc3svsG/Ea4tDBkCP9PE4FJS6oOJl09IyXcwRBaBHTTDOhqp6BXthc8L5KkqngcaQO8KkBsC3HJ/Jkx+VaNt5yHPaJ38BRg28sqeJQ9M45oaL7WdGBGG5Ov52cJQJCzBCH+VBLikbnB7xn+oGpwlrCB8o0a1qNKM2TxqHNOAittSSyQbIXEl98//fIC98v7zv0ZQy11H/bcyBRTizL3euXcLF/26qqN7zyLsh84C3bjyhSAZIwuybqRJYDdN4JWq9rnTbB1rGNCTLPy4CAsicGVIFewU9B3QNavRFMeYTRxIQsQfidNX8A7/KC5I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(136003)(376002)(39860400002)(66556008)(107886003)(36756003)(8676002)(4326008)(2906002)(31696002)(66946007)(5660300002)(31686004)(8936002)(83380400001)(316002)(6506007)(86362001)(478600001)(6666004)(66476007)(6486002)(41300700001)(186003)(38100700002)(26005)(6512007)(2616005)(82960400001)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVFyQjBPN2x5WENRTVhVemZSemx5cGxiL1FVRGxZSEJ2UkkxbEcxc0lHNXNl?=
 =?utf-8?B?Vkg0aUxERGQ4STlDVGdXZmJ2aHBEMzNYUUcvNTdvUi8vQlNlM01uOWFacElv?=
 =?utf-8?B?K0V2RHlDN29vZWpjd3BRQ2tOYzV1U2t1U2NQTFZDd05wbTcyOTZkTGU3Q1RB?=
 =?utf-8?B?Ull3UjJLYU9Mb0NpTTh4Vi95OHhxS1c3K2hmbkpNWGlJTDlEcE5VVWFTUmdN?=
 =?utf-8?B?Y3lZeVBPY05yZFA1SzFack1sQXl4Zm54NXYrRWczYXIxZjdjSTEyVkIxMEl1?=
 =?utf-8?B?cHZvOGx4RGxzd2tCMTZnT1RKcVBqdHpyODdtUVFSWFFUT2tFaWx6aW5vQjJG?=
 =?utf-8?B?dk9IcUlCVUJaLzhVMnVTZnVobWVXYkxGSFVaLzNreXAvdDZWN0dhN0hhQ3lI?=
 =?utf-8?B?NnE3K3M2UVFUYWkxc0R0cVBPb2ZyQWlIYzdJVSs5Nk4xOTN3YW1JYVZtVGRk?=
 =?utf-8?B?ZE5NZzQxaFA0bEcydi9GN0VhUzJJMmhRTktMbWdzZzZ3Vzd5Wkl6VkJJNktC?=
 =?utf-8?B?cDdYcVF5Wmk0Vi96NFdNM2dwell5OU45dGxXSlYwcVFZZHFHSXhiaG96dmFP?=
 =?utf-8?B?aDNqMDg0dVllQWJKdnZmeTFSbVRWMi9Ea1JWeFF3ME1JZmRRUEJHYXZjSkZl?=
 =?utf-8?B?RCtmblRmaGxEU05tV0tBcjVPTHVsZ0pqUFZjb3doMmU5VXc3K1VoZUVSaWFs?=
 =?utf-8?B?eHlzb1FRYTBOR0lVUG9KNHN5a2FxNDZkSjhRZjF6WW1Ta0xiRERwV1BTVzIr?=
 =?utf-8?B?TXk0U2FIaUlWUHZ4aVJLSXN5UlhReU5UeFNmWGZ2WmdzaXU0WDZsY3I0YjBG?=
 =?utf-8?B?SENQM0VPLzJZY01rUWRsc0oxWFloNkRtSC9pdi9FdThlM2hxekhKcS94QkJn?=
 =?utf-8?B?SEpFeW5UK3RIMy9UbEJkNWxQSEpzK0h4TjZzcTQzRmlWejJzWXIxNEllbHFG?=
 =?utf-8?B?YnZvSmFHWDRDc3RiTTF5Ylo1OTErRnhFWEhpTzh5K2VyVmsrc3FQdFN0OVdm?=
 =?utf-8?B?ME9TYk5rUmZQTTJLWmJTbEUwK3FFTGYwY2dLS1BkM0hmMHlMcEt0NzVvNFB1?=
 =?utf-8?B?anZsNnVJWjJzaExFY3poWE53OW96YkM4dUJnWHF5Z1g0YlR3NENVRHUvZWxP?=
 =?utf-8?B?c3BsOUp3SzFLdXVIZUh5dmMzQ0Y2YnpOakFCamFacTZEQVVuaHgrcG9BcGJw?=
 =?utf-8?B?SkE5VGF5SUVhdnpjYVhLZEprUkpBanUrYkMzd05lS3FxOTFCUmZjVnBjS2ZM?=
 =?utf-8?B?R1QzUTVZR3JqWmVFSlRJbENYM0d3dkZTUkNjbklEZGF6VVZQQVFxMnY1ZUl6?=
 =?utf-8?B?Ukk0TjZnemhHbkVDdHltd1hhc3N2TmJsS0hSUUFaYVFIL2hLVDBDWHNkNHV4?=
 =?utf-8?B?ZCtKU1EvTzJJaVBVUE5qNTRtQXA3czRDQWtrbXNmM1M4RVRacCtOQngvcTd0?=
 =?utf-8?B?NkxxQjc5VlgzNlVaTGlvNHltRTVJUnpDSzRBbFM1ZkJjeUxCRS9EeE9aZmh1?=
 =?utf-8?B?WnFmRnNLcHVPcHMyMlJWODcxZXlLNU1RWitlTlZPQ1FuU2h6VUpKeTkxcEgr?=
 =?utf-8?B?cjVWMUJ0alJoamh5VmpaWjFFNTNidGZEaEtLQ2x0OGJvd3JTV2xkeEkwOVVn?=
 =?utf-8?B?OGdNU29IMTBBMktQNG1namVOTGhlVm5qN2s3Tkhib0ppY1Y3NnM0Qmo2dDdt?=
 =?utf-8?B?NzE1V1RCZ05FSlgxY29XbWt6UDd1eG1JTHh0Y1VlRER0eUJySHluMElHTVNQ?=
 =?utf-8?B?emNRMTYzaFBub0dQdWJPb1ZOWXVEaHowdVQ5d05OaWZBQzFSVmZvcEZRdi9s?=
 =?utf-8?B?dStCWVJJQlo2VkhnR3JyU05CSmEwMEN4azBoSWlUUFhSZjJaMDRZN2lYRmJD?=
 =?utf-8?B?bUVZT1Awd24ycnNjTFhZWWZVMDlNUll5NTBiMXNFUnJjT3REK3V3SC9ENXpD?=
 =?utf-8?B?RUNhYU1NWkRuelZ1d0dMYjNKMjVsL2FyOEVybGszSEorblA3cDd6U2xtOEQz?=
 =?utf-8?B?TnVYUzlsZjhIYnNyblFmcVJTVjd6MmFLazk0cVpMMFpiQTdEWUIybkI5ZTRk?=
 =?utf-8?B?aC9rRklWTStaUHpreWg3Z1JYT25UUDdOYktJUkszMjh3TVZ6ajNKR3RCLzZI?=
 =?utf-8?B?VUlsRDlmOGtSRzJHWU1YeWZMMU9MeS95S3RaT3F5SnE3aDRjY2hSMmx6dWk0?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c6ec5e0-fd76-45ce-2bf4-08da9040d473
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:48:54.5314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fSm3N+PXbo7Xp4sVyjcnXN4Qtu2F3pHTyoaaXIcK2Q/xrWZ7wx6qAsAtBkUY1wQ+IYaHpNiJukf4V12vIcrzo3W1UJ8pMGAB96vBsx7Enoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/19] drm/i915/perf: Determine gen12 oa ctx
 offset at runtime
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> Some SKUs of same gen12 platform may have different oactxctrl
> offsets. For gen12, determine oactxctrl offsets at runtime.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c         | 149 ++++++++++++++++++-----
>   drivers/gpu/drm/i915/i915_perf_oa_regs.h |   2 +-
>   2 files changed, 120 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3526693d64fa..efa7eda83edd 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1363,6 +1363,67 @@ static int gen12_get_render_context_id(struct i915_perf_stream *stream)
>   	return 0;
>   }
>   
> +#define MI_OPCODE(x) (((x) >> 23) & 0x3f)
> +#define IS_MI_LRI_CMD(x) (MI_OPCODE(x) == MI_OPCODE(MI_INSTR(0x22, 0)))
> +#define MI_LRI_LEN(x) (((x) & 0xff) + 1)


Maybe you want to put this in intel_gpu_commands.h


> +#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)
> +static bool __find_reg_in_lri(u32 *state, u32 reg, u32 *offset)
> +{
> +	u32 idx = *offset;
> +	u32 len = MI_LRI_LEN(state[idx]) + idx;
> +
> +	idx++;
> +	for (; idx < len; idx += 2)
> +		if (state[idx] == reg)
> +			break;
> +
> +	*offset = idx;
> +	return state[idx] == reg;
> +}
> +
> +static u32 __context_image_offset(struct intel_context *ce, u32 reg)
> +{
> +	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
> +	u32 *state = ce->lrc_reg_state;
> +
> +	for (offset = 0; offset < len; ) {
> +		if (IS_MI_LRI_CMD(state[offset])) {

I'm a bit concerned you might find other matches with this.

Because let's say you run into a 3DSTATE_SUBSLICE_HASH_TABLE 
instruction, you'll iterate the instruction dword by dword because you 
don't know how to read its length and skip to the next one.

Now some of the fields can be programmed from userspace to look like an 
MI_LRI header, so you start to read data in the wrong way.


Unfortunately I don't have a better solution. My only ask is that you 
make __find_reg_in_lri() take the context image size in parameter so it 
NEVER goes over the the context image.


To limit the risk you should run this function only one at driver 
initialization and store the found offset.


Thanks,


-Lionel


> +			if (__find_reg_in_lri(state, reg, &offset))
> +				break;
> +		} else {
> +			offset++;
> +		}
> +	}
> +
> +	return offset < len ? offset : U32_MAX;
> +}
> +
> +static int __set_oa_ctx_ctrl_offset(struct intel_context *ce)
> +{
> +	i915_reg_t reg = GEN12_OACTXCONTROL(ce->engine->mmio_base);
> +	struct i915_perf *perf = &ce->engine->i915->perf;
> +	u32 saved_offset = perf->ctx_oactxctrl_offset;
> +	u32 offset;
> +
> +	/* Do this only once. Failure is stored as offset of U32_MAX */
> +	if (saved_offset)
> +		return 0;
> +
> +	offset = __context_image_offset(ce, i915_mmio_reg_offset(reg));
> +	perf->ctx_oactxctrl_offset = offset;
> +
> +	drm_dbg(&ce->engine->i915->drm,
> +		"%s oa ctx control at 0x%08x dword offset\n",
> +		ce->engine->name, offset);
> +
> +	return __valid_oactxctrl_offset(offset) ? 0 : -ENODEV;
> +}
> +
> +static bool engine_supports_mi_query(struct intel_engine_cs *engine)
> +{
> +	return engine->class == RENDER_CLASS;
> +}
> +
>   /**
>    * oa_get_render_ctx_id - determine and hold ctx hw id
>    * @stream: An i915-perf stream opened for OA metrics
> @@ -1382,6 +1443,17 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
>   	if (IS_ERR(ce))
>   		return PTR_ERR(ce);
>   
> +	if (engine_supports_mi_query(stream->engine)) {
> +		ret = __set_oa_ctx_ctrl_offset(ce);
> +		if (ret && !(stream->sample_flags & SAMPLE_OA_REPORT)) {
> +			intel_context_unpin(ce);
> +			drm_err(&stream->perf->i915->drm,
> +				"Enabling perf query failed for %s\n",
> +				stream->engine->name);
> +			return ret;
> +		}
> +	}
> +
>   	switch (GRAPHICS_VER(ce->engine->i915)) {
>   	case 7: {
>   		/*
> @@ -2412,10 +2484,11 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>   	int err;
>   	struct intel_context *ce = stream->pinned_ctx;
>   	u32 format = stream->oa_buffer.format;
> +	u32 offset = stream->perf->ctx_oactxctrl_offset;
>   	struct flex regs_context[] = {
>   		{
>   			GEN8_OACTXCONTROL,
> -			stream->perf->ctx_oactxctrl_offset + 1,
> +			offset + 1,
>   			active ? GEN8_OA_COUNTER_RESUME : 0,
>   		},
>   	};
> @@ -2440,15 +2513,18 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream,
>   		},
>   	};
>   
> -	/* Modify the context image of pinned context with regs_context*/
> -	err = intel_context_lock_pinned(ce);
> -	if (err)
> -		return err;
> +	/* Modify the context image of pinned context with regs_context */
> +	if (__valid_oactxctrl_offset(offset)) {
> +		err = intel_context_lock_pinned(ce);
> +		if (err)
> +			return err;
>   
> -	err = gen8_modify_context(ce, regs_context, ARRAY_SIZE(regs_context));
> -	intel_context_unlock_pinned(ce);
> -	if (err)
> -		return err;
> +		err = gen8_modify_context(ce, regs_context,
> +					  ARRAY_SIZE(regs_context));
> +		intel_context_unlock_pinned(ce);
> +		if (err)
> +			return err;
> +	}
>   
>   	/* Apply regs_lri using LRI with pinned context */
>   	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), active);
> @@ -2570,6 +2646,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>   			   const struct i915_oa_config *oa_config,
>   			   struct i915_active *active)
>   {
> +	u32 ctx_oactxctrl = stream->perf->ctx_oactxctrl_offset;
>   	/* The MMIO offsets for Flex EU registers aren't contiguous */
>   	const u32 ctx_flexeu0 = stream->perf->ctx_flexeu0_offset;
>   #define ctx_flexeuN(N) (ctx_flexeu0 + 2 * (N) + 1)
> @@ -2580,7 +2657,7 @@ lrc_configure_all_contexts(struct i915_perf_stream *stream,
>   		},
>   		{
>   			GEN8_OACTXCONTROL,
> -			stream->perf->ctx_oactxctrl_offset + 1,
> +			ctx_oactxctrl + 1,
>   		},
>   		{ EU_PERF_CNTL0, ctx_flexeuN(0) },
>   		{ EU_PERF_CNTL1, ctx_flexeuN(1) },
> @@ -4551,6 +4628,37 @@ static void oa_init_supported_formats(struct i915_perf *perf)
>   	}
>   }
>   
> +static void i915_perf_init_info(struct drm_i915_private *i915)
> +{
> +	struct i915_perf *perf = &i915->perf;
> +
> +	switch (GRAPHICS_VER(i915)) {
> +	case 8:
> +		perf->ctx_oactxctrl_offset = 0x120;
> +		perf->ctx_flexeu0_offset = 0x2ce;
> +		perf->gen8_valid_ctx_bit = BIT(25);
> +		break;
> +	case 9:
> +		perf->ctx_oactxctrl_offset = 0x128;
> +		perf->ctx_flexeu0_offset = 0x3de;
> +		perf->gen8_valid_ctx_bit = BIT(16);
> +		break;
> +	case 11:
> +		perf->ctx_oactxctrl_offset = 0x124;
> +		perf->ctx_flexeu0_offset = 0x78e;
> +		perf->gen8_valid_ctx_bit = BIT(16);
> +		break;
> +	case 12:
> +		/*
> +		 * Calculate offset at runtime in oa_pin_context for gen12 and
> +		 * cache the value in perf->ctx_oactxctrl_offset.
> +		 */
> +		break;
> +	default:
> +		MISSING_CASE(GRAPHICS_VER(i915));
> +	}
> +}
> +
>   /**
>    * i915_perf_init - initialize i915-perf state on module bind
>    * @i915: i915 device instance
> @@ -4589,6 +4697,7 @@ void i915_perf_init(struct drm_i915_private *i915)
>   		 * execlist mode by default.
>   		 */
>   		perf->ops.read = gen8_oa_read;
> +		i915_perf_init_info(i915);
>   
>   		if (IS_GRAPHICS_VER(i915, 8, 9)) {
>   			perf->ops.is_valid_b_counter_reg =
> @@ -4608,18 +4717,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>   			perf->ops.enable_metric_set = gen8_enable_metric_set;
>   			perf->ops.disable_metric_set = gen8_disable_metric_set;
>   			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
> -
> -			if (GRAPHICS_VER(i915) == 8) {
> -				perf->ctx_oactxctrl_offset = 0x120;
> -				perf->ctx_flexeu0_offset = 0x2ce;
> -
> -				perf->gen8_valid_ctx_bit = BIT(25);
> -			} else {
> -				perf->ctx_oactxctrl_offset = 0x128;
> -				perf->ctx_flexeu0_offset = 0x3de;
> -
> -				perf->gen8_valid_ctx_bit = BIT(16);
> -			}
>   		} else if (GRAPHICS_VER(i915) == 11) {
>   			perf->ops.is_valid_b_counter_reg =
>   				gen7_is_valid_b_counter_addr;
> @@ -4633,11 +4730,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>   			perf->ops.enable_metric_set = gen8_enable_metric_set;
>   			perf->ops.disable_metric_set = gen11_disable_metric_set;
>   			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
> -
> -			perf->ctx_oactxctrl_offset = 0x124;
> -			perf->ctx_flexeu0_offset = 0x78e;
> -
> -			perf->gen8_valid_ctx_bit = BIT(16);
>   		} else if (GRAPHICS_VER(i915) == 12) {
>   			perf->ops.is_valid_b_counter_reg =
>   				gen12_is_valid_b_counter_addr;
> @@ -4651,9 +4743,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>   			perf->ops.enable_metric_set = gen12_enable_metric_set;
>   			perf->ops.disable_metric_set = gen12_disable_metric_set;
>   			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
> -
> -			perf->ctx_flexeu0_offset = 0;
> -			perf->ctx_oactxctrl_offset = 0x144;
>   		}
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> index f31c9f13a9fc..0ef3562ff4aa 100644
> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> @@ -97,7 +97,7 @@
>   #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1
>   #define  GEN12_OAR_OACONTROL_COUNTER_ENABLE       (1 << 0)
>   
> -#define GEN12_OACTXCONTROL _MMIO(0x2360)
> +#define GEN12_OACTXCONTROL(base) _MMIO((base) + 0x360)
>   #define GEN12_OAR_OASTATUS _MMIO(0x2968)
>   
>   /* Gen12 OAG unit */


