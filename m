Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D12568099F1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 03:56:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8430810E252;
	Fri,  8 Dec 2023 02:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AD6210E9BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 02:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702004164; x=1733540164;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fGxSeChCCjhHANmlPOWH7VIqExiMk8vheAji7ufsges=;
 b=eZfKPhchofABxEmasI7dI8bsKyUWhcLESYCMQTF88hudzlTr1P5A1yk8
 aEnsTYGS5/bhlux3hnVZW06Okuy67drk0SubqS+k2nqLUQVKE23xXZIAl
 gQos3dItv7SgV143GZxNIWD0dc6NJ3HZZlfutDz1wZR2D12rbg/WSHiOJ
 SXpgt7NcPzXvHHhRYHQQ3eJVYPFEALzhZ9Vnf9axLRhoP8dw7QaYLOpPh
 6c9YLXphfajO+Z3Auz4J12QlNJVlPq1S9fYhXlMLw/TKNdpN9OqmYC/Mr
 BrBuvG5eDKNxourl9WARSjpJjhNK5CGn8sSupmZMnvPKhSVn+5K55bo98 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="398217601"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="398217601"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 18:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="837978548"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="837978548"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 18:56:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 18:56:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 18:56:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 18:56:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 18:56:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogWvax40TedDKFpPVZ6osFnauwa3zxHiAzYyEWlFD19WMgO3WN2hOOjWd4S27H/1oExq3FA54S4/c9PtmJxQXoXMDNmOESewjs71hHcASNyVEXmgepQ37EI1SzRDTePpsFJFwixyj2KPFB5Ds2PSK72YGLxaNFYl5w6HWmMJ/QyDZhYAKRcZ/zzsK2agqjDghg8ZMgvY7Tqql79dNy8WmoGhPisFyrCLEXK2oCvAFuD+KIxXw12qHbCepTYCaC8szfN5kdyuDWk0DYJ0lEazSWWoJeE4HtiSp84dqaZvmYL19sRhb4koRJaqg9cYY9Rk5+LGbjQ27ZmSlf2qttjc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1J6wzTK2I1172y0B45bLZt006uamcCY2OsvtBWRDfQ=;
 b=U/9h0nMaRkzqXCnErgR+hJO3SpSZ2MpbOsdcWjjYG1H1cXCtaXnz2Qglj+UwX0tdxZOeJi7UylbwzMF7U3mtyBfy8trfM1aN2fvar6XiugNma/iWNaJlWgd06bEBzKXSNcFvIHB+kQz4ImI6b57Qta2q8UKjRhcxK5GFcr3niafIh93a/pLnMR/7hW7Rg8NmCj075FoswW7KxwxocAw+tuxStmlVaxqkYOnv3AViksxbDsLp609S3kiWg4QVrQrhzBQn2SuuL5zj0fpoDee8K6gfWE8dogN3pqVy0pobeVLNMiGzG07fyVc9JdZVMlxKxFJRtdfLgER3b2OEe1bWyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6794.namprd11.prod.outlook.com (2603:10b6:510:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Fri, 8 Dec
 2023 02:56:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 02:56:01 +0000
Message-ID: <c37f6a76-5ced-473d-9cc9-cc16c3aab098@intel.com>
Date: Fri, 8 Dec 2023 08:25:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Fail Repeater authentication if Type1
 device not present
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
 <20231207053513.1740340-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231207053513.1740340-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6794:EE_
X-MS-Office365-Filtering-Correlation-Id: c46be8a6-6e6d-4b1f-42a4-08dbf79935ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Csm8SQ8bXiNOBnhQ6teSENds93ioLb2zOlhyral01X8i1fmITDuXX7jf14nOpzrw6RlPVbuoK2vapuP2TtgVYDYX3nRgQQJ37AMLUf72PIv1XtQ0F1JIv7V1S1UCpe+eiqHgP/jLCpneUvHITH+avJ0g4maEZT+A9+D+mXc3cicGhIieIH1UCS9cQ88Qff3ZjCTcs0cgiT0m2OJVZOwyR/UA8tN8PJjd5Vbolwo0jSwgNptp8MwfRUs+gz2vRtO4rK71qyRJdM1WpG7hyLsJitcBbVelrkPKvElySy04PBMxfN64na4NuFmVYBZmISjrqWESL6Ht4qnftMNBuWRnCtYl2Eg3GfMBdkg8C5pdUe40OM+dIWrYtuMo3KJzttNqB9PVORrFu+WMuDC44dY4tf9F2mVlQD8R4a5Qvvfxq8mZJ6gFwa3BSKdR5+jtj6OZq4hxdCNuAA0rbhIeJpo/4gvFaH/+ysZHtn4qnEJaG37XUbRDlABiqSmjpnHpoQfLVrT02H8GiteGWAt04Moihpx20uiMvwL0JZPWRAv7bBfPMmN/ZZz0ayOtaoOOABos8ncMyjQZFDWGAmJdLJKPteJnFQJrUJDDreUra9kV9Iw0kVbRrYl5giTUGYNnPe7/MpUxaYsEHYQ0XJM+kcxuyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(376002)(346002)(39860400002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(5660300002)(31686004)(83380400001)(2906002)(2616005)(6506007)(86362001)(107886003)(26005)(6512007)(31696002)(55236004)(4326008)(36756003)(8676002)(53546011)(6666004)(478600001)(38100700002)(66476007)(66946007)(66556008)(316002)(6486002)(82960400001)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnpXWjFMdWR0cTE2NVJ5elZvRFVZb2VGVnd1NW9MV1QvZ3RyYnh4ZkdIZTRF?=
 =?utf-8?B?RmgvbjQxa0ZHRVUxUlRwVmU0bE81K2l3bndzMEdjRVg4elVMazQyUHBKSjhH?=
 =?utf-8?B?ZXJZNFZINm9LV0MwSVgydjZmYkpuZEFONGxyNXQ2NXIzZ0tMYmEvUERaQmpj?=
 =?utf-8?B?aHhlWTNmOHhRMkFqMjZKTUhVdVhnbks0RU1EWFBPeW1GYThXdlkybE1mcGZ2?=
 =?utf-8?B?UlpXaUl6U0FkZFdrZGZKTzNQeGFvZXFyeU44NGRneitaM0MvbXdaZVJiY2VU?=
 =?utf-8?B?dlg0WXVCeWtKT0NEcU4rNDMyQzMvSlMzaGlKUEQ4ZW5IQkpvUXgvV3FlOElM?=
 =?utf-8?B?c1l5OGVYeU5mdVNZdFNZbTdIK2l0N2ZyVEFwNkU4c2luOGhDdk5ZT3I4VHZ5?=
 =?utf-8?B?NlBmM3dSaEdsNmtDUm5zZ2thRnpQQW5GejJpWm9SU2RhQWVxalYvb1Bjdm84?=
 =?utf-8?B?SnZwcHRLak56R1pySS9TZmxxSDI5am16ZGtTMSs2eFlvbjVTVW9ON21MT2Zh?=
 =?utf-8?B?dWxMeVNZZnFvc1BmMG1CVGhJUmRpM1BZcy9lVlF4ODhQcllXUE0xSkxBQ2VS?=
 =?utf-8?B?WWlHY21TTXNSZGhoVUkwZHUwcHdzSjcyc3ZFMTdCZ1A4YXd3NUZSTEdSaTZk?=
 =?utf-8?B?NTZkY3FzbWpEMCtXK1l0STJTYXN6SDJhWjkvR1IrT2MvNnc2WlBlMVRtNjNm?=
 =?utf-8?B?UEhZQ2ZoMWlETm9VMHFqb0QrOEVNOXozUXJ6bHloaCtqTnBzazZCUCtLZFBy?=
 =?utf-8?B?a01wdGttTlFwVmRGMm9pYlVISjN2ZmordW5xMWRERGxkZnFpbldNVmdCWGQ0?=
 =?utf-8?B?Uk9sd0JaL3RSbWdXcXZ3ZW91S2FTV3BaM0JxZnRXeE1yWlZXQjZ3UjJuRTl2?=
 =?utf-8?B?dnUwOCt4WE5jeTBvYWlzanMxY1F2RW43ZExqYjB2ZENFVkV5djV0M0J5bi9V?=
 =?utf-8?B?alB6U3IrWXZyUU9KbkgvZWFpNlRQY3Z0b05hVVovRkVOcTlGekxFaDVDUlN3?=
 =?utf-8?B?K0NCN1RkZkI1RmZTd0pmcWZoRmd1UkpHdHNQN1pRbjMzVkZCdFFVYi84aFFD?=
 =?utf-8?B?SDZvQmVrQ1R0VnllcXRualZ3d2FhNmJ0Lzl0MjVTaWdHckExTktGb1EydVk2?=
 =?utf-8?B?NXo1OTE3dm5RdkUvSm1rZmw2WUJjbUZrbjBBbzBwWWZFcTd4Zkd5RzZZWTFW?=
 =?utf-8?B?K1A4Z3lncUxrS0xrZ09JY2VCWU83STc4bGFORm42T2NPUys2QlZxd01TTStX?=
 =?utf-8?B?OHIyNlM0M1BRVnNXNERXaGNZT0lvcno5bXlHVlhBZUlQcFZ1VDhJb21tZmli?=
 =?utf-8?B?a202bExhMkhzQ0M2NlBDeVlSdXRDdEFaODEwd0xWcWNydnNwZnp5eCtQNzVx?=
 =?utf-8?B?TlorMVFLVEJjWlp2cnZnL1AxSFRPa1lyY25ERElIVTRvLzRkRFZzcStFSWZ4?=
 =?utf-8?B?RS90dGFCeTgra2JScXVVQmFJVmFtUWRhZ3EwUE5BeTBDTXlIVHlPdUlaVHph?=
 =?utf-8?B?QzEzUnZ3V0R0TnRhbnJkT2QzNGhTKzVvUkVoOUJKS21UcGIwcTQvT0F1b3pS?=
 =?utf-8?B?cUNqOTZtL28vOVdTQWJIZlVVdUdKV2J4WEUzcVUzeXQrM2lkc3RaWkVwb3Nh?=
 =?utf-8?B?ZkdSQk41ejBEaHJIUFVGZnZMaGg3MkZac2MvenBJOVdBV1gzWEpaR2lWWWpV?=
 =?utf-8?B?VVMxMkJ2bXIyeTBZSHRtNGxpVmJKMTU0ZGprd1VJSHNXS0xISkN4TzZPUHRO?=
 =?utf-8?B?S0RhVXFoUERtdHI3N3dPUmF1NXNuTXo1ekhGTER3bHI1THFBYUhQTlFzYUFZ?=
 =?utf-8?B?d0NRa21kWm9wN1E3YnphUWR6SEwzUFZCRlBSS0w0dmRkckZFbnpPaHFqa3Br?=
 =?utf-8?B?b3p0L1VDdGZ3SGdMSS92eUtiandRdmZ6WmJpVlZyZ2duVmJmWFkrY2FjNTdQ?=
 =?utf-8?B?d00vMFVodnBGOTA1REZnbnI2NGR6VFNHalpjRStWNEc2WGg1b2VieUN6cUV4?=
 =?utf-8?B?NGZCZTdHamVWNkNockVSV1QraUZZMzUrTlFGQkdWRkZuRXFIRWw4aFR4YU4v?=
 =?utf-8?B?bkFhU2lUU0g0SHJ4SWU0a0RoL2ZHQmJoVXdNQ0JJTGJGdWNaR0NEUUUyZjBE?=
 =?utf-8?B?NFdnd2hUbEdaVHdERzhPZVZJMXFuTnZ5N2o4RzBUajdWekdRdUY4V3BWS0gr?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c46be8a6-6e6d-4b1f-42a4-08dbf79935ad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 02:56:00.9146 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1/a/Saa1qkDRSaVYbtWzp93ffkSO8rpCfmvPtfYPDgN+XJZDzioSPwJxnS+bAR20ItflIGsr6/slvt//M6e1Isi5zzjoh3Fp7F7sVdT3bBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6794
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Regards,

Ankit

On 12/7/2023 11:05 AM, Suraj Kandpal wrote:
> Fail repeater authentication step in case RX_INFO indicates
> HDCP1.x or HDCP2.0/2.1 device is present downstream in repeater
> topology and content type set by userspace is Type1.
>
> --v2
> -Fix build error.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 39b3f7c0c77c..07d110c5841d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1633,6 +1633,13 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
>   		!HDCP_2_2_HDCP1_DEVICE_CONNECTED(rx_info[1]) &&
>   		!HDCP_2_2_HDCP_2_0_REP_CONNECTED(rx_info[1]);
>   
> +	if (!dig_port->hdcp_mst_type1_capable && hdcp->content_type &&
> +	    !intel_encoder_is_mst(connector->encoder)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "HDCP1.x or 2.0 Legacy Device Downstream\n");
> +		return -EINVAL;
> +	}
> +
>   	/* Converting and Storing the seq_num_v to local variable as DWORD */
>   	seq_num_v =
>   		drm_hdcp_be24_to_cpu((const u8 *)msgs.recvid_list.seq_num_v);
