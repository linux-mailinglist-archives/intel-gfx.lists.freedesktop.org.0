Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E4A85281D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 06:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C29F10E7E0;
	Tue, 13 Feb 2024 05:07:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gV0M6A42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C40510E7E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 05:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707800830; x=1739336830;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gg7oErr4AQIaepsPNzar8R6b/lBSt8zQsofgxVWZQ2g=;
 b=gV0M6A42bYQ4k9Okl+hwd1k4iic/lIdz2uV2PEMucL0tr/ln33He2R5p
 hse54xjZY/AX0Xm/RCTFX+ZVQ4lNFJv8MAsfUs03kmIemFO+jW4NAHmi2
 dn5TIzAwAzZWGp/0MD56zXYfqyOCgfZkSgpHNd/Xbn4dIome/JiCct6h5
 MhxC3bTo/sPvssimCAjc7IUWx0IMFoRTzcKpEiUk2HmKjk7pnXEyHPxt5
 5G9invcTWlnq/UeYjFX1rIoquRehfDpdvHvAIdBjKHihPan66rkimPoan
 lZbsPOwF0cDST3kz7faaAhh2jVMlOsT2jl2QWpWhWnfVjNL38dNhC/0Xh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1679230"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="1679230"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 21:07:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="7426488"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 21:07:09 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 21:07:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 21:07:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 21:07:08 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 21:07:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLnMf7omjCHT4GSifIh4xgBXnofNPT5ZRltbQbXlF8UD6tvWTqeE/Rg19poE4GqKr42jTek1z0VlKpFwCb5/qSt3ffUPuqYMKAVYTXdxgBI6e9l5wBGLGe+Ia6IaP1QK2t1nv2VYBIG+4rYxVAEKo3sgYnAPJ/sOTuhRL8y7IuRDK+jwIdr/oB18Xo3pyrcVvB8g+gqv10n4+CrXI04jIsu7K1nZol3bblC5ribS0kY+HXIaSNWqGmCGx+wPLQzBPQ4LAYT7QmsESPAglazxcUksLbdiBcwQGcJauOlsR+Uk9kzg2b6/VektvJBrgQY26bXDf7k6f3EwXW3sL32Bzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+lZyr5ouDvdXiXxzOAONDKcJbXmNfkBhyLe3UUk4PU=;
 b=Dgm9TAJ/b02G7S+ZEVDP6Hryy1VEiiwDW6wLiE5HzR0xObUl7R0QYOzjeaWQaGTO8cePrz1Ig7bixIkCGGTskwCoe7/2iBSZoQH6YVwAZjs20MsVEIe0vrycTLIe0S8YIw0Q/6bTJ7paLPXjvvpX6FMsOc5WeZ8HwSmckItIme1eamEkpmq/Ycw/vlMraZ4WD8FJkFqm6absP9+MuzzsKo8bthN7HSiZ523Amwus1ml1UWqDZGi0dA9RTCHOWFJi/cnnc8AHCANQ30jpuoMbmIRZbtocFbTnmka0I3xjmgVmYQk5AT/6/m9hH+xD7HYuQHw5CcHX18t8ZDAHbfUgpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB8090.namprd11.prod.outlook.com (2603:10b6:8:188::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 05:07:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 05:07:06 +0000
Message-ID: <c92a3d24-44b7-4416-bf7b-b302833f13d8@intel.com>
Date: Tue, 13 Feb 2024 10:37:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] drm/i915/display: Compute and Enable AS SDP
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240212173623.1464540-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240212173623.1464540-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB8090:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f67846a-101e-471a-8258-08dc2c519f65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U1DNmDajTyz3fsS/1DsQo9vWi8j6Hcp5YQWmpFXkpA+BEklr1acRCalkrc6Gg2c7gVgKCdQkSFae8/LOZSfQq0nmNexD2gotkoz7JLKnX0sLaddPOycFRxlkd/oVM/Lqc16NrbXs/g+4qLuQEWpnr5W2oKLhZsxlB7SsvOkqXe66nMhN+eJjuZdu7xzamIbyRqQBLJ7cCrwuXC8D73x+qD0hjXqaYX7+ZGIZFWmrYgkCXNNq/e+XCQaa1vxTXeDBDk4yjouZ/IB11FQDzOtwVCYSZ5E8it9nZPUoOBqw+rUIH3ItPXIYYwheuqa0738+2/15oqugBIQuFDbMgluKmScbbxVrkFAE39p4d/vL1hDoe2bT96qO7T0JYO4ZeLYh9GiZV61PQj+/tPuLxcMFWscSTbbVRyMLn0NWkrHFHkwC31+C18cB+lHkppLr3SsfKw+RKDsZ1i6uioxHtXczVPtnkuZK2iD4U5DltBvgYgls+tyAmU0/pvCvIYrdTxc1VY2YIr0Tk69jZVN6vPa0wE9BCbMLkeUlutfBYEnS4K+6cb33dJyvmqQcR9scYPHZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(376002)(346002)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(36756003)(41300700001)(31686004)(66946007)(66476007)(66556008)(86362001)(6486002)(31696002)(8676002)(8936002)(6506007)(6666004)(5660300002)(478600001)(2906002)(82960400001)(316002)(2616005)(26005)(53546011)(6512007)(38100700002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzNmZ1F6TEZ3aXlsVUl1RC94cEp6dGJWZDZWUXcrdy96Wk44S2lMaFR0SkJt?=
 =?utf-8?B?TWpnSjE3cEZHVnNNS0dmM3BhT2xwK0w0bkFCbWRaMG1mOTVJckRLOGdoODRs?=
 =?utf-8?B?WnhCcVZscURySGYzUzZjdTZFWnlJaElUUjRpTTRVZkN3SGx1eVlpVVlSNFlI?=
 =?utf-8?B?MC9obGN0YVhWUTFvMTVvUTZPRCtXTDY4Nk15cmZLSjRaUzFBUXNlZTVRcmpB?=
 =?utf-8?B?UU9kRVBiTlFwak1CdytGUnU5OU1tVXBEeU8yMm1uOGk4bGFVdS82cmNIdk44?=
 =?utf-8?B?cTVEQTMzRmhBQTQzeXlxaFdBVmlqS2xGcVhCZTlHdDROMXJ4dFR3L1VkTUx0?=
 =?utf-8?B?RUhWY2JSQzloejBGazVlMkJscUc1UmI1VFRlaW5IL2NHU0daYlhaRWJ6L2Y5?=
 =?utf-8?B?UkZVdXZDNXVGRlNmNFdxU29qaDE5SWdFYzVMV1l4c0xqQXYxeHZseUFFY21k?=
 =?utf-8?B?bEVlUkU5a3hJN01oQmN3cVVvRktVMkMxREo4TzRkNTBKb3dONkhnRG16cllB?=
 =?utf-8?B?ZnhQN2xFQlUrbVJWNEJMaEphWFdHVlUvYW9rN0oydHErdFowQmoyM1ErSzI1?=
 =?utf-8?B?Mm9VV3FRcVBqMFRrd0cyZGNUcWdyTFpJdUJtdnRPUHZldEEyODdDMHMzSzB6?=
 =?utf-8?B?UjR4K2JscWp2dkZ5a2hsdVUvOUlhVkVHTmpOY1FOMlc1Z3pEUWVtRXEyelp2?=
 =?utf-8?B?Y1NqZFJ6dG4rbEVQWWYwbXRsbGFkVGNVODVIdncxalQ0NHI0UEVQZWI1RVNU?=
 =?utf-8?B?UXJxYm5lczJnenlXR2JYeWJHaElLKzhaTW53elVwaGljaXQ0TzNPYm54YzVS?=
 =?utf-8?B?eGlWRE41M3grSlIwSTdySDE1R2R3WW44UWlTY1h4MHZpdVZXZDkxeXBBc2hh?=
 =?utf-8?B?TUFLTlBjUktTa2s5YXBiRUhpd04yR09SWEVpVFg5SzVqcEVmOWczYWtNNVVw?=
 =?utf-8?B?amJFOU82MGJ2Ym04QTJlRG8zaEtsSjQ2V3UzdGRHdFVWNmRtZ3FkN0o4M004?=
 =?utf-8?B?VTVsRTdtQnVhaFZrVmg2STlrRDNsYVhrVXY2Unk0VVpOd1BEYlJEaFI5SkY4?=
 =?utf-8?B?ZllMMEFEeWFDWkh1Q05udmZoaUM1bXZqWStLY01ZUGd1MUdXRVJVRkV3ZTla?=
 =?utf-8?B?VldGeURGQWhSYys2WHNaaERpZWF2SFZDY3lrakhpZ29hVCs4N0d0RWszQllx?=
 =?utf-8?B?WDZzN05yVUdwazhzUnZ5WnVyMjZiQ3I2OXZEUjRabFBEWVVlTFkyTzNwU3JX?=
 =?utf-8?B?VlUwaDdDQkxtYnp5L1ZzeVRERHBnd24wSTYxUkVRa3E5dHVhdGN3S0lDSXIx?=
 =?utf-8?B?MzlZdm0zQVpPL200RW9sdnFOZ204MWhYVnBVOHRjVURpTVFzODlVa1hsT2VO?=
 =?utf-8?B?bE1DY1hkNkV5YSsxS3oxVDEzT25jcDJSTEZERlQzaHBPN2pNU3AwVEF3bS8v?=
 =?utf-8?B?dVlNZ2I2bGd3SzNnQzZrRVhZdUFlNWdGUzNQd1V2S0NGb09xTnhNVzN4MFJp?=
 =?utf-8?B?aTYrU1ZLU0ZGWVYxcWs5Nk43amV3WFNRV1p4MU5Db1BPRnBBcDRpM1VVRkY5?=
 =?utf-8?B?UXlpYjNWVWtpZkJaUU5ZOEZvM0s3RXI0R2psUFd4N1Y2SU0xdkE0dVFNRG1P?=
 =?utf-8?B?d0hlRXY5bE9nSzYrRWNhMXZYdGk2Rmx1VURzeHJaTjB5RnUwQTNaelVVc1hZ?=
 =?utf-8?B?cjRBK09qeUNZOVV1TG9BQUhicGMwZVJVdDhFZ0laY3YxWkxPWTR2Rk9pbmpu?=
 =?utf-8?B?bHRCK0VYUUZSQ0ZkbjNyS21XSGxDSnpvanpaNDBaNVpFSm9HdXhzY3FPNnNt?=
 =?utf-8?B?S1E4UWsyaXd1Ykw5Q1JFV3ptVEl6S241aUdDbzVlTnhvOHh0UTJZV2l6VnNN?=
 =?utf-8?B?WlJKSHJJOUMvNGswNVdlSEN3Z2lIWHZpK20zQTgwVHVXUldDUGxibUNIUlph?=
 =?utf-8?B?bFY1VUlWNGJpejJoMlZpUGZMNXZQZUJPUkNaVEFwclNpRzJZZGs1YllBQ0V1?=
 =?utf-8?B?NHhaWmZMZWc0a1U3eHF1bm02RGFIN1FJVHhyZGlSRDBkVUp0c2x2UGR2Y254?=
 =?utf-8?B?cktnTVYxQ0xVSkVnYkpSWFhxVUZGS3hzK3ByOWc2eFF2djhMb1RmcWR5b3Rs?=
 =?utf-8?B?bUM2ZnhDQW54SG9zYkhuYllrQWVUVDJ5QU8wTkxZWVdML1VVRVNlZklQbmpR?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f67846a-101e-471a-8258-08dc2c519f65
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 05:07:06.4366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ygQSexgUAcPdHj+KzlW7uf4LNjEMNPzNEtviXKE7Hh6A0ixgW8RekuAhrRGK+SWp0lKxhQOFmQFJcv5K/RDf9UmojrqTju1Mf8j5dOU56Zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8090
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


On 2/12/2024 11:06 PM, Mitul Golani wrote:
> Add necessary functions definitions to enable
> and compute AS SDP data. The new `intel_dp_compute_as_sdp`
> function computes AS SDP values based on the display
> configuration, ensuring proper handling of Variable Refresh
> Rate (VRR).
>
> --v2:
> - Add DP_SDP_ADAPTIVE_SYNC to infoframe_type_to_idx().[Ankit]
> - separate patch for intel_read/write_dp_sdp [Ankit].
> - _HSW_VIDEO_DIP_ASYNC_DATA_A should be from ADL onward [Ankit]
> - To fix indentation [Ankit]
>
> --v3:
> - Add VIDEO_DIP_ENABLE_AS_HSW flag to intel_dp_set_infoframes.
>
> --v4:
> - Add HAS_VRR check before write as sdp.
>
> --v5:
> - Add missed HAS_VRR check before read as sdp.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c |  3 +++
>   drivers/gpu/drm/i915/display/intel_dp.c  | 23 +++++++++++++++++++++++
>   2 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bea441590204..47dfe727e98a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3972,6 +3972,9 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
>   	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
>   	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>   
> +	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
> +		intel_read_dp_sdp(encoder, pipe_config, DP_SDP_ADAPTIVE_SYNC);
> +
>   	intel_audio_codec_get_config(encoder, pipe_config);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6e9180ce069a..7ecbe9f48847 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2615,6 +2615,25 @@ static void intel_dp_compute_vsc_colorimetry(const struct intel_crtc_state *crtc
>   	vsc->content_type = DP_CONTENT_TYPE_NOT_DEFINED;
>   }
>   
> +static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> +				    struct intel_crtc_state *crtc_state,
> +				    const struct drm_connector_state *conn_state)
> +{
> +	struct drm_dp_as_sdp *as_sdp = &crtc_state->infoframes.as_sdp;
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int vrefresh = drm_mode_vrefresh(adjusted_mode);
> +
> +	if (!intel_vrr_is_in_range(connector, vrefresh))
> +		return;
> +
> +	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> +	as_sdp->sdp_type = DP_SDP_ADAPTIVE_SYNC;
> +	as_sdp->length = 0x9;
> +	as_sdp->vtotal = adjusted_mode->vtotal;
> +}
> +
>   static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>   				     struct intel_crtc_state *crtc_state,
>   				     const struct drm_connector_state *conn_state)
> @@ -2940,6 +2959,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   		g4x_dp_set_clock(encoder, pipe_config);
>   
>   	intel_vrr_compute_config(pipe_config, conn_state);
> +	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);
>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>   	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>   	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> @@ -4325,6 +4345,9 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>   
>   	intel_write_dp_sdp(encoder, crtc_state, DP_SDP_VSC);
>   
> +	if ((DISPLAY_VER(dev_priv) >= 13) && HAS_VRR(dev_priv))
> +		intel_write_dp_sdp(encoder, crtc_state, DP_SDP_ADAPTIVE_SYNC);

I think we need to check whether adaptive sync SDP is supported by the 
sink or not from 2214h.

It would be good to have functions to get AS SDP capability for both 
sink and source, which can be used before read and write dp_sdps

Regards,

Ankit


> +
>   	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
>   }
>   
