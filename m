Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA706F6918
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 12:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901D710E430;
	Thu,  4 May 2023 10:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95BA210E42B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 10:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683196470; x=1714732470;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oF9kzj8e47jC6GQAVVVsxMaJWGB5r9jy6vuzYPTtCTI=;
 b=aLyc6AYT4m8dUPfvuGSdhoPhSPfhhvMcm6X3Yoo7xX/UOzmtoAntI7Jw
 MTp1ZL7XEtae+dq9c1m6UynA2atKhGI4rJAFzoUCveqO0g+6D94r7CQ4N
 sr2wzjvNR4foLawwNg0mxYUp9LytJIBPNVFpKt82sjtVfOUkXfAA09jva
 U0GniW5fQhI1j5W8kWOG8ygRF1Vm5DVIemWXqF04UsO7RC4bIA0bk6PAO
 T5e+ao2FL8RhwZyP9qMs8qa3lMjqBwTuXsN1Yo4+6GoT3VpMozSv+Cjls
 GuvHzMmb3GtqWd1zbqvx0T1/H1BKjCLhE9W4dQNw0kWoesL63jHK098Ti g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347716383"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="347716383"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 03:34:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="727533514"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="727533514"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2023 03:34:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 03:34:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 03:34:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 03:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OrKh7N1GuJngdDA88oqxpR3fOXIcMXYKXjOCJJRf1eMSAL/obtJ/+ySklVtSUabLWyr+ShrF5s1rOcaXQkIfByNvVgslSO9P0JzYsrNnFiLg0Dm7h1aMT2hxxlm7HoN6FZ0Eqq1++qVcixVK+xvBJvgnfAny/XC4P86QeEKOsAABRW/0l6JA2Tk0AWUEiRIwkfRsWEGWTb6DWx5mTaes5fP74yF6qnWQ6tBZkdxTUtWmUvWomNDL4SxD8C6Ek3nyuOW/87B7iciOYpCTvlOjpcFkihmwQDzFqRBn1X9m8xv83R8hwI32GiUNJuYXu6KM6LVJ1yQaymS2PYFWB45D6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BehGX6AfeigTn0khkN/OL9/RjXNiLJuGNADsf3tdG9A=;
 b=H/hAijDjWf3UvPAALuInByBheb4TPHZcdwzv/EweIklQTGapSleXBVystXl1iJb/dZGM0J34Yx9Y9AoTjNBpTyTNIaK+3sbvUaGDcQFZhYofizloDT+Nqmb/QVOJHKyZ9N0ivNo7vKM66/mG6q5HKGvM9PRDiNEZcqBH6rgKY9bWdHjZSxwYOiH9TsZu21uRV2UqHE1UctEWNa46dWrRaWJSgmnROtZDHPgue2TRibYGdca+HRKSTN9F+YARiJfcOaq2yQhob23Cl/LzKTOdsLOaeLLwS+ldVRfFHbMWh4aPqAAZOkJVK6NY18d1hmb+zDxN69VSTzykC644XuiSsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.26; Thu, 4 May
 2023 10:34:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6363.022; Thu, 4 May 2023
 10:34:27 +0000
Message-ID: <6b0f2637-ca92-0f06-08cd-61665f7c9472@intel.com>
Date: Thu, 4 May 2023 16:04:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230503013731.537037-1-suraj.kandpal@intel.com>
 <20230503101206.579877-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230503101206.579877-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5246:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ed20036-17e5-4c7d-4775-08db4c8b22c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wj/2lTwVufKiRNzef9+VYQO939HnViYtv9x1xJs7j0ulNvUs9KaSR6ojwTQHDLRHU3zqbVVbO0MZWjuqJwHS0VLKiBdxlUZ306KLMKqif+Th1O3JH2pLo8ij+KfIxkjLR+GIR+BtE4Us0Fz2u/1mY8HYwv8gUJkwxwce9gJfIAYVu2IWrqSfnzleKCLJP5cucQ+SkjmIy4o5WqnoLyiW2y+jjTPcc0R1GQo3wDD8P9KkQF5KOKGf7/uH79FvVkdQxiTzpDdFGJ+0l5n/XKaE87PlRXzD9Uyjs6TiYWGswZIpo70mzazVm+FpL6RJXL1FldTXx4pegP7iSHBwvvJHpbZFf95x2HOV2tSn3Oq8iivCuMpE0ZoRiENo5tNiBNuUWVevouBN0SIyWtr2x03+6MuYcjN4EYi1M3Of6zjZrcqNTOo0RzXqefwj1cIctff+vuMwU+nQk1HLsMS589mNQN+k09yDY6bhWqDu9vLhHRa6AbAsFegULEh/SeSgt1gQpl+O3ZWV0J3fJpYqSdBqpg1i+cfUO3CJ71SHtEgMr6IHTR5qpT76Uj8892jH4TGHYgqoazN89w+HlCRPQkdCGqvliqmuJVOkBnm/6bfVHH9xv7Xu40Uv1Szy64CkdWHhAxTeYQdnWCASaZ7LNXPiEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(346002)(366004)(376002)(451199021)(38100700002)(478600001)(82960400001)(8936002)(5660300002)(8676002)(2616005)(26005)(86362001)(6512007)(6666004)(31696002)(66946007)(66556008)(107886003)(6486002)(4326008)(83380400001)(6506007)(66476007)(316002)(186003)(53546011)(41300700001)(55236004)(31686004)(2906002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UktxUUsycEEwbUJCdlJHUWJHTnFXM1htZk9aU3A1elNqOEFhYmpjMXVicnQv?=
 =?utf-8?B?WU1ZZEpjVFZGWUhLVWZXT05HcjdJMDNocUdrWnlVS2wzRTZ0bkI0cTJveWd5?=
 =?utf-8?B?VzYwZ21uUFZvTFp4c3JQWDRmaGREZ0I2c0hHVjZpRDFzQUFnYU9vTENEcTZB?=
 =?utf-8?B?bmhHclFoVjg5T3JOTERnNzkxY1orSWFQUWRvU2pPdDduUXpCVzJSbktRZWUv?=
 =?utf-8?B?aHhJY2NQc2RBL0RxZDhQZUJnOWpVNXVjOVJ0OTlBd2hZVUJXQ05FUzdhQ25x?=
 =?utf-8?B?dzR6R0p6ZDAxZlM1TFlxL1NMSVhrOGFpc0xJdWQwY2lnc2hTMjRaaHFJM2Z6?=
 =?utf-8?B?SXJNR21sd0hCeXBlMWc1b3VRcWkwWEpqa3gzaWxuL2NHL290UlFKN2lzcnVG?=
 =?utf-8?B?TEl2TENvVkRlUVNXTlJwZjVLVUxiRmlmSU9JYVB4M0JmSWtJd0ZmZytqbk4v?=
 =?utf-8?B?VlBMdGVodXFNR1pCeU0vbWhmTUhXOGdMSWtZcFlHTjZPN2RYL0lPTHh3NDVZ?=
 =?utf-8?B?cE9KQ3VMOXVtcXYyM2g2SjFBdlg4RE5yOEYxNm1EdFd2RnJsZ1U0VnNOOC85?=
 =?utf-8?B?aTVPcS9lUXVNMjNqVGNGM3gxOVYzb1Bqdm5wZUlDTCtmdFd1cFFNemY0a08y?=
 =?utf-8?B?TlBac296NHlnL0p0R3dWZTc0dldwK0RxV0ZUQnhRM0I0OUc1Nk9sZ3dWRXkz?=
 =?utf-8?B?eEN5YmtTRzhzUTdseEZvRWlsNTI0alBOVTM0eDZSakp2a1NxZVNpdVJUSVJL?=
 =?utf-8?B?YmV6Y0ZQNEtxaDBtazlUQzZSWlE2S1QxN0wvdnNwRDFSekVCUms3RnU2c044?=
 =?utf-8?B?bE9vb2JBNWxjSngrVS9CRWRzUzUvQjVXWGNDUTNrS0MweTZZQ1ZSc0JOZVhH?=
 =?utf-8?B?SFA1UzhQS2dBNU9Jd2dkK2hpUzdKVCswWjNkbkRGc1RNWVZmUTRTSWV0VGJP?=
 =?utf-8?B?UVlSZ1FHQmJUN1pJbjNZaWtNZzQ1OUVqRzRubmMwV1NRd3h1anJlc1p5QVpE?=
 =?utf-8?B?eWdLeGtYMDh1b29XZDVlemk2VVZEMXYyTzl4d2ZzUDBndnFwSUNON0JVQU1N?=
 =?utf-8?B?NXRlZzQzaHJqR2w4VDU0cnVJVE9qWEZIeHZESlZFakkrRFkvVnpSckVZa3Mw?=
 =?utf-8?B?WnZoWHZvMGxWUGRVODlKMzAvQ004Rm42YXBZQy9TMTZvdXlSTCtlUEpUQktS?=
 =?utf-8?B?bUdadzQ4NG5qUzBXMXo2cW9rS1JNV0xxL0Z2Vnk0YmE4cFQzMEVBcDcvMDE4?=
 =?utf-8?B?S0QxeU1RK051ekJWME5OWEJFNS9tWGxkL0kxRk1neWdPYzNsL3VLd1ZWdzNX?=
 =?utf-8?B?YkdvTUFWRFBUaDZ4aHJrYmUwWWJWaVlnYmVGSGlVR1RmRmtycGFua0wxYWQx?=
 =?utf-8?B?dURTRDRIdFJVZEl1VkJ5MUFyZzdSUVJzZmNpdGRLK05uK0tkWmpvSXZ6UVN0?=
 =?utf-8?B?WittYkZ1ZnZ3NEc1WnREWnM0WEVQZGJyZGNMR0lxbStiTVhaZ3BYWEh4cGNV?=
 =?utf-8?B?TDBhMWtmR3BhVExpUEoyeGJGRVNZL2RhdWRSQjBFSG4vVDRic3d5NEVLZUVJ?=
 =?utf-8?B?cjZSdERTdTlDRlBUSWpjNnduV0hQeXRydC9CVEVOZ2lreTRJekVvSGFmb3Fp?=
 =?utf-8?B?QStCRnNkTXdvNWRpMjJSaS9OMDVhRUpRQjk1bWhsSllUK2xGc3N6SGVHbjRM?=
 =?utf-8?B?Rk1ERHZRM2pmVG50OW1JaHhuWTBRVWwzc2xyTTlQVE82c0ROUmJOeWRmYTVs?=
 =?utf-8?B?TUhnZ1F5YTliZ0prZFpMbGNFdmVGV1dsM2J1akU1aWR0Skg0NGtKdkREMGFU?=
 =?utf-8?B?UkNGaUpFamFHNnZSeU80YVZRcFRad0lCV2dPWmRQanNHZCs0MkQ2QzE5Ui84?=
 =?utf-8?B?TVpyTlh5U0RKdThyS1JDWVVxVHNRcWxrWEQ1b0E1SEY4MHg3ZFFuN2tVU0p6?=
 =?utf-8?B?TXBvS1p3ZTM5WXp6MlpRV1NjVDVVNkl1U3pZSGJleVgyU1BWT29RNUVkaEp4?=
 =?utf-8?B?c0dEYlZ1ZGdaU2RWMGdGVGxBaTB2Q3hNWHQ0Q1F2RGxMSHF0dWhoeDYreVpO?=
 =?utf-8?B?NjNjdlRaRk9YYnFKbXlIazUyazY0VWlXbkpvSlBUYTFVa09IYmhNRjJMWUpB?=
 =?utf-8?B?NEJidTg1VHRjU3JxdkRvQkkrMHMraFdBaHVxSTNzYjNkYWdRaFNSWUhHdVha?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed20036-17e5-4c7d-4775-08db4c8b22c1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2023 10:34:27.3762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1LTsZ4OYNgHRGwYH+ADu43RmF5btrEYjtaQlsBD37tXUgL5NlOBdOJ1C3Tg8drHpJM82/Tvw2+Cqr5GpA12a41XY6Olr8+NkiieRHwyXxcs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Check if media_gt exists
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

I think we can add fixes tag:

Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")

with relevant folks in CC.

Otherwise, LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 5/3/2023 3:42 PM, Suraj Kandpal wrote:
> Check if media_gt exists if we are using gsc cs
>
> --v2
> -correct typo [Ankit]
> -assign gsc variable if gt exists [Ankit]
>
> --v3
> -declare gsc and gt variables in if block [Ankit]
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..b183efab04a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -204,8 +204,6 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> -	struct intel_gt *gt = dev_priv->media_gt;
> -	struct intel_gsc_uc *gsc = &gt->uc.gsc;
>   	bool capable = false;
>   
>   	/* I915 support for HDCP2.2 */
> @@ -213,9 +211,13 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   		return false;
>   
>   	/* If MTL+ make sure gsc is loaded and proxy is setup */
> -	if (intel_hdcp_gsc_cs_required(dev_priv))
> -		if (!intel_uc_fw_is_running(&gsc->fw))
> +	if (intel_hdcp_gsc_cs_required(dev_priv)) {
> +		struct intel_gt *gt = dev_priv->media_gt;
> +		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
> +
> +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
>   			return false;
> +	}
>   
>   	/* MEI/GSC interface is solid depending on which is used */
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
