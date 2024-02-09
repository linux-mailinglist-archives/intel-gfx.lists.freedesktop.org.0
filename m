Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE6584EE88
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 02:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A827410F0FD;
	Fri,  9 Feb 2024 01:11:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EhRycPCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5896E10F0F9;
 Fri,  9 Feb 2024 01:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707441075; x=1738977075;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o5sOlMM2wRzi914RuuJMcuv7bW9y+wp9230zmdJaNhg=;
 b=EhRycPCM/f2ffkvzdK9Dufk2+Ah+1VsBsN+qdY/NOfhpV8w8exkD0OJT
 lMbOctA6v10gf1/esP1Dvjn8n/4wDnoKUbeR+kr1zVLzeJfJdf5Yx1UPa
 FXPhQ5EdRti+cwyi1g0KdNubR07KfOdLkuvSOWl6ue9Rps2ZEZv93RzOH
 FWuADetMhv2QAsQnxULzocONIq8/r/VKUTBZIBktYByfCBJsk+fDw2Djd
 zOrYupcRtybbUuq2T0/oy1gIzfuEjaCsVjD/pw9hwQkr/be11JhTrXGY7
 UtOp4/Rk8EnKR199GnaXO33HcRV5G/4oz/C0wgla3TxhJcfTQ6NUA8yeu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="436485569"
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; d="scan'208";a="436485569"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 17:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; 
   d="scan'208";a="6426324"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 17:11:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 17:11:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 17:11:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 17:11:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 17:11:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HIAhhZjOpFXAUj9MXHVfSysfyYrQUztTlK8bUAbUmMSnQsjT5qEhz32EoTvjijsXlac9+U+0b4qHjJWswFlolzgclgBfPjo2Mlza1Yrmog9tk5g5zwDsC3DIt8lNK8fxPdTJxZ+H9KTWV4lAhMpBa0Tl0gHAw6UuXJHgsobzd5zqZDqo/RlKdPWw52hhdQCwndnTXMKbSjXeOWnc6bJHoC1A5d4c+ZoHP1pmvVjT2XCSoRj0gNa/vL7RLLoK0TARtPP/nGqOeTVHU+2srk76QPVeXdpwFR202EMKnryDYnI0eEKIam/rIYU6L644zfvhZxWhC9s9gaks5s/7BxSxFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oLbsIHDvAi8X7mx+ftZxrnlJSsjI0RhKIlfAChSU8i8=;
 b=EWCloP3f9cvlTexALtWuspOBe9eEiaYMdyvyEni7mEkS21J/TYtk2qc1Tim1UBqC7skPxuSMaBDYnwKZtO3j0d5burMR46R0m3XXJ9elSfYqMY7N0oPl9EOJ/n5HEMs3HfwdNbVH/T3VvpQ137nZQ2NCfAK2jqdGmOjHh3NY6lq6fWcAzYfGKjP0nxNv4qS+MYd5qeECrGcodMDlDrybnPByU1J75/EiKAROVu51r9n6r7em2sLBO0CSFFJ9PHJRBWc2m2es6CK8JeqxRBnKqmzTgfYWmR6vziV5PGFPSO8rOCmXBG6fYRaHY/vX/TUY5+dOHSQc4Q3gtJgcAFn5LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Fri, 9 Feb
 2024 01:11:10 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.024; Fri, 9 Feb 2024
 01:11:10 +0000
Message-ID: <6d67e612-f1ca-470f-bf79-4adf08e884c6@intel.com>
Date: Thu, 8 Feb 2024 17:11:09 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/xe/hdcp: Enable HDCP for XE
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240207113531.1265801-1-suraj.kandpal@intel.com>
 <20240207113531.1265801-4-suraj.kandpal@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240207113531.1265801-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0288.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::23) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ0PR11MB7701:EE_
X-MS-Office365-Filtering-Correlation-Id: 075cb0f6-c162-4b6b-26d9-08dc290c006a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZBL2BUDwGhP4uIHeIyv2/Kvg9tK/iF7A43FSLRq0o68Wh4X97JI2Rz2qerBYPuNAb8XsILOLJXsxwvkLSIbFLUGR0BHVnWyKvu7jzRpCEBINbUnZVdJZtNcyCPief3/taeVtIDAXUrN1WUJj9P6rwxkDOgSzgB4IyOwRhdg/09Nmrnc1ijpwULR+fwV+LAqA5rhw77Qpolx+5rsIvQHG1UnQmb5eEh3mGP48QcFObbVan24jPsPG6gtOhCGwhxfMWEAukKW31vxEe1oV1mPlm9Ok6C8pn2LBHRo8edDpBp/A1MX0eBhL1AomX3p0OwjVMx40Pnuk1jDNlDweSOARdLCwwrax8QeIjgsWIpSoi3sWlCyxx/Lb9gMlk+hmiOSj7XDsqVpTDlshrZHWTtAPG6+jLTtSYcBgM7GiPMk7MKGKHTizIbjHJPI9AY+eGYVUYG54Knfmc7a146MIjL3/cAPNbtrTm8o5gfJUu5jBOoR8GN0oRkoATnuRZNJ+MYJp7UDtHhSRfbVCkh1c3hEl//MNoayPHcWGbyhMS94mbEkzkqFjIISbTDEt+1csSEPV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(366004)(39860400002)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(31686004)(41300700001)(478600001)(5660300002)(6486002)(6512007)(6506007)(53546011)(26005)(30864003)(2616005)(2906002)(83380400001)(38100700002)(36756003)(82960400001)(316002)(8936002)(66476007)(450100002)(8676002)(66556008)(66946007)(86362001)(31696002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WCt5QWtEYTl2eU4xTW9veEpybjAxV1l1SUxPK1NKQjZuMGtHMlFvSlI0b0w3?=
 =?utf-8?B?UnJTMWFlaHRleTlvQ2JyKyt6b21CTmludjdQQi9OeU9IampLN0FpUG43NVh3?=
 =?utf-8?B?VjN3WWJhbXJOR3dIWkhKZVFoY1c0SEJweTIwSnA5RWc5UUpvSkROREc2VUZ0?=
 =?utf-8?B?OFJOMWsxRUxJQVR0K1BzZm84YU9nQmhJaDBkQ29LWWZNL0VaV2FXZllUY3p5?=
 =?utf-8?B?K2R0V2JVWnJqUklOQm5wRUF0WUNlbFYvdTJJWnViVUFmbU5nWmgvTU1kaWI0?=
 =?utf-8?B?eG9CM2hwQ2J3N1haOXY5UVhybldqb1l2NkFoMDVnZDhiQlRuTUR0SjZ2T3lI?=
 =?utf-8?B?d0dpTFJNeVhuYjNHNXlNYnpUcit0d05PVCtlb2l0M2dXUFNVRUd6RUV1OG9R?=
 =?utf-8?B?bXZhY09YYlJIODYyZmNVNEp5K1EzSWhVUXlKWERzMWRGSEU0d3dJenhYUmRO?=
 =?utf-8?B?QjYycWlRMFF0OE5kNHZXOFZXM1E4WW52azRqc1JYb1Vua01wa2pCb3NNVyth?=
 =?utf-8?B?c2ViWjZYSTVWcURuQmlRd2ZkU3NHZ3FDT0xtWDgxcWx3bFlhNmpFbFBINjho?=
 =?utf-8?B?YzU4SkdrSlQraDRuKzZyU2hXZ3dxeDRMVEgvUHIxaGxSSDNCbHcyaFFVWWRW?=
 =?utf-8?B?amRRWEh5a0NwT1kvNjkwZGp0ZVdTZ09kNFlWNnQ4WjZzUGlUbHFSQTFvRVVs?=
 =?utf-8?B?enRSQ215MnlZRnJETUR4RG8wU2w4Y1NUT3hLQXJhcDh1dm1LMVFFVVJsTS9Q?=
 =?utf-8?B?Rkd3VkdiWVh6WGJ2dzlrdENCT0xJRDMvU3NQbGorNU52V2pLQU0xbUdQNUc1?=
 =?utf-8?B?RXBDdXo2T2M4SXU1T2MvaVAvZ0tIOFhrMHlSK3ZzRE9lUzIzeVF5bktBdFUw?=
 =?utf-8?B?V3ZrOVRublVZcm5MKy9pN3NSdGdsYi8wVGtoV1JkeXRRYlcwNWt6UHN3RWV1?=
 =?utf-8?B?WUJvZUtSVk1Ob2RpeW9qdUxpa1ZjdjVBS2dCZUJPT2pIYk8ybkdMVmFiaTUv?=
 =?utf-8?B?Tk9ZVkxBT21la2ZKWWt5aWdsTXpuUXNiTGZhL1czMEF0aTJRTWkzVkszNnNo?=
 =?utf-8?B?N1hsZGtwUHdQYUN4eC9ZSUc4TnkxUnhIUXU3QVJ6L01QYmRsamx2OGVlUFAr?=
 =?utf-8?B?a0tVRHZiVGFVa3RjSG1saXo3NnA1SjNQMnJtNTEwMzlXTXl5c0svcm0reG5T?=
 =?utf-8?B?Z1dxTytCbldQSFhGbFlkN0lORFdOMEFub1l4KzByNzMrWTN2WEV3MGdRRUIz?=
 =?utf-8?B?L3QvWEdGK0ZBRVBGbEpTZXo0MmFTLzM5RnFrbGFtODZSV1BubTRDbkhSYnY1?=
 =?utf-8?B?OWlxQ0w0enF2bFkrVWUzM1lTTyt0cWtTSFBkZjFZN3c1V0p5YjFwdHVXWFda?=
 =?utf-8?B?TWdBUWlzMFRMd1V0ckQ4SldMaVkwSlBzOGdWMldlRzcxVElXY0hLVllhdEly?=
 =?utf-8?B?eWIyQ3k3bjFscFZ6eUV4aG4xUmg2OW93TUswbEhISGJDZUdGMkZmMmFrdURK?=
 =?utf-8?B?NkUyRXVXSmpTeUxSNHlGOWlGUlhJeVpYSzdwbFNiR0lhemlpVmlzdnlTM1ZH?=
 =?utf-8?B?TVpsSm4xcUxISTRCVjdTNXJwNk42S1BaV1VVRkliQlpJdnhyYVpzNjcwanRo?=
 =?utf-8?B?M1hYZnNNTFhkY0xTUzdnc21pNjZzUzZhZXlOQWpmUTN4cGJCNGMyMmUxUVRY?=
 =?utf-8?B?TnhsaTNBSFo2VjdpMVNlcjFaTkVOK2RUZWdIOWlJMkQzNFA5SjRqbEVCaXZ2?=
 =?utf-8?B?NGxjQ1hJc2E2aDQ3VFlIc0xPWmFZWm9STVVDcytlV2x4Q3JKbEdCV2R3YWRB?=
 =?utf-8?B?T1dGa0lLc1hPMzZLR2d3b1dDdU9mNy80NWlUY1g1VUxKak5kbWNYRllCd0FJ?=
 =?utf-8?B?K3dvSFdaMC9ER3VxV0IwM25iZ0x6VjUvRzVjRXcydVZkWVhJSXdYL1VxRUVz?=
 =?utf-8?B?ajR4TFB6UTdNVkFOZHgrV0FyQlpYam1qZWJLS3d6OHN2aXdQRjNNa2V4RnhE?=
 =?utf-8?B?SDMrdEhFWDJHVDJFcFlYNVJoVGU4c1VzVUFPVVNXa2J1ZHEzL01jNldYMjVr?=
 =?utf-8?B?OFIyVzdESjN3V2dmYTdKc2tlamh6RjJIQU5tVUpaSnZZbG1BREdhL0dYTnZI?=
 =?utf-8?B?Ym10eWZkYlpnRHBiWWVCUCtvM2l2bUs2VHE2VlBVbEUxdEJsakVPbDJHQmx6?=
 =?utf-8?Q?BhIdoz5PDFRgeERELtCXnf4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 075cb0f6-c162-4b6b-26d9-08dc290c006a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 01:11:10.4328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GNoDUD2OumtwqfJ5QdEuh60hTM0n+CznrYBBnkjGlr9izR3uwc9r+WhUlZx1f72liYyDhDyBM3qHCWVdD5PXwgXhkWS0QUUQs9uaXvcvw+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
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



On 2/7/2024 3:35 AM, Suraj Kandpal wrote:
> Enable HDCP for Xe by defining functions which take care of
> interaction of HDCP as a client with the GSC CS interface.
>
> --v2
> -add kfree at appropriate place [Daniele]
> -forward declare drm_i915_private [Daniele]

I don't see the forward declaration, just the switch to xe_device (which 
is better).

> -remove useless define [Daniele]
> -move host session logic to xe_gsc_submit.c [Daniele]
> -call xe_gsc_check_and_update_pending directly in an if condition
> [Daniele]
> -use xe_device instead of drm_i915_private [Daniele]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |   4 +-
>   .../gpu/drm/xe/abi/gsc_command_header_abi.h   |   2 +
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 184 +++++++++++++++++-
>   drivers/gpu/drm/xe/xe_gsc_submit.c            |  19 ++
>   drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
>   5 files changed, 202 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index e44f60f00e8b..9e895f714f90 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -123,8 +123,10 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
>   	i915->display.hdcp.hdcp_message = hdcp_message;
>   	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
>   
> -	if (ret)
> +	if (ret) {
>   		drm_err(&i915->drm, "Could not initialize hdcp_message\n");
> +		kfree(hdcp_message);
> +	}

AFAIU intel_hdcp_gsc.c is not used in Xe, so IMO you should send this 
change as an i915 patch.

>   
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h b/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
> index a4c2646803b5..d2fbf71439be 100644
> --- a/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
> +++ b/drivers/gpu/drm/xe/abi/gsc_command_header_abi.h
> @@ -21,6 +21,8 @@ struct intel_gsc_mtl_header {
>   
>   	/* FW allows host to decide host_session handle as it sees fit. */
>   	u64 host_session_handle;
> +#define HECI_MEADDRESS_PXP 17
> +#define HECI_MEADDRESS_HDCP 18

This was purposely not defined here, and the PXP definition already 
exists in the separate header for the PXP stuff. The idea is that each 
client should have its own header with its own definitions.

>   
>   	/* handle generated by FW for messages that need to be re-submitted */
>   	u64 gsc_message_handle;
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index ca17dfbc3fe9..d95c1b3b2d9c 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -3,11 +3,26 @@
>    * Copyright 2023, Intel Corporation.
>    */
>   
> -#include "i915_drv.h"
> +#include <linux/delay.h>
> +
> +#include "abi/gsc_command_header_abi.h"
>   #include "intel_hdcp_gsc.h"
>   #include "xe_gt.h"
>   #include "xe_gsc_proxy.h"
>   #include "xe_pm.h"
> +#include "xe_bo.h"
> +#include "xe_map.h"
> +#include "xe_gsc_submit.h"
> +
> +#define HECI_MEADDRESS_HDCP 18
> +
> +struct intel_hdcp_gsc_message {
> +	struct xe_bo *hdcp_bo;
> +	u64 hdcp_cmd_in;
> +	u64 hdcp_cmd_out;
> +};
> +
> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>   
>   bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>   {
> @@ -37,19 +52,174 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>   	return ret;
>   }
>   
> -int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> +/*This function helps allocate memory for the command that we will send to gsc cs */
> +static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
> +					     struct intel_hdcp_gsc_message *hdcp_message)
> +{
> +	struct xe_bo *bo = NULL;
> +	u64 cmd_in, cmd_out;
> +	int err, ret = 0;
> +
> +	/* allocate object of two page for HDCP command memory and store it */
> +	xe_device_mem_access_get(xe);
> +	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
> +				  ttm_bo_type_kernel,
> +				  XE_BO_CREATE_SYSTEM_BIT |
> +				  XE_BO_CREATE_GGTT_BIT);
> +
> +	if (IS_ERR(bo)) {
> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
> +		ret = err;

err is unset here.

> +		goto out;
> +	}
> +
> +	cmd_in = xe_bo_ggtt_addr(bo);
> +	cmd_out = cmd_in + PAGE_SIZE;
> +	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
> +
> +	hdcp_message->hdcp_bo = bo;
> +	hdcp_message->hdcp_cmd_in = cmd_in;
> +	hdcp_message->hdcp_cmd_out = cmd_out;
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
> +}
> +
> +static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
> +{
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	int ret;
> +
> +	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +
> +	if (!hdcp_message)
> +		return -ENOMEM;
> +
> +	/*
> +	 * NOTE: No need to lock the comp mutex here as it is already
> +	 * going to be taken before this function called
> +	 */
> +	xe->display.hdcp.hdcp_message = hdcp_message;

might be worth moving this assignment to after the init, so we can skip 
it in case of errors

> +	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
> +
> +	if (ret)
> +		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
> +
> +	return ret;

still missing the kfree(hdcp_message) in case of error?

> +}
> +
> +int intel_hdcp_gsc_init(struct xe_device *xe)
> +{
> +	struct i915_hdcp_arbiter *data;
> +	int ret;
> +
> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&xe->display.hdcp.hdcp_mutex);
> +	xe->display.hdcp.arbiter = data;
> +	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
> +	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
> +	ret = intel_hdcp_gsc_hdcp2_init(xe);
> +	if (ret)
> +		kfree(data);
> +
> +	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
> +
> +	return ret;
> +}
> +
> +void intel_hdcp_gsc_fini(struct xe_device *xe)
>   {
> -	drm_info(&i915->drm, "HDCP support not yet implemented\n");
> -	return -ENODEV;
> +	struct intel_hdcp_gsc_message *hdcp_message =
> +					xe->display.hdcp.hdcp_message;
> +

Should we check for hdcp_message != NULL ? in case we hit an error in 
the init path.

> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> +	kfree(hdcp_message);
> +
>   }
>   
> -void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> +static int xe_gsc_send_sync(struct xe_device *xe,
> +			    struct intel_hdcp_gsc_message *hdcp_message,
> +			    u32 msg_size_in, u32 msg_size_out,
> +			    u32 addr_out_off)
>   {
> +	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
> +	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
> +	struct xe_gsc *gsc = &gt->uc.gsc;
> +	int ret;
> +
> +	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
> +				       hdcp_message->hdcp_cmd_out, msg_size_out);
> +	if (ret) {
> +		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	if (xe_gsc_check_and_update_pending(xe, map, 0, map, addr_out_off))
> +		return -EAGAIN;
> +
> +	ret = xe_gsc_read_out_header(xe, map, addr_out_off,
> +				     sizeof(struct hdcp_cmd_header), NULL);
> +
> +	return ret;
>   }
>   
> -ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> +ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len)
>   {
> -	return -ENODEV;
> +	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	u64 host_session_id;
> +	u32 msg_size_in, msg_size_out, addr_in_wr_off = 0, addr_out_off;

I think we try to avoid too many variables on one line, especially if 
only some of them are initialized.


> +	int ret, tries = 0;
> +
> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
> +		ret = -ENOSPC;
> +		goto out;
> +	}
> +
> +	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
> +	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
> +	hdcp_message = xe->display.hdcp.hdcp_message;
> +	addr_out_off = PAGE_SIZE;
> +
> +	get_random_bytes(&host_session_id, sizeof(u64));
> +	host_session_id = xe_gsc_get_host_session_id(HECI_MEADDRESS_HDCP);

You added a function for this, shouldn't you call that?

> +	xe_device_mem_access_get(xe);
> +	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
> +					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
> +					    host_session_id, msg_in_len);
> +	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
> +			 msg_in, msg_in_len);
> +	/*
> +	 * Keep sending request in case the pending bit is set no need to add
> +	 * message handle as we are using same address hence loc. of header is
> +	 * same and it will contain the message handle. we will send the message
> +	 * 20 times each message 50 ms apart
> +	 */
> +	do {
> +		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in, msg_size_out,
> +				       addr_out_off);
> +
> +		/* Only try again if gsc says so */
> +		if (ret != -EAGAIN)
> +			break;
> +
> +		msleep(50);
> +
> +	} while (++tries < 20);
> +
> +	if (ret)
> +		goto out;
> +

If you move xe_gsc_read_out_header here, you can use the returned offset 
instead of "addr_out_off + HDCP_GSC_HEADER_SIZE" that you have below. 
Not a blocker.

> +	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo->vmap,
> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
> +			   msg_out_len);
> +
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
>   }
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
> index 348994b271be..57793b0acfc3 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
> @@ -33,6 +33,7 @@
>    * include the client id in the top 8 bits of the handle.
>    */
>   #define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56)
> +#define HOST_SESSION_PXP_SINGLE BIT_ULL(60)

this PXP_SINGLE is not needed

>   
>   static struct xe_gt *
>   gsc_to_gt(struct xe_gsc *gsc)
> @@ -40,6 +41,24 @@ gsc_to_gt(struct xe_gsc *gsc)
>   	return container_of(gsc, struct xe_gt, uc.gsc);
>   }
>   
> +/**
> + * xe_gsc_get_host_session_id - Create host session id based on HECI
> + * client address
> + * @heci_client_id: client id identifying the type of command (see abi for values)
> + *
> + * Returns: random host_session_id which can be used to send messages to gsc cs
> + */
> +u64 xe_gsc_get_host_session_id(u8 heci_client_id)
> +{
> +	u64 host_session_id;
> +
> +	get_random_bytes(&host_session_id, sizeof(u64));
> +	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
> +	if (host_session_id && heci_client_id == HECI_MEADDRESS_PXP)
> +		host_session_id |= HOST_SESSION_PXP_SINGLE;

same here, this PXP exception is not needed

Daniele

> +	return host_session_id;
> +};
> +
>   /**
>    * xe_gsc_emit_header - write the MTL GSC header in memory
>    * @xe: the Xe device
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h b/drivers/gpu/drm/xe/xe_gsc_submit.h
> index 1939855031a6..f3359b6659b8 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.h
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
> @@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
>   int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
>   			     u64 addr_out, u32 size_out);
>   
> +u64 xe_gsc_get_host_session_id(u8 heci_client_id);
>   #endif

