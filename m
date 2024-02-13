Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E40853FF9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 00:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFE510E1CC;
	Tue, 13 Feb 2024 23:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5JwYQfJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710EA10E1CC;
 Tue, 13 Feb 2024 23:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707866529; x=1739402529;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UOA8akzEG7MtLGM4SEBKfgYBL5cxkmXJBq7Tgl6qoww=;
 b=V5JwYQfJjtLPK1YLLj3K54G261vwnYlZNhEbpNfOaPo4QbjedGFQzD2J
 TCOaGvVcJHXUzXXgDsc6y8jYaiMwtblGnyJ1IrHsuksEhm7cegPmZHiVE
 Aeg9pUTOQSjhXwYM/H2Ad86bLONT3mip1FfmbUx0rN8JLAZkfC3TmJHpR
 jMmxvEnJf2boIqpSAwRy/K4W531+lsLzEDp5w28cSZxwrKP3E1tuzotsl
 nYHgHx29dukSgFYYj9KYHSU3q0DSXNB+pJlFyZ5D6Zkn5rUZJ1MZTp09A
 vWkbgpHSvYmEDQidB+uCBheDZwMzX3pjx0tho3jpTMUsOdLvWYR3/woC2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="396333397"
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="396333397"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 15:22:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="34085218"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 15:22:08 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 15:22:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 15:22:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 15:22:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 15:22:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kab/0yJ7IZLEn9IQXrIWnDrUkWQbtpjqz2pvhtjNJ9IRpCnT3R15IYFjlRE6IO0h/CVJzhLWCAk6+/+v8N2y8OF0sD9xT9Sr4EemZMbY1Ojk2OKUaaIURBJB6RiUDWW/2QDdX7ANDerQr5S/9EH2d9CK9Prgi+/vW2rQtftQnmDHziNYYDJtD4rRevtCd7Mnop8vFLc9apix3mta59fTQrTtKFw5+tWf0XUS7ks3/gRkIQKYk9pDriyAlDIXJ8u1p6iGfK9xNo9U7dQwD/zc6qYxymn6njLCCSZGTZAE9a8jusGi+AlClhyvjzf568VB/j+xRmfGFf88Ns/ZnKltBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMgBRc9z5enzpPRDa31Y+cuKT1s4//R7IcKkuv0Ibc0=;
 b=XAUnkpcZ4uht/r0GvsV76Llht13drcasDpi+mwyoaF48baN97A+DREO5l00WXkLFt9mPyEamDbAQRM8Vm9QliqnfZlWwuzKLWHxOf/jBe4uffsfSviDyz379Rh9Gi3u5KNp1kDS7A8uIEIvWPHdi3kCTRs217ezJ1V5KAQ1eEl2xD8ldzkIhj1AC51iohCq0Yv1ETIQvSr6aFFx4M1A9HA+I+JoHkywTPPlHUD5Cj+TqhCz+Sg858g7Chk5m2B2j3MRc6gI+pAKTUyEyAljk9B8S71Q54Qcc1UJa+CTWikugpldNY9VlASCY9BHSAcLpnqz3gve1vFBBodAmLHVM7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ2PR11MB8322.namprd11.prod.outlook.com (2603:10b6:a03:549::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 23:22:05 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 23:22:05 +0000
Message-ID: <863431e0-1897-4d58-8bca-866b8c90cc54@intel.com>
Date: Tue, 13 Feb 2024 15:22:04 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/xe: Use gsc_proxy_init_done to check proxy status
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-4-suraj.kandpal@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240209101412.1326176-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::19) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ2PR11MB8322:EE_
X-MS-Office365-Filtering-Correlation-Id: b81f7bea-a062-4588-099d-08dc2cea9787
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GWzybL2xmvKK6kXYYSdCPXlpFPriP7q9zNpnfKxhrVzfRHnoJAV+CDg/Grfelh/udMmJOxocyH1shrAOwvPg+5sMVPZIxU90sOKeX0LoiTPrLYTeOW8998hf4l4T3WaRO9Z1ut0YWjsplyNQVdki8JDWGVPgQs8JnOsGtqDt8F5lHk1YSMdKwpCNPBLRoz9aYedcX9xIFP2uc8YohcT2+iS+pwC/NTwpvw4OfmpgH4w15ysuDKCmPzwZLbdonnAEfDe2DBIVaF8BWCNlZPxs2JADNZAXh8KKIaneR49IpGnePaVAdK6HVAh1kELQxkvw84OavfQi23GRXde96rMd/OpGxy15spOqeYd8qyPqz7KDGGJccux+xNmTR+v4lLpLaH5zWrHPh7HLcKH1SS8YS7FMlx/U/Ymfb+DKoQQ+sO/P3WFs39XRJX79kHDSF6oRU5e4uzYdvMbtL87zkC5JQdiZ6YkU6GMmNjxn+cqsWkZKI/1fvXI55J7UJtQrSWf9w6pEYzKO/ReazZmxMZAOTCcuQjFfCvXITG4yaJoyJbwkgOPVFlsEmEhRGg8SxOrR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(36756003)(31686004)(2906002)(86362001)(31696002)(82960400001)(450100002)(8676002)(8936002)(478600001)(6512007)(5660300002)(6486002)(6506007)(53546011)(38100700002)(316002)(26005)(66556008)(41300700001)(66946007)(66476007)(2616005)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WTZJT3NTb2pZZjFtdWFueGVrODlRMTVTeUhUaXJDVFZyTkNpdlh1ZWtsMzcv?=
 =?utf-8?B?MldtTEpMeWI1YjdEMzJwMmVCVnZ6L0lBUnAyNjAvZDJvV0hZZm5HUEZMQyth?=
 =?utf-8?B?SG5QbzZaN1dQSkRia1E3V1NKaGZ3bEZ3Snp5Z0h5SUhUUURvdWNYZUZzOGd0?=
 =?utf-8?B?aU82TGYxOEVGNmx0NEpxb05sdy81ckdyVHBhR0VnR1VKdmRoRmFjSmlYRjFm?=
 =?utf-8?B?SkhDTjVRbzcrN0FoSFhSNU9LNnlYdDR6bDNuVzVwY2hqOEN1TURndG5mdDk4?=
 =?utf-8?B?dzdaL2x2eER6T0k5cDRoZWZwUWhPR2xIbXpBZkk5NnkweFVMMS9lSUswWFlK?=
 =?utf-8?B?VExKbmx2R3Znc1o2bnRhQXRYTU1rTnZmbUxKNFBwV1ZlcDRlUmtrMU9OV3Jm?=
 =?utf-8?B?eGNCejVkUUFnaU1rR0tCQ2l1dytPYWd0NGMxeW1xQnFZOXllODRnTy9ob3BN?=
 =?utf-8?B?eVNZdG9wVHlPOWUvVG5tMnFtbWtZelI1Qk5pWWJhWlZVbkxCQ0hxaWttN1Fx?=
 =?utf-8?B?OUg2V3Nrc3cvQlJqUVlnaFZ4M2FVdktydmtWVzJqNVo1S2M4MUZJMEpoQ09u?=
 =?utf-8?B?azdWQzdhRThvRm1aUkJtQVFaV2UrUUhVV1lJM3NTSXVZSWE3Rk5HRGZETUMv?=
 =?utf-8?B?aEg4YnVwclFUQmc2eWJCN2FvdGpHQjNueTBMamxrOUFYc2s1YW5XR2ZxWGps?=
 =?utf-8?B?MFdBVkxneVRoYk5FV1NNQ1I0TnVMSzgzUEVEQzRVY1BPK2FqQzQ0YlZoTjZK?=
 =?utf-8?B?MU1ZTGRCeGxkbi8weU1OSXJPM0V2ZnBKNFNpYnd3N1ZjZHlNc1VFYWhvYVFZ?=
 =?utf-8?B?UXpVWWxVUHp5NjRldExPbzVhemFNN3ZyL3N4SmU2K1V4TjZpVGRSKzZucXRm?=
 =?utf-8?B?U0E4bm1ZcDk0K3pmRkxHYkhjbTdyWkV5ZzFvTi9MaitlS1dTZndkWmNkcXRt?=
 =?utf-8?B?aDR5WXRaNGN4RXh3SzZLTk5lRy9kaFhVVG5td094NWdvYlNVVXpreDRpQlYz?=
 =?utf-8?B?NzdXK3IyZW9UajBlb2NxaHJxc1JIN1hmSkc0MHduRE92aWRxd1JCUzVkSnl2?=
 =?utf-8?B?U2FwVmlSQ1NZbDBTN3ErN1BpaElhUjZGMmxDUldwbWcya2djK3pOL2tZT1Yv?=
 =?utf-8?B?SXpVOXpxOG5iOHJhZUI0VlNoNGs4RDQyb0xOYUFMSy9jYjlGZ2drWXVLYVRy?=
 =?utf-8?B?b3hSMTNROVQ5STQ4aEcxdlRheVl4NkJsWnlrNWNYY2kwVlFvdU4yMFlXNHlU?=
 =?utf-8?B?QklsZGlSZnZjTlFCNlBHRkxwdFRIa0VGNkxnL3YvQ3g2UFc4Y1ZGRXd3NVFZ?=
 =?utf-8?B?MWxQSnY4SDhxQzFpeVZRT3pKNE5qb2lUbythWXdzeEZaejRhcUlValpPU3Ez?=
 =?utf-8?B?bHFLbjU3NzlUZGp6WWs3SnM5OCs4M0xCaU5aVEI3VG1XZVl4dDlBeGZPbDJC?=
 =?utf-8?B?cFp2L1RuUjNRQitTUXJXTC9EWVhGMnlvQSsybDUvMFZJaEVqLzBGWUZYMFQv?=
 =?utf-8?B?bmlrdnV2TXZMcVhZQkZoVEZ1bGZ1alBVZysveWtMVnFsMy94TFZielNxcGwr?=
 =?utf-8?B?d0J3UzNFYSt3YjBqSENaSnhmR2V3d3lSa1RRVVJTcjRWcTY3Tm5vUExkQjNI?=
 =?utf-8?B?aGFEN0FiSGJ4TElVcHhPRFhEREIyYWN6S2dqelpzQjFEandyN056VTJ3YWwr?=
 =?utf-8?B?MExqVWx3NXF0VXlXeWNWRmJ6MmFmRlRPelY1eWpyaDgwWnYwZnAreE94OGJh?=
 =?utf-8?B?Ri9NcE9RVFlnYklSUHh1Z2xZK2txZXgzQUVkRG1KdEcxRkN2a0Zxekc5SWV4?=
 =?utf-8?B?Z2NYcTUwamhhNEV4TnVIRmN0K1o3ZEpScnlOR1BBUjFXbVpIV28yUWhjNVN5?=
 =?utf-8?B?dDMrdkMzOXU0RVFicE0wNW9YQnAyb1dZK09SK2tsY3RVaDRpVlpvZVJlWUpN?=
 =?utf-8?B?UURKSFZaN3VBbTdCS1kwS3lFczNVcTA4U3VWTFprUG5PV0FGc0N3OU1QMUJh?=
 =?utf-8?B?Tkt5UU1UbXR6NTZWa2Z3ZElmV0VYK0hTQ3lacHU2ZUluZnp3VGhWU0VxRkxz?=
 =?utf-8?B?TjlSeXVodVFCOU5XclVKTjZqWWNWbDRUUFNYK1YvdEsvT2NUemlJdVZYZVNK?=
 =?utf-8?B?QVFsT2d5aThDMFhLNmJpeTYwdkdXMUxhdHVnQkV3c0k1UWFwdkZNZE84aDVT?=
 =?utf-8?Q?6pKD74D52GIpEOpi6iC98O8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b81f7bea-a062-4588-099d-08dc2cea9787
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 23:22:05.7003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oHdMNZhLy5g2olzCH1zZUdsVNkCWk88c4nkBzIUUq6eCZXCckuEWVhJ1CQQ6UFkK2sDxbZqwXehOcSEvyrwihGSEjiRluDdm2H0LQ2fLh0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8322
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



On 2/9/2024 2:14 AM, Suraj Kandpal wrote:
> Expose gsc_proxy_init_done so that we can check if gsc proxy has
> been initialized or not.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 25 +++++++++++++++++++++++-
>   drivers/gpu/drm/xe/xe_gsc_proxy.c        |  4 ++--
>   drivers/gpu/drm/xe/xe_gsc_proxy.h        |  1 +
>   3 files changed, 27 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 5d1d0054b578..425db3532ce5 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -4,8 +4,12 @@
>    */
>   
>   #include <drm/drm_print.h>
> +
>   #include "intel_hdcp_gsc.h"
>   #include "xe_device_types.h"
> +#include "xe_gt.h"
> +#include "xe_gsc_proxy.h"
> +#include "xe_pm.h"
>   
>   bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
>   {
> @@ -14,7 +18,26 @@ bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
>   
>   bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>   {
> -	return false;
> +	struct xe_tile *tile = xe_device_get_root_tile(xe);
> +	struct xe_gt *gt = tile->media_gt;
> +	bool ret = true;
> +

Sorry for missing this in the previous rev, but I just remembered that 
if the GSC FW is not enabled then the forcewake domain is not 
initialized, which would lead to the forcewake_get throwing an error, so 
we need a check here first:

         if (!xe_uc_fw_is_enabled(&gt->uc.gsc.fw))
                 return false;

With this change:
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> +	xe_pm_runtime_get(xe);
> +	ret = xe_force_wake_get(gt_to_fw(gt), XE_FW_GSC);
> +	if (ret) {
> +		drm_dbg_kms(&xe->drm,
> +			    "failed to get forcewake to check proxy status\n");
> +		ret = false;
> +		goto out;
> +	}
> +
> +	if (!xe_gsc_proxy_init_done(&gt->uc.gsc))
> +		ret = false;
> +
> +	xe_force_wake_put(gt_to_fw(gt), XE_FW_GSC);
> +out:
> +	xe_pm_runtime_put(xe);
> +	return ret;
>   }
>   
>   int intel_hdcp_gsc_init(struct xe_device *xe)
> diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
> index 309ef80e3b95..1ced6b4d4946 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
> +++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
> @@ -66,7 +66,7 @@ static inline struct xe_device *kdev_to_xe(struct device *kdev)
>   	return dev_get_drvdata(kdev);
>   }
>   
> -static bool gsc_proxy_init_done(struct xe_gsc *gsc)
> +bool xe_gsc_proxy_init_done(struct xe_gsc *gsc)
>   {
>   	struct xe_gt *gt = gsc_to_gt(gsc);
>   	u32 fwsts1 = xe_mmio_read32(gt, HECI_FWSTS1(MTL_GSC_HECI1_BASE));
> @@ -528,7 +528,7 @@ int xe_gsc_proxy_start(struct xe_gsc *gsc)
>   	if (err)
>   		return err;
>   
> -	if (!gsc_proxy_init_done(gsc)) {
> +	if (!xe_gsc_proxy_init_done(gsc)) {
>   		xe_gt_err(gsc_to_gt(gsc), "GSC FW reports proxy init not completed\n");
>   		return -EIO;
>   	}
> diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.h b/drivers/gpu/drm/xe/xe_gsc_proxy.h
> index 908f9441f093..c511ade6b863 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_proxy.h
> +++ b/drivers/gpu/drm/xe/xe_gsc_proxy.h
> @@ -11,6 +11,7 @@
>   struct xe_gsc;
>   
>   int xe_gsc_proxy_init(struct xe_gsc *gsc);
> +bool xe_gsc_proxy_init_done(struct xe_gsc *gsc);
>   void xe_gsc_proxy_remove(struct xe_gsc *gsc);
>   int xe_gsc_proxy_start(struct xe_gsc *gsc);
>   

