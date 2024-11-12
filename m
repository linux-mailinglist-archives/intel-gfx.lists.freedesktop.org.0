Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC409C6045
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 19:21:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B4B10E613;
	Tue, 12 Nov 2024 18:21:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WB4T92lv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42C510E616;
 Tue, 12 Nov 2024 18:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731435698; x=1762971698;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FZ1nVZwm6IOwDf9vrMEUHYwn8VZrmgylzj1QD/IcYQ4=;
 b=WB4T92lvyy7I48iujqCEcgp0z2gYGppDpgF6a+Q6R829vbwp6F9gB6WE
 dFDLpscO5JtI7YwjGa9xux9LHYkPZCkZ2FbE0A+3H2CQmsX+cvypgUR8d
 4EOaclWo5ec21aeRq07nm108ZTh7EJtJTMlDoDX6GUEB1gWjgkLlnCLzQ
 SpxrF14r4p3STaJInm+7RGf+3MnP85DNwweqfddyjzDZ9BfdJ8ooLGkhl
 ke/Y24Qc2q1QZmEdc4dRDHW1rtsTGj49ZZ599UgXqszi0C/A1BosyjKkg
 VknYqJrzcI4nEreQtc6MKggeyoNYdyXEpy2DDboe5+P86ewyDP7geEuey Q==;
X-CSE-ConnectionGUID: kmIn2NnhSg6WIvtse/F1sA==
X-CSE-MsgGUID: uTjoklJmQlWad3XhU6SXWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31255279"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31255279"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 10:21:38 -0800
X-CSE-ConnectionGUID: WHQ97WIRTsOV5W+a3bvz7w==
X-CSE-MsgGUID: gXBicY6YRGGlz3NzXXRZdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="88421472"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 10:21:37 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 10:21:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 10:21:36 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 10:21:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E8JdGvaeIq+58oR2CFjaMNxauEBQncn6eF/CUMn7KIXEhfLRTNtOcr2TVPp/1w7UdIQ/z3mY3Bq7ol6UFtc+12glC9A652pZd3C7CT1fuYgNndA1Geh/rqb9bvlh5ndjUw5LLD+f0BXVYWINwPeFgoBkILuBvKs/+0c7b4y05uSH14YzRK5B7hVV7DSNJr7A6ArvhY3YXSWNbGjy5zCIO1fuAfK+RwNbeiKMERAhJcDa+EFz2amiQE1KTNtHHIy2mRLLWuZoE/vUvOUv7I72W0mKqq1YOCUckJ7PRaV5rnFHSW4zH3xdcr6YaTSrwX3VKt5mOqf2TzRKCSp/QnGw2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8G8TieYeqkwB+D3tYtzvJoVn7eRJ2ArTBgvrwZWXzew=;
 b=dCsGxG3Jc5JQNng06RPOgtPbCoYPaZgx47BWCH+ztIyQ9JinbxfAQRegWSCHqittrfjktsg96jxYVK/KlNEY477Us+Gy3+/drgK2xGm7WH5h9gY/x6AkEXplNaJC/i9iFCfIuoxMdPMNggtAVWxw0Pw8fMZrxbBK0+LXxxcnQOMeSpudN8AfupzukXNnxk1dhNECJVwN+mjpkTiBwpNlPmSphv8umXc8bU/HRFp1iHwwZBwcqhnGLBXbGbAVRKq6YWBlp5AhE03tvoCrLynoLENEH7S0Mgm0/vqvqTU/KIu4fMHcNiHe7/B5TdNY2Cc4bLLc4f8QzIM8p7JBYgRLYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB6309.namprd11.prod.outlook.com (2603:10b6:8:a8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Tue, 12 Nov
 2024 18:21:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Tue, 12 Nov 2024
 18:21:33 +0000
Date: Tue, 12 Nov 2024 13:21:29 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <Maarten@mblankhorst.nl>, <Lankhorst@mblankhorst.nl>, <dev@lankhorst.se>
Subject: Re: [PATCH 4/9] drm/xe: Defer irq init until after
 xe_display_init_noaccel
Message-ID: <ZzOcqVzaTliyfII3@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-4-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241107100140.292928-4-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0279.namprd04.prod.outlook.com
 (2603:10b6:303:89::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB6309:EE_
X-MS-Office365-Filtering-Correlation-Id: 76678b18-3475-4733-9635-08dd0346d607
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2IvoBUjawPnOozxSifak/X+MpwzN4GF2fjAnNZTh0foLwvpSKsl7qtGFnept?=
 =?us-ascii?Q?RUUfv4ArrtJqTvlvlRAVcUJDMlQ7ayYr8XG3xojVRHob62hMVQlJdo9Pf1Ug?=
 =?us-ascii?Q?MQl63bubLgZiflOmuhMkoiQDuvcOpksRyjomzkdZyIywJ44p/DX82IV14FpQ?=
 =?us-ascii?Q?EdB1BWv+0yZdL5wCikbD8BLaaZyIu5uQ92vlb0zUrTmMRahWM9Q27TA95zxx?=
 =?us-ascii?Q?J6kCyN+4ToJRzexQKQ/IGLWAdBvQRO5NnUaevWcKNBPhNCEF94pUDob+RzGC?=
 =?us-ascii?Q?/3PhbOeoHZY+EIpFUwsRzXSEiI5666YLR6eXrPneCSMIh7gvO0WQx3lmp9Iw?=
 =?us-ascii?Q?az/zWQELbG+OPbT/62J0xb5NLvgMQsNfeA0c+/yk23pnPK0jEg+k67qxFilc?=
 =?us-ascii?Q?vzUWZcsKwmhBlLRQiTvD6fJpnaHu8I6STZD5nQ6Akig1E3evdZJAtoA7591S?=
 =?us-ascii?Q?ZBPWHi3ukZmKu1/Bf20WRhjJC+RGfn3bMNW4Axu4E1G677tybUBy/+OBYHOC?=
 =?us-ascii?Q?+2oYZ5flowxJogsIrRxsj+xjXDYGyRKyMlWz6xGrLl1QAX4frNDwc2fGbfyi?=
 =?us-ascii?Q?6Lh8wB8i3J5Rvstx+hZG3MkVzRaMhnlN4ZtJVv6US14tn/pN7fDTB1YxwnE6?=
 =?us-ascii?Q?vW5UnxPpt+MJWOthRcnDw0XZDUkqZTVUBBt5pQ6rvlQ64EWD6P7FlLVp0be5?=
 =?us-ascii?Q?PLKjP1VJmKMtg/mgI2MwSbIzly+h7G70lBejiPgC0hYnYxXPw6b2JblcOXfV?=
 =?us-ascii?Q?HZjaNulH4kVvAkh7B8g0X1cWVnmSeLpAW8rCQPKYloc+bw5NWlGbU2f1C674?=
 =?us-ascii?Q?pTZ2puox47l8PWzf7gxo9Qo3D4lyt7+xPLUVQ99zbrToWHKc41sPlHpEriPX?=
 =?us-ascii?Q?c9YM2FPmttTt467VcX8gP8aFmuAFALZZEfbQYy6Qu4jsls8Q7nIi2KmY0oiM?=
 =?us-ascii?Q?qp6Q4Kw3e/hYOcpZD6cedi4HsYA027RlrDs9xWUKxSPrY2QoJVlr6XZGDAPn?=
 =?us-ascii?Q?McvW66MjhUoipIPmwV6p9rYJVczRXa0+1CQFrjWkuuhdRuCvp0Pb+CTR08tz?=
 =?us-ascii?Q?4mdrvcydlmyBg+urN4xFnBD2qrbDQjFwqvuLLcdl4uewL7ISshYXxBrowNGR?=
 =?us-ascii?Q?IIsMsf//5mnvn4epidKSmAeddhCTdUwGXoLgmWxpatfQaYUSOvqcewZ+ciWg?=
 =?us-ascii?Q?tLAtme3pdPK7Jv1oSKP+7/DH4fzmEKWuNO+eG0dmN9a6Clup6AZOxYx8l3zo?=
 =?us-ascii?Q?IVfy49Utd5Sn2GU5wCwP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cqx+ELa1LZM7BX8n0fgEiwrikHhdnNdcwvNm/92tyc2rD+gs2vcvVKxC/9kD?=
 =?us-ascii?Q?zW0oq9sfOB33lHEwX2vAgD5XU8rhkg2b3g97+ftZ6Zhm0D4ycpBI0eYYDKHo?=
 =?us-ascii?Q?T3cXpg4XtExjSmykPDN9Wbc//s2px/QndRluJOdRzlW5eeuEbC36fSVvcRwT?=
 =?us-ascii?Q?VK5nqsb+BqxZuh7ZeOkZWChxTH20Aq89uItJoQ3lxKtb30e9qrtmbffbQKZj?=
 =?us-ascii?Q?7SfJszNhaA0rPEp/nDIwQ+olYTsiB8WUIOHcg9+PYq24IPm9EoDRglTEXCYZ?=
 =?us-ascii?Q?S7UlALlGSw1n1hZmXkLZUYWQOga1YuGMbTlB7GVqyQoYzX7JbzRrV132l/w0?=
 =?us-ascii?Q?QiqsA+oWZk2xbp5/kykmeTI5hg4izds1ABA8dTAQh5+xjsXGI4DOvPhcVHQ5?=
 =?us-ascii?Q?xWKg9snJOwpKmn9V7ETiOjbKteN+N1q7BZLMaoCtsQlNXy2DFVVBSjP9UEPp?=
 =?us-ascii?Q?3P3vmG2znidq2W8NyM3oz/1liBsMbJe2VndFHvmtiqt3Uoo04THwRgpa2Ycc?=
 =?us-ascii?Q?CCqTaLDSYflu6eXu25i24ki1xtvaw/8F1yUiCeQ++qUy30lnkM3Vijt9fTuT?=
 =?us-ascii?Q?q1oGzjgb9nWmDlU7y9wPRJ2R7X+naKkf5kRhuDmFRd4ifIr523ETPSLGAYTT?=
 =?us-ascii?Q?3Aly3m4U98a3duDevxtMoosHeMSjL+Dwc6W2t7CtaIeSUBlximtlsdZ5uGoM?=
 =?us-ascii?Q?J0cjnldAmFPKt5i4iI/8rc7e+Q16LJl3FWQb4bcz2xRO4wSEzRsF6+Ck+7Yf?=
 =?us-ascii?Q?E9SKWoxDBHeb6nyZ0eoaEIkkfib3LCNZc4fyWVIkbEha9HLbNQNqEwEWbKCe?=
 =?us-ascii?Q?awothGmY3wz3lppclwAQxKkP3movnPBH4se31OPqt28frQepiqJtswvwi/0d?=
 =?us-ascii?Q?BTkjJBaMic3zqTjPzU3k0z/jqc4kiE7s6RbuL1HRuZ4g18Hvyisys985GfhD?=
 =?us-ascii?Q?6VnYcNgN8Ma+c3k8Cief1Rz/rofCr0ZrwuPLK9a2iOjAlf906u0uFPioATtM?=
 =?us-ascii?Q?t6uSrVHm9WmMUQHooHHdhsnwAtgmgKtghVht3haPArmhHiNxtLCR1cjHzRQq?=
 =?us-ascii?Q?yCSBf7pSAsB24AWfGQ7mCvwSJPu7CFHJp0HV5der8txLiIEvk2oDfPW54fPk?=
 =?us-ascii?Q?G40w1Qu4ng3T+hb008AMIuQuQj+KjCpU2B9mGo98c6UPiyUZncww1LJ6MxNB?=
 =?us-ascii?Q?edqqmQ7P71/RcWSpEHWd6u3jOY7qv/CoNuLQOD8gdfLliGOM3tdtl7SrcJ/k?=
 =?us-ascii?Q?NcVHU+ieViUBllHnaySfp/32wlgDV9f9VLh8OA9QVt5Cqy06ZdpnIUZGBDys?=
 =?us-ascii?Q?KBAMRaXmBu0/Yt2LnPNEj2yFSTtM23QbrMZjh5qcghBTyCPwIKv7a7pByhqv?=
 =?us-ascii?Q?ydB4u317aJhfHx7DaSsQuWH6ZdM0p28YPrcqaTJYXuqkT/CM6EEcAJ85PWj5?=
 =?us-ascii?Q?gvTkAcXXV56dx4GfwlwfambRABB0oWlvYWofj5IpvhyOG5XgluMdkeMN0N9m?=
 =?us-ascii?Q?DAI/zgxUh77cKDf0VFtDvXwQL8FjuLXP06UybR57MulneNMN1iJXXLf2gBVn?=
 =?us-ascii?Q?i6imVl1rVJTRnbtFw3JFJAd0kGY78xQUN4wEbw9Z5S4+nZfOhj/6Up5SSEU9?=
 =?us-ascii?Q?lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76678b18-3475-4733-9635-08dd0346d607
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 18:21:33.3123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N6seDfY5uB3kXGSwnn6WXqnnazru7opCi0YvYlmP+jdE9xejMb4ZvUEMZ+RZwAiR9AcQ+QaaCTwN1Mu1gR9Aqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6309
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

On Thu, Nov 07, 2024 at 11:01:35AM +0100, Maarten Lankhorst wrote:
> Technically, I believe this means that xe_display_init_noirq and
> xe_display_init_noaccel can be merged together now.

Please use the commit message to explain what you are doing and why
instead of telling what could be done next.

> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-4-maarten.lankhorst@linux.intel.com
> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>

same extra commas in your signature...

> ---
>  drivers/gpu/drm/xe/xe_device.c | 12 ++++--------
>  drivers/gpu/drm/xe/xe_tile.c   |  7 +++++++
>  2 files changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index cef782f244e1a..b9948b2dc8d1d 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -41,7 +41,6 @@
>  #include "xe_hw_engine_group.h"
>  #include "xe_hwmon.h"
>  #include "xe_irq.h"
> -#include "xe_memirq.h"
>  #include "xe_mmio.h"
>  #include "xe_module.h"
>  #include "xe_observation.h"
> @@ -673,9 +672,6 @@ int xe_device_probe(struct xe_device *xe)
>  		err = xe_ggtt_init_early(tile->mem.ggtt);
>  		if (err)
>  			return err;
> -		err = xe_memirq_init(&tile->memirq);
> -		if (err)
> -			return err;
>  	}
>  
>  	for_each_gt(gt, xe, id) {
> @@ -695,10 +691,6 @@ int xe_device_probe(struct xe_device *xe)
>  	if (err)
>  		return err;
>  
> -	err = xe_irq_install(xe);
> -	if (err)
> -		goto err;
> -
>  	err = probe_has_flat_ccs(xe);
>  	if (err)
>  		goto err;
> @@ -736,6 +728,10 @@ int xe_device_probe(struct xe_device *xe)
>  			goto err;
>  	}
>  
> +	err = xe_irq_install(xe);
> +	if (err)
> +		goto err;
> +
>  	for_each_gt(gt, xe, id) {
>  		last_gt = id;
>  
> diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
> index 2825553b568f7..d07c1fba793ca 100644
> --- a/drivers/gpu/drm/xe/xe_tile.c
> +++ b/drivers/gpu/drm/xe/xe_tile.c
> @@ -10,6 +10,7 @@
>  #include "xe_device.h"
>  #include "xe_ggtt.h"
>  #include "xe_gt.h"
> +#include "xe_memirq.h"
>  #include "xe_migrate.h"
>  #include "xe_pcode.h"
>  #include "xe_sa.h"
> @@ -179,6 +180,12 @@ int xe_tile_init_noalloc(struct xe_tile *tile)
>  
>  int xe_tile_init(struct xe_tile *tile)
>  {
> +	int err;
> +
> +	err = xe_memirq_init(&tile->memirq);
> +	if (err)
> +		return err;
> +
>  	tile->mem.kernel_bb_pool = xe_sa_bo_manager_init(tile, SZ_1M, 16);
>  	if (IS_ERR(tile->mem.kernel_bb_pool))
>  		return PTR_ERR(tile->mem.kernel_bb_pool);
> -- 
> 2.45.2
> 
