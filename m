Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DFE878DCD
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 05:26:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5632A1125C6;
	Tue, 12 Mar 2024 04:26:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DjeiY9tm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910A01125C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 04:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710217586; x=1741753586;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=31Lqt/GPei/dj94nPV2zqDH0IFpmYG4TGG097CgPY2A=;
 b=DjeiY9tm2DMJ0qptqlyyhJY9u0XUH1bxNee09X31YWo9SEte19SeLs7g
 7vxSGiNVlxWxEdH9vzSqrXXgQ5XXeKs6hVQ3hyjD632e2LRuPkVAc4qpE
 j5a1lTZSnJ62aBr2nhZzJc0LoHCt38lHiymP82pvewUK0ZxcJsAgFrhj8
 rA7IiWPMQB3PsEiE+k+Z3Fp5dkX6es8wrCEWAzyRmEpQK3E8ZCrVs2lKP
 Gk9seR/ZSQwUcvBaIA9TJFBm4FZb9HkcZ3cy5I6pPhQCnRXj40qZeqxt4
 HzTiHc8Ei6U38tHnNop3v2n4V919O+4AGoFioeQ7GMd5oNFdoN7Rv/sZy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4767386"
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; 
   d="scan'208";a="4767386"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 21:26:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,118,1708416000"; d="scan'208";a="11989897"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 21:26:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 21:26:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 21:26:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 21:26:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JyRc0loBQGyi4nWrVVLyi5SiCB7yKD3cDPStSbbpeI88QPYN15xq5IgjoJ36HpWd9fEdlkTZGvlXIDV8+oEjvFtmvYfwSq7T8NsE7F/bKxtHA6c99h1pDGlfj72pjPt0E1izmiVGD19kQplTKCDVfkJ2lS9nimeiVS+V1WHzkCD+wy5qQLuwreh3NGA7cSUbKCWWWbe3wqcEKigzMI5ZsP9KbrdbRLaxTcbLcKtYeo50xIyItTUbBjP+ow6hFIDw5Kxj+QAhrerB45o3jh/8elv2bzbsYCIY4gAeL+rC9Gn+XAR+XFVNNrUgcofgh5fl7W2VNukZ1zMW7YRVdKgP+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZRWZShLq6cWWg1uomiXrdjWGms6ozq0ZyRJoskshKs=;
 b=i+OD788i8+vfBG8qDFopYcPid5w5MywnderwIg/bhB6/voSB/A4aJNt4okKvsbtzw/lV9sk7vVEgRdiPKi+C+mGmv1Xq+iVT6FbJUcjjpkxy/XkKLC4U3qWG0IbF/gpjOrF82+vcUlIacaiakWKUwsc9AxSm3cUVw4EtRvW3Q+P9nmgQdERJSkwf/NfT4/hDtzd+PCfM783lDfDMxbc60ft9A9HHN38Jdznj2aSYgiuAG59FnqvAKQAwz+6f5epXXjlaPmDo6VvocehBIHknYRrJIGiV+8DYCTk+xHdxQrGB+rmuf8L3kqMLwACiuIWGAdVmLEHl9fl8Mx7806i9hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8238.namprd11.prod.outlook.com (2603:10b6:610:155::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Tue, 12 Mar
 2024 04:26:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7386.015; Tue, 12 Mar 2024
 04:26:22 +0000
Message-ID: <44779e95-1c46-4caa-8403-b768d1aa76ad@intel.com>
Date: Tue, 12 Mar 2024 09:56:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fix DSC state HW readout for SST connectors
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240311145626.2454923-1-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240311145626.2454923-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0074.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8238:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f0a6979-1688-4620-6f79-08dc424c9267
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kMFItM5ecXTwMy52ivl6n6TvyoR1Mke1FjygwIruEPczGxd0+7TQM0iGpsdBnw62VIgUeAJJywQkJAZit6aK3GUtF+1y+8tX2lKTR+ddD1gzY9la1n3B+0Iqw/aGTuyobHfulysTdPj2s7kOXKECrN8IS9gT+yhddpOusdmgZ0Hv1inUcPkOEy2hT4vm3tTaTzykP7FB72gb953lsnBYj3h2P0iAO87UfJM7/aXo3zJRvmpZLtyVgUXw5j62OdIIrZ4PosCiiMtlW6oRPdR1rqaUtAUiLktdRMpZnX9D8y93N+YOgupD5BhmK8hYUWNbLijdSguvoVuUm1P28OvnE6wno4U3hH+pY6aFNJDXsh5rxaGBYyhcgCfTny8d+lNTRjpiMDWFFzxwfvaQm8M9REYuW9i+vtYNbU6aEVlewvo5m6CV+L1km0ZzKahOym1JceJ1ELiThBkxZBdh0RxPuvLIt43hW9EwXRfly9gbDrbVv8Ml2tdp8yW315r/DrgXdusUNGyOFLglYPC2PKYbit9A/m0wNg8SyY97FnB6As6X7e0Bv35TyHhO5sI+epl0a7OD1P6vSDuXeDwaO7sQWpVlXl1fFJKq1Z6NgX52HXo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTVsdVRMY21kTDlxZ083VEEvRmNHV0lpcVBESDlkMzZ6UmpVclRvOFAwZXVj?=
 =?utf-8?B?cFlQNHJhWjhWdldWS1FsZHg0TnVnNUdmeXppaUNzeHZReDB5dlQ2YmU3Tkx4?=
 =?utf-8?B?TThrVUZFeUI4bGpWWGZ3VmNxWEw3VDFCU0x3dGdoeEI1bzQ4VEVzbWNsOUg1?=
 =?utf-8?B?UE5zSlUzMHVuT2VKbWIyQUt1b2laUHlKZlRiR0V2S3pGVk1sWE9aeDJnTFdp?=
 =?utf-8?B?Vkt2MDNrRXhjRkpzSERyUWJXcTZudmdObU5PajIycVJJYmNCNVg5dS95d3I3?=
 =?utf-8?B?KzYrMjBYQ2VZMEwwRERsNi9qTXFFOTV6bHB1eGFRbGhlaUFlQWFEUXhsdStn?=
 =?utf-8?B?YjRCMGRPbnlwWGVDckkwWjlpM3JybDMrS005RHR1MjlJYUd5RGhRYlhNcjh0?=
 =?utf-8?B?V3JxZWVybVVka2tPR2VVY0N5RHQ2aHBmWjRYbmVZQk9qRGxpZUE0Z2RVVXR3?=
 =?utf-8?B?aEJ4VC9zcDJUbEFoWlhRQlBGRHNqeVAwb3JZRnhBZHhaL0ZYSC9pS1pLQ09M?=
 =?utf-8?B?aEdHcFU5N0xKcHJHZnZwVndFeEJabEloN3RjMnFRSzNZS0h3VXhia0dwdTRD?=
 =?utf-8?B?L3c2Ris1aWlRY3NOQnFQMjQ5YXN1dDZDY20zQVl3MzZyTkNoaUEyVW1vbG84?=
 =?utf-8?B?ZU9SaHRCUzh4clhPS3hmYmNCT21ycGJ4cE9USTVYVm5ha1lFSzhRMmt3bVZX?=
 =?utf-8?B?OHJZUElRT1N1dUQ1RDZlWHgzOG9FM1JVeEdVZEhxMWIvWUhIbGdEVEJaWllN?=
 =?utf-8?B?OE1SL0lSRkp4aWxVSmxJU3M5akRmeURIT0oySEFDbGxqWGVocFVkS2xwamR5?=
 =?utf-8?B?UWdwNWpLMXlLb0RVZlN6MSs4UUkzeUFXcHRIbkZBZWY2Z29UdXBET2xUeWM1?=
 =?utf-8?B?djdOVHBVaUtRcm5JTHhRTHEzVythT3lsWGlrUVlBdjVma0ZFVVFGODNzbU16?=
 =?utf-8?B?aktDZmtkVDQrNHRJZlNsTDZpb2ZMak9LNmFDU2ZSc2VlRklIVUZOMUFjNHJk?=
 =?utf-8?B?VWJqaGFadnVhdmY3WUEvd092R3NHc0Y4cGUzclpZL2xpNWRVTGpLVTZRc2hK?=
 =?utf-8?B?ZUNQODdjWlJEV3RzK2RPdzBsWlk2RjNSRkNkWGJnREFMWVR5dTJjSEFOeUkw?=
 =?utf-8?B?eFpWL0VXU1NHNTlLQnhDbElGM0ZpN2t3N2lsdmNOWVpkSUtDcGcxcjFPMHpP?=
 =?utf-8?B?R2dwWGh5YTAvZCtkY3dmSVRpdEdQaEp4UzZ0V0Z6RFVzM2IyeEw5SHpnNlM3?=
 =?utf-8?B?R1dEUEx2R3hvdGZ6NjdzVzBVREJRNkZpSnNreURLWUEzYjUwWktoNnBEeG1Z?=
 =?utf-8?B?UGlhWWRGcHRJVkJGa2oxajNydUFnbFhqL0J4RDdjcnlGWXVTbFd6UHdVTjUy?=
 =?utf-8?B?M3NlMVJQQmRoNGhnMlFOai85RVBMZ1ZkRFNyNkpFSUJna0hOSTlid1lPUlFU?=
 =?utf-8?B?dHIvZFNWYU9ET0QyVk1IaGxjWVBSSEVpdUdwTXNxVUJOTHFtOFRLN0dRM2pU?=
 =?utf-8?B?SEJWbFdqWER2c1pWWVhSVGc1Nis0TkhOb0hXVXRmaExEd2VIOWN3QXkrTU5t?=
 =?utf-8?B?RVUyTnF3dEg4OHR5UDdqeDE2MjNsa0hIaVNtTG1ZbHhYeGRiN0hBMVdwQUdX?=
 =?utf-8?B?b1dxS0Jpdm5Qb2VIL3YxZ0c0K2JiZjF2T29FejI0T2MyNTIvRE5YUlBsVUpH?=
 =?utf-8?B?YUhIVWhnemZoUXB5cWZUTmRWZDN1d2ZRY28zRDZ5MGJ6RjdiOWxxQmVKOHdj?=
 =?utf-8?B?VTREUlFkZ21PT045Z3RIT0NNcTJWSS9zazkveTd2dFZxRGkxSDhyZmpoSmZJ?=
 =?utf-8?B?VmJjeTcwcktYQzU4eW1hOVdrRTFucWV6S2VWSVN1czNpNmJ0WE0xQ0k1Njda?=
 =?utf-8?B?Q0MzQ3ExVU1NTXpxY0lMS0xkVFU1NUJueklWUnlCbTJza2xucGlpZjNaMGFR?=
 =?utf-8?B?ek1ZYkdyWSt0OXhwQjlZSndIeVBVdmpCM3RlWWFsOHJ4ZTIwZ2xYa01FZVZz?=
 =?utf-8?B?blV5NFl1ZUZ5OHZZRUVRaW1aZUJXMVJKK2xFdkFDaERnVjliQjFzV2RERWYz?=
 =?utf-8?B?K01jZTBJVFIrdXpzeTRWOWJwT1FQdEViSmg2Qm0zSmRDZ2ZKa1JKblByMXhP?=
 =?utf-8?B?UHdUZ2xwZ1Z3MDNlV2Z2dFp6bTI1enowUmpTbFp6MEJEcUZZa2RYditnc2lH?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f0a6979-1688-4620-6f79-08dc424c9267
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2024 04:26:22.4145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3zGSmJuUMggPLMDOwTHVoStj6y5Za0KpC0LhEB9Byk0RL4n5nOpyKA9GEk9tyWcRfK1XyrMUwhS1gukDpP8XUyaQ2oKjFSql7vNxmu9LeQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8238
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


On 3/11/2024 8:26 PM, Imre Deak wrote:
> Commit a62e14598150 ("drm/i915/dp: Fix connector DSC HW state readout")
> moved the DSC HW state readout to a connector specific hook, however
> only added the hook for DP MST connectors, not for DP SST ones. Fix
> adding the hook for SST connectors as well.
>
> This fixes the following warn on platforms where BIOS enables DSC:
>
> [   66.208601] i915 0000:00:02.0: drm_WARN_ON(!connector->dp.dsc_decompression_aux || !connector->dp.dsc_decompression_enabled)
> ...
> [   66.209024] RIP: 0010:intel_dp_sink_disable_decompression+0x76/0x110 [i915]
> ...
> [   66.209333]  ? intel_dp_sink_disable_decompression+0x76/0x110 [i915]
> ...
> [   66.210068]  intel_disable_ddi+0x135/0x1d0 [i915]
> [   66.210302]  intel_encoders_disable+0x9b/0xc0 [i915]
> [   66.210565]  hsw_crtc_disable+0x153/0x170 [i915]
> [   66.210823]  intel_old_crtc_state_disables+0x52/0xb0 [i915]
> [   66.211107]  intel_atomic_commit_tail+0x5cf/0x1330 [i915]
> [   66.211366]  intel_atomic_commit+0x39d/0x3f0 [i915]
> [   66.211612]  ? intel_atomic_commit+0x39d/0x3f0 [i915]
> [   66.211872]  drm_atomic_commit+0x9d/0xd0 [drm]
> [   66.211921]  ? __pfx___drm_printfn_info+0x10/0x10 [drm]
> [   66.211975]  intel_initial_commit+0x1a8/0x260 [i915]
> [   66.212234]  intel_display_driver_probe+0x2a/0x80 [i915]
> [   66.212479]  i915_driver_probe+0x7c6/0xc60 [i915]
> [   66.212664]  ? drm_privacy_screen_get+0x168/0x190 [drm]
> [   66.212711]  i915_pci_probe+0xe2/0x1c0 [i915]
>
> Fixes: a62e14598150 ("drm/i915/dp: Fix connector DSC HW state readout")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

I think this should fix gitlab issue: 
https://gitlab.freedesktop.org/drm/intel/-/issues/10410

Regards,

Ankit

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f98ef4b42a448..af7ca00e9bc0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6557,6 +6557,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>   		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
>   	else
>   		intel_connector->get_hw_state = intel_connector_get_hw_state;
> +	intel_connector->sync_state = intel_dp_connector_sync_state;
>   
>   	if (!intel_edp_init_connector(intel_dp, intel_connector)) {
>   		intel_dp_aux_fini(intel_dp);
