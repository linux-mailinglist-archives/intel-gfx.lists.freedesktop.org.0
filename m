Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1153F88BEBD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C41810EE2C;
	Tue, 26 Mar 2024 10:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cAAyTcpk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3347110EE15
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711447615; x=1742983615;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7SvrG2HDBhY7BsoHdufIyUOawOa0hRkELXElLWh0sWE=;
 b=cAAyTcpkt9BaNZd6ceZS9Wob6GylGI0VmfzyqHZ2636Y+7mIe7cszPQq
 tGkuSpEpV6rZuhldn+lXLicIS8+uWSVfgrXgDopyBfZJhzbcPFhm4cOGO
 U4zDo1281IRZatNnJ94wrR9iOIu4y8PKu5EZCkMPUGmL58qmjLkF+rf+B
 /9WMNLfMnlJZazdbL/evuqcsQqpWE/CuGWw2M8b7ra/I97GoMLMccYhya
 6kV5CbYpLZrYNdTEu1LNRpImz5AKLz59R0cZaNXGc/WSkddqm1EEqkcff
 41ErcvSnCjMjSjR9JFPZ948oayFtTmUjvw2sJjpv4KuvbSJfBGBVsMljm g==;
X-CSE-ConnectionGUID: HbwZeKcCS0Wnha3fT4Rfog==
X-CSE-MsgGUID: E3JhN1v8TGiC+1EvwuCiUQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="23976653"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="23976653"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="53387271"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 03:06:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:06:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:06:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 03:06:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 03:06:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQP5gifrAD4fEfsTKZpfUvkUY8NhSOOTKOZg6WJzz6sWSHAgwqcaMvSmhS6hc1wIoxgSROcdbuwq0jWB0BHlMgl2wQSjYXOFCMB2+UBvsoZKdrFcrettHb9Q/GOu6zjW2Ib/XyJx32kkIST6nbjiHuzJN2LhmVnBin+61e3JkF25tS0IKqXRXN3kI44+670zTdEDiXTX4TX1NCMVxrGTV/VOoM+6AmSUdY4N4rHrM278Trvc06O1K3WYoCd/+ok+jUWjtfFJYpsIoqbmExgsokPSw6yRGt9ButjOqlUelGhrw78PfYMMhyY0SCs7hWvsIWTkVftLU4lXPvpdaPbong==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iydAGYABTg5OBMrjgdrgKSsAOUYjVoMNhzmNbtmEjGk=;
 b=k9hANDC5so7oQdumukkJJ8ckcH3B0Zey6SU0tOLDdSuFe8cBaUx9xLBlpzzQEjRtnFsUp/GKvB8IdmGmU8rn0YgFSj5dX78OOPkHlLRAc7eo9uqIuWtGshgvm+fCoVlHbSKoSLSaoSzJfO3mLVD/PWGozINnDtGO45fRwfOLS8NIMWoLOwBFeXhFbroF8FfCXDzQHNigAJvwgKUesmt6FvQ+oTDugaENa4DYV5HmPTr6iQtmyGfUndoCQvyWopts3tVrLkCCW0kSrMaa9QQbX21ao4LVIrpEDAI6eC7WKbWoh3W7BIddFkJQmMgc6ugcU3bu4j72aBbE9JOOrwZrLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 10:06:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 10:06:46 +0000
Message-ID: <f47cb23f-f1b5-4bc2-84a0-adc8867134f5@intel.com>
Date: Tue, 26 Mar 2024 15:36:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/11] drm/i915/dp_mst: Account for channel coding
 efficiency in the DSC DPT bpp limit
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-5-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0086.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7303:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BPMliH1PhobSkekeDxInLB9Zx30g6EYlCwVwKhTlykJtnyCQLd9+GzRty/GEoWY8GM8c8M3lMlzFsQ49fa30cEVEr5Iqxrxu0GKpTAxfhUGSTCrY/r1/1FyFNou3ruCrFG8G2IYYH5JGMdVSryeqTaKUYHkHCj8Rkr8hnog2+5iZb2W2XSrIEwHNXfrbpmPkI1Zs1Xndz9ZgPnKulzpyZuCUzWoFBpwUvQZC3tDrOAD6QuCHatsvya0tzTGWE0x9A8kCe2+ZrASNYYEl7XOQColnkFOErhAkIGk9fZg1WYNu5n3fotJXRK5d/37ZlLrRLZJicandwxtrNuxn/zGdXWKViounCjpp6VvEG7e9WIpAb3kdLhh7fBvLkOikJBGBkQUT2UHrZbmiNg6+luwpAuVNbcEzzjnghnRiRYFm2qkHmDv8g49pau3veYoSCe+Yt1HLn+xtQ+8iUA3dKt8BI+qTONWc8cHbts6prbmQwP2wskUu6MoicxrdzfvZ7iGYfxi8O9gwyfJAXiFrCcJKZJ3mvGXeUDO2IGz9MC71BG4retnA0vtuUDOqZf9ANkwdUzBLDoGsM+/yPZi7BimoGPbBrbbKGTdCZ4QQ0GIRKl5WKmcoMf8h2QxdjEB3rk3q418Cf1b2WlANSh95Lh3Bfl55i6O8HAZv5TGd+B/jhZ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnN6YlhjRFg5Y1p2d2NEbGs4UmFOcVdHZEphZDhkQnQzYUEwOWdEbWJ1NGZS?=
 =?utf-8?B?MnlPV3A3TGsyZlBGZkVMWXBwb2s3QXlXZUtJQkx4YnVQbjJOTUZrZElXQmtL?=
 =?utf-8?B?aE9obEwvOFZYL0k4cCtVeU03SzdSSlh0RUMwN09ORzlWOE0zeEF0eXVvMnR4?=
 =?utf-8?B?TzNlSTJCUlpUdFBoYjRJNzBjaTBJeTlGMTNpa0pGUVZESVYxbW9pRXpmSzZY?=
 =?utf-8?B?dkM1S2svLzJkdDJEelFUWU9xbDN0d29QRWM1d0NqRlJZOXRBa3RYQzNwYXhU?=
 =?utf-8?B?TzVmeXNTOWN1OVNOZE9rUFd6NXR2UDJMbG5zMFVPQ2ZoR0EzQVRBRmRzZkhW?=
 =?utf-8?B?RDlLb2Fscmd1K1Y2MjlyaTBkNy96dkdNN2lDY09DSy9wT1hPQzM1ZE8xNTJI?=
 =?utf-8?B?Q3A3Z1dqVDRnOVg0VktBOWtJTEtHbDBLY2MvUUExV0pzRnl4Z1lsZFJqby9i?=
 =?utf-8?B?QzBpMTFMS3ZiMlgxRElIMktLMnVVMTBOdkNkZXJYNnZEWkpGU3B0bUxmMFFz?=
 =?utf-8?B?cnBTK0ROVEJrTU9QRmtkRklORTRHc0FmYzNtY1JNTnlPNWRVRkUrMXFVQ0hj?=
 =?utf-8?B?TTFQZ3k3Uy9tRWtvZTc4V1lNMzdCd0w2aXQzbGFWd29sa0todFhLZWxBZHhW?=
 =?utf-8?B?UDRra0NvM1BPUTdrZGd2b3ZFYnZYcUkzUXN0V1JyaXM1SXQwRFgveVp2M3VW?=
 =?utf-8?B?bVR0TUd6ZmFteGRBU09wNng1OFBzQWVjT1ZiOUtoKytKMkFDRjA2WUYvOHYy?=
 =?utf-8?B?YWEzQXJSNU5mVmhGNjd0dmwrV1dpVGszcm1LTjRPMlhjTldNTG1KVVppVXZM?=
 =?utf-8?B?TGx1KzhMTlZmOTQ5NStCVEhrck1sVmdaQ0RmdTRFeU56NTFPSjMxY3N4Z04w?=
 =?utf-8?B?Y2ZyUUxac0NSSlh3U3dCRlpMSkpkcVlCTXhkdzZqSEhMQTJiaU9XNmRqbUtZ?=
 =?utf-8?B?SWl1aHhrQlhCRHViTzl2NnNaODY5Szllam5xb0gvdFhsTE0yZXNFQzN1RUsr?=
 =?utf-8?B?aXNTK2kyaFdrN2dqbmRaMmVOdHhDOTlBWVJjUjAzYmFVTHVHUEtjWkRwMFQx?=
 =?utf-8?B?SnV2UE1oK2htZGJRZXRDN0FYQ0xmQUloRER1OFpuem1KTzc3N2Mvd3d1NXlO?=
 =?utf-8?B?bXJqTnF5QldsYUgyN3lPZkZ1ZWlBM044RnNvWW5xK2o2dFZSTllvdDhHdVBN?=
 =?utf-8?B?VVVNM0hvT25ldTFUV2xNbzdyQUFTNlFIZHVOeTBzcjVEQWN3c1pFeFJmdDJ0?=
 =?utf-8?B?YWNreWdMREVZQnBnc0pDNW1FRDNNTXR2a1dURkkrTjM4alFxTUQwMmsreE1K?=
 =?utf-8?B?TGRqRFl4MGFQamJnQmFhNzIxMVJiREFUdVJmZmtGZWxpMWpJZEJ2VzVaZXYy?=
 =?utf-8?B?cXZpcCtvaUlhL3R2ck9xTUpjQ2VLTm85NnJIK21xdHBSQTRHNXJqT29sMGR6?=
 =?utf-8?B?bS96YTJSMTdKU1BXeEt5aW5aZFphRDljQVBDRUpOcFRCdHF3ME9zbStMVlZZ?=
 =?utf-8?B?czRzbmQ5L3hvaEpqdGRSaHJrcHFIaDVrNWpLcTBFWnNtSlhFNm5SZFA1K2pX?=
 =?utf-8?B?R0lFSVBTanhVOWpmVWlKVWpVNUordHJ1KzROSTZ6a1N4OHdySkU5c0R2THdx?=
 =?utf-8?B?QUVpZjR4bS9oQ2tmNjlHTlRqRExPSTdsWlZIZnprM2g2b0Z6bUZmRlovdFRm?=
 =?utf-8?B?TVRwZ0Ywcno0bzZlQVNidTBpWVRNZjg3S0plTmJFZy9uMlFIYlNWNHNvUUlt?=
 =?utf-8?B?Z0NDMkxqd1V5Mm5jckRmS0w5dmd4TUFwekpDNTQxcFhSdEF1bGMxMUNxb09H?=
 =?utf-8?B?ODdZaU9mcjk0S0I4Y3A5Yi9PWC9QcTVROWo0U1VvOGIrejhWaXFCbXNqUGFq?=
 =?utf-8?B?M1o2T2F3YSs3UzRpSytGOHl0VzZrRnJGUGhkRTFlRUlrRndWQVJRUVBKdXFP?=
 =?utf-8?B?YTBwNmF1SWxOdTE3Tmc4U05qT3g0NGw4L2RMZVFIM2lBN2xEZDhSSnVib2lq?=
 =?utf-8?B?bDNEMFNIby94MG9Vc2JjQXA2ckZPY2crbm9Zekw1M3hCNkpLdU9kTzVzQndT?=
 =?utf-8?B?bEJ0Z3lOS3Rqd0ZVdnVsQ1p4SlQ2UHBlL1NxWVRwSm80WW1GRHNQNWdxcnE5?=
 =?utf-8?B?emdwWi95RUZudlZ1VURqYmdVRFRzOW1UVU5vdlZCWHQ4MFYzRW1qcmZ2eXJT?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49236fe8-5dfd-4793-a3bd-08dc4d7c71c3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 10:06:46.3088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y5bmVXLBAZOylwTBBBwty9dhVj8ZLOYcFnwF0U8LFYLpOF9Kye1xQqhNUsqls8ux0VsPF8KtOP3FkTExbXG+DWndbsKxbD5qyRSmSnK/3Co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7303
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
> The DSC DPT interface BW limit check should take into account the link
> clock's (aka DDI clock in bspec) channel coding efficiency overhead.
> Bspec doesn't mention this, however this matches how the link BW limit
> is checked (that is the BW limit on wire as opposed to the above DPT
> limit) for which Bspec doesn't mention the overhead either.
>
> This fixes the DPT bpp limit for at least the 5k@60Hz/DSC mode on a Dell
> UHBR monitor/link I tested.
>
> Bspec: 49259
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index c21fd7a2cd44f..79f34be5c89da 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -59,11 +59,14 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>   	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
>   		int output_bpp = bpp;
>   		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
> +		int available_bw = mul_u32_u32(symbol_clock * 72,
> +					       drm_dp_bw_channel_coding_efficiency(true)) /
> +				   1000000;
>   
>   		if (output_bpp * adjusted_mode->crtc_clock >
> -		    symbol_clock * 72) {
> +		    available_bw) {
>   			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> -				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
> +				    output_bpp * adjusted_mode->crtc_clock, available_bw);
>   			return -EINVAL;
>   		}
>   	}
