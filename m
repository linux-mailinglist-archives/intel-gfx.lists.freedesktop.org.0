Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B409C8CAFDC
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 16:02:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA95E10ECB0;
	Tue, 21 May 2024 14:02:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQwlOeNc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81C510ECAF;
 Tue, 21 May 2024 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716300127; x=1747836127;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DgREQJBiz9Sno3lRP+EVkYjH70FUMH4JKNHTVt3Lx/w=;
 b=iQwlOeNcR33QFe+I2SSmfjUYTJE5oGq1C8/7Gm6OnSC2dlHdSrv23aiP
 phDOqLj+bhQVyTUpQzFx1GCUj4adzAMOPB8FdnilM01YDJpoE3wvhFPtP
 16TesPvIjvt/AjxSV4KLF1Xvt402d5XinCLT0wUCfpxBs7YHrRkaa1oMa
 TWvnBWY7xx4YCSpEe9vX3Y7J3WeM/C2MAFMNNpBkE0ViUvleMy8mdJpAR
 vUQhhs0Ldjr4XllnLPnTlw/XJqevXMqcN1VYTPNxbxMXy/UcUR5pvHdjH
 6BOmXpPWbIJQKMw63hBAumU2Ix4kzCqoXT5Mhke/Tmgj/qjfnK2D8TD6k A==;
X-CSE-ConnectionGUID: k3Pm/xHjSkqu84QsCnZzag==
X-CSE-MsgGUID: 6WjeQrZSS06cKo/iKf08gA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12286050"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="12286050"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 07:02:04 -0700
X-CSE-ConnectionGUID: 1p1+kXBwTEOsND8Qn+GRoA==
X-CSE-MsgGUID: xyII1MLUTbSIKXan8arq+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,177,1712646000"; d="scan'208";a="64156444"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 07:02:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 07:02:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 07:02:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 07:02:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ne8/B9kWgnxf029EyukZX+3szA8aKH21wRfX4Z5lF9440vbTyODQHKapliocjsWj3y5cXBh0NWlAJ0mDb1HfwFrpqfvldKWqgfI8WWPWXETdZXL1tp6g/ciLWHEx1C3n9MEVqyAF5HH5MLKg/EGGhyEC3ihqURdn6WfbV8S/zbu9aIWXTvPhJeBolKoMfz0+PPGZI0tWTIfExrfuRbe3/hbdVLHxrLKoqWWCuT8Kf0gBKnsNOtn7xQ28emq6Zj9Z8UiapYYCb+nR0HYmwP4W+1Olpm5WzAd3+KinL7kEoSRWNcUVE/PH4Xp79hrhCkyquf+fZDfSya+qZ/KhZyskCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NRnVw670FJVu2Idv4wDj9u5pAmeHZIO1pv2s2N24cg8=;
 b=Gg4GggDXOkvOtFTtGYE+iL0kIYy0cFkbqysfyrKs5pexDeN2SAGNPQi1RChOtWFrgVl97qPXn0eAvFTvTazKRotqptzImf0EtCpedVg2cxg34aWzaWbp+6F/+14dXeS1dcj24buTbP7WmeUTvDJKZ7uPpCCgjqEl2DiHBuvVogbK19KvJOn3aj7PuPWTlVyvFFKgpSTO9TdrXRp8OLworS+0DCpocgsxzNAMh0CaxEfzoUJWXm3aXx9zGAjddJ7Cuu8Bopfcu1uPnR+iF+zIMp+zIfF7xf3sG8xU7589mB8zEFZj08M8RrZPWAChCPl0B4vaC6r3/WGJduK679hQ7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by PH0PR11MB7562.namprd11.prod.outlook.com (2603:10b6:510:287::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Tue, 21 May
 2024 14:01:59 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d%3]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 14:01:59 +0000
Date: Tue, 21 May 2024 16:01:51 +0200
From: Francois Dugast <francois.dugast@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/xe: Don't rely on indirect includes from xe_mmio.h
Message-ID: <ZkypTw2yXt7R2lIu@fdugast-desk>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <20240520181814.2392-3-michal.wajdeczko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240520181814.2392-3-michal.wajdeczko@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: DU2P250CA0002.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::7) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|PH0PR11MB7562:EE_
X-MS-Office365-Filtering-Correlation-Id: c62d27a2-cace-4808-a3f7-08dc799e94fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3LMLKcDfi6BGxCXMCPw1u6CL2hgHauBW5vj5a/5x51MJdkP7plIAQjbv1imq?=
 =?us-ascii?Q?G4a/j9o6WG6nQmyr/vUFTptFIPKjyEmO2feqnxif44nIsGhYbSui0IiSNp7t?=
 =?us-ascii?Q?MtlC/Xco7LzfO+nUyIAouO2KrT3DXkrDa//cpcjIWTMc0BLapC24KYpsneGR?=
 =?us-ascii?Q?qvvOOjSJcLjL+I6Zodj5AROmr5D2T6ick/nUjUED5snNi65YELk4FRjTqKPY?=
 =?us-ascii?Q?Tev/yjSgbwo4dvpzJ77lrfAfdoj+bNdpojM82VdCLOr34j5nshbaFIEMyUl8?=
 =?us-ascii?Q?hYMkhhcwu/ApTJn/fc0BawNejSqpMouLNA1xRK8FDN6NOPuI8o3rFCTVkGKu?=
 =?us-ascii?Q?QzzKFWk9I7Q99b+VslXUAl7O881PUi5h6w0F2v5T+dKjgNwj5w8qwglUKDGP?=
 =?us-ascii?Q?gWIo3EhJtZYMrjl9kp7MsHcUEgXSoEQcioI1UiF4BJgQwI4tFfvYh9mc6xRd?=
 =?us-ascii?Q?zpu2dZEixV2Lb1y97cNKVn7Nv7na0yhx/urIyysxXNsn2csxGpwL5BvZo45o?=
 =?us-ascii?Q?X5TTByD2FbTzXdHIBLPmxDbpWx6/0MwqZd6tPWxXeCEMGKuybTckoS0eTwNF?=
 =?us-ascii?Q?3uoVrfm9JrF8mjp1w445KsztNzSzCK88/ZUQmV1bxkj8x0vbxrJ8d4cmVTN8?=
 =?us-ascii?Q?h7hIrSpl8t/YmHUweWS0nDLXr8ETl5+R2eRib+z6GmvTI1USXUX32+D43vUn?=
 =?us-ascii?Q?w5e480cx4kjCVqSIXmwVnaRQI9jzDuyIUKDpa775YINoE4ugq87bBz183UtN?=
 =?us-ascii?Q?o4ern/oyh9m4QRPK3xfLKwMSVTkqePCk1Qf1Rhd9rZ0wHsbPp42z/kNjgppn?=
 =?us-ascii?Q?r9bc3LZ4PVuDP+TuhCRlyVq+YurZWfxbO93LSVPzGxNixf4SgmnYFKR3AFDH?=
 =?us-ascii?Q?k6BsXpNnfDf2Pn0c7G6C7jPrLByr2SwItV9psC7BbPlEpQ5Gf3OZAYFvJd70?=
 =?us-ascii?Q?eFQKIhqZ8PfKf9wyo/zuFBT5/9c771C+vrOfjQ1dW8UYV+7sbhYuoJsKMD2u?=
 =?us-ascii?Q?tEbBs9CVbWbvcWWyd9Xz3ib/0Iv39yL5lFo5KZCbsADHS0MtcUGqJLaB+u58?=
 =?us-ascii?Q?2M2Ws8ByTQ+XYgARdqXfxMmQNDLOoOoM3DZM344PxKOTXftdEHOpJwX7d7xc?=
 =?us-ascii?Q?cGT4KiLXajRFugLX2Q+fPZ2ZszEQeUlCrNINbKQwvdiQNR/u9rXMvRJusxRO?=
 =?us-ascii?Q?cx5j2dolgIojXsNiC8n/jMpG6v1Rv6OfE7GFURfWyYo0H2ouz7Dz1syAbemO?=
 =?us-ascii?Q?9uulsmQuY1pIS4j4eEIKmpTaUA01aRZE/qMmNcDFMg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?meolmPyYcch+UoBYhVfpnYqRS2bAOLczUayAZqZtM/7jvz/0R5hJGjSgbR0m?=
 =?us-ascii?Q?lIAypA0tX+5GmoAuhOiduyEW+JLYqRuW9aCd2bkbqXu2nKSI1naxANfRpf9W?=
 =?us-ascii?Q?fI2x9e/XCutXghfhY2O1DCMuOOUhxs4ZYrPCQI7RpOFyqgVoE/34xyvgCrNu?=
 =?us-ascii?Q?e09a7lgUgEz0c9JDWMU9X0TbU3HElNUkHDuV/NJ4Anpi+YK7md1XftsmTQwn?=
 =?us-ascii?Q?RDyK777K1TWOmYNgolv831QpzmSSRttxwixEUscWuBdlHzHYXZJH0v6l2vae?=
 =?us-ascii?Q?6TKRb4nf19JIQYPcQFnERLrf0tnMdx5UADd564jH5l/VD8mJRP8/5hnHiJSN?=
 =?us-ascii?Q?Ftq1itpmC1V7BR9eOqsnx3HcLonyvPJTN31aliYGiG9khR7RYCycgzOZECyK?=
 =?us-ascii?Q?ZYHXxyESzZ7YhdTMTcC3RKk79VtvWcP7RL0THqCl3sIta+QF+L25GRhC+ySH?=
 =?us-ascii?Q?rTtrXUbcCqltmZyslx0gHa7NUAzMXLY01sXHpu+bcPRz6bnKnpHJkiTRXoYV?=
 =?us-ascii?Q?5Zhlods+21Aa6/yBsqsGlhPBEL3K7fzsjxzzV1FWgtxi3Thss7Iiuicd++pM?=
 =?us-ascii?Q?yi2THdF6VeusKsS9/qhzfLByMUNiQVry4iGlzsOUe7HZOob9OWeI6H4a9bQI?=
 =?us-ascii?Q?vBYVJHp4yPvCi+rqBTl605xKIn4fOxuUKGiwJD+6jf0n2UwqPZoHMmJuUNKW?=
 =?us-ascii?Q?B2WCuCyNIO9i9mu4mbAW/pkYf5OaVRkRgogfiSu+7HtNoUguuwBnSRyT7lYZ?=
 =?us-ascii?Q?n82OgwV42TpHE9Uiiu4hm2METwgqkXPgAgu8LJAALSTb8GOw0SXHfss2QRGu?=
 =?us-ascii?Q?AR4d0vy9G8mfl2PdhrbrY7yPv2uiZ8WyaiViVZwmEFfSHkA8JrzDeCFx3oIH?=
 =?us-ascii?Q?xfiFGu09rhS7I+cZWCny7WFE4yt+h9FW2MggObOfOGUMCFX4NCa5hZZPWP6B?=
 =?us-ascii?Q?LPviNSg+rP0K6TQvbHl6J0NAyzL/DNkYe3oOkIzZYj/9BVXtvNnfSoQTbEOU?=
 =?us-ascii?Q?GNHJASlrL4vkvxvPh/E3Yx5qDwL+IR4ixpubVOSarqVnjiHqE1aYkSzXGciB?=
 =?us-ascii?Q?WNoL86yt/kixLbzRk8tieq4nce9N1opqqRmaUXkRrMQC7fjP2dMpYdoW7xb8?=
 =?us-ascii?Q?WUHjqEjglnHtLqf+YmoWIh07Njya4CJb2nDe0YRTf5aHu3dkkbdQTxwXpWFO?=
 =?us-ascii?Q?01k0Hb+g1vLDY9jHEMaEtn/xLheRjhMaMVE2fqqZNeqrwUzHR+Zx1LlffbQ/?=
 =?us-ascii?Q?5V5LIjW46a9ORLe2i1ZnUZ9tNuTGP3UYJXuLAPogPLNCydVV/0UD+bG4T4cD?=
 =?us-ascii?Q?Jdq65ywVdsgf7wLiQ8yOvnwB5REYDUI+w+JaZIzIjurseRvsFbrJBY1E7lQD?=
 =?us-ascii?Q?kkAaUlbOGU1mETuRjgvx6mnAAsiGPQJuH/ojrzqphWCKdEX6g4fUR6/4m7jM?=
 =?us-ascii?Q?SXum0H4yqHLJBy0KwYdzX/0aRtSRi6cuWTyKoTiPlOqGfMsqRMe3iql2Yxi3?=
 =?us-ascii?Q?yX7EJXNUT8yX0v087dJqnGbfMYonwqxPitla5vvSyps2pLBbbU7Z1/0Jmynb?=
 =?us-ascii?Q?gjS2xX0HVDVo2NVrBNejmvSv0A03aorCedQRaqcvHr/zPxQUOCFkHCKNUfDZ?=
 =?us-ascii?Q?/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c62d27a2-cace-4808-a3f7-08dc799e94fc
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 14:01:59.3310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NLRLC9TM9zIOT0mwD1mt8j1fQ+3KDrspxBvXEII1rRQx/iTQ+kDQUiAe3DpDgyY7wDIYWeZQIDDeJfPdK1NrPb03ek0yL+1zHD0JSRTw6ws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7562
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

Hi Michal,

On Mon, May 20, 2024 at 08:18:13PM +0200, Michal Wajdeczko wrote:
> These compilation units use udelay() or some GT oriented printk
> functions without explicitly including proper header files, and
> relying on #includes from the xe_mmio.h instead. Fix that.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_device.c         | 2 ++
>  drivers/gpu/drm/xe/xe_gsc.c            | 2 ++
>  drivers/gpu/drm/xe/xe_gt_ccs_mode.c    | 1 +
>  drivers/gpu/drm/xe/xe_guc_ads.c        | 1 +
>  drivers/gpu/drm/xe/xe_huc.c            | 2 ++
>  drivers/gpu/drm/xe/xe_mocs.c           | 1 +
>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 1 +
>  drivers/gpu/drm/xe/xe_uc_fw.c          | 1 +
>  8 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index 8da90934c900..28a4e0c3b1fe 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -5,6 +5,7 @@
>  
>  #include "xe_device.h"
>  
> +#include <linux/delay.h>
>  #include <linux/units.h>
>  
>  #include <drm/drm_aperture.h>
> @@ -33,6 +34,7 @@
>  #include "xe_gsc_proxy.h"
>  #include "xe_gt.h"
>  #include "xe_gt_mcr.h"
> +#include "xe_gt_printk.h"

It is obvious in the occurrences of this include in other compilation
units below, but in xe_device.c I am not seeing the need for
xe_gt_printk.h, am I missing something?

Francois

>  #include "xe_hwmon.h"
>  #include "xe_irq.h"
>  #include "xe_memirq.h"
> diff --git a/drivers/gpu/drm/xe/xe_gsc.c b/drivers/gpu/drm/xe/xe_gsc.c
> index 8cc6420a9e7f..80a61934decc 100644
> --- a/drivers/gpu/drm/xe/xe_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_gsc.c
> @@ -5,6 +5,8 @@
>  
>  #include "xe_gsc.h"
>  
> +#include <linux/delay.h>
> +
>  #include <drm/drm_managed.h>
>  
>  #include <generated/xe_wa_oob.h>
> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> index a34c9a24dafc..f90cf679c5d7 100644
> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> @@ -9,6 +9,7 @@
>  #include "xe_assert.h"
>  #include "xe_gt.h"
>  #include "xe_gt_ccs_mode.h"
> +#include "xe_gt_printk.h"
>  #include "xe_gt_sysfs.h"
>  #include "xe_mmio.h"
>  
> diff --git a/drivers/gpu/drm/xe/xe_guc_ads.c b/drivers/gpu/drm/xe/xe_guc_ads.c
> index 9c33cca4e370..1c60b685dbc6 100644
> --- a/drivers/gpu/drm/xe/xe_guc_ads.c
> +++ b/drivers/gpu/drm/xe/xe_guc_ads.c
> @@ -16,6 +16,7 @@
>  #include "xe_bo.h"
>  #include "xe_gt.h"
>  #include "xe_gt_ccs_mode.h"
> +#include "xe_gt_printk.h"
>  #include "xe_guc.h"
>  #include "xe_guc_ct.h"
>  #include "xe_hw_engine.h"
> diff --git a/drivers/gpu/drm/xe/xe_huc.c b/drivers/gpu/drm/xe/xe_huc.c
> index 39a484a57585..b039ff49341b 100644
> --- a/drivers/gpu/drm/xe/xe_huc.c
> +++ b/drivers/gpu/drm/xe/xe_huc.c
> @@ -5,6 +5,8 @@
>  
>  #include "xe_huc.h"
>  
> +#include <linux/delay.h>
> +
>  #include <drm/drm_managed.h>
>  
>  #include "abi/gsc_pxp_commands_abi.h"
> diff --git a/drivers/gpu/drm/xe/xe_mocs.c b/drivers/gpu/drm/xe/xe_mocs.c
> index f04754ad911b..de3f2d3f1b04 100644
> --- a/drivers/gpu/drm/xe/xe_mocs.c
> +++ b/drivers/gpu/drm/xe/xe_mocs.c
> @@ -12,6 +12,7 @@
>  #include "xe_force_wake.h"
>  #include "xe_gt.h"
>  #include "xe_gt_mcr.h"
> +#include "xe_gt_printk.h"
>  #include "xe_mmio.h"
>  #include "xe_platform_types.h"
>  #include "xe_pm.h"
> diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> index f77367329760..64592a8e527b 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> +++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> @@ -18,6 +18,7 @@
>  #include "xe_bo.h"
>  #include "xe_device.h"
>  #include "xe_gt.h"
> +#include "xe_gt_printk.h"
>  #include "xe_mmio.h"
>  #include "xe_res_cursor.h"
>  #include "xe_sriov.h"
> diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
> index ed819f1df888..12346645a8e5 100644
> --- a/drivers/gpu/drm/xe/xe_uc_fw.c
> +++ b/drivers/gpu/drm/xe/xe_uc_fw.c
> @@ -14,6 +14,7 @@
>  #include "xe_force_wake.h"
>  #include "xe_gsc.h"
>  #include "xe_gt.h"
> +#include "xe_gt_printk.h"
>  #include "xe_map.h"
>  #include "xe_mmio.h"
>  #include "xe_module.h"
> -- 
> 2.43.0
> 
