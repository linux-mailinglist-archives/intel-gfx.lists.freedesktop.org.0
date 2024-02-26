Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E668669B2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 06:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19B210EE64;
	Mon, 26 Feb 2024 05:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cziWjy2r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3A610EE63
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 05:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708926036; x=1740462036;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lzfMtXmJXxzsEoM91aoV4tVXln/xEjJYR/f0lBAtPoQ=;
 b=cziWjy2rR9mZVgL8kOAFiUcO2zXGS6awKOlQ29pihxLXx3PxTdm2pxlS
 vqd6SM7VEJ/oXb1K3GFGM9T6SdKM42PAdIjhRQL0uNsVAjxsnAlwtXskr
 B5jVqHW45BjUG46UC6yBC5JCNy08KGqpj/6BfC6PN/Mp7yShUgBgEGjXM
 NnrDSnshrsPUAkFawiyh1wW6gt3mSJ8YR6EDZeHVohEeFIf3Azp6Fjt1W
 BC1hfyzg0E0rZRxhO0TPbOUm5qiM2YiJwjgsiPZRqACDHixHRca6ZWP8Y
 9mvIojS9mRdADNSJPtEtHmRnSgeYvaMH3d3lKZYdGQSYydazZDGzDIral Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="20642740"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="20642740"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 21:40:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6474567"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2024 21:40:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 21:40:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 21:40:35 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 25 Feb 2024 21:40:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFqqSrsQe8ijhZg6F+m35O6wPgdcSzAXKL87g3IdC588zv/FTssrf+N0eznV1d+wFQ/Q1G6/kqqZgFxM2kQflLP+NmAZAQ2g6UIOMIMx4H2gg7Ger29pceH92Ue4oY4sf1Abatu9e08g7vUvTMycGDG3uUUvhErL2+K8TjdV/YVqpIPCHQ5ZL7AJOFZydPoB61sfKljigZhJFFhwdRo9//WgCqWjINLZF7PXx1Bcos2hG+bi9K2D16QQUD4GRrMnQH11awFQwwksz7zazqvflCMyo388FbkBSdl3JwqggjBGQ9xPgVEm0SqOYksAd/roJKcwmPfvM80E6Uni5Iszdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSOWCQvakfPrTQRVyTjOQoSgTxROwyuHGW8skHsuLhk=;
 b=aePI2QPDPykqOiMxJ8ty5nhFPe6FSd0V3MnT7t2psI9zcDFDH0LdO2LAb/Qlws7GGSi8CXn+/S1YM0nAvaziqYF4bgSYSwV8kjEemAycIeliiwEbig7RbLD7NglK4yTiHTG1nOWHSEsg+Ed+ryh71kz7CeqQ/NQiBfUM6Z4erMPT2TK83TvT52tGNGetXc+POGjvgeL4eMfjJidwQH/kKareAAObwQqtrNah5fwCbArRSMEuKYmkzIu6JI6pNDGAehEFnZB7bgmV1sqvdQg9leTaxrsyJEv02bmXhAEetrq+br1q0ZF5jgGfAknsvmQDVV5OrMY6mGxyg2UYFxZFvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 05:40:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7339.023; Mon, 26 Feb 2024
 05:40:26 +0000
Message-ID: <c9ab2f7d-b68f-4aa1-97eb-edc16ad2cb70@intel.com>
Date: Mon, 26 Feb 2024 11:10:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] drm/i915/hdcp: Add new remote capability check shim
 function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240223081453.1576918-8-suraj.kandpal@intel.com>
 <20240226051017.1652970-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240226051017.1652970-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4837:EE_
X-MS-Office365-Filtering-Correlation-Id: a807c5d4-90a9-4ccf-75dd-08dc368d6f0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TfSHZTHXD8UI+FoI+4jUpl0EedGb3prWR1MnsNK/EvlOl4wdoIdXZvDw0Fz7hAYyhB54aGFbkuma42C5+1dr7aB+abAxn3nP6aYwJCx87j3SgbRflq302yMk3+/J7XgHERDkjj4I4NcRHH0+GMx77n0yQhiASVQ2BjvULJwSbhduixzjGFbaHN/0VPA9GXYr1gw9oZvGPAYvHc02fM+aOSYsDEJCwZ4lLP5kKrzfbfhPYvYWqqW/+D5Co5OENHvYVOEruRpnm50oYMbZMh7ih4I1pPEAeU3/AalnkTajHzZ4SNqoblnE+mE+DCyVtOlMQWinsjG9JG7DAg+EN6ZTNk7UxTi5F+B/moO5XtDZDFGLhW0ui1qGFtOZfNBwFWyLwaXGPDcZLFfT9aUqRJxf0L/hKd4DpfSEnwEoIDWCPEFMB5jCUShM3gO+Iz/k4Ii2ilIMwGw91qrDg19OCivF3BOduglVx602LJ0MqLtYJbnWmPvWqG8Y+e+5HJx78xrt7bUxfSqEl4ziEMo6llwXK+HbsW7KxV5X4Tm95A6bRHJBI11Kfy3zD1kaTUl1dii/NoE9tZs1lbTGwYN5slC1mAb2yG1H6e82Bx9YTSqRGfiECoTUls2VZ1HjJ2tx6C2j
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Syt6QTRYTWt1bkEwcGEwZjNRMEs5Wk9WMmJQZEtsMURZVFZNbjd2MThnUjRM?=
 =?utf-8?B?UGk4TU5jMXB4bmR0MEhLSjVyNitDZXE0UjFFbXIrdWE3aG5IK2RZZnBBZE9N?=
 =?utf-8?B?ZTl4MjRTN0E0UVphNnVibkdncWtDeWsrbzEvWVd4OGZ3a2JWV0g3WWYwYmxp?=
 =?utf-8?B?dXJSWHZTV202dXl1MWxhSnZqTVljWUJKaDVrUEdXUTdqNk9MbzJqek50dnFu?=
 =?utf-8?B?VSt4R3VyM0kxM2NrejdscUFOVUV2SUJheXNTK3lCSG41ZERpaEFGWCtjY0wy?=
 =?utf-8?B?MXRMSE9WNitlYnE0andPbG84ODFheHhqRUFpS3NhYklyNzhYczlHU2xmTVF0?=
 =?utf-8?B?R1NUSklub2R1V0Y4MjJVaXk4U0h4VXB1WFo4Tldobk5mWHUzVStLRmZlNENK?=
 =?utf-8?B?THhJRDc0eG52N01mcEdyNTFGNy9HdFBhblFrbUdjdTNMR0FCVVRoKyt4ckM2?=
 =?utf-8?B?LzNOWCtnU0JNMUkzVWlUcFRod0k1d0NKa3hySlhpbDBNK2tsV0dnenNMQ1R1?=
 =?utf-8?B?WnFFRjIwZXA1clIzOWM2NThQRnFGSytKV3oveExiSkMrSm9lbVJOU29BM0JS?=
 =?utf-8?B?emJ1U2Y0UUVCNUNTdEh6QnRqOXVWRlBwTW0rYkRIS3N1Z0tEVTRoemYzNTI1?=
 =?utf-8?B?TGFrd05TWmxCQ0ZZdDNaeUxrNmMveHVIcFJBZzU5Uk1EdVY4bTY5bnlPQi9S?=
 =?utf-8?B?RTloeXA2eE83eEpJSTRHaTlDcUJlV1dQQ2sybnlVS1VZNXVpRVJoY1VFeHo0?=
 =?utf-8?B?K0MrSXYyMnFCVWhTYmdwNitDc2V4ZHNHMHI5K2c2NTBXdkVwZXBGL0ZDNUFP?=
 =?utf-8?B?NkJsaXVaa3dXWHhKNllsUFZiV1pscWJwMVkzOFgxdDFCRzJNcnF2TkFJYlJX?=
 =?utf-8?B?OExiVjBieVBORG4zVzBKSjJRd2MwV0krOEIybXh3T0IvalA5NDlNd1NRT3RZ?=
 =?utf-8?B?djluQllxb25qWFpka1JpcTNGNm1aNW4veUZkNHk1L0VIUnNhQ3NqK1JlSndh?=
 =?utf-8?B?YWlyYnEzeFc1NmM1YXJlR3F2THpsQ29tZE83WEpzZDB2Wm9nVVlkWDlTWElU?=
 =?utf-8?B?M2lEOHhnWWxJZVp3cWhUYXBsZFJSbHM1TEJucXRwYTVyRzd3Q213TFQ1WnF1?=
 =?utf-8?B?THo3L2tFeFNwdWJkYnBIeTE1ZnJYakY4WGRXTjkyaWVvYkJMQjF1MWlTMlRw?=
 =?utf-8?B?N1RiRUZpVkFGWWdyS3FSVUtvS3BZOTRrTVZHOUFXMXJ1b2p2ditaUWxJckRD?=
 =?utf-8?B?MWlES0llNXZaTVJ1SW5lNkkrTEEyYUw0U3lVaWhScW1UMHlGTnpsd2xXTmpk?=
 =?utf-8?B?TUNuNlBwbnVEb09sZjZSS0ZWRmtwYXhhR2lmRk5xckZ3VjkyaFVKYVF2YkVY?=
 =?utf-8?B?bGRCVDhZM1hmK25rekg0di9lNGMyblphdEsxRml1Mjl0QXRmM2NwUmtYbSta?=
 =?utf-8?B?QUtSUDM0VXJXSXpUWVdsd2pQUVdkdHZqdHd2TDlhY2cwTU9JU3hzYmxieGJK?=
 =?utf-8?B?bEtsdWRiUDBFaEFhUG1tcjRCSGxIRTBEdW1YQlFybmJHSnFIaGJQUE85MHVu?=
 =?utf-8?B?MjBuK2FEcm1iT20vTDZSZTNqVUlaRDBkaTExVTEzSjNvT3dvdmlheTVtMWha?=
 =?utf-8?B?KzZTZW5uSGZ1SjdNSlpmTlhaNm5PMVR4TlBGc1R0NHRIUTlxK1dRQUYvbm5a?=
 =?utf-8?B?YUdpdXhiTXBmb25NdW9oOW1XZnBxam05M1RqS1U1djc3dkRBbUNsK015SGRm?=
 =?utf-8?B?ZThWY0s4ZEhUckNmajFmL2VJUkVvSTBRZTZqUjlRbG8rbm9WaUFVcXlxOUsr?=
 =?utf-8?B?OXpSN0llc2laQ0RRWlhhb0E1TEJjWUJCeGs5MjJsWUcweGVyY21kOGVqaTEy?=
 =?utf-8?B?VzkyMnhHaHFoamdLaGlmRjdWdW4yc0VLejFUcVhESXhORFl0aFZQUzBKa2cr?=
 =?utf-8?B?UUZDeDQrSnRNYlhGL2M0c0p0MUpwbU92dFFlYnU2aFZYSE5SNTBIL3FuM1Q3?=
 =?utf-8?B?RHVDS3lrRC9SeTBHb2E2aVU4U1dReGgvSzNqdVNYQVVBRnlMckhzNzZ5a2hQ?=
 =?utf-8?B?V0xkdEc5NlBnVmxlSW52NlJzdDdSUGlpc0xIWWdORlNFZE5qUUtDWk56bHJX?=
 =?utf-8?B?dUhTR29tMVIvTlBPcm9LZ2hYb01qRkh3WEZ1NnZSTEY5L0FUdjNzVUhSWktn?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a807c5d4-90a9-4ccf-75dd-08dc368d6f0e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 05:40:26.4787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2L43NL1v8djJwuC+MwB3UsaknpNBtPRQYTRfhqh67SfSx/O2pponmHZ4KYT0G7U0txgMTBSJEQL9JfIdI/XtatwexRkDp6PDEp7T55vrb6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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


On 2/26/2024 10:40 AM, Suraj Kandpal wrote:
> Create a remote HDCP capability shim function which can read the
> remote monitor HDCP capability when in MST configuration.
>
> --v2
> -Add an assertion to make sure only mst encoder call this remote_cap
> function [Ankit]
>
> --v3
> -rename remote_hdcp_cap to remote_hdcp_capability [Jani]
>
> --v4
> -fix hdcp2_prerequisite check condition
> -Move intel_dp_hdcp_get_remote_capability to dp_mst shim instead of
> having it in dp shim [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM. Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   .../drm/i915/display/intel_display_types.h    |  4 +++
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 27 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 +++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
>   4 files changed, 50 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b6f86129c0bc..8ce986fadd9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -531,6 +531,10 @@ struct intel_hdcp_shim {
>   	/* HDCP2.2 Link Integrity Check */
>   	int (*check_2_2_link)(struct intel_digital_port *dig_port,
>   			      struct intel_connector *connector);
> +
> +	/* HDCP remote sink cap */
> +	int (*get_remote_hdcp_capability)(struct intel_connector *connector,
> +					  bool *hdcp_capable, bool *hdcp2_capable);
>   };
>   
>   struct intel_hdcp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index bf90e9024feb..eab6e9fab4e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -672,6 +672,32 @@ int intel_dp_hdcp2_get_capability(struct intel_connector *connector,
>   	return _intel_dp_hdcp2_get_capability(aux, capable);
>   }
>   
> +static
> +int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
> +					bool *hdcp_capable,
> +					bool *hdcp2_capable)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_aux *aux = &connector->port->aux;
> +	u8 bcaps;
> +	int ret;
> +
> +	if (!intel_encoder_is_mst(connector->encoder))
> +		return -EINVAL;
> +
> +	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> +	if (ret)
> +		return ret;
> +
> +	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
> +
> +	return 0;
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -820,6 +846,7 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>   	.stream_2_2_encryption = intel_dp_mst_hdcp2_stream_encryption,
>   	.check_2_2_link = intel_dp_mst_hdcp2_check_link,
>   	.hdcp_2_2_get_capability = intel_dp_hdcp2_get_capability,
> +	.get_remote_hdcp_capability = intel_dp_hdcp_get_remote_capability,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c1a32f9f1199..801b8f0495bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -205,6 +205,22 @@ bool intel_hdcp2_get_capability(struct intel_connector *connector)
>   	return capable;
>   }
>   
> +void intel_hdcp_get_remote_capability(struct intel_connector *connector,
> +				      bool *hdcp_capable,
> +				      bool *hdcp2_capable)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	if (!hdcp->shim->get_remote_hdcp_capability)
> +		return;
> +
> +	hdcp->shim->get_remote_hdcp_capability(connector, hdcp_capable,
> +					       hdcp2_capable);
> +
> +	if (!intel_hdcp2_prerequisite(connector))
> +		*hdcp2_capable = false;
> +}
> +
>   static bool intel_hdcp_in_use(struct drm_i915_private *i915,
>   			      enum transcoder cpu_transcoder, enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index aeefb3c13d2c..477f2d2bb120 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>   bool intel_hdcp_get_capability(struct intel_connector *connector);
>   bool intel_hdcp2_get_capability(struct intel_connector *connector);
> +void intel_hdcp_get_remote_capability(struct intel_connector *connector,
> +				      bool *hdcp_capable,
> +				      bool *hdcp2_capable);
>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>   void intel_hdcp_cleanup(struct intel_connector *connector);
