Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D22688BEBA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 11:05:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C87D10E4CB;
	Tue, 26 Mar 2024 10:05:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHZ1w6TU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3108810E4CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 10:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711447549; x=1742983549;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lfF9JWnC6Rp2f+XmLj78kThRTfGm65shbQExkdr89Fc=;
 b=ZHZ1w6TUOvPGfrtzUk6/fQSkzTxHQ1HxrZdFx0Zojot5cC6lRoITWwGV
 tmcEfoGRZJlHz6acR5bKK3PrHpbNzM78t+TUFlacdryrKFIvaZH+igsOb
 vzF5Qe17bxEKXoU6i8RBQQEqonXAYBms/irsrcL2EhBNggxqopZbrSGdO
 TwrGPlwR5OEnfvEL35SbBdnRFwNFsPiiRava0Y+mcI0P4m+F9hwX/dnmy
 6hzY5TZnS/bRIzKSWv7Nh5TOeOrS+4L98kX3eZM8CWmuhBqCzxkcDLqlb
 WBBQup0KbQO9d1p65Q1JR7tc2rro5wqJlr03zPg6xEiro2nl5HIJy/dbb g==;
X-CSE-ConnectionGUID: 75/9pAsDRKSxIlcVR1fwrg==
X-CSE-MsgGUID: TM5QKtG8RXK8tN23DacJhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="9455788"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="9455788"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 03:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="16301635"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 03:05:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 03:05:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 03:05:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 03:05:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7OUN4/+gCTQo4Uin1lxZgaBXEtMVSPS/uPHe4hwLIA3Cny1Ck9EEypSf4/o7CRQp9tI2huOYc9W5/vF0geZaZgR1hWzSvk63HSi5m5vIcRoQ+xeBgOTCjGKRLIMMc5SNm0oqQHThwa8SOEITK8HEA7OgNjzjC90trT6C6Z/Ci2n8W3K1FW1TTl9/7XWiNxkkd0Z5/DohU2l/QE9jnDCnhus0Bz7ehUMbvTstyabQ++ECYJUlGclA144/BRgD5+mwmA1jp2qdoZT2KGFAJtTW4IO4fS3s6RbFM3SfJIdg7hbMDKOmE9w0qJWMiybg9srXBHfl2sEfWXlfAvCsKiNFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MESdU/YUHi9nmTxeCK3w+6MDvlncHWl1W/mwOX2KG0w=;
 b=FygQTXsIjjlJKwZEZPWaHcc8ZrPHwrypyyq9k7/Du4EglHvnJWL5tDmdJgwR/ru0xs9nWExQzfbLiSdoYiEL6f+htCuZ1Ts40YZp5+mPI+YOsQ6O3ik45HVO4y9BjscCtZoOXSUn+ONC69JH0YXcrDecEhET++d9NLHdmFfNwPPEA3x2W9/EPhkmWYPzRatcLrqYQM8NoSWQYic7aqROxOYS6d3Dt1QyMqzBpUMC4JMA3DeHJYMJ6814RWPUuxtjuMrsFYUXvpDpkHVmgG3D1/fvxn66JL3cnJBfKi7wY//KtKsO8Uc41YzPXBYYqHO540XJdVcXAffDiOUtOppl6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 10:05:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 10:05:46 +0000
Message-ID: <ccb9830e-dbf5-4d42-bb38-9cb6d4ef668b@intel.com>
Date: Tue, 26 Mar 2024 15:35:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/11] drm/i915/dp_mst: Fix BW limit check when
 calculating DSC DPT bpp
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-4-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320201152.3487892-4-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7303:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L/rcq8HmotocmbNc+ZcMQ+YJpxoYaUQodL6pMasdSLE8oRc8fZsXNfJ44+odExkmyX6nS725TBbBfltBxpStgXf/BXTB+N1O2mYTMTrjBDUp1QMU3ElK8MsOGQDbZOpPk8ZEITjGkWw7sNmwuomaEXA6cWDxOi8xTybAc2nlbznZ4KsvVl6eb1aihC2aA7t1bVkQE9ebNWokq56Xns/XiD8hnxwYo5gUbhma/Hd3eMBalw4OxkQMorVKAzt+9kJO0BG1K77/kXeap9qcjh9fqqcNbmrQ/EH6ZTNocP89uvUfwfLOixC5dj/fsD3cfSR7WBw01DpmXDJBdgkgN1yQHOOWK0AP8y91ehzCZrW7R5LdmRVvrVEuIIm1CNKScRQPl9jKMYjDOVsZcgxkLeQKcFxPxgKOcQurWFlU9EQppVme3fKpjO8dHsyJ3Bsd+vHX+3LkLt+avdEwL88r5m9LObBxLpxrMxG3YYjKIR2IlhWjqqL8rInEuF5zyi5DJJvDe0HToatFwetsajQZcqMZHgjWS+vNYM1sC7BrX/SDrpqgSNoXL5/rZPif1L09jFPi+GIRtXCg/GgtjbHXktNDh/QoGco58YdhHat8jejD2hepbg46RURfh/KHmbb5BADyCY+vzBDJKKm/+Wc+1/++qg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWhVTFhEM2p0RXdsNGNRS2M5Skg0MEJ6UHRINGo2MGZwK2d0dmNTWUdXT2hI?=
 =?utf-8?B?MUhNdjd4T3FWNlZSeVBVcGQ5Z254WVRBZ1pVbU1hckxtYU9EUFR2K2dBdTRl?=
 =?utf-8?B?bTQ3S2hZenZYYk40VUNIVTVTY21HVUpJc2JjeThFeWY2T1UwUml6VFNmYzZI?=
 =?utf-8?B?ekJmdWUwRSs4VmIzNXVCblcyUm9GcTAyNk5wRmROMCtBMGZVOE5nVGhDdzI5?=
 =?utf-8?B?NlVXdTlSMzhpRkg4YjdMaE1NVi8wdVFhK1E4TkhLaG5VSndEYzB1cnc2clBM?=
 =?utf-8?B?amVvVGxOSkc3TnVLV3ltMUFyV1NTbkhwemFSSlF2bUNZbnJuYlEzS2tIcE16?=
 =?utf-8?B?ZnhHQW9BWTJkUWQzU2wwVGd3Qm1YU245bHZiTEphd0IzcUg1TVkrZzNOTkVl?=
 =?utf-8?B?U25UMXZWN3BtTU9HRkdmdXIwM3N4RXZKaG5YZFlocjRIOEFoYlIxeC8xZTcw?=
 =?utf-8?B?MTYxbzJYbTdYdXQ1aUZDcWRoS09EaFhPckd5QlN6WkpEejlMOXJhT21oQnhw?=
 =?utf-8?B?eFV3aHArdVBiR3QrME9RbUFySHBOV3FEYlJxVVhMSUNJNTVrbW4vZXNCNmw5?=
 =?utf-8?B?dXNXNjlxY0pLbEtNeE1GdUZ6bENrOTRSR2Rrcm1BWlNrc0FndHFuVTVFMkRu?=
 =?utf-8?B?OW5LRFBIQ1NUV0kxWVVweVRSdnpQUHpnbDhwYVRkcXFRTjhGNmtRWVFvQ0kr?=
 =?utf-8?B?L2tEb3NIUnkyemsxN1l2b3RFMExNRVROcmdQSUZBUXI4Z3dXUmdOSjl5Skgv?=
 =?utf-8?B?eDJ0VnhvTnR4TWI1WG1rUklvc0xoWnVpeXQ0d3A1UDhZdUtORFZpQ0FPMFEr?=
 =?utf-8?B?WWJtZ1JGV0FXRjUvSjF5M29VeWdMWVM0RVBvU1d4eVcwR1dVQlZGSGlMd1hp?=
 =?utf-8?B?T1hiOEdmWlhHNWwwSWtQZ1dDTzJJVHBmQTc1YWREa253T1oycFdWRXR6NFE3?=
 =?utf-8?B?cmNMRHdWMkRZT25iZDFJUHZhK3JJUzZzb29YVGNmb0NWd3g4ZUhXektJbXNk?=
 =?utf-8?B?cVdmUmw5a3pYeUJ4ajlGRHFwQzN0YmpoR2k3L2hRc1dYZnQrNzFFSWFWbEk1?=
 =?utf-8?B?ekd2UFEvUkl4Rmd5ZkpVemhiOVhWbnArRnk5UlNtQkR4dFc4endQQ3NrZEZJ?=
 =?utf-8?B?cEFJYVBKVUwzT3FWSnF6WnZ1YUF3ekMwMmZnSDhlVk0rek9tWWlGZmd1dHIv?=
 =?utf-8?B?ZjRITU1hRGtjK2dIU3gxY0dMWkhQZmFhdFBiMStmNU1oK2RBNW1iZXg5WHY0?=
 =?utf-8?B?dUFzTktxYnl2OVU0TUNaRTN0eCtIaHFGOE5VSGlHVEJROTFmUGZaSkk5ZVJN?=
 =?utf-8?B?aklxN2VZcU9QbXVCU09iZEthS043QzJWYTZtaWRIK3huVDVkL1RVTjZTM3dC?=
 =?utf-8?B?dnlzVThmc1Zzb3IzUWhBb0VnL3RYc2hsSEdiU0lUOS9rQXBtd3BBVWVWMzkz?=
 =?utf-8?B?eVk3OUtialZVemlHc2p0OXRVUktlT2kvOW5QbEFLSHhQeEN0T3NjNE1TdHh3?=
 =?utf-8?B?Z1EvRWJjYTFZMnRjZ09EbnYzWEZBY2h1KzZPYnBWNFpmamc1ODREbnVrUGt2?=
 =?utf-8?B?WkUwS2piTGxrTFJLUXEyY0xmd3JqdlNCR2k2RlNmQ2VSMS9DbVJpWFo1Tzlk?=
 =?utf-8?B?MW83dWVxZkJWbEYrMEdLd0tGOTBHa1YrRGduZmtlRzFyUUdBOXRGQUtiemVP?=
 =?utf-8?B?VktrWkU3dzE3VldHOXd0UGVqanZBZXd2TzhmbGNWT3lUUTBNSUJxTUJHanVT?=
 =?utf-8?B?S0pya0xtVE5SZ3UySURwcUE3WkhPZlJ4UjZ3L1R0cjNsN2dPb0tWV0R0UG1Y?=
 =?utf-8?B?V2hNK3pITHlNZmRlSXZpdkV3VUtJN1NTWU5mQUhiOTRJUURtYit3R1lLYUo5?=
 =?utf-8?B?MWh1bzQyUmR5QVRicEI3QzViOTlRS3pyV05ZL2NJb05DbGtOS1ptUWxiQnNl?=
 =?utf-8?B?bmdPTHkvUVREa05LakhCLzlQNkw4aWxNamQ5eEhWQTU3UFhjdjhHKytjeUhm?=
 =?utf-8?B?S1ordTkwL016a0NqRnZjNFZPa1lUM0pFM3FmeTJzN0l5ZDRvU0hhQWtmNjBT?=
 =?utf-8?B?VU9pdUdadmxWU2dyalMyY2NSdVZEWTdacGZGcUpHd0N5SXJTUENUeTZZNjNH?=
 =?utf-8?B?SjFzZXVkTkErdEtWaGx5MVJsRmJuTlBHSldlNmRJNm0yTUNrc0R3cStaUVM3?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d44136c-b6eb-4486-6d0d-08dc4d7c4e3c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 10:05:46.7305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zhVczSfVG3V6VD2W5XQ44TKBaajjOU7uz3lPyST8MfakPAhh5tESQk3Rc3RSQHjT14bpHKIxLoOMmsq4QjetgLYT05wG672nVZ3eir2LKiE=
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
> The DSC DPT bpp limit check should only fail if the available DPT BW is
> less than the required BW, fix the check accordingly.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b2bcf66071b05..c21fd7a2cd44f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -60,7 +60,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>   		int output_bpp = bpp;
>   		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
>   
> -		if (output_bpp * adjusted_mode->crtc_clock >=
> +		if (output_bpp * adjusted_mode->crtc_clock >
>   		    symbol_clock * 72) {
>   			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
>   				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
