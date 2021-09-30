Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732C441D497
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D946E342;
	Thu, 30 Sep 2021 07:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BDD6E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 07:36:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="224782193"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="224782193"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 00:36:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="707744241"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 30 Sep 2021 00:36:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 00:36:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 30 Sep 2021 00:36:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 30 Sep 2021 00:36:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gxu+hXztVrQOPLKAnpyfhzz0JBdrMMjIwyz9RP5X0KO4eGMl93/7HsuZhMByOaNuKP0jKvndmuLy64cI/gEgDJOeiNgZHPnBnzHgyyNr6EuqoCQ/no8jlFKnHyT5/JopkS6fJJT8wmQvIS7hxxibUE78TjPHsQhy6Fz4KkKMY1OOzfqCkUD+vL4sj1Q7M7+iX3fs0Kfk18Hoi3uRDA546ky7NF4bYaUHsf6qJpZO5jKZaMW82l8O+BOvG7HqXO9dCLQpzkJqWnrq8M/i8SQKVbr29nRkZhqPYTvzQ0AX/uPCo7xeRyRMv981n/5zuWhzYYtV7ygs0ZDTo1dcwBsx9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=8FjS/tzrltM7+N3pn//IMDtPrI3C52UFeFj6WJd7YYg=;
 b=jiLkCzFKODlbmNAOiYhrzH0FnJL9UsrVvBt8v5vc33l6UM4rFLRt+MnhUTIfXj9st+TU7dR/ud8fzokq5Z5L+Y68SuzZ4JwT0Z8UzV8ebEAqZt6OIKH7vORtvn18BXD7DEMzqaAJw/Wjwnj/sVKxYM1NLCz4TpBLXS3gvDv9AKDl13Gadp2USUMCmOK+sNHDRtWBRF1tewlpyqLGG/65OPF/WdHAOS4T59xnWJ77Ftrzy+QP6g6z+GSgNQsWT/OQI5zvT7RWC16ZlvW71hnKeWzNG+h0aTBYKcZYxGaCOZw2i6YUHxD6P1l6oOWWe9HveCjNI8fFU3B1oJrcgAP3HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FjS/tzrltM7+N3pn//IMDtPrI3C52UFeFj6WJd7YYg=;
 b=w8NLYo418FbVMxb7Cy8OUJs4Ac+lKySbUhUdyLpJgZW6f2oJekG/MSQbZvgtKajh7790TTjUlvVv6jiFUzAWCfJIzk7lFk2djc7CiST5JAo5DZ83K/Shc7RcaPWkL4boCwbArHqudFF1geyRWsPh8Li0MJvuInBa/puy+VojRRo=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4455.namprd11.prod.outlook.com (2603:10b6:610:46::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Thu, 30 Sep
 2021 07:36:10 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::e489:fd80:6a3d:3633%4]) with mapi id 15.20.4566.017; Thu, 30 Sep 2021
 07:36:10 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-6-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <f9b00ea2-0c2f-6727-f870-0119f0da6499@intel.com>
Date: Thu, 30 Sep 2021 10:35:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210930001409.254817-6-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR02CA0030.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::35) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DB9PR02CA0030.eurprd02.prod.outlook.com (2603:10a6:10:1d9::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.13 via Frontend Transport; Thu, 30 Sep 2021 07:36:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 59cd4723-532e-490b-0fed-08d983e4f929
X-MS-TrafficTypeDiagnostic: CH2PR11MB4455:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB4455175E2FD927AC69A6556BB8AA9@CH2PR11MB4455.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GoLToKEJU6Fpg01b2AhCahnVlJRloPmq+EYBbuSZRiM0nWa+7gNz1Wt6Dk1JSScS/EkwEXQTaWvS8LLJRlhtxfa7vCjq+TrXFFh/pg4PAnw3R5+Og6d9XVupTRyGKxFRq2h4/a62NU4gLgJmHneJei9SULSXa5nJ4Mw6XckSOrkGwARXZoV47wDjJm8DoE45JRxiKcXGjk1ODuCBK7oK5erNAn/AvSRnUHnI4owELLr9oo36uPuB4SyMLUVY72ojuf3XyLHLhyO1xxAVJTbFp30Zfjcp+2CZkR8zFOT3B9KGNc4lrO1lMWwlUcyGKR1XaN06WB/ARvwb8uimVWZ+d30R0zJGkvL1H13pBv9CbcKuSdrBk24HfiehIg/ufedDc2T5ar7tn68QHYbUsN8+9G6qQ6LDaGeykVuJ8fpnXQD4XM2GS3Z5AxgM4V0w9Y4fyEWCSHF9TWSSdSgnM88N8BLzQha6xoY0CHyuMGSKDNyF50++UIJ0b/AYcNrzTrS3Lp0D98Wq/F7FCAXkThkyZtsn8bE0ScvrWs4Oijlp/RxmGGKCqs/0jl2gBxFLsR05X7wnGOS3Iv15pQ43shXxHAUUbyQfnrs2kYPgku9vC8LzyWrgaS7CZQdBObkcRm8ou6xYT7NlWA9oNVyepgjcRthq3yq7cx7f+I73kAnKwSAntauaZh7n3QQrHbb5NzhvEB/NdMYgrLlRv+MC499uOuQQrKLv+AV4ArtIIMOsbLg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(31686004)(8676002)(86362001)(36756003)(66556008)(66946007)(66476007)(38100700002)(83380400001)(53546011)(316002)(26005)(8936002)(508600001)(186003)(6486002)(2906002)(6666004)(2616005)(16576012)(5660300002)(31696002)(956004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkVHaXJ6UkI3aHJ1ZkhOL2JsTFdiMktUT1lQeGhZbEZ6L2lsR2hCR3ZRekRo?=
 =?utf-8?B?cm9oSytQNThPWFZYREp4dEpXT0pkKzd5d2ltVzdob0ZBckgxRlRWSnhwUVJH?=
 =?utf-8?B?QXJEKzZiWGVINTBDWjEzRjJJUTFBN0JQVm0ybElNTGJKN1NrME9LT3Z0UVdu?=
 =?utf-8?B?bDRKQ3YvZXF0dkpKQk9FeldVblozVy9ZU3NSaXI3U0YvQmQ5MGVEVkNKS01T?=
 =?utf-8?B?ekpUWlVoT1JVbGQrVElFM2dpRHN5ZG9MYnNLQ1VGRnlldXBYMVc3ZWg2L2sz?=
 =?utf-8?B?UDR1bFRnMXJyWnA4a21lV2d5SUwyWmRlOXpaMTRkcmM1VE5yb3BVM0pVZUNY?=
 =?utf-8?B?NWFqZERiTlZTRkZqQUU4dnQvMWtGVVplMlh6cDVFUk9JTGdvR2IxbEkrVEcz?=
 =?utf-8?B?RDc4T01nNlRGRlRlN093YnZpUDVJSkQxMnl6eUdrd3hseVM5aUJhQ3M1MVRZ?=
 =?utf-8?B?QTRwWXZPWDRmLzZZeENPd2FqRWxqQnl4UHVsby9CZDBVRlZmMTAxMDQ2L29K?=
 =?utf-8?B?K3UxclpaeE1qSm16ZWFjTFRxOHMxZnFQNC93NENVczgxQWUveG5ZazY0VHFk?=
 =?utf-8?B?YzU4eFd2cDBhY096WXc3a0RPVUUwMmcralRFaDZCQlUzWXpGRk4zZmMyNnJy?=
 =?utf-8?B?bWZRazFrS3Y0NGh0N3BBdEh5aGtKUjlSbThUbktDdXh4TFJQMzVTMEhOa2Uv?=
 =?utf-8?B?ZERndGNqSVE2ZStTaXNiRkxiVitDNFdjemkvbFdnUkhUMjlTbENGT1BZUWJv?=
 =?utf-8?B?RlU5Q3kyUVN0bDR0Ui92dlYwVjh4Mnd2OVIxMVk1K3dEaXdvenFOVERKWmlP?=
 =?utf-8?B?VThyQTAyZVdQcERVMzd1U1R6TUgrWnhyRStWdkxjMlEzT0VLRGtJbUlaNnRy?=
 =?utf-8?B?ZSt2dHZTdzRyck15SEFOS2t0ZTlFNkFnaVZUTmY1aDM2VWluZDBidk9idUR3?=
 =?utf-8?B?TjY2VjN0b1JEZXRpbTV5Vy83bXd0V2txQk5WdndYY1I3eVh3NHpBaHRncHdP?=
 =?utf-8?B?UU13ZzdqTDJDcURkL3FxQXZQbGYwbkcyR2oxQW5aOXZKV1M4VTRuTzNyVFBs?=
 =?utf-8?B?THBJdHg2WHExbzZRRHZZUWlKdGt4SGxGVWo3UFA3bVVySE5SQk5rcmx0K0pL?=
 =?utf-8?B?MTNkQ2RpTkVVaHlIWXgyV0I0d01NSnhXdk5ZY0NZd0U5ZldaSWF0eERzZ09w?=
 =?utf-8?B?LytXL041MkNoVkEvd0hlaEFsY1pvaU1sTGVWZTY2VWhqTVBLU1FaS25MSm5X?=
 =?utf-8?B?YjYwbzBEMzVWQ2N4NSsreWFqSTA3bDRqT3lHeWcxT1ZGZlpoMVVJUUZ5NjNm?=
 =?utf-8?B?NFkwck1nV2h4NHNCWW55d2F1Sm5RbWFHOUZkblFqcjB0UUh3RUc4S1FqNDJH?=
 =?utf-8?B?bHVyc1pRR1FSZnlrWnk3cmNLZ1RSNkx6V2djeVNoN2lsakp4ck4xWUJ5cmxq?=
 =?utf-8?B?bStmRlJQVnpETDJjNkFtekNlS0FkUEpSRCsxd0ZZNXBUa1VBUmI5WnNsL3pU?=
 =?utf-8?B?M1FRelJsYVU5UEJWVnhKQkc1bG50UHIva2RmQ0FFd2ViNWh2Snk0Ky9Hckth?=
 =?utf-8?B?QytMcmZuWTU0MEJoTlJiQkhlNitSU1ltbU9vRisrL3JDYThJNHFnZ3NSOE03?=
 =?utf-8?B?ZVZkWVRhNktiNW5objBLZUVVOEFOTDJqVml6TFdRUnNHV0FWK1R3RGhtWVpI?=
 =?utf-8?B?Sjl6T2RCL21BV0dvNDVtU0VpUG1JdEJkc2hDVVF3ekRwRkxLdUdhV1ZRYmVS?=
 =?utf-8?Q?pTtmasmbNcO6kdWT1y2augH/u1t/pNGUir7GUVT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59cd4723-532e-490b-0fed-08d983e4f929
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 07:36:10.7079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jl0xq789Xd5NwkKi8aXei7HyuHlhpaktxM76YcxKmsvTE0PXMAiCoR898aSky1xhfcfP+FvyySU615+XLFH0rsBVb+Fd7sNreQ3DgA5lfKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/adlp: Optimize PSR2
 power-savings in corner cases
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



On 9/30/21 3:14 AM, José Roberto de Souza wrote:
> The Wa_14014971508 is required to fix scanout when a feature that i915
> do not support is enabled and this feature is not planned to be enabled
> for adlp.
> 
> Keeping this workaround enabled can badly hurt power-savings when
> a full frame fetch is required(see psr2_sel_fetch_plane_state_supported()
> and psr2_sel_fetch_pipe_state_supported()).
> 
> Here a example that could badly hurt power-savings, userspace does
> a page flip to a rotated plane, so CONTINUOS_FULL_FRAME set.
> But then for a whole 30 seconds nothing in the screen requires updates
> but because CONTINUOS_FULL_FRAME is set, it will not go into DC5/DC6.
> 
> Reverting Wa_14014971508 fixes that, as only a single frame will be
> sent and then display can go to DC5/DC6 for those 30 seconds of
> idleness.
> 
And add a little more explanation here.
DC6v is a power saving state where the display engine is powered off 
when display enters PSR2 in the video playback.
And the Wa_14014971508 related to DC6v.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

> BSpec: 54369
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 11 +++--------
>   1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e8af39591dfea..b37f123fe0c97 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1499,15 +1499,10 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>   
>   	if (full_update) {
>   		/*
> -		 * Wa_14014971508:adlp
> -		 * SINGLE_FULL_FRAME bit is not hold in register so can not be
> -		 * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
> +		 * Not applying Wa_14014971508:adlp as we do not support the
> +		 * feature that requires this workaround.
>   		 */
> -		if (IS_ALDERLAKE_P(dev_priv))
> -			val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
> -		else
> -			val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> -
> +		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
>   		goto exit;
>   	}
>   
> 
