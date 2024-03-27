Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4166788D879
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 09:11:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9D310F932;
	Wed, 27 Mar 2024 08:11:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="he1j/wQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636A610F932
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 08:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711527070; x=1743063070;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tKfWbqDBMB0Dje3iwvsdu5ht6r120Tmi3GdZgX/U6P8=;
 b=he1j/wQgTkFpy/hYJys0T1Y83s2ezdd0GzXtbYEPgIaiEypLRvVXhu5x
 20SC5iI8R0aPMt9069aK8nfo7Hg/0oUvBtZaLOQfNMJwVIM3JsO39uc7Z
 EBJF+G7f2ldm3mwaxL9QV/YrWSiV3CjKM2MmjTMBkiMBKXnHZqXPJ/5c/
 z2MNfvhHZaUfhgGKw+MsU0eWcB1zuCysNOubk/8szxRo8nVizf/TnvqFp
 D7s6v5OiJth/5e0qfKUv81CmnBXJCC7jsP9Y/HJM+4yJmB4UwQpfagTTE
 PECkV2j+5bkwMGNJ77w4d3f7cQuWbGaGvSShXzzBbaQFaCm7V8R8EL8Ld Q==;
X-CSE-ConnectionGUID: Eu4MgHb+RDyvkSDwxT9vVg==
X-CSE-MsgGUID: GdFb012gSBOTeZ73pjqOYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6470379"
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; 
   d="scan'208";a="6470379"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 01:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="47225472"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 01:11:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 01:11:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 01:11:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 01:11:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MxEPePga+5zBx2DIfQPFTcA39lRMmVv8fMML4LHxReAHAKGzq1jE5Ojqq02Fd21Xsb++3u13Hd+8irvSafpC09fYmoPGQjZftNTswdG0GLq9R1qG7YD78insqBGajN1E08WjvOuQ1qW2UYEnW0FgX324Mfsr/mf6lI7ZFaMAH/issb88ilLVK0mmnVfgYy4KM9n+ML3Pp/GGpntV1/lE8ih7QxU1vNrUUuMj1d/55uwYlNL9DWBwCMKRENkP2Vx0Zf9Oxiu5V9cqupoAJUR4RQEkRiPNhSP/xYCNW6rUmswvPxJuDZty4TXZHjc34QPa00jKP/0aQXl2mWwoLsURxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p2lvHVFStKIwwqxxVy9/YtlRiMg9jQNPr8RgZoEMpF0=;
 b=Qp+53AWe7LkwwWUBSPz7AsOSyjpxwNWUQqz38QFYsUk3NkoU3SfUTBzRLZ/H1MvLdN9LJBafKvemDM39yCympWOeKA3wOKp2ekweQ1CeRiwQnm2HVzzgQTzCJ07uto2CpcituaII2+72M/BFsOgfF8BG/K4dsm+7faMULXEidktPzfYnlxazyJyct35HUjLJ956d0jI+y3vvvXLjpCLw0GPnIA1xwjoWH7i+0ln638OKBpwrPYdsQjxzvC+WFBj+mAlu0dDMXx+LF8VVoGU9FL/JBOdux0z/l5LRxlmdMZ2Nl0xwp8CyXGKpvyZwfEjgc+NoL5Gix2WBdKl8GKnESg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5096.namprd11.prod.outlook.com (2603:10b6:510:3c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 08:11:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 08:11:05 +0000
Message-ID: <9cf063bb-9e8b-4bc3-a9a0-e6ae90acd7b5@intel.com>
Date: Wed, 27 Mar 2024 13:40:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] drm/i915/dp_mst: Make HBLANK expansion quirk work
 for logical ports
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-11-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-11-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0228.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5096:EE_
X-MS-Office365-Filtering-Correlation-Id: e49eaf93-223e-42b7-7224-08dc4e3572e9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 805d82xFr3tf6efBQ5nkuhtWHhI4BtuGHMoHGNx3kdz1+DLmxGXnApcapRIF4Hpijsp9kczo4acQqNgrsrGaS5tOFAnIOOJjEYm5Xl91vnB7yu4vCNThsFYCOlQBqjY+F8PCXcFHfAdU8NYyObLosGfNxBaa1sBPv9i/wwv3im9Sh37665TkSSDDTohePo5aHyywUcS/V9//BWNUrFuXqjLz9SUlHVyLoqWKAySB+4ehu0/OQRrtGPuAizPbN7pjqSQe1hy4NdTy7w48cIx7Jn7IyVLzYJ0OCkxxvGVS8uMQ5SHrS5+5u48eXKg1BV20PWuYrKGydx/88FCp+oHif/tc2bxr93TiHe6FGIJ2+fCorfzea0ofxilFdRUbMfLwWIBREDxfL23q+vzbQgtOr4o8d4PfMYOSvLPgXMFJXwhZXIKGl8WXZ0jYlhW7vVDziPdigAp8WhY28rD0pJV1r5vO4PAk20Gf3jJwbeogwsruioJWf0CllVGG0PvKFddWCBv98iGEH75dUp+APXqNkj52P2ZaiPyOMv8IDEHIRUbVGv03CfGzeeugN5eadqMAZXXi5Cd72g/duGePQqRa0yc/jJwYaN0PDF44fN9XgDmtX8rJb2xTGqapHovyO0Dg6oc6ZRyj4XvbKJIxtQmxcNR/smX00I5L7FkZrBcDll0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWlwNDdKaUV1Z0llVFAzb2VlTGxQUXNTaWpBUEhhMzBjd0ptbDVNWi9oeVgw?=
 =?utf-8?B?WVJvUTh6a2drTHZnWHFkNGU5QmRjS1p0dXhDQjFISE9rSk1vd2NwcDJGWmxz?=
 =?utf-8?B?anM3RWYydzRsbXRyWTBEeUp1aUFzUFFaa0E4NG1vUmFlanM1eEhuVHFrK1JH?=
 =?utf-8?B?WE44UExSOC9GMEtzVTNUb3puUlFEU01VL0k1aEpDcGIyZWF3UFpSMkNoQUFC?=
 =?utf-8?B?TU54elgydGNLeWZSNjJTcUsrVmxEYXhoVStqWE5uWnJ6R2F2eFhsdlkrRHBF?=
 =?utf-8?B?Wi9heHBLekhCbFFycUk0ZFBQdXV0aHE4Uk5nRnJZOFRrVmt1RUNyOUhhVkc1?=
 =?utf-8?B?Sk5OTFFMZjJ0RVZINys2Z1JvSDNHSlcvaXRKZWl1RVdtT3dzYzFGbDFYK2ts?=
 =?utf-8?B?WUJXa1prMzBZZk0rS2VGaXRZUWJZalhGUGtoRUo5VDJEU0ErQ2ZyZWxQb01m?=
 =?utf-8?B?ZVEzL2haMTBoVzFQOGw4S2N4Nnh4eXdBcmcxWnQrUzg0SndwYnhFMUJEa2hO?=
 =?utf-8?B?c3oxc0VJRzBSNHJNT25NZWRTQzV4TVhQL0JuZ3BmTTRHSUtSek4yNThXUnM5?=
 =?utf-8?B?V3BUUnhXUFlsY3YwQjlQTEFCUzhsV25vc09vOFV5c2h4M2RBSld5by9OOTNN?=
 =?utf-8?B?OVZRRjdmS3dpZmZQNkNnVkxkNXpkbG1WN0xYSWs4bUhka1VEWld6QTYzOUZ2?=
 =?utf-8?B?dXVuekFQeEpXMVNnZkN4dGE3TmRwVUoreE5nV0FmYUZncXl0WWFqeG14a0tm?=
 =?utf-8?B?bnlUUVoxTTE3YURKcUZOS2pQOXNkWUZGTlgwNXpUbDRrVFdpWGVyc1FyKzVa?=
 =?utf-8?B?eU5UQU1wUXFnSnNYOG9DY2VaSDdOditMSkY2eldzQXo5bURrSjJSMnlOQjc4?=
 =?utf-8?B?am9SOWhmM0x2dXZNTVkzRW1tL3hkWlpPdHp1ZldvSDd6eW00RXQ2dWM4ZXNV?=
 =?utf-8?B?STJlOFhUTjE3Yk1BOFhRRWp1cHd4TWNZUlVtc2hCSE5haTRCSmxlc1JUaXM3?=
 =?utf-8?B?bmNrVHU0UkdXWWZsQS9Zc0FTSHJCckZGOC96VUNGWW5IbTZ5RHF6MWVmd3VQ?=
 =?utf-8?B?RHp2TG1VcGZnWlJDemhMcVpqbHVQUk0xYmJ1WlkxczVPa1d5SVRzWGNSZzk1?=
 =?utf-8?B?STVOd3liRHQ1cjJoK1p6cSt5N1ZwS2htM0NnckF1UHJINXczVWY4QjFaMWdJ?=
 =?utf-8?B?Z0EvTTlsQ0RDcjNyU1lNRDJjOE80OHcvSkw2cGcyN2xRRGt3c2FRZC9vS1Ir?=
 =?utf-8?B?dUViZFgzd1FlT0VMWWx1K09uMHkzQTBGc0JUR1ZkN0xIdXRYYUp1VGdUSWoy?=
 =?utf-8?B?T05jV0t3OU9tQ0pmWEZHUjVNWjNFcGZCVUNRc0xVb25VODlNQzJZMDFLYkp0?=
 =?utf-8?B?dkNNMzFNYmVGL2JBMURhVEZDbThrYnY1WVpVVFZqSENxQW1haXVIVHNhYmdu?=
 =?utf-8?B?ZDNEYTNyR0NaWjRHMVdXeWtWS1paWVUrcTFWUEFmcHVPY2hoeVM4THZwQ2Jq?=
 =?utf-8?B?VGQrMFVyeWtPZWNNOUp4SSs4cVJ4cnhxQkxadEdzeU5aYStMVHdXVnlPNDUw?=
 =?utf-8?B?ZGtFKzRZcitsNkVHZFBnVGJkMy9DazJmbC93T1RJOFc5amdjaFZ1YTJyUXFw?=
 =?utf-8?B?T2htK0J6Q0I3UlFzeHpmczB6ZXphOHFYZkJXTEJDS291NkJiZmlNR3o0TUxY?=
 =?utf-8?B?VWV2VjRVLzY3VnBIU1NhWThOVm55bURjdWVqbWZMUHNPV0pzSnZhVm5Cd1dw?=
 =?utf-8?B?aFpObFZpaVZwSXhyVHNpQTBoQ1RPWEt4K2dEYVI0U1I2ckJJTXd0RW5TN0ZX?=
 =?utf-8?B?bGh2WjFyazBEclNjdVRpUlppYUF0UXZ6ZnV3RXZFSVdhUWhrU1VCOVFMenh4?=
 =?utf-8?B?QzZ2dkw0M2pHZUZpMXNuT0RCWU9aTk81dFo0eVlPQ3JCbk5VNGJNdTU1NnlV?=
 =?utf-8?B?aE1HUDdWL05iNHdYRFlmeVYzUEl6RWFPYmtNeFd2U1RHQnFaa0x5Z2tFaWRt?=
 =?utf-8?B?RW9VSzJoUi9aaDJiQnM1SmZSbk9SV3B0SFBBbWt1UEpUWGZYV0FLdGNtTFVt?=
 =?utf-8?B?eWxWTFpxc0MyaHAyank2NHNESWxScEdqUEIvNjdiUHYzMURJODRYYTlDWkVU?=
 =?utf-8?B?QkF4UFFtdVhnUXZtcGtXc3F6Vy9NSGJZMHZuVzFmdXBUVjdGTEtLTXNnZzFx?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e49eaf93-223e-42b7-7224-08dc4e3572e9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 08:11:05.1331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iip88uvxBKbsMICIJOs9qxcvbKDIsQS7E3ZZPquEaM9liqS0RQTy+adWzlMYjzyCPL4qppF8V9CC30jpA06+ZjI5yHNRxCysHYdqY2Dj+wk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5096
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


On 3/21/2024 1:41 AM, Imre Deak wrote:
> The DPCD OUI of the logical port on a Dell UHBR monitor - on which the
> AUX device is used to enable DSC - is all 0. To detect if the HBLANK
> expansion quirk is required for this monitor use the OUI of the port's
> parent instead.
>
> Since in the above case the DPCD of both the logical port and the parent
> port reports being a sink device (vs. branch device) type, read the
> proper sink/branch OUI based on the DPCD device type.
>
> This is required by a follow-up patch enabling the quirk for the above
> Dell monitor.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++++++++++++------
>   1 file changed, 16 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 516b00f791420..76a8fb21b8e52 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1512,23 +1512,33 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
>   static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct drm_dp_aux *aux = connector->dp.dsc_decompression_aux;
>   	struct drm_dp_desc desc;
>   	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>   
> -	if (!connector->dp.dsc_decompression_aux)
> +	if (!aux)
>   		return false;
>   
> -	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
> -			     &desc, true) < 0)
> +	/*
> +	 * A logical port's OUI (at least for affected sinks) is all 0, so
> +	 * instead of that the parent port's OUI is used for identification.
> +	 */
> +	if (drm_dp_mst_port_is_logical(connector->port)) {
> +		aux = drm_dp_mst_aux_for_parent(connector->port);
> +		if (!aux)
> +			aux = &connector->mst_port->aux;


As I understand, we are setting connector->mst_port as intel_dp, in the 
caller intel_dp_add_mst_connector so its unlikely that aux can be NULL, 
but do you see if we need to check for aux?

Regards,

Ankit

> +	}
> +
> +	if (drm_dp_read_dpcd_caps(aux, dpcd) < 0)
> +		return false;
> +
> +	if (drm_dp_read_desc(aux, &desc, drm_dp_is_branch(dpcd)) < 0)
>   		return false;
>   
>   	if (!drm_dp_has_quirk(&desc,
>   			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
>   		return false;
>   
> -	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
> -		return false;
> -
>   	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
>   		return false;
>   
