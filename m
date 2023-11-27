Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F827F9E20
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 12:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E1A10E234;
	Mon, 27 Nov 2023 11:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB57210E234
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 11:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701083065; x=1732619065;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=859+ve/VVHCVVmAq8NBN3canSgKv39IzxA16dzLSqNA=;
 b=Oo/P/ln/gPytAx0ekwhdHnQUGy//j4G+ya29MAvtBi1Qrdb/PogWn7XJ
 qlgTx+jMaAjSPbfW1RmpJZWD6xqv/jL1D5wPYPEvwRmCO5Jil2+K8DPVm
 LWtkjo5on1hLxsfiftGuopM9ImyMQQ/RDGugBWaxAqwqS4SPVW+aMcSrV
 M2JCL+M1sC4UK80J19hPcJ2qWu8mjuNTwYBZ7sKfm6fl+ZdAA9Z+bPYS7
 gpk3gAxP/SaeIpm8lWBv2+d78OD3GHrtBubo2las9bSavEEvvS0i+UtVc
 jY+O+czktJDrvJk3R7unojV+mtjpdUn8hRMYB5HEmpqnW3ecWTntTdvsP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="396587675"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="396587675"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 03:04:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; d="scan'208";a="16257839"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 03:04:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 03:04:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+eOgXWbkjPeRPdltyf5176gvbnYvQBGUwlnPO70Amr4vi9cJwj125VHMvKqzsrBMOGG65wpKRktLtmpGoetC7G0b4I1QFyNHk+pGYcTXboXledOaXF1xY5jInUluAiyjOoBmdvaGmf8Q7DqFK+ruO8lueR7lsfGvt+bInYYEYfutwklFe8ILyYtDrOXmKmAZ8alP5lxF29UkU7oLRqO/PMl1ArkWueODZ7KV7LoiJr2oVxYxtnp3VXVR7HJiGcdxkV0Xa0PbuIieNUA1ywWzxcYOvr2aDBDTh3wCriDfKftPSzJ8zi0a5a3w9JFaPVhMd22vNBeAA81biMl1IRU8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XpKHN+4Hv2iwS+0v7siPy/15D8IIa9hk/0FAhsFpH2w=;
 b=GomOudHv+4JCL4tCqr6sjZ3nOfWEvNW6PlEp4iFYTDq+voLxkVaF4lNnzLJyIPXBYSz+CrbqJkDHESCJE29yytEiA8drMGduPQGupcZ3lFp5fTfbxcEBsKbAGUJGdi9KazA47qhOp+QxRli4tN7iqvvxYpj/Z4PNob6iGG0NVQxySW4p1GhPKVTLStTA9QqfXg8ARs79CiJhjAZACnRcP2BOXDbMESqOZEYQ6cmZMvrZ9G8ioFs+sBPSrO50Nn1ozRT6exwb+yyso0T4fdXEmL69eBc897AMWEeVX+qDN1xqzMvxOn74HS6j8GmDpQcxj561nTxqKp1NdXOFFlctMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Mon, 27 Nov
 2023 11:04:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 11:04:21 +0000
Message-ID: <8f5a608a-21ac-4648-abea-eca29a4ca8da@intel.com>
Date: Mon, 27 Nov 2023 16:34:15 +0530
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231123140244.4183869-3-mitulkumar.ajitkumar.golani@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231123140244.4183869-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4791:EE_
X-MS-Office365-Filtering-Correlation-Id: eda0cb8d-cd40-484f-c8c1-08dbef389be9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lQ8lrCKVn7jTvNj5tO/tB0sGinuG1XA2LStbDG9e/sj1zFLRw8ycwkJOBFp2GiUXFvrYoJfCYzGoNEmSMh5AhB3Y79xkGBtrZ8AeKolt2hvbGJ8Hvn0KfXrSvzRc5m/WcCo+r9URC2UJ7erXS37r8Y0qpVCooavSwOL5yLUHwB8++FLJsNuUjDxQhFzEzr+3TnFAtaSB1nN3y/xyIje1o7MEViuGa9bS87X+avhs4Oj/wkABggtfFSLZI5+0YXlRcM+f2NMqMkayTTXfiGnyLOZOMD+YLCmwGM+MMonTAKHSTf7hNqalOPt/r8HmMpnFtHKVy/A117osPu0FxrOg6QBR3j0sgOJCwHCnr4YFD5iuEuEN6TmHYzh1aLTqAxUirrop7+yuL/brN49qs3WcHjYoTSLoTI5kRX3UaUYYtrwbWQPUKbdoffdw3tOdAQ/DACA+zC/rCpnuE+innoEHfaVYxF7F2tE8tC95y6sx8TT8VoPV+uNYpTTZXZfQdsJ/TnSvK37XGDObJPAoflHFcOj0oMKPpVnqfzazvN8hYfpUdNJE8+76QDqQkdyfC9Co/XLL6bYyfCrErAF5+mumnahwv3YaKmYncLDSzDO26yv5ZmsfmyQCQO5zcuHsOPcZK/jHkTNPoD/tPTD2U5OAyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(5660300002)(2906002)(4326008)(8676002)(8936002)(41300700001)(66946007)(66476007)(66556008)(316002)(6486002)(26005)(478600001)(6666004)(6512007)(31686004)(107886003)(2616005)(6506007)(53546011)(55236004)(83380400001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjU2WEJSN1MzM2pnc3lGVmhBTjNqckhDL0RPUU1EUW4wSHI1d3kzKzdKZXJn?=
 =?utf-8?B?Y3RvSDJhVFBJejJtK2Q1MHNaUUUyQ2ZWMjVwME8yb2xxaVp0RHpVS2M3cG5z?=
 =?utf-8?B?THV0enBIM2E3TTFvN21GNTFYZmp3b0prdThuRHUwUm41YUpMNzEyRE5TcUFO?=
 =?utf-8?B?b2xtbFd1NkF0UXJXMTl1amZqNXovR1ptTkRDVVZXQW5TcVJOZXpJZ09MejRu?=
 =?utf-8?B?aFcrRTlZaHc2L003Qml4NnZ3N1BYc0JwTFp2VDc0MThFL29pYld4cWpyYjVz?=
 =?utf-8?B?VWV4RStuZGE5eVMrU00rRW9RMDQzVGFmZk1SaGZGOVJPMkpnZitMbkx2TWp4?=
 =?utf-8?B?S2lPMklxeW0wWEJ4ckpiUFNVUnhtejNnYzk5WnpkM2xUSThEYkloY0JYcTNz?=
 =?utf-8?B?cWszOGgweGFjOC9pZktDQkdDazdzRVFiU0kxM1VRNUR4RVVUNy9wRDBoWUZ2?=
 =?utf-8?B?MGl6ckV2RFVpeXZCNjFnZXVoS1VYOTdNOW1HWGx2TWxwL2tvUXFjTTZVSmxt?=
 =?utf-8?B?QkpDeGlYcUxDT1VkeXZweTRPc1ZFV0E5bmc1WmFkVzZwKzJZZUREdndETTlz?=
 =?utf-8?B?dlludWNKUmtpN2VvUUhNUkxLTXU2NTBGZEZ6S051VnhJbDZqQ3BraGw0c0dl?=
 =?utf-8?B?L3Nhblp5UHNrbDFDbFBTREdTT2JGK3hqZ1A5Q1JUeUVKZkJucUN1MG9YLzFV?=
 =?utf-8?B?aW9rcGM4UW41eXdPQXNnZmJEc1RDRnNmUWpIaVd6VS84eWV2eVZOU2NqZEhY?=
 =?utf-8?B?V3RKUUpGMnd6MGFSenU3V2dYeWdZNTByZmhsMXBQckszZnBHL09zaTFSR2RD?=
 =?utf-8?B?VGx4S0JkUzkzNVM0VDBVdnE5a2xMZ05BMTNUbFo0eGRsektOY2RENkFQcmpo?=
 =?utf-8?B?L1JIYVRDYzY2MU5hY2QrVUpSUzhQdjlXaENwVVlsZllBQmtVVjdRdTVXem5N?=
 =?utf-8?B?eFplNXVINGFRUExPOVd1ZWMra3JIYXBsYTJWOGllSXRpQ0YvbVNkRTdteFNO?=
 =?utf-8?B?NU9IdkpJKzlLaDZyUEU5eDh4SVc0TkdaVFdueENaNzBoTzk1b3dsLzhVSk5l?=
 =?utf-8?B?MlcyZ09ZNnBzd0ZqYWFvWDFBTmlFbTBISUZoZWt3TnRkSHlhQzVVczRTOE5B?=
 =?utf-8?B?OHF3VkVTYWdFbmZvWEoveGl3QW1Demp5MVN6VDBnTHowZG90SndDMmYvY1lm?=
 =?utf-8?B?NjliMjNadHliYlp6VndCNHpHcEp3YTJKbExhMVo4VFNzSEJmUHBwdldmYXpa?=
 =?utf-8?B?MmJCVEtiUU5OZWNZTGJQcWUvdHN1aHc2dEQxTE93UEkwc1BsdHlLelZsT2RW?=
 =?utf-8?B?ZXh0UGRlN3ZSVG5NQnVKNTVUUWw3TDhFYVRqVUJIVFJDMm00KzU4RnlBZzgx?=
 =?utf-8?B?VlBaYlVON2c4czV0eW9TWlpmaU1rN1kyWUM4Sll3TVU3UWdmV0ZtcXI5VWpT?=
 =?utf-8?B?UkF3eFNOM1lKeTA4b1NTamtsd1pZaDVVZXRIellmU3IrSXRZR0R3N0xmRHJP?=
 =?utf-8?B?ZStURklDRFREN0Jhc29sbTFGZHErSDJNdlZVaHB5M1F4MENwM3l2UW9zelhC?=
 =?utf-8?B?MzFYbVZyK1dFOEJuK0VLKytrTTc3T1hYSTdIU3lEZkhIZlhoTVF2MW44VjJj?=
 =?utf-8?B?bFhGaDRjQnhDNFBBRC9VNWFrN2k1QXllUnQ3K1AxNkQ1OUl6SE9ONzk1UDhw?=
 =?utf-8?B?VERqa2NRaEtxTHRJeS9FNXRUMWlNMVlRelVHcGVOeVlVOEJRUDVxVUVmTnh2?=
 =?utf-8?B?M1Q5c3N5TCtoZDBYT2t2NngrNzZmUnVnWUpXSTZRcGZBR1lSRGFFKy83YmJF?=
 =?utf-8?B?MWt2bVFmeDl4WjU3ZVA1ZFVZajhVeTUxTTFLL3hoajNtajRTZHZEdXRZTCtQ?=
 =?utf-8?B?eWVXYW9vKzZKL2c4UDRJU2g2VCt0VkV0ME5neC9uWTk3MXlPd1A0VitUSEU4?=
 =?utf-8?B?N2FMVGIyWlZHcjBzaHcybUk0YzlYTlo3aHJIMDNHWDQ5Z2JOejJkWFpoNDM1?=
 =?utf-8?B?NlNiSzRyYnRlWGVxSDBMeXZ5N0N6ZUhJQ1BsWW81eFU4ZUZubFRoODhleUk4?=
 =?utf-8?B?Q0x6c2RVZDIzRW9QSDd5N0UzeElwakljQVNBUGRtcFArTWFWdXQvR1NMN0xN?=
 =?utf-8?B?MitiRVU0NXkralNaeEx4TU4zNXpMTEpuZkNIeDBpSExwUEZvOGd4VmtYbGVV?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eda0cb8d-cd40-484f-c8c1-08dbef389be9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 11:04:21.8007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HqsRXrdhX1AWnmCS1cJl4xmtAYlfaL0jhtpOgFCCPGpEB/dGy3BAmDxSOCMCq2cIDJQ5N5e3O/ds03Gt3yxMducGTVo1QnNOdn6+v6l5BYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display/: Add Read/Write
 support for Adaptive Sync SDP
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


On 11/23/2023 7:32 PM, Mitul Golani wrote:
> Add the necessary structures and functions to handle reading and
> unpacking Adaptive Sync Secondary Data Packets. Also add support
> to write and pack AS SDP.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |   1 +
>   drivers/gpu/drm/i915/display/intel_dp.c       | 118 +++++++++++++++++-
>   2 files changed, 114 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9a44350ba05d..7d87923f63af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1325,6 +1325,7 @@ struct intel_crtc_state {
>   		union hdmi_infoframe hdmi;
>   		union hdmi_infoframe drm;
>   		struct drm_dp_vsc_sdp vsc;
> +		struct drm_dp_as_sdp  async;
>   	} infoframes;
>   
>   	u8 eld[MAX_ELD_BYTES];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1422c2370269..39624746d612 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -94,6 +94,8 @@
>   #define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
>   #define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
>   
> +#define AS_SDP_ENABLE					REG_BIT(2)
> +#define AS_SDP_OP_MODE					REG_GENMASK(1, 0)
>   
>   /* Constants for DP DSC configurations */
>   static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
> @@ -4113,6 +4115,42 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *async,
> +				    struct dp_sdp *sdp, size_t size)
> +{
> +	size_t length = sizeof(struct dp_sdp);
> +
> +	if (size < length)
> +		return -ENOSPC;
> +
> +	memset(sdp, 0, size);
> +
> +	/* Prepare AS (Adaptive Sync) VSC Header */
> +	sdp->sdp_header.HB0 = 0;
> +	sdp->sdp_header.HB1 = async->sdp_type;
> +	sdp->sdp_header.HB2 = 0x02;
> +	sdp->sdp_header.HB3 = async->length;
> +
> +	/* Fill AS (Adaptive Sync) SDP Payload */
> +	if ((sdp->db[0] & 0x03) == 0) {
> +		sdp->db[3] = 0;
> +		sdp->db[4] &= 0xFC;
> +	}
> +
> +	sdp->db[1] = async->vmin & 0xFF;
> +	sdp->db[2] = (async->vmin >> 8) & 0xF;
> +	sdp->db[17] = (async->vmin >> 8) & 0xFF;
> +	sdp->db[18] = async->vmax & 0xFF;
> +	sdp->db[19] = (async->vmax >> 8) & 0xFF;
> +	sdp->db[20] = async->target_rr & 0xFF;
> +	sdp->db[21] = (async->target_rr >> 8) & 0xFF;
> +	sdp->db[22] = async->duration_incr_ms;
> +	sdp->db[23] = async->duration_decr_ms;
> +	sdp->db[24] = async->operation_mode;

This doesnt look correct, DB9-31 are supposed to be 0, am  I missing 
something? Can you re-check this?


> +
> +	return length;
> +}
> +
>   static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
>   				     struct dp_sdp *sdp, size_t size)
>   {
> @@ -4280,6 +4318,10 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>   							       &crtc_state->infoframes.drm.drm,
>   							       &sdp, sizeof(sdp));
>   		break;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		len = intel_dp_as_sdp_pack(&crtc_state->infoframes.async, &sdp,
> +					   sizeof(sdp));
> +		break;

The function intel_write_dp_sdp with type DP_SDP_ADAPTIVE_SYNC needs to 
be called from intel_dp_set_infoframes.

I see this is missing, perhaps to be added as last patch.


>   	default:
>   		MISSING_CASE(type);
>   		return;
> @@ -4342,6 +4384,44 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>   	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
>   }
>   
> +/*
> + * This function is to unpack AS SDP Packet
> + */
> +static
> +int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *async,
> +			   const void *buffer, size_t size)
> +{
> +	const struct dp_sdp *sdp = buffer;
> +
> +	if (size < sizeof(struct dp_sdp))
> +		return -EINVAL;
> +
> +	memset(async, 0, sizeof(*async));
> +
> +	if (sdp->sdp_header.HB0 != 0)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
> +		return -EINVAL;
> +
> +	if (sdp->sdp_header.HB2 != 0x02)
> +		return -EINVAL;
> +
> +	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
> +		return -EINVAL;
> +
> +	if (sdp->db[0] != (AS_SDP_ENABLE | AS_SDP_OP_MODE))
> +		return -EINVAL;
> +
> +	async->vmin = ((u64)sdp->db[2] << 32) | (u64)sdp->db[1];
> +	async->vmax = 0;
> +	async->target_rr = 0;
> +	async->duration_incr_ms = 0;
> +	async->duration_decr_ms = 0;
> +
> +	return 0;
> +}
> +
>   static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   				   const void *buffer, size_t size)
>   {
> @@ -4412,12 +4492,35 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   	return 0;
>   }
>   
> +/*
> + * This function to read registers to fetch packets
> + */
> +static int
> +intel_read_dp_as_metadata_infoframe_sdp(struct intel_encoder *encoder,
> +					struct intel_crtc_state *crtc_state,
> +					struct drm_dp_as_sdp *async)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	unsigned int type = DP_SDP_ADAPTIVE_SYNC;
> +	struct dp_sdp sdp = {};
> +	int ret;
> +
> +	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
> +				 sizeof(sdp));
> +
> +	ret = intel_dp_as_sdp_unpack(async, &sdp, sizeof(sdp));
> +	if (ret)
> +		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP AS SDP\n");
> +
> +	return ret;
> +}
> +
>   static int
>   intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infoframe,
>   					   const void *buffer, size_t size)
>   {
>   	int ret;
> -
>   	const struct dp_sdp *sdp = buffer;
>   
>   	if (size < sizeof(struct dp_sdp))
> @@ -4484,9 +4587,10 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
>   		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP VSC SDP\n");
>   }
>   
> -static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encoder,
> -						     struct intel_crtc_state *crtc_state,
> -						     struct hdmi_drm_infoframe *drm_infoframe)
> +static void
> +intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encoder,
> +					 struct intel_crtc_state *crtc_state,
> +					 struct hdmi_drm_infoframe *drm_infoframe)
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> @@ -4495,7 +4599,7 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
>   	int ret;
>   
>   	if ((crtc_state->infoframes.enable &
> -	    intel_hdmi_infoframe_enable(type)) == 0)
> +	     intel_hdmi_infoframe_enable(type)) == 0)
>   		return;
>   
>   	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
> @@ -4522,6 +4626,10 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>   		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
>   							 &crtc_state->infoframes.drm.drm);
>   		break;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		intel_read_dp_as_metadata_infoframe_sdp(encoder, crtc_state,
> +							&crtc_state->infoframes.async);
> +	break;


Similar to the write case, call to intel_read_dp_sdp with 
DP_SDP_ADAPTIVE_SYNC is missing from intel_ddi_get_config.

So need a patch to actually call read and writes.

Regards,

Ankit

>   	default:
>   		MISSING_CASE(type);
>   		break;
