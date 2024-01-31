Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2337F843610
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 06:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE7B113905;
	Wed, 31 Jan 2024 05:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A43113905
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 05:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706678864; x=1738214864;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gM80FEZaIDNvuD/quaOD70krwUYPlWtINMU2GDqfr2E=;
 b=KWbFtf2sZnJI0NdqnWOE+jVDrSFMcEW4lndz0ZJ/8xE6I7ZFlYqu5YD6
 PuiJ1jqgdD9bKH9fDdbr1ukqNaCIb1phCFsijY/D2ngOEARESAmx5m/Qo
 Ky26EL/l4z/7knKntqXKxGVczozWubKd1zQbQWEepL8rAGYjeWspwSH83
 ihLhDgBmLv+dINADa6ACV2Em+y9SXv2gbcSc+dGjMM0a8WLo8OYfUW5pO
 WUXwAmFnxu1vpmx+puHtrTf4JA6t3nbTcPEvjDKaW6gN/3Ozo4s4UFWPr
 9/EhkjhAxhIKOfaYh0a164M3ifqExwFYQdP2LF8/3NumD+6Y5G/xiL4n+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="403112977"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="403112977"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 21:27:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="3923219"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 21:27:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 21:27:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 21:27:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 21:27:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I7f+Lb7h+0XvusM+chUJQDKUCCMSfYQbqtpYnT6yHiuQVH4EcnV59vv44FR6tSMoZn5d8cDxyoez0DzHOYSIbNSdrPXN8t2gRoyq0U8FCLITGevukrtMgDPQ5qug5gs8O5AE7t36/Ln3e+D4jXU84R0L44XCMq+nJHCvn7wBzA8d6IO5WPC1MZ3/Q42eGtB7QrwsnjYSp7CU2Tuel1AEv9tPGQ8/gTStaDFD2HJ0lqmbvmJqvcT609xTglVYcTU/qQIvpge35z8R/6naE555Nwv9hXGOJ7P3UIz0KEka9NwdwRajIf5fvuYSjKFTyuA6MHdIAoUD3RMJvh8G6XBDHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a23BlkXeuseXAchD3KWo1p8ySpmlh7d4auieveCWCC8=;
 b=ICjE4GxCTVcSHZer7/1WKLaQWkNvbnmVMTwdMtWZU6TXrr5HaPKjXj9GjYCaT3SdUN2qN9gi5CPtLPs8mYUPNZu+44oURyarexA4rXMjig8cwOmd8ez3a0BelZcVlaQwt2FJgbUkV+Eg75Q8vTmBpKHnLpVbTv7oYsgXVCYK7GIp/A3a3gShrOyl3xmmxtPIGTEpUh4jdU5zNVCQ+yXFqDuJvRUwWCgTcP4BlDYAlCnSpeDmLIe6GeHJO6k4eXsGkll1bcIYOZ7uqz6xrqQO0KYZU9dyCxyDSi+fzZjvqxAdRR0MAJV2FfYIVt5t9ZyhneXDWWFi6W5SEHnudr2Glg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8545.namprd11.prod.outlook.com (2603:10b6:610:1bc::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 05:27:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 05:27:41 +0000
Message-ID: <3cf5c0dd-19d2-4a13-860b-4eabec838300@intel.com>
Date: Wed, 31 Jan 2024 10:57:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/i915/adlp: Add DP MST DPT/DPTP alignment WA
 (Wa_14014143976)
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-4-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-4-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8545:EE_
X-MS-Office365-Filtering-Correlation-Id: 56890d19-dc4e-415d-a84c-08dc221d583a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YGJLGsoyPowV1E5g/D086+XvLlWQJzH8oSUCaAbcRpg9VCZWMiDcZDHZti36SFGVv9tKkNPcXlUwLHzcbDxj5slBNfk6uzZTCmavRO29PjFBYek5Woe89nF/NFTrHepFNRpVmd/jNR/X5AL0cBPB5f3VlBQcjvcV1x/+hVa4JwRrBjaHHfgb7yNmTG+WuyzmCnp7ml46d1J2iUoZw1TVyio3jia4fUPCYyWh+VW7w+v4vhmqXvoUH1ac8P7digkP4MMRdjbCkXDVo5Xlxg2oNIJfohb4NM1DE7TO6waboXQ5gUIeLqX8DxiBgELTJOxJkDrsnXnIfkGZBja51cn03TcLhymijyD7Sc+YwNx0TUFTRhadTZ1YRgNna8uE2R60H+SBEllya36B5MFUUeRnln3gh7sBdBwNfivKwvZjnOp4C+RktDQPMpuAXH6XZBuYe2xQACuTRvRPZ4l9s5eK5VbjxKadr/vk7YUvq+U5n0XdCzfRFx3IUb6vYNlea9IiKaf9Fx5/KlSTtIvKc6LE2O08OeJR3AI7QWFnVU9ZL04QCsq/I8EegyGtu0yoht8jSSQzc2LuzpPyj7LHYCs6JiF0+gjgktr5BFf2vR6h3JPCt5Ez68D32suEThIMNgPPTyuV7Qj9ZgLs37rsIfDfLw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(376002)(346002)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(41300700001)(26005)(2616005)(31686004)(6486002)(36756003)(478600001)(6512007)(53546011)(6506007)(6666004)(38100700002)(82960400001)(316002)(31696002)(86362001)(2906002)(5660300002)(66476007)(66556008)(66946007)(8936002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2R0SVBteC9XSTNWTjVrNW1qWUZ3SjMxRnZsYzM5ek1XZy9jbFlkdlA3NkZI?=
 =?utf-8?B?ZjNnLzBpL0hxYS9ERTdKSk9uVjhUeWRPRys3bHBheTIvZU52L3JQeUZObng4?=
 =?utf-8?B?TzR1UkJIRmkvL2N2Ym9MMW1PWUwxUkExYndSOTFyY0t6L0dHTldZeXpPNDMr?=
 =?utf-8?B?d0gwQ3ZDbm1vem5RVjA3c1FRMVV6bzVjWU9CZVBWSG5HYlQ4Y3Nmdm9QRjRG?=
 =?utf-8?B?MUE4ejA0VVNleFFBTkZRaDhadCs4R2daQVhjTERqWWl4K3hVMWd5N0x6MjV3?=
 =?utf-8?B?Q2lXaDFhNFQrazI3bkJDcDBwbWFDL2JQYUJ0dEpEYnhZVXRLU2ZjMC80NDk1?=
 =?utf-8?B?a1JmeDJ5M1d1VkdPY3ZWZWtVOUQ5UFZINzJkSDdiTFd4M3JRTkhVUUdlNTVy?=
 =?utf-8?B?eG9vYU44bS8xbWIvVEl2TUpWaHUvK095V21raGJnamQvV2JWbCtPcWhCdUl0?=
 =?utf-8?B?TlZYMExHYzdBbkxlNDZyWHVMRS9PckJEVXdJV0x5LzlzWHpsQU03bHhnbDlC?=
 =?utf-8?B?OFVoRzE4ODhWbS9rRkg4TEQ1SnQrQkVvYTVuZmhDMXdUNS9RUVdITFpoclAw?=
 =?utf-8?B?bC9sOUNYNWxXYS9LTmRDdGUxKy96YlE2VHpaUVZ5cFBsdFZ2ZEhCbUdqOVpB?=
 =?utf-8?B?bno2bXVEMCtnYm9Wdk5sakw4eGliQTc2MEJreUpZRjY3R2d3M0IxaUdZMms1?=
 =?utf-8?B?S3VBbGMybUtLUUQyODY2dE5kd0lLL3A5Z1ljSjg3eTVqeGFGRnVVZXM0ZmlL?=
 =?utf-8?B?NDJlRVJOVlBWb3A2eU5DV3NxamVhOEwyVGRlYkUxSWp2RGdGNDVVT1dxOURH?=
 =?utf-8?B?c1lkSlE3MzBNZ25hOE5qUUV3dTRBUkRCZzhmMlJyTXgzKzVSY1lhZDZDWlBj?=
 =?utf-8?B?bno3N1J2QWc3Nk5Cd1lkazdBblB5eml3Z1EzeTNlR0VTZWswTUlDSUFwZmth?=
 =?utf-8?B?YmlNU0xPVGhJdkp3MU12SGpaSkllY0RmNGZnT0l0TUhrQ04zdHBNVk9VbzBr?=
 =?utf-8?B?eVZ1aWdJSHBUYkVReUgyNDB4YjZWRTFJdFd2dDFVazlwcEhScTFUbE9CWnRW?=
 =?utf-8?B?b0N1MnF5S2Zsb1JFVzdBcTB2bTNTUGZMTDM1SFRvOVZXaVJ1TXIzektQYWNC?=
 =?utf-8?B?TloyT01vTVN2QkJQUUNPSlFHQmVpZFlYM1hzQ3UyVHpJVDRaR2kwajNnZmhM?=
 =?utf-8?B?K1R4QUV6N3J2ZkErc3RZMVViMGhLcnhIajhiYjlpYU9BcloreDNkTWVnM0NI?=
 =?utf-8?B?blBTUkNuZ0NUUWVOd2VQR1ZhbDByK2xnTzJ5MHBEWWI4ZVhRT3VZUERrcXBL?=
 =?utf-8?B?K3ZncmtsRko1N1FjYjZ1NkN4QVVLZkZWOE4zZzVRZklkTzRFRGhsUDNnazYy?=
 =?utf-8?B?ZWdVaHpxblozU3JGNWZqR1lqZ3dWRlI0QVBCVTQ0c0ZhaldxMnAwVzhaTHc2?=
 =?utf-8?B?RVcrYm0zUkI0a1RpWWN4NlZNVFBsOEZxcXBKaS8rS1E3amNUam9EM1kzMVND?=
 =?utf-8?B?d0pNaDM0RDFKREFsN3U1aUh2V0tBUHJOMHUyTkVzQko2b0cxSEh3R1NQUytq?=
 =?utf-8?B?c1AvQ1pFN1B2T293eHBDK0twS1RETk0yckZFc1YvTitOUk9ZMDJhU3VyeXY5?=
 =?utf-8?B?V2w4K0g5aUVqdTlCRUFxVXJwa0d3RUNWcXFxWGVqdmR1SkhMaERZcXNHOTJk?=
 =?utf-8?B?K2ZTbktiRTIzWW0zdlFKV3UwdUcyWSt3SkJ5YlRNTGFCTmhGa05rWGFVUlpG?=
 =?utf-8?B?THJFZFp5VFhwOUlsTFphbC8xS3ZYY3RWZTJFL0N1OHk4dEIwaHBZdHpUTy9S?=
 =?utf-8?B?QWd5Y1A0bnBqQ3dtbkJsaWtObXN5N1FQVTBxUWh1ZlcvTGI4cXd4dnVJTlFs?=
 =?utf-8?B?Y2d0Y05idGordEFXSzdLR1A0WXdTRFUyUHhKTjdhaWVPOVk0VncrQVhoZUFl?=
 =?utf-8?B?bEJzUDlZaGZsZkZuTityQms1VnVXUXFzYUYwWlFSamdUR2x4b1VDZkZFUElF?=
 =?utf-8?B?S3JtQWhNVW1lczhNbnlBWnNLZ2lwblZDNURVcnRvbGwxcDE4ZTR2anJpSE1J?=
 =?utf-8?B?cXFEcnJqaEgzeGlxb2tIbndHZnQ5c1JxS2VUZHZycGF5cjlnL1dTM1VyKzgv?=
 =?utf-8?B?azJkR0UwTlY0L2E5TWRiTm1FRWpjWCtURmdXcHRHNHJNaGl5NXZBaFdLZEVW?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56890d19-dc4e-415d-a84c-08dc221d583a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 05:27:41.2467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gEZ56hk3aL1L8ZWdwNd86jGCmQ/LjSelQdkV/F44ITre2OfZJkhLQ25BdQUCs003LnVOHf+tFCIS19g9gs0LdTF8HwcKzNRO3f9m+J5V+Rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8545
X-OriginatorOrg: intel.com
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


On 1/29/2024 11:25 PM, Imre Deak wrote:
> Add a workaround to fix BS-BS jitter issues on MST links, aligning
> DPT/DPTP MTPs.
>
> Bspec: 50050, 55424
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>


LGTM.

As an aside, with these WAs do we also need to re-visit the transcoder 
Data M and N values.

There is a note too related to WA_14013163432 in intel_dp_mst_compute_m_n.

In any case this is,

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>   drivers/gpu/drm/i915/i915_reg.h             | 1 +
>   2 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 23f3f7fab9d0b..26c838ac9e411 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1128,6 +1128,9 @@ static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
>   			set |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
>   		else if (crtc_state->fec_enable)
>   			clear |= DP_MST_SHORT_HBLANK_WA(crtc_state->cpu_transcoder);
> +
> +		if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
> +			set |= DP_MST_DPT_DPTP_ALIGN_WA(crtc_state->cpu_transcoder);
>   	}
>   
>   	if (!clear && !set)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 091edc1071e0e..eecbdecb8ed40 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4556,6 +4556,7 @@
>   #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
>   
>   #define CHICKEN_MISC_3		_MMIO(0x42088)
> +#define   DP_MST_DPT_DPTP_ALIGN_WA(trans)	REG_BIT(9 + (trans) - TRANSCODER_A)
>   #define   DP_MST_SHORT_HBLANK_WA(trans)		REG_BIT(5 + (trans) - TRANSCODER_A)
>   #define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
>   
