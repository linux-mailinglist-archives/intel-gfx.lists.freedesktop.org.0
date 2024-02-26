Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746138669BB
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 06:49:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA90310ED72;
	Mon, 26 Feb 2024 05:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwdWopO9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3E2B10ED72
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 05:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708926557; x=1740462557;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/PpVdnsZfANqgoN5CXD5nOWyV8+1/CRI3fUywPGKbuA=;
 b=jwdWopO9IizcIZcsDStZzF+0b9PUAQFPuPDUXH3z4cFU1HbBj++3qp6a
 22aKWJEtojBojovcjeQbMLJVcNJPjkBpdPcg0+7RYtgYVNrT10Db+321G
 VrJV0ipjxMwS5LBIxbrFk8UW3psUTEDv0v4eR/+Ih3dw/FHONNwSX0VMg
 85Q84LQz0vCzyLXcoyNYt1Qlazrmea1Cb7ys8oqPR8lFj5AXJBsmPpR9y
 o0VKz04L/vcZp+4NRExnJmE/V5v2wFMZomThICyn5lb3kvvYnmWj8f+ff
 DWGKcOmVfFXdwciQtc3I7xSqprLOlWBpFdOMvuTKS8NdBB5hWj49Ib1LY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3063369"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3063369"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 21:49:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="11338387"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2024 21:49:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 25 Feb 2024 21:49:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 25 Feb 2024 21:49:14 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 25 Feb 2024 21:49:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gen1xOHKuqWcb1u1Qrj5grIe5rQgUFQgJ6eWzFFa/hbU8ynD8dik4Goa9cxD5np0O24ZU65Qse4kyXK2U4pdM+Cg26rEMBmGdu84nufgG5IgYxgej29ippUJVm8be02Zr3Fe1ihHZ+6q+xOLnAV799SVvmOdXqetOP2CuyiQz7GfzHSLaAagQfl/gG08cuXrTEk/kt06QbaaiNLajWDlFX782crpAH6tcmqhQbBlfS/W9dnMMVk1V1GvwL4gXn+UdOi9GJmz/xvlVCNBoV12ulEogXEP4N+3An3AzsiFxxIoq2846X3iq6ZveHqQMG8ysmcyG1RxPo265nl/OpEPmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPWxAbiP7q00VIp1fPZEEg9JTe9XjDGBXaC9vVpSdlQ=;
 b=jpUxDPIUaEI/LLWrybKl6/XR1B0/kS++lJ8uz6YncZzUOrLtvXstztTNS+sp6Z5n7Qe18Aumw3Q3GKRRr4XLANpWacf+sJExfwcS725ESiwGYY+irCRQ66gpzDm/KQo7m6BbO+ihm99ika7cLyof4MzZOYFdWHTWzpqUva5tJhfFr0i4ulC3n8QNyLiDmEl7qsjCWvFcBGJtjxACgGwkblFYSaqO8yv6jB30WlbWzJyT2Mog58vJ0jOTqLnf0bLJoeIFG9jJQQ6NHmhyaBRdPKhVAWfgd6zrx5g4w6PU8bZ+mOErgJZ+3bVhra4p4gukDSo8/hug4pBchOHFM0oY/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.23; Mon, 26 Feb
 2024 05:49:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7339.023; Mon, 26 Feb 2024
 05:49:12 +0000
Message-ID: <35820685-3d86-412c-9ff3-417261a0f654@intel.com>
Date: Mon, 26 Feb 2024 11:19:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] drm/i915/hdcp: Add new remote capability check shim
 function
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240223081453.1576918-8-suraj.kandpal@intel.com>
 <20240226051017.1652970-2-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240226051017.1652970-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5454:EE_
X-MS-Office365-Filtering-Correlation-Id: b71cd0d0-b38a-4f3f-6a4e-08dc368ea8a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mHEzUdEoqZkybeqX3hbGHKv9scZ7Z2AGZhhgH5Qxu/9SnUgm0urli9rLoDQQX6HULhvItkMcPCxWxE8lCRYMAbhhodlK06bk2nepNSmMg79NHHXOuwRooVDcCekF9MzEaYjBeRGEmFrLW3vcIye11Op44/saaL+kZVKscRYmOCexbWHd8HG7Ol4zGA3DcZa/BXK+PmqD6ve4tYMb1XTqXtNbiVQXKLR1nw5NkhveF5My95riYgWiuX+tmkcW2vHwUK1FuvTeoCxfvJsAN08WvB+ocR6YtIpsxlT70J1QtK4fehVZdIE8a2ClFezWP9aKBUOjgV0Zqr74AgjrwuDWPlTCos7xTvYV98lUGGR8Npr0KyEGNskpvvxWECdi5dzV0v2R61PcMlGde8BueqhWjMdPRcC/QoSNpA3J/SziF8qJ2pi9QE1edoQSZR7jPvozQPrd9A1xwO30zz+lXtG5JO1Ok2SyfIKWN12OTOLos+XH/M+PD1oa9CoLv15t6GhUrINJdQfVVyODIU2JGH0J4/O69HacuQmpekmCK5tPFChRvDxFrOBCvDrKKTBHBSQ+lqzT2VHAd87u4weiGot6g7BzUDN9Bh9zte6UzhdUmCRV7CVBoUoJTTzC/GZIATIV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVRVK3kvYkk1RCtrMnc4bzhQUE5lSzdzd2hlQklzOCtwYXQxcHZOdTdwcEYy?=
 =?utf-8?B?Wjd0b012VFlsQmNZZnRNcWE1bEZETzBNZEtQenA4RFk5UkF6R1VHaVhpRE1o?=
 =?utf-8?B?ZC9UMFBvdldYUDBHa0NpcDVUSDVhNzNLcFpZK0YvSFVZZlEwWEdjby9tVlNm?=
 =?utf-8?B?TTQ1Z2d3cUVXcno2K2lJQ1ArTDA1V0JkT0ZweXFtUkJnWSthSitrK1JRWXlr?=
 =?utf-8?B?eEZWN2s2RFZnd29hb2dNWk9KNkgxRExZb3BZYW1jcnczeFl0dFYwdFNiZzFz?=
 =?utf-8?B?dUw0NytrT0Z2Q25tcWV2RHVEKytZUWdqMURwOFpQRFpSTnNXNlFDcXdxRlZr?=
 =?utf-8?B?Ui9hSHg2b0Y5MTVlMDduRE9kemZvdWJKeW00ZUN4YUR0cFp4bUlrOXlObUkr?=
 =?utf-8?B?OUdET1hvY09Da1lMN1dNN0dMTXdkc0JLVmVlTXluOFppYU5OYlRPV2UxNkQ5?=
 =?utf-8?B?ckY4SVRncTBwekw4cGdUZzIzRStBWHp1UmdLbVpZUnZ3dWs1T2h6TGdQKzJY?=
 =?utf-8?B?c1drYmt1c2lVcVY5MHVLQ1c3b3FZRFUwNU5hYklOM0RmYlBuckRjWTdBdnpo?=
 =?utf-8?B?OVl6KzMraUE5OWQ2NUNYbm5rcVlZMzJlZENzUnJlZndYUXRjUVpLWEJlSkhD?=
 =?utf-8?B?cVpSWXA5N3IzUWwyaUdCd1MzdktmY0ZnMjhJS3Z0RWlwTXhhdm8wR0xrU2c4?=
 =?utf-8?B?NUhMeHJwaDNmVjduV2pUSENKQnplQUtDWEdhZEdTVWE1eFN0eWlwbGZ3aGhL?=
 =?utf-8?B?MzhBa3lZblEzaGh5dDg5VHR3NXVYTkhIdmY1RWpxS0FSVlprNytmcng3TlRo?=
 =?utf-8?B?czVTdncybHBTb0xEL3VXUHc2WVZGS1I4d3duQWNHeEdWZGhOUDN1UWNCOUNB?=
 =?utf-8?B?ZnhpVjUwQ1AwVXFNcE9SODZLY1NKWEg3WDIyVHp0ZGhxZDVia1hadjgxZitC?=
 =?utf-8?B?alRtaStYdGNuZUEvc0cvV0h6T1RrU0NwM1g1U3kzb1NwMW45ekdyNk42TjVa?=
 =?utf-8?B?WXRCcXN5YlFnbllpUFVONHNMMUp0UG5BZTRoc2VZWlp6RnpEVE5kamUyMnpo?=
 =?utf-8?B?NDFJeGx5RDBMZ3NlSEp1bWkwckV6Mk5qMUk4Lzdwc0RuL3hicnVmRXpVcXgy?=
 =?utf-8?B?WHQwNVJMR3c3dFAyTTN4a01TTEx4RzRzdUY0Qy9YMlBjVUpFS2NYWnVadElr?=
 =?utf-8?B?ZHZzd3RhR3g3YVFZb05kMWEySzExcHhmcHE5eHFQd0FOemlGU1J2SEVBczk4?=
 =?utf-8?B?Vy90RFZLVDIyRGNwR1JKNE0raXdnS21rOC8yMDhic0FteVlqa0dOQXR2Z0pD?=
 =?utf-8?B?SzROS0c1N2lXWkxZczUyUStTeW53M0srMUhCVjU2a2xhWEFscEwrQkZwQ1Iy?=
 =?utf-8?B?eTZ2elNqVklYTE1XWHE3TjZoYmJzUndHR2JlRnQ0bWczN2JSM09uWllrVC90?=
 =?utf-8?B?ZndzcUtvQmptd0RaYU9jYnRQOWw4QVBVYmVXSVJvNU15RE14QS9yQWtlT01M?=
 =?utf-8?B?YUNVNVo5RGxGYW5VT0pHREV5bml6NXJjdXJCbFlFMXphbHExRnhOSkt1dzUy?=
 =?utf-8?B?WmdGSlprZFl1dGRmam9waGduT09hTXR2UXJOWnJGYXE4VDdQVWs3cS9UeEtU?=
 =?utf-8?B?YURacStBVGg3L3p5RmJrczh0d3pkVFVySmJwT3ZRd1R1Y0I0b3lJdjNnUUdp?=
 =?utf-8?B?SWwxUHRnbThMOHZKcW93ZFhrbmh1ZmpVZFNnNjBQR3lHUUhVNXpiYWJycTk2?=
 =?utf-8?B?azlCTDg2OEY5ZllEWVdWNThLaTJHT083Y1ZZUXhENE9tTFlTNzNQdEJvUVF1?=
 =?utf-8?B?aHpZdnpmbGZ1eFpXQ0pSMmtiTjBmaVg2RlJUUXNwbW9xNnFYLzgrV1o5MmNv?=
 =?utf-8?B?MTEraU1RZllPOTJBc1BObDlPWGVjeHlySFc3dnMwZndsQnM2djQzNVRLK3g5?=
 =?utf-8?B?OHl2emI4Z2YvVDF6bWkveS9rTHVxdnJqTndUT2ZHSUo4R0EvVElRQkczWmpX?=
 =?utf-8?B?MHpwMUVNREpEVDFvNjRzSWdTQzF5SDN5anhRNVI4Y1hHM1FuTzg1WktFM2Jt?=
 =?utf-8?B?ZkZFUURzZHAxdEtGb3JwQ1FoaUhYV3V6anAydTNSV3RoMk0wU2dWQWM0UzNa?=
 =?utf-8?B?Y3pBUzVCNXoySW5XbTlBMU1sK210TzNZVlZDSXJKTk5iMDNtU2k5QWFIMm9T?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b71cd0d0-b38a-4f3f-6a4e-08dc368ea8a8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 05:49:12.6211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JdSNroFIfFqOiCjNEtUw+M+HfBFd/WGVmfuR3J9QF4yT4cFAsmAAoL2J/EoHUggvdV43EqP6vwQQgKmH72O5GR/vnT2HsuI4SaSQmqHpbQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
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

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


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
