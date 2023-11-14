Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2AA7EB3A0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 16:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F04C10E44E;
	Tue, 14 Nov 2023 15:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE4910E44E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 15:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699975964; x=1731511964;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4EQ5ojgoHJnY+4Pyre+h3CXZ/HXc3DEguVlVkOD1xYE=;
 b=P9xFhG1QMSIfmhZ1W7LXdr13/+wmTQmMwiUW89W5tYtlOdh2r4sgbZnR
 sotdKhUFg8o5dyVcCh9bMZVocPfEViSEzx6IzPS/tzUTA0Gl+VY4+iNC0
 FUIIiQA4VvLusJyRxBpx52ok0MxTzmwl55dCV0MRg/+J+oUyknwAzDDOD
 lI00DN6o4l4dH5ETVJLcnlkv1R3oXaNgVoSuD9jhiHmdm3D+GKzEuKATP
 Cu8xRNvxaY3iTVQrBO06RjHYwFZba48OvH85r88TbE4NPEfSRZtufBPNP
 HfhSC177rrBCu7BZT0mYj3O/jjoXVbp8WaJ0x37toLRJ2XsX2ornABUcS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="370022986"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="370022986"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:32:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="938123767"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="938123767"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 07:32:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 07:32:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 07:32:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 07:32:21 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 07:32:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9mV9sYIpPlkdZfsgUJqeza2qxYQ5LZxqEAIQNneEl/k+TJc5pSqxHcw3TaDoWCC/Z5xnH6ofRsYGgfvpHGjraFyq5AUu94aif/TbttA6gPTC+JGipRZfnbopQJTo+cjNypzimVsprli3WfNTw18bQjQxLNRwrTjOO+sQOsqjD2H4Kvj7ED7g5ur62JLXidQ2Ai6EDG/AUCaSWntUfUh7nVbaN7XS00X0olln5y4jsDrL5vzwptBjstUYELIOLSK8QtqhTUMQho/RLNANFzRtAmJ5Tlb+b0eErKJ2OhO47onpFLnyNqQQ/YJmm50E8uIOtrZgcriti0sA2dTxn+w/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C3IuBxX925c05wmoQP78jcLv3bkJccf9wbLaihMe/CU=;
 b=A00S/VAZG/PcfhploOodP9F+DvoHt6zY9kdChQk8z5gIKeSwogObOgWwPhqw9Ugo6uizQiICp6AvSNaqFFxnUulcJ8htTa0TPwjRDsxqq3FK1BDAuGv6jEFnKoEz23l121Cnsb2kEtLwAByKRitSb3L1+tB//+oGr3sW9NWf7qSkyoKOuWNrIoJqYLrKxTw3XCez0FhpEktlWEmCh5Td48sacmuBpEGLKJawZ03u5XWoNLRUsWPE8lxZo2oGWfIbf3tQbJQiC+Gko4Zn17CmEqEHH7pyP3zroNZshYjM/981bCgwm6ll38L4eRf0XfHiLKDiQdrWD2nfFXZhRbfE9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8324.namprd11.prod.outlook.com (2603:10b6:a03:538::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.28; Tue, 14 Nov
 2023 15:32:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 15:32:19 +0000
Message-ID: <903a7289-77a7-261f-6a3d-3f0f8f38df18@intel.com>
Date: Tue, 14 Nov 2023 21:02:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231114141012.603960-1-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231114141012.603960-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0124.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8324:EE_
X-MS-Office365-Filtering-Correlation-Id: e7a2e48f-20cf-4327-0197-08dbe526e35c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uZylqfM+Vwf/0F094WtcYEv3hvjwGhf5LYoH4n50JSAQlsLn0kj3MGwNLsoIBlK+zz4mj2bSoMcQrBikJjgBRTxstYG9LLXgDiqLHD3/rcnn2Z94j9qAPqNV7W9fQvfkJ0obWTMf2AyOa4OqpK6M7FbBybE+/+fqj63qHjVbCyJLs7EVlWog4FmyCBhN6y+Tg7ry5KbdKJ/QJFOBo9mspz9ftvnz7O3J5gt8Y6fQItj2BjEzLD0RQmsWNeSOSgsJF+HijRG/aiDhXoB863l/4QtH+O6IS+sH/h4Dmvx2CTWP/VUh8Rxt9VwLOoGZIZU2CLx+CiPrSr9pnOlVy1aIy/uRTkVLyUMzDO8WqAMvHdYh6+Bbm0V5eZXx8J427DP1Vdf6J6IVsZfEY+lZ+Fs4Gr+Utm0RU5gyttE5sM+3624YUPPP0i+g5lhkGUZ9oVl8X+sflc4xZvMcsevHenbXc0WLdeMxsODBehA7xcbUy/Y2dStYWvB0s3QnT8FWHH0IQpf9F2YKjRneFglsVV3btkrYMiSzqaGodgCa6seSByFPXOPeObHP5/17hBKsC5FzkiTwggVc1bQ0+wnbFZXTxeWJsbPf9bClmYDwq5TDAcft5BMJFmp5u81aoZkwkow5kJydV31BDdnBPKH3Pdhz9w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(38100700002)(2616005)(4326008)(8676002)(8936002)(55236004)(53546011)(6512007)(6506007)(26005)(82960400001)(31686004)(83380400001)(6486002)(6666004)(478600001)(316002)(66946007)(54906003)(66556008)(66476007)(36756003)(41300700001)(2906002)(86362001)(5660300002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akZFOHMyZWZpQXFpcjRralNPUkpFbG93QkV6ZXhVTWpxQUUrWWp0NHJOaTNx?=
 =?utf-8?B?MEhPL1ZlejBhSVVlSmV5bjI5RlQxRXRicE5hdlFyVGt2eDZXT3Z1OXdJUTVK?=
 =?utf-8?B?RGRCL1VQaml5bG0yQzRCM2Joa3VZSURuTkl6T040RzliWWVVY2djUmJwczAw?=
 =?utf-8?B?YW41L1hnV1RtR3FzMkU4OVV3TmNVczB6OFFOZHAxYW1GQ2x3ODNSa3ZvRU9V?=
 =?utf-8?B?N0I0aUY3TVViVy9SQnh4dm56dlJLNmxPU0E2amZjblBWa1UyeDBmdkxLQWxL?=
 =?utf-8?B?bFdCeG16UVRBSGM5NmtCNnMvSGpPZ0J0OGJ6MlBMYTRRRzVjcnpTbUE3LzBB?=
 =?utf-8?B?Ujl3d1d4ckhLT1JYRlpSejhwUkp5eVFFZ0JyS2k0RzFYUFo5M3FiWmY0TmRH?=
 =?utf-8?B?RTM3YXJuR25BZjNISk5GTVZMRkFhR0tFbmlmdkxKdWl2aktrWjNNUHhqZ2hW?=
 =?utf-8?B?SjBic1ExZmkyUDFWWE5KRkhOZ2dTZVlwTC84NW9zNXZVeTc2ZTd4NU5YZDNF?=
 =?utf-8?B?TXdma3ptY1NrNTZudUxicGpCUDJMdWdxU2phYjk1eVI5U1pqTU1RMWVoOEx0?=
 =?utf-8?B?aURLNWdMVldjNzhjSkt3dWRsc3JETndCMkxLYmtQMWIwZk85S2hlb2ZmdDhM?=
 =?utf-8?B?SFA4ditEVTVoeUVSK2tBdE1BV1VvblJGdUF0TkdGSDZyRStRZnB6S3BjUGJJ?=
 =?utf-8?B?RDRXczdHaFlNUTErZ3AvQ1N2TU9VRmlpVjNGTTMvam0wVXhDTFVZam1KOXN1?=
 =?utf-8?B?UytQRUljU2lBTmlxK0lQZnBSVmxMcUVCeFhXOGJtbHQ5MXYwZXVCZkZkUjBO?=
 =?utf-8?B?RlBLcFVIVHJROGsyRU9lSlp4Und1SndSMDVGbFhBUDJ6YXlBWmU5QXJ3Y0ov?=
 =?utf-8?B?UzRiaXhBak5SK0FnK3hjck8xcG1lb3BBbWxTaHpEeTh1NW1Fdkg0bVo2RlE0?=
 =?utf-8?B?RVdWVjYwMDVDcXl4ZHZHL1RhT1pqay8zNm14L2h0eUxCbVRMcnZNOVZmL1lx?=
 =?utf-8?B?eHEzMy9jMWdhTm1YOEJ2Z1dGK0V0RUxsRVIwRDltK3NEQjFZZ09oa05ycUxL?=
 =?utf-8?B?aGFTOTA4YUhXUk1XNDI0bXFHZjYyQm90OFk5OWo1cTJWbmxhRXBnV040SC83?=
 =?utf-8?B?NE1nQ3ZQdldiYTNRZE8vQjNBQXRIN1FuTHNpYVFNTkRTVHhZb2hsUTIzQ0Rl?=
 =?utf-8?B?S1ZUeHB5NFREM0Ntbk5HSGEzaHZ4SHIzZVd0bWtYWnZYem55bThtVlZWZzdI?=
 =?utf-8?B?VmZVbHRxM3RuaTFVVW1nSDhLekpZSGRhUGhHYjloZDNmVTZDMlNLVkJQTVNZ?=
 =?utf-8?B?KytuRm1aZnJQS0JHaGRWVWc5bnhtVHhpWGRpODdvTVc5S0M5aHVZenRWSmNz?=
 =?utf-8?B?YVhXb2YrcFhIc0h1MFpXRkxuWmZYUlhmdVNxRVRJenBkczdnN1RTRlVhWWZt?=
 =?utf-8?B?WFVLaEFzVTJGRkdXUVdzVmczYy9qSGNpcGYvUXB2MHMrWjVFbHhXMlBRUUFZ?=
 =?utf-8?B?SHFzQ2hmaWxTUFlSZWdEdWJFd3VMb2xMUXZxMUJ0VDgraVE4cTF1U0grTjk2?=
 =?utf-8?B?Zy9zWjl6VTVQeWpqeEUwcThldXcrZG8vOE9hdjFWNjcrTDlRWUJsN3NtcHZZ?=
 =?utf-8?B?UlZJbVphanB1L0lQZm9oSEtHQUpUeEIyME5XaUUxbGRnUFY3a3E0dFlNejcw?=
 =?utf-8?B?MUVTcm4zbWpwWENCaTFtUjdKVGhHaVI0V2prYXRpWlNIWkNFM282SXNQU3py?=
 =?utf-8?B?dk5wRU5KSTF5bHhFaVFCb2V3ZnpsSTM3SHhxT1JrTjE4YTR2YlFiaDJlb3k1?=
 =?utf-8?B?MmI3dGVtazlyQ2hMYnA3aHJRYlMwb1RMazVmeWNTZjEwODByZlkyS0xKRXVN?=
 =?utf-8?B?eTRaaWpOSUNIMzE3ZlhkRmQ3VFJRTDZMSWJqKy8wODFvUzFWUnA2L251bHE3?=
 =?utf-8?B?OUhYc09YR2NPeFZhYjJ0MmI4WGNHU3UvTmpjdTQ5YjlpTisvWmsvaHd2OHJw?=
 =?utf-8?B?OFZlanhqMG83Z0RDWGJGYUNQTnJMSjVQK0xhQnJLbWFUdDNkOEVra3lZMVZJ?=
 =?utf-8?B?d2tPZXVRMkdPVXBsMXlpcy9ORy9SYmlhMjZ5c294WHFTM2kva1U3d3l5R1Zx?=
 =?utf-8?B?clFCeGk2TzNCY09wdmRWemV3R2tXLzMxdy9zd3lDV3VuOThoV3hkU1NzdHQy?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7a2e48f-20cf-4327-0197-08dbe526e35c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 15:32:19.2456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vud7ygw2fi4Y2KDv0oi2aazXg+N9vJuqreav7Bk4204Tn33yFYewi+pl/5RNeGyDJDmF2JtkkGFkg5ttyyKcOm/5zoR7GrLVL5dNcwD7xzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix fractional bpp handling in
 intel_link_bw_reduce_bpp()
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
Cc: Sui Jingfeng <suijingfeng@loongson.cn>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/14/2023 7:40 PM, Imre Deak wrote:
> Convert crtc_state->pipe_bpp to U6.4 format as expected by the rest of
> the function.
>
> Fixes: 59a266f068b4 ("drm/i915/display: Store compressed bpp in U6.4 format")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Sui Jingfeng <suijingfeng@loongson.cn>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_link_bw.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index 02a0af2aa5bae..9c6d35a405a18 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -55,11 +55,11 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   	struct drm_i915_private *i915 = to_i915(state->base.dev);
>   	enum pipe max_bpp_pipe = INVALID_PIPE;
>   	struct intel_crtc *crtc;
> -	int max_bpp = 0;
> +	int max_bpp_x16 = 0;
>   
>   	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
>   		struct intel_crtc_state *crtc_state;
> -		int link_bpp;
> +		int link_bpp_x16;
>   
>   		if (limits->bpp_limit_reached_pipes & BIT(crtc->pipe))
>   			continue;
> @@ -70,7 +70,7 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   			return PTR_ERR(crtc_state);
>   
>   		if (crtc_state->dsc.compression_enable)
> -			link_bpp = crtc_state->dsc.compressed_bpp_x16;
> +			link_bpp_x16 = crtc_state->dsc.compressed_bpp_x16;


My apologies, I think, messed this up while rebasing :(

Thanks for catching this.

The change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit


>   		else
>   			/*
>   			 * TODO: for YUV420 the actual link bpp is only half
> @@ -78,10 +78,10 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   			 * is based on the pipe bpp value, set the actual link bpp
>   			 * limit here once the MST BW allocation is fixed.
>   			 */
> -			link_bpp = crtc_state->pipe_bpp;
> +			link_bpp_x16 = to_bpp_x16(crtc_state->pipe_bpp);
>   
> -		if (link_bpp > max_bpp) {
> -			max_bpp = link_bpp;
> +		if (link_bpp_x16 > max_bpp_x16) {
> +			max_bpp_x16 = link_bpp_x16;
>   			max_bpp_pipe = crtc->pipe;
>   		}
>   	}
> @@ -89,7 +89,7 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>   	if (max_bpp_pipe == INVALID_PIPE)
>   		return -ENOSPC;
>   
> -	limits->max_bpp_x16[max_bpp_pipe] = to_bpp_x16(max_bpp) - 1;
> +	limits->max_bpp_x16[max_bpp_pipe] = max_bpp_x16 - 1;
>   
>   	return intel_modeset_pipes_in_mask_early(state, reason,
>   						 BIT(max_bpp_pipe));
