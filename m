Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8AD27F9E21
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 12:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CEF10E23D;
	Mon, 27 Nov 2023 11:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D97B10E23D
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 11:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701083107; x=1732619107;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=KvaHgmzQaf1C8+H0d/tPVl+WwuocJfHDU/xizCUoIaw=;
 b=BzT4mn7TV8mkk17EVtZI1xLj5ctH33X1xkaP9SHr+hldGmjIhAG8XHZA
 zgxzppRHLuUp+6FbNHneqGKk1nHQbV88Sy8kK6i932XsK/sqQsXIKFnwI
 EAcedkLWaKe0xefwMHMYTuicqPIhlBrqTM/e7gGiKQd3369CQ+WMl2ENp
 1JO1ojCUvwPGBJtZKLgUYxi7oWT3I0fNDgTAfbhDamYnrUPTTDOOeUUMn
 zTczACXU6DSdKiEr4GhZotoQGL+TtfFhc6Qb6DWlnfZJ9XwyP9F/3xnI+
 cXglGiGORnCgncSNkfIcSg8ihd0opP2K6kPhzviU0dIU59f4TzW5hRZrY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="478870666"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; 
 d="scan'208,217";a="478870666"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 03:04:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10906"; a="744535858"
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; 
 d="scan'208,217";a="744535858"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 03:04:48 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:48 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 03:04:47 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 03:04:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxgBLe/SNN1qS2ZaYpcGe632BB50uL6UIwxhVuQ/PaVEKz++Con3CcGuvo2qSEVzPtHiLPZWVq3oXi17JOQDlsqMxVyF1Lbbf+5e0xDVhD93HB+QqKxcF79oLAb+nuvZ1d7jbTAAP2Gu3hEv623MO3uqBhrb1u0LaL3z/3AVNLUe8NxGYa2P3TdOJdXYZcak6orlAe48u7IgnWmrrNMgEcLjhqDQJc6tD8bd3Bo1pEBYM73632J3PAU5HEL9x2/D/8YN0BcudnXFTKUGzpeyEsZorKLXMZwy24Rgf8JSOtMsxiN1VQvVTiDwLXAmOo54MIQ5tTii7g69rD8tm4AJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wNX9XrwHGaCEiR02QiZGX4qHoRBeJoQZRzzw9LQrGM=;
 b=nEQNOMrus7DjcPHAaSkdasrdxU4DwP59ajXCdJGBUL6e7VdtbgoFiFtMw9K1axGatXzSU7ZoBfMRZzqlf+adxB8x4BKTJA/Ou/R4NwP4G7J4UeBei+fr++VFre+azZ1izkOmyBTVv0txOnbk53ExwDsFqo/XJxNGxG2Ru5gmhJtVpINmS3JxPqPu/FtMdRiP9MBEZaRKeMOZfJezbmdVDxxePOJX2GFBOIJyPICB2ZQI8+k2vhJEbnKzIRfwX2TIug5GPlJEYkdRUCXa/BaooK/ENSkQkPZboD+A4iTv/VcJxpx0sFEr+VY/GqUCeMbN7PmI5owZdxyVEVaAp++dUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4791.namprd11.prod.outlook.com (2603:10b6:510:43::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Mon, 27 Nov
 2023 11:04:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d59d:536b:8f8:26c9%4]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 11:04:44 +0000
Content-Type: multipart/alternative;
 boundary="------------0jrSC1pwaKKPKS2maXo65B5g"
Message-ID: <f8371f4c-18b1-465a-b4be-7dd683fb0ed0@intel.com>
Date: Mon, 27 Nov 2023 16:34:42 +0530
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com>
X-ClientProxiedBy: PN3PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4791:EE_
X-MS-Office365-Filtering-Correlation-Id: a37808cc-31d9-4f62-86fa-08dbef38a987
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z7TYXgn96bfuXrj0Qqji/kd48JzDOJLymi2c9bIBtUlxN7Rodazue16QCkIOBh7r+1FjSdWc4Esp9X6TOLmxJIUjG6GO8W/Qw6kebapU2w7Jn32rdvDUEE0zePeoK/84MBSuYs+aQUE1NpK+oCoiQ8SK6ASgguBZ2F1c34NQlLmXgYeN3rXVu0fpJPjYAV7IAGDGPGrdh1XIxYPxL1U38H2LiDRxP0ORJWDhreQp8BV2P5wNOnzW08S9nC4pUJ8z4Py7c6NXA+XNCUoy6mnzGP7SCtGs4Ppwqe97fdzZ7t/QejQHusyKqmHGZ/5TMbcwxhojeXNcpv1UJBfD1NtyixZ74vcyvVpN3u1t6vthubG0FImvEUp+uE/pph6InBCD1kavErYIRNWqEzmubMsiftdqJWAHMMd+6U1qpiBRFWBu2/WuAoQE85yB7YIKjik7Q2fIzmeRYcK9PVkZj8zptRpGCAxGkAoNlP7VO+SUY5xNwIL1ak3d43DKSRR5P6HItH0gg5Lap4f3DhzOzIXNmRhZjUdVC1N4T1XNzFT1s60aQPjkZ0GPZ/s0lukwwCYXqh3CNUPEBx5m3CnWM1dTxHjP3taGjD5ZjeJkXBCAMEbjao5FXcszFHqEMSivgsVvg5Pgith5T9suR1w92KYIZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(5660300002)(2906002)(30864003)(4326008)(8676002)(8936002)(41300700001)(66946007)(66476007)(66556008)(316002)(6486002)(26005)(478600001)(6512007)(31686004)(107886003)(2616005)(6506007)(53546011)(55236004)(33964004)(83380400001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDF4a0tmZzZxeHNUbXdIekoyditTdEYxZXZlMndLb0VGa3M5UU1LT3IrR1dk?=
 =?utf-8?B?SFFsRjdkT1JUSmtBV05lRzhrdmpIR2lLcDhCd3RBUnhob2F2WFlVTERweUIz?=
 =?utf-8?B?MVFieEFHblJydVNObFczZ3NwbG5KVzdIbGs5eDFrbTVxbGttWmR0ZitRNEF1?=
 =?utf-8?B?MVErSTNibytOemhla3ZZOXljTEorK0pFdmtkZjFURW1tbktlUnR4dXQwNlFv?=
 =?utf-8?B?SlBpYkl1WUtHSm41cjBDeCtVYkplZ1B3OHQ2Z3N0MWhNamFUdUYzeCtka2RF?=
 =?utf-8?B?WklTaEx0MDJhVnhEaFF3VE1yZHJieC9lellpa3prL2NuNkFHYUFVU1hFTUJS?=
 =?utf-8?B?TE14amRHOTlQdWR4ZFByeDVma0FGbUhHektMem44MURMYUl4ZXBjQnUxbTB1?=
 =?utf-8?B?T0JpaFl4SUE5Q3J2ZktPMHhWRm8wVmRFeWFsSGhKazJIUko5dm9HUEpmTm9y?=
 =?utf-8?B?YmpiVURaektOQjJDV3d5bGtwbmMxVXpPR3FUSXdpckVGYUFWaWtEQ3F0MGZE?=
 =?utf-8?B?b0FKLy9rd2psR2ZrQ2FPbEdodXVKRXVmWUc4dXB0N1BXd0JrL3dnbEFxZkNl?=
 =?utf-8?B?ZEZ2ZGQyN1BQTlB2a0g3b0NKWTVBK05VUk5IWDFyMUZqdTdXQll0K1lOb1dB?=
 =?utf-8?B?WGJ4VkFISi9ZZm1NWlZ6OVdmUXUwdll1LzZ1LzBKeVp1U281WlZIa3JFTC9X?=
 =?utf-8?B?WTgvcGtlbTB4ZlhRUUJpWWFmLy8vNy85c3dsemtnb25DMzliendLcVg2M0tH?=
 =?utf-8?B?ckc2RXExUVZjTDNGbis4QXZNelBpalZZWTJxcGFlaEc5eS9oT2FTRmkxNWtL?=
 =?utf-8?B?TmlLalR3UWpRUVI4aHREZTN0QzBhVlNoRllkUXpCNDZ2RWZKVkJBUE9YWHA4?=
 =?utf-8?B?MmY4QUlocGZTeEFlMm55T29YSExURE5xdFB6NGk3OXpqZUZyUm9Wb0ZCOTBM?=
 =?utf-8?B?dG5pZTBCeHVTejRaVy93UXh3NkZQQXlZdVVJTUg2dVgwcXljT3lYdUFlRndF?=
 =?utf-8?B?QjBUUzFSN1NqTG9VakhacWxaMnErK2JFMTNycEtySnZuc0YyVFZ4Vy9jMnBN?=
 =?utf-8?B?WHZVd0wzVTVhM1A4OG4ydXJRMW5UbDRNMThHaUFYOE1UOWVWTnVpMW1Nd1NK?=
 =?utf-8?B?THc1ODBRbmYzMm9iZHVudXBxVEFvN3lzZFFZVjh3UVJlTDVJOUxIQ0l0VXhG?=
 =?utf-8?B?SWpxdzNETUZpQUZjSmRwdFVTZFJYbFVEOWxNQU5vSWRjY0dZaDdQMUNnR1JM?=
 =?utf-8?B?c1pSS1lNTVNVdE1nNFVjcmNQc1pHUnBxWVhWYUdsVEx2QmlwWW9FUCtpK2lV?=
 =?utf-8?B?S01xdlZ6aHJPaGhhUXJzUGx2cE1rZGhNdXplVVVOWHV0OXJKZ2wvSWpUaXVZ?=
 =?utf-8?B?TGV1dDcwVm1PN0pKaE8vRXQxUktkWFhKbmFhNmltc3RRbkNpdDJNdnpRSE9o?=
 =?utf-8?B?YjBtRHpMbkRoTmJzKyt1UC9yWVl0NzAxQjZrTm0vMVIwTHVTNkJPYTZpODFk?=
 =?utf-8?B?Z0lOaHUvazlBOFJ4ZWdFNCtkQzl3Slp5NzJ3RnRnY242eDgvRnpWenNDcnRn?=
 =?utf-8?B?MFp1SC83b2twcnhCMkhVZ3U0UEZ6Y3lja0lPMVNZSTBUcWorbE5CZHRPWVJX?=
 =?utf-8?B?RUxLMWdzMGtxcmdYQzc1MlczNGZkV0VONlRLWGh2RGl5cHZXYUVKZkJHZHlH?=
 =?utf-8?B?VVFlWW5ScVpXZkpzK29MNnVoTTl1bnJyWWJtRkNtbmVEdWxJVzVheDFuZTJB?=
 =?utf-8?B?aHlNaCtBOWk3ZmEwK25ZSmJNNVphOFArS1BObEhUcitjK2llNXNsdjFPblUw?=
 =?utf-8?B?bm5QbFduNkkzOWk5NFQ0dEZhZUxQK0NSYWoyTnB1c1JqWkVLeHBEWU03aVRl?=
 =?utf-8?B?cWlnTUhtVDFTNW4yeWg5YUphV2owREQ3K0hGQ09rSjJ6ZkcyR3lEamw2WHdI?=
 =?utf-8?B?NGd4WlpuK2NkRXVCTHZOOUVhdGJBcU4yQnVpbXZ0ZTJwSnhRQ2dtZVFUTmpt?=
 =?utf-8?B?S3dCT2ZVUkxUK1lnVDNkS1QyU242OGdXZ3dTcVB2Y2o0dWNOWm5wcEY4bHN5?=
 =?utf-8?B?RDB5WmJlQXJmM0NTVlprTmg3TWI2Mm4zSkpiKzlYNVdDWEY3RGppQlo4L3Nu?=
 =?utf-8?B?QnNWeEVUMlg4Sk4wK2VpMG1WMDM1U2gyejMrR3dLcG1iVUlsM2RxUnJsR0xt?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a37808cc-31d9-4f62-86fa-08dbef38a987
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 11:04:44.7692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YM3WvxnfgqDw/UOlzLVV82XWUqk7qD0SfH87AEeBe34bjgOoNY+62AqNPFNOt7mHy67REtL2Wm0fc4U/hXKyvr5t1zwP8eaG+h2Z2nkZDOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display/:Compute and enable
 daptive Sync SDP
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

--------------0jrSC1pwaKKPKS2maXo65B5g
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Typo in the Subject: s/daptive/adaptive/


On 11/23/2023 7:32 PM, Mitul Golani wrote:
> Add necessary functions and register definitions to enable
> and compute AS SDP data. The new `intel_dp_compute_as_sdp`
> function computes AS SDP values based on the display
> configuration, ensuring proper handling of Variable Refresh
> Rate (VRR).
>
> Signed-off-by: Mitul Golani<mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 21 +++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 11 +++++++++--
>   drivers/gpu/drm/i915/i915_reg.h           |  6 ++++++
>   3 files changed, 36 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 39624746d612..b3eb2d342a99 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2629,6 +2629,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>   					 &crtc_state->infoframes.vsc);
>   }
>   
> +static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
> +				    struct intel_crtc_state *crtc_state,
> +				     const struct drm_connector_state *conn_state)
> +{
> +	struct drm_dp_as_sdp *async = &crtc_state->infoframes.async;
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +	int vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
> +
> +	if (intel_vrr_is_in_range(connector, vrefresh))
> +		return;
> +
> +	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);

To make this work, need to add DP_SDP_ADAPTIVE_SYNC to 
infoframe_type_to_idx().


> +	async->sdp_type = DP_SDP_ADAPTIVE_SYNC;
> +	async->length = 0x9;
> +	async->vmin = crtc_state->vrr.vmin;
> +	async->vmax = crtc_state->vrr.vmax;
> +	async->target_rr = 0;
> +	async->operation_mode = 0x0;
> +}
> +
>   void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
>   				  const struct intel_crtc_state *crtc_state,
>   				  const struct drm_connector_state *conn_state,
> @@ -2965,6 +2985,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>   	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
>   	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> +	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);


IMHO, This compute part and read and write calls to 
intel_read/write_dp_sdp should be in separate patch

>   	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
>   
>   	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index ab18cfc19c0a..abea359985ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -136,6 +136,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
>   		return VIDEO_DIP_ENABLE_GMP_HSW;
>   	case DP_SDP_VSC:
>   		return VIDEO_DIP_ENABLE_VSC_HSW;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return VIDEO_DIP_ENABLE_AS_HSW;
>   	case DP_SDP_PPS:
>   		return VDIP_ENABLE_PPS;
>   	case HDMI_INFOFRAME_TYPE_AVI:
> @@ -163,6 +165,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
>   		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
>   	case DP_SDP_VSC:
>   		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return HSW_TVIDEO_DIP_ASYNC_DATA(cpu_transcoder, i);
>   	case DP_SDP_PPS:
>   		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
>   	case HDMI_INFOFRAME_TYPE_AVI:
> @@ -185,6 +189,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
>   	switch (type) {
>   	case DP_SDP_VSC:
>   		return VIDEO_DIP_VSC_DATA_SIZE;
> +	case DP_SDP_ADAPTIVE_SYNC:
> +		return VIDEO_DIP_ASYNC_DATA_SIZE;
>   	case DP_SDP_PPS:
>   		return VIDEO_DIP_PPS_DATA_SIZE;
>   	case HDMI_PACKET_TYPE_GAMUT_METADATA:
> @@ -555,7 +561,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
>   
>   	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
>   		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
> -		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
> +		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
> +		VIDEO_DIP_ENABLE_AS_HSW);
>   
>   	if (DISPLAY_VER(dev_priv) >= 10)
>   		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
> @@ -1209,7 +1216,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
>   	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
>   		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
>   		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
> -		 VIDEO_DIP_ENABLE_DRM_GLK);
> +		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
>   
>   	if (!enable) {
>   		intel_de_write(dev_priv, reg, val);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 27dc903f0553..81d64c428693 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2312,6 +2312,7 @@
>    * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
>    * of the infoframe structure specified by CEA-861. */
>   #define   VIDEO_DIP_DATA_SIZE	32
> +#define   VIDEO_DIP_ASYNC_DATA_SIZE	32
>   #define   VIDEO_DIP_GMP_DATA_SIZE	36
>   #define   VIDEO_DIP_VSC_DATA_SIZE	36
>   #define   VIDEO_DIP_PPS_DATA_SIZE	132
> @@ -2344,6 +2345,7 @@
>   #define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
>   #define   VSC_DIP_SW_HEA_DATA		(3 << 25)
>   #define   VDIP_ENABLE_PPS		(1 << 24)
> +#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)
This is defined for ADLP+
>   #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
>   #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
>   #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 << 12)
> @@ -5038,6 +5040,7 @@
>   #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
>   #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
>   #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
> +#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484

These are defined from ADL onwards.

Also indentation seems to be off.


Regards,

Ankit

>   #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
>   #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
>   #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
> @@ -5052,6 +5055,7 @@
>   #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
>   #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
>   #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
> +#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
>   #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
>   #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
>   #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
> @@ -5078,6 +5082,8 @@
>   #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
>   #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
>   #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
> +#define HSW_TVIDEO_DIP_ASYNC_DATA(trans, i)	_MMIO_TRANS2(trans,\
> +							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
>   #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
>   #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
>   #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
--------------0jrSC1pwaKKPKS2maXo65B5g
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Typo in the Subject: s/daptive/adaptive/</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/23/2023 7:32 PM, Mitul Golani
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com">
      <pre class="moz-quote-pre" wrap="">Add necessary functions and register definitions to enable
and compute AS SDP data. The new `intel_dp_compute_as_sdp`
function computes AS SDP values based on the display
configuration, ensuring proper handling of Variable Refresh
Rate (VRR).

Signed-off-by: Mitul Golani <a class="moz-txt-link-rfc2396E" href="mailto:mitulkumar.ajitkumar.golani@intel.com">&lt;mitulkumar.ajitkumar.golani@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 +++++++++--
 drivers/gpu/drm/i915/i915_reg.h           |  6 ++++++
 3 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 39624746d612..b3eb2d342a99 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2629,6 +2629,26 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 					 &amp;crtc_state-&gt;infoframes.vsc);
 }
 
+static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
+				    struct intel_crtc_state *crtc_state,
+				     const struct drm_connector_state *conn_state)
+{
+	struct drm_dp_as_sdp *async = &amp;crtc_state-&gt;infoframes.async;
+	struct intel_connector *connector = intel_dp-&gt;attached_connector;
+	int vrefresh = drm_mode_vrefresh(&amp;crtc_state-&gt;hw.adjusted_mode);
+
+	if (intel_vrr_is_in_range(connector, vrefresh))
+		return;
+
+	crtc_state-&gt;infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);</pre>
    </blockquote>
    <p>To make this work, need to add DP_SDP_ADAPTIVE_SYNC to
      infoframe_type_to_idx().</p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com">
      <pre class="moz-quote-pre" wrap="">
+	async-&gt;sdp_type = DP_SDP_ADAPTIVE_SYNC;
+	async-&gt;length = 0x9;
+	async-&gt;vmin = crtc_state-&gt;vrr.vmin;
+	async-&gt;vmax = crtc_state-&gt;vrr.vmax;
+	async-&gt;target_rr = 0;
+	async-&gt;operation_mode = 0x0;
+}
+
 void intel_dp_compute_psr_vsc_sdp(struct intel_dp *intel_dp,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state,
@@ -2965,6 +2985,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp_x16);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+	intel_dp_compute_as_sdp(intel_dp, pipe_config, conn_state);</pre>
    </blockquote>
    <p><br>
    </p>
    <p>IMHO, This compute part and read and write calls to <span style="white-space: pre-wrap">intel_read/write_dp_sdp should be in separate patch</span></p>
    <blockquote type="cite" cite="mid:20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com">
      <pre class="moz-quote-pre" wrap="">
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ab18cfc19c0a..abea359985ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -136,6 +136,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
 		return VIDEO_DIP_ENABLE_GMP_HSW;
 	case DP_SDP_VSC:
 		return VIDEO_DIP_ENABLE_VSC_HSW;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ENABLE_AS_HSW;
 	case DP_SDP_PPS:
 		return VDIP_ENABLE_PPS;
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -163,6 +165,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
+	case DP_SDP_ADAPTIVE_SYNC:
+		return HSW_TVIDEO_DIP_ASYNC_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
 		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -185,6 +189,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	switch (type) {
 	case DP_SDP_VSC:
 		return VIDEO_DIP_VSC_DATA_SIZE;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ASYNC_DATA_SIZE;
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
@@ -555,7 +561,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
-		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
+		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
+		VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (DISPLAY_VER(dev_priv) &gt;= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
@@ -1209,7 +1216,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 	val &amp;= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
-		 VIDEO_DIP_ENABLE_DRM_GLK);
+		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (!enable) {
 		intel_de_write(dev_priv, reg, val);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..81d64c428693 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2312,6 +2312,7 @@
  * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
  * of the infoframe structure specified by CEA-861. */
 #define   VIDEO_DIP_DATA_SIZE	32
+#define   VIDEO_DIP_ASYNC_DATA_SIZE	32
 #define   VIDEO_DIP_GMP_DATA_SIZE	36
 #define   VIDEO_DIP_VSC_DATA_SIZE	36
 #define   VIDEO_DIP_PPS_DATA_SIZE	132
@@ -2344,6 +2345,7 @@
 #define   VSC_DIP_HW_DATA_SW_HEA	(2 &lt;&lt; 25)
 #define   VSC_DIP_SW_HEA_DATA		(3 &lt;&lt; 25)
 #define   VDIP_ENABLE_PPS		(1 &lt;&lt; 24)
+#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)</pre>
    </blockquote>
    This is defined for ADLP+<br>
    <blockquote type="cite" cite="mid:20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com">
      <pre class="moz-quote-pre" wrap="">
 #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 &lt;&lt; 20)
 #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 &lt;&lt; 16)
 #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 &lt;&lt; 12)
@@ -5038,6 +5040,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
 #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484</pre>
    </blockquote>
    <p>These are defined from ADL onwards.<br>
    </p>
    <p>Also indentation seems to be off.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit<br>
    </p>
    <blockquote type="cite" cite="mid:20231123140244.4183869-4-mitulkumar.ajitkumar.golani@intel.com">
      <pre class="moz-quote-pre" wrap="">
 #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
 #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
 #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
@@ -5052,6 +5055,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
 #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
 #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
 #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
 #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
 #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
@@ -5078,6 +5082,8 @@
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_ASYNC_DATA(trans, i)	_MMIO_TRANS2(trans,\
+							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
</pre>
    </blockquote>
  </body>
</html>

--------------0jrSC1pwaKKPKS2maXo65B5g--
