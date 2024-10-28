Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2C69B3A43
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D7310E528;
	Mon, 28 Oct 2024 19:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1JSfZHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012C710E527;
 Mon, 28 Oct 2024 19:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730142795; x=1761678795;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iTenDVm9uoTo1yKQmbiDiUYpxM9jvc9tBG8MzsY0A/8=;
 b=C1JSfZHZnSOHX22oCEY8vkS594JtGCWCziUaGwx66Wx2+Prn1Dd6WHH/
 prFqv6wpfuvADqmXQVq1ryBHVfr7yo0Zv6097+sbnEzdfyW0WVsDeJEfZ
 ZFap87xGltiQeP6hXMRmvAwAUho7EHi6jVEk5LU/k664tV72Lqzy4RQYH
 RVolRN4R5bjDhJtvgcL+oniDJKT8qAVuBn2Ryz9Q4jZuCv1/Rt+ysEGpM
 wChBblgxg6yk0gRFiWh/XrlRVMwmO6tK41Z7YuuJqImofV31xYGOkBJEF
 qpipPlH62m8OAqGHkWNL34hTIJFc+JMXsKF3zgkCjaWeLgcHfJnnbiryU Q==;
X-CSE-ConnectionGUID: ZyG6kd+dQ1emNB98S3A1Fw==
X-CSE-MsgGUID: EUByDoXVQEeD7eH/DOu1tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40854193"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40854193"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:13:12 -0700
X-CSE-ConnectionGUID: +4ivF9PjRUiLYnceQ3pU/Q==
X-CSE-MsgGUID: /BthJpbfSF++I1YYIbASxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="112528201"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 12:13:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 12:13:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 12:13:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 12:13:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mCycuhP+wcd2anfD6n3+3Vs1i7Wv3nXQjWQu+oQCtJl60fkHyiIoEQxcdEcEMSRO569dsZugXpda+8kSOYf7ekzq/HfwjBIvIbjga34tw1qxTzE5/waY7InuAEchZOg5BMHm2D2h6Ga9mjlZDDoEKBuJEeP6mtBh+ArG2iOTHD2MoaGT/1XSkV4UJW4jug2Gdxj864GLwWr42+alUzM1bcVOLAntP8NngrGYpMLQBPZg9/NxNJLkw7CBK5FCzSlogGZuRTW0v2612PJg3ZH9CX8EXD+xIN2aUripo0zWUb9a+RLRguZjxTC4Kj0xW5jSggGqFeWIIobQzstV8Y8gww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HrPA5Qko3XGDyqNZkGyTwrOZro8z+jMgm7+E54kl00w=;
 b=TuAx8g5cHa5QTd2wOBDa4MibdhNxc5iBAKLThvDheKL2yUZ4NHY5CRr+Apdn4zFgruGJJ9v6AKjUut91A5BLz3qd6dZ2Xgq4g+e0laqmnLhLTbWkIX+hNd1ImuSZ5+41aWNVtNtDQHGBfSMZPPN6e60ORmFfaGFKXW+YbJ7H5IXYdr9SRFqVixpGj9GrMaz28zPy3Oh7xn7GYGpwjDvZutrNXUhUGG3MXQ1xlIjtXyGLg2xpz2wxs86igLZlrD8l1VmMZLQ702CjkoXIQPwrk5eT9Lzwxe6z5Ln9vDeajQdVVz9rWusKqaRJzKAdggb/01FuNCh1DbeaHvMlAYQ6hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB7865.namprd11.prod.outlook.com (2603:10b6:610:128::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 19:12:57 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 19:12:57 +0000
Date: Mon, 28 Oct 2024 15:12:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v5 11/11] drm/xe/ptl: Enable PTL display
Message-ID: <Zx_iNZa5O9L-VpFt@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-12-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241025204743.211510-12-clinton.a.taylor@intel.com>
X-ClientProxiedBy: MW4PR03CA0235.namprd03.prod.outlook.com
 (2603:10b6:303:b9::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB7865:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e41ce3e-7463-41a8-328c-08dcf7848829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AZ11V0EzYfld4oMJRRlOQfGwuLapLsDACjV0sEwpGJnF7D0VE8IqycXqqMUL?=
 =?us-ascii?Q?B3g0OvOKe7HS9KOVCvuI29gZvo+jNTlWjfxO/5Dt7p3qvKZF7Cur2gj5a0QW?=
 =?us-ascii?Q?pIQ+tWtSdj+niVBWiWJfUIr8BUklTbm37bzCOXzMZE9zqpMy0l8YCbh+dwbV?=
 =?us-ascii?Q?OeOv3dSgQHUvTzFzl8PUKqQmu1iN9rDDOTvSPWFXXlEbZ5KVslObqVP94rz0?=
 =?us-ascii?Q?J6bb3yWSJWZX8buo3Qi7KTq5Ofc4mP5rbCwjCbZNV4+5ZxU/W97jYd52uPCB?=
 =?us-ascii?Q?qpB+GVlA5eJFO10hGQ+VxaQwTlVCWO3ZxJVWm1Nh9ZDT0wEo8N47Mu2wC0An?=
 =?us-ascii?Q?6a3XC53mYDq2fNe0IfRGFb3QSbh5FbHi2JZ3Koh6tuntAZX6DEJcdnVsE+9B?=
 =?us-ascii?Q?sgfoI/0TGx9BquG4GMFCeMJrWdhpEj6j0ks/dJCMNybc7QMxMPsFiccY3moW?=
 =?us-ascii?Q?wTgHMKDf5/LmAiJkJJckfWAQaFqka539emZXvWrcGFVPy4m64x397QixAG4z?=
 =?us-ascii?Q?joWHefALVggQGxHuUSjs3mLjA1kThlz892SvKfSxAcYNJJBIvqAhmlDnwmjq?=
 =?us-ascii?Q?YGo4wEsDei09smT2CuMa7xDpetxwqW/5S6QYqy22vjvOT5aTvgxSx+g34Wjv?=
 =?us-ascii?Q?ajqtVQ7ltaGnN6QQ9qK/ezw77imseOcAKmVLh8Q/+W9Rh/8xbwT7xWl7Y+8F?=
 =?us-ascii?Q?Adj9+/yLaRx9XWKcGlBsEpXb+u1GymCpwCoDm4ElMgevIMN78CHYC6BO3/qj?=
 =?us-ascii?Q?ssffoASMtanmdyrgRcaeNpkhyCFlTIDZYBn+gXY9RBGBY70QIGBwcLO3YRXP?=
 =?us-ascii?Q?eqO96PLjq+HxmWHyZjwEOBokq4ZtepoCcZz1vmlWZQ4h4TfFIleZx3sTzrqu?=
 =?us-ascii?Q?PbyDmWdtGQunBqFv/b+kZNdr7ZBHhmHc9ndjGypafq2joCffcOu4YVq54Gpv?=
 =?us-ascii?Q?eEhoRp/JTnOfrapzzZOzdk/V8V9z51RzP4RY3lrvoBIjJI6Qo+R16RLTsS4z?=
 =?us-ascii?Q?0LtU43xD9RQatr2NXoG4LLbUOIsBtcSjRTzioy9AVJ35neM9vnSK6yd2s55t?=
 =?us-ascii?Q?ZzE7lYVW9X1EvWuq25a8IfPDuALGJCIrw+EbyCVHqoDwMk6p1nDNovLCzM35?=
 =?us-ascii?Q?8pdUcvAzLgo4sKiBVe+UYJz0c65MJqM9BnRgK3lTPQaeWMSucVdzpckw7FAS?=
 =?us-ascii?Q?0o/DgFY2f0OcNfwEYr6A+rli0QNGPaszDhwr1EmnsyMQKtnel3dT8eW/ClmR?=
 =?us-ascii?Q?aWlLWKRP2CRBAv1jVpGS5s+Ga8XqeecDS/aW+WVw5TLe1UZlC9oKNM6GaPIR?=
 =?us-ascii?Q?DAl7EuQbQgc6HNfCa6p5K2+l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KGzRrEh7rw2qgSFJ8KiGZRpto34F3B8pquMw4hoQx5mpUzAc6fHs9SzxZ+rV?=
 =?us-ascii?Q?2DpeGrHM8mm97dCMrSvGXVO0gBKueh86j/AHx7rtfGM7SQJES4Kl7V//IflJ?=
 =?us-ascii?Q?iApeptyXmYQ4QM40Hz98kRPZ72qDjPNRtY2bnloMxOZi2ALsL4rgeCtPt3VE?=
 =?us-ascii?Q?j6oI09hnsD/OwmdTetnzUBhJfwx/xhggZ20kQonmwHjZcvvnEpw7SUOmjDMz?=
 =?us-ascii?Q?qSN/Xv1zm7nsi5r/qRfNHXH0ih9B/PUMb16H4A1uLZnGBnoX/zXZm+EYc3Np?=
 =?us-ascii?Q?Y0B7yjXYXNe/qcGHbdT6gx9qkJTGRw/Cl2MYoIJCItiEYTIg0l4BSaEvuIFp?=
 =?us-ascii?Q?rUewG9qmmQfyM/QLga0W8vyCJtspAxzpMDgMfb6iDKroF2B9fqvletfM+UHI?=
 =?us-ascii?Q?nENjmAv9tLi2bBt8gfaZuBYR+RFG852vTq9mqWe6q+C6Fuopm+VjwfvzPlPp?=
 =?us-ascii?Q?eg4J32erkehChCy8ON0KV/F/YFkaAKhj8UKJWweqdunThTQOhw/OxpEScldi?=
 =?us-ascii?Q?M3rGTd3LQ9QTWqrZBX0mY9ZfR2pPGrkW0W1jOlhJ9VB5U62NbbzTyC9n3QCr?=
 =?us-ascii?Q?7+OESvqA2JK3eIFOmWToSvxZmk8sPhZAXOHagFojxFIqLJNnbl6WsTk43B0z?=
 =?us-ascii?Q?f2MA85dB0Qw3bvUiSsKhn9TEmoGQt8fTm7uVgVLNSVTst+YRxLFJrqvBYTbC?=
 =?us-ascii?Q?81gFEUCIJsinSrH8uWnrpW2dFpwcxFhabRIXbUfq3zehBDdVK1ODPrHuQgRM?=
 =?us-ascii?Q?rtjTFzau8mGvYf416mTtih/VhOjC0kG16ElL8/L/PmSnMW19mLYopb8hn2N0?=
 =?us-ascii?Q?zGZGrdnMqu/p0wbo5cu7S56+OOANxIIkEbkJwG6V5bvFGakQqze/uPjMt8cB?=
 =?us-ascii?Q?CWNdtJeeUctG7aUA30Yk2jwQlkKZbBOgjWKsz1BSqHXdI+siSX/Te+dHJ3Zu?=
 =?us-ascii?Q?IW6eu9Em4OLILVUeYgzmA3UFbf1n+sUDiTYp41nAxJzcbwXcaNCoreEe36hf?=
 =?us-ascii?Q?sXn8w/1G2hfYB1ZPCzYYGco84pyTJa+sxMdXh7oD82xDTSHjtSg04dNqqwqr?=
 =?us-ascii?Q?o0Gz5AQPNSycSAsyxgmaV52PubLzrlIsH6YZkp7Eu8Bfa6A84fiedeUQ0y04?=
 =?us-ascii?Q?FeJSml0iwrcsahjgN/XEU6pg/mNpmJej6yC7/XP8vKUCmgF76rz/82nzsmvB?=
 =?us-ascii?Q?okErQQ1Khxqm8H/JaG6kqu01JipZ+gzyJTHG9upghob+J+Jw/2seCpQP/rNO?=
 =?us-ascii?Q?VRifBQSSGiUWPSHAtO2nD+fEoaJNbgJJ/hcrtrb/AQRIQRtKhzx6Pnm5ylQG?=
 =?us-ascii?Q?OEQWSxx1cWl7l+jNYPxHUq3dZmt1Ewtwugv90ECTB9FXlKrp4dmn0BDiGU88?=
 =?us-ascii?Q?vP1K3KcIiNVhrkPM32glU7aaPCBBAWM+cbcNtQ4iTP97uKizqr9T3ur05yZH?=
 =?us-ascii?Q?+LWfbp4AGgByvvQxhrQabzQa+mDdxaE4Oj8n1WUPSVADBa9pouFNitbMzr+F?=
 =?us-ascii?Q?9OBclvg7uzkHqysvqUJ4fmO974IX3qOvC2Iv3OqjeVR1kHNTt6qMgbHW9RTO?=
 =?us-ascii?Q?rzHQWu97fF1mYeE7blIu/Mo8OJysZMOJAfHyiR1nQHpgAQzN9YmlyfrlTGWj?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e41ce3e-7463-41a8-328c-08dcf7848829
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 19:12:57.6758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V/4rsGEMH0S3CjBz/so2Tu6xbO9h92iuoHoreTHlOU4mHyuM9Zh2UKmHS1kKFT8VKtBQH8HtinCf7GbAGwbZHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7865
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

On Fri, Oct 25, 2024 at 01:47:43PM -0700, Clint Taylor wrote:
> From: Haridhar Kalvala <haridhar.kalvala@intel.com>

Every patch needs a commit message. No exception.

> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 4085bb3b6550..6f73a243c24c 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -352,7 +352,7 @@ static const struct xe_device_desc bmg_desc = {
>  
>  static const struct xe_device_desc ptl_desc = {
>  	PLATFORM(PANTHERLAKE),
> -	.has_display = false,
> +	.has_display = true,
>  	.require_force_probe = true,
>  };
>  
> -- 
> 2.25.1
> 
