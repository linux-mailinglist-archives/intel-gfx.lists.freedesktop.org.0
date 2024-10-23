Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2759AD262
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83DDE10E7FC;
	Wed, 23 Oct 2024 17:19:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jTtoccEr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 029BC10E382;
 Wed, 23 Oct 2024 17:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729703977; x=1761239977;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XGbRRFMgNBj1LtsTKbVbXbaGcLgsyKzSGvy6vdwOBvk=;
 b=jTtoccErnFu/P1cHj4G3puVxIfj+7QR78314JhPfVE9iULMzMqkt/7DA
 RJ+3rx5u+M73FfUMyYRGte3O/bEYXe+HxHeby0AcU0W/dj6SkAZIUwSI0
 uWcZmlDRKgeAenrhp2bGkJNLKgA4+TjwdveZ5uQq+Nmp4Y7y3YOKwIQzD
 YlF2+/4WVdOxwTEMSKZyDku7o0cYrOSRfnZpJO8FIsZd+JO72sqKWW1Xl
 vlKjJ3iTpBDD/eKX5WWVai/acqP11mfGwrRUKzYEaPVyfxDRPoETdE0jy
 rQqrFiGRtUJCkDfQ8XjaL2MYHtbO45izP/6gDKHCiEASElGjMAhj47Aak g==;
X-CSE-ConnectionGUID: tIepmMZgQTigk2+paZEetQ==
X-CSE-MsgGUID: 2HO4MvCdRKqWmjbvlqbOxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29174690"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29174690"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:19:36 -0700
X-CSE-ConnectionGUID: +zwZSHskQE6XH/3/a8zU4w==
X-CSE-MsgGUID: EzloFxtNRFeLOCNInLNJMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="85408137"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:19:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:19:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:19:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:19:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L7QXZdpIE/xrWfpUmb6XGm71OLzJgq5OWKGXdY2E3bId8NA7oB/VECpku0OzSygrD7r80Zb9BFY2rpgLAsWCi1Pll1RlE9oRM1kTf2QjUiVx/h50cJpcwI017VMrDCshNmscjQ0Xp2iruSYJ8WhzkvCTEduMgLIEEyu6eDimhmrZzLfMCmdJK1CwyeE1POxGg8/zu1XHtJwArZ+h8R7WRMUl4SNbq/OUXPmtxvgTfVFSGftjehxmE56qz+Dp5SvZ6oVYws7mCUMTQoIg36TkN4utDC2UCkrhoMeKxYMw07yn2HQqzFCKI6sL9MBshG4yF11ryF6MbU6qASBrMC52XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CERSijdje4iIw+p931bqWJ5PpD9josbA/Cz9+QMIqig=;
 b=R4uq5Fy4UAwQyrJ8uZjbtaUzj5Y/Xe4L+7nHk3FLbTPuyFdfq06Ku/JfSWgI9KyG9yevbcpTg2x27ymBD77XYwPNFTmY3h8yOICnORkQt1WWH9UL03zg3pNpxzgK53flxudvANtWZDKjQ2ihudGXbaaMQDyCTYu9bK18svPMnNw2iS/5lTxlIlxJqKxRed435j3ZxZp3xMBaUzr2lsuhb0oLa7dSftDUQxgathOI8SeswKNk20ymZrau7OgSECmztNTZRIjgaEH5s5oBpHQBIoeY5DsVxzcyDlQ3uvxVJ+xiS9UyYtLh6MbymvkFVKcPlYXjTcFunweFEf0HfYCWnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 17:19:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 17:19:28 +0000
Date: Wed, 23 Oct 2024 13:19:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 08/11] drm/i915/power: convert assert_chv_phy_status() to
 struct intel_display
Message-ID: <ZxkwHLY6C4ohOfJU@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <b1736e99b5c11d0e6eedf2b2708789f946bf81f6.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b1736e99b5c11d0e6eedf2b2708789f946bf81f6.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0016.namprd16.prod.outlook.com (2603:10b6:907::29)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8107:EE_
X-MS-Office365-Filtering-Correlation-Id: b0aa7237-5876-48cd-eee3-08dcf386d94d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TpWDEZQNHJZ4vC+SHFGCyS0j32UIyYMM5qRVYEJc4iRKyf2s/pJYJNMa8AFF?=
 =?us-ascii?Q?kQCb62fI/E4uI/8ln0waWdsBACd/0QTyIV/kEaY7GcLgaRMVw1T6k1N9pCD4?=
 =?us-ascii?Q?TeWgvTgrZFUAytd5IZ7JoQH+k83pWciDz/+hwelAeAh0RvFRM7WlNiT3s/PB?=
 =?us-ascii?Q?UAdbHEgYYDwffosFy80V2dtLLtmgeV+d5NLwnB4lSGyKEDGV871nY5AZruXA?=
 =?us-ascii?Q?O1I3KDEfZJegn86Ikdqh3Pk14YBXbGOmjVov6gi1tRYSvPEZ7ejrWd47T3oa?=
 =?us-ascii?Q?7ewfQRc263SsqW0HVJBzn1Co3SC2fP0T/2nWmQFY07hJWmXk2kvnYG00tenS?=
 =?us-ascii?Q?4Mel2aXOOHR3UZIsBwSMtYffW+XAiu4m6FhVwmjAx7QbRcqKhoGDGyqHeK1s?=
 =?us-ascii?Q?HzqD4EGV8V+9mpclCJHg+8bg12wAAvGIcsF0bpH8exzPE9Uu0Cu5izEPVR7i?=
 =?us-ascii?Q?MyGJtc+hyO7IEaJP5jWc/oiJpICEjj/s0a+0l+GEIQYdzSsnQRUdAVwtXs52?=
 =?us-ascii?Q?nSBm41UX9pPOXG9K5C1auI/69MR/C2FGJe6bHzyVY8asjfmdK8f5SO7RY8In?=
 =?us-ascii?Q?W1iKyVkvFe6d9lwduD5nx9FrjygxFXSJye72w1oYklJz4kNEcgWF5nSMbaBv?=
 =?us-ascii?Q?8Sgsqv9EsO1LESjOxdXt2f3c5F7RFtcWa6YK3DMX8tDdE0OyczyoBrHnTaDi?=
 =?us-ascii?Q?zrSL0uIEDorYLjAyYBRArmUF1XSHVPX+scLEbByZjSlUuT7EHbRyc46Bvdt1?=
 =?us-ascii?Q?F09+En1NoEGg5aJb8jd5JJy2y/7UXZGgwpXgrjNlPqHkhVsmwnOlTV4HiOcH?=
 =?us-ascii?Q?VSmJpzsCDyPQciV//MtJlV30ZYBHDzhOYrxk3iE7eTFeLTDPiSq7+RM51tqJ?=
 =?us-ascii?Q?UTMCduSa8ao8BZemCq9bm7JdUVtQbED4jKND3AyvW2Q7Ywt0hLcey7AA4+2Q?=
 =?us-ascii?Q?PEhfHJlnpHSS3ziyC0wvNT+RIf7gHpJ3ZUV6+bvRjXfved3ga8ahy19wZUQQ?=
 =?us-ascii?Q?tE7oWpy8F/HwN/DlvdeMrCire/In8ngTIy8jYHl5/b717Nu5XiE6p9/HevYn?=
 =?us-ascii?Q?4FnVoBU+iGCL/BFhxA1baW+E4v97XRjecBEwvKYbgCNHpBX7rzvJunYcXPXy?=
 =?us-ascii?Q?W1ujUEnmB+Xm6dcVUbqYNRwW5l7XAwzcrWRxcI/U60xuMPNjkMFfMxAss9nW?=
 =?us-ascii?Q?Iqo8XbOoYdljjpetDWZpT0mggOScke++btjIo2cv25KhL60ShrV0w9OG0JRV?=
 =?us-ascii?Q?96TStrw3svQU0Ej3etHuaZcGEWGGxMn208UWPJD0mRyvLT6SOPK1X3C89kz9?=
 =?us-ascii?Q?d63hHZ/bfQimW1h3La9UeVbJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8UZ8HPLW2EOGlaZnothzvxKPGtrx3g9wFZLcRy0iHHQ8DrpB+cn2lc0vvPwE?=
 =?us-ascii?Q?O0f4SQguS8b/9u0jB7MilhTpZ9VR78B4NCYYUdGcW/HFZq4Ldt/73l6hNfvB?=
 =?us-ascii?Q?2aDZR9Vy1LirTf3mV5C//ITBbWbaUakQAxj3KI2EG6TiKsq0PPply37tDxc+?=
 =?us-ascii?Q?oVZD173w7LfxftgAhkLtkjG4eRO82U4qfo2s5cItdVK2Is2B0E1N4BZVW3SU?=
 =?us-ascii?Q?yN5z9J3ArcRPZrt0M3nR1IIYYVljUAuhb4ABpEwgKzBJRWOK0YYyVlxP3zd1?=
 =?us-ascii?Q?QhNkGG/YuUrFMDTXjDb7aDmGxPCp7JPFe+qh7NuAdaWcUTXnqngCmicUiKPZ?=
 =?us-ascii?Q?c5XxecVVTc0l1h6Z+YvpXYP/9era1vebsPOJ+KuvA1ek778Ihe1Ikfd5W4eF?=
 =?us-ascii?Q?J5tLh4WIPJJ/B7f8Zrdz8oBIL3wtuhMSnvi3hOjZTpv2S1vLYWkbE/tLRlyg?=
 =?us-ascii?Q?grpE+XVrQFhqNM17j3aw00qmRYXAWKJtDxxvTpivPcUPvKV4U62vM1kEH/3d?=
 =?us-ascii?Q?2iwf8S7nGX2cyGnXFgDt32gkQX95q3aq5e2QnFhHSnhOnQymo9z0WMp/DsR2?=
 =?us-ascii?Q?5wTXQiV1ZO/wMQ5ap70kbMHWEgOOVxGTAt/0O+uOsOKIMSL4kOOuRZwK7a55?=
 =?us-ascii?Q?y+h2pGgd7xYucQekLDM0P7jjGenWkem5f9xE2SDZtucIAgLdC+QV2alJsb3N?=
 =?us-ascii?Q?Hmzmn/W858vrfD8iQ5eLSsF3PKIdoyb41YvIH5fOUG3VD4TjcwDsd5DN/QX/?=
 =?us-ascii?Q?ODvBSnyqeMlcLSloKnTq3J17F+obDG71RnSE2Qm9EaFm6xtE5vaVW+bsjBj4?=
 =?us-ascii?Q?xG9VArcPlY8WgsU04Mu2qWlMe8hM+i2eokN9yUw5H3Cr31x1aM0/JuB2YgnM?=
 =?us-ascii?Q?fYKk3uelBk4tEE0ldnBMrNsKA9T5mfSY50Cx3bDmGSliC2XSBD7cSx95XEFf?=
 =?us-ascii?Q?sdCeweiSqptXIUbtxuVHcWib+i4KAS0j5lq5iAtJyyAvbSoL+cVWfQjO34th?=
 =?us-ascii?Q?aH882jMC2Pav2FzFe2C6+z88XjQiFjbTmCCGfAhjF+gfMT1dClQaHPQSID4B?=
 =?us-ascii?Q?OkwzPA7ppqP64Bt8XjJ787StrLmnDSOurWt0muJ8pzz4dY8rgOBRGg8A/+hC?=
 =?us-ascii?Q?wmqwgQA8neOpVSaqj+isvA4lK5fsSiDa9XuyfkteqfRysYZxV5VuZezvP9To?=
 =?us-ascii?Q?uWDCCeZe+tB0Q0X7imXUZAGinvixN86QPS7SI2LHwGUiSawz55n4Uddk1wyP?=
 =?us-ascii?Q?OfFL/EVouqRuk9b0KcBVQDPWJ8DHTOXY2TldmwgSJfhzCESwc5TTOKrsPYzE?=
 =?us-ascii?Q?0zgY7qqDeHl+SUxww7ycMcVqaEtoHizOztc2p5BpsXefg2jUwoxNZpfESGT1?=
 =?us-ascii?Q?+Nh2g0XD/rB8xv1VegZrzkio9Nb2VjNAp3TjImUavkBilt0mV1D1KnPg2TIY?=
 =?us-ascii?Q?qYemMd+dc9w8Fejpjg8mvMSbtBnAa3iz+KO3MmXidiim2jpq1aK+84BKEqQ6?=
 =?us-ascii?Q?dbjZqd0Z72xeI4Yv2URsTJrglTKyEF5Nhhxg79Zb1DK5mWr3yb1SN7fhYNxE?=
 =?us-ascii?Q?YTLbWXEhobjGvoePaqilnv515XM0iCYZm2POVbUuJclqQYEYa32JMNcz/y5K?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0aa7237-5876-48cd-eee3-08dcf386d94d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:19:27.9707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fd3hWxE1ISIzJ0+pRSlavsPqPQk3pzXLxFSfhSSCXVOyp/W4GXOZZknALmA4F5RBctRZ3+6BB3W7eaDlmBRhmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8107
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

On Tue, Oct 22, 2024 at 06:57:25PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch assert_chv_phy_status() and its
> callers to it. Main motivation to do just one function is to stop
> passing i915 to intel_de_wait(), so its generic wrapper can be removed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   | 95 ++++++++++---------
>  1 file changed, 50 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 885bc2e563c5..f0131dd853de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1337,13 +1337,14 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  
>  #define BITS_SET(val, bits) (((val) & (bits)) == (bits))
>  
> -static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
> +static void assert_chv_phy_status(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct i915_power_well *cmn_bc =
>  		lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
>  	struct i915_power_well *cmn_d =
>  		lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
> -	u32 phy_control = dev_priv->display.power.chv_phy_control;
> +	u32 phy_control = display->power.chv_phy_control;
>  	u32 phy_status = 0;
>  	u32 phy_status_mask = 0xffffffff;
>  
> @@ -1354,7 +1355,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  	 * reset (ie. the power well has been disabled at
>  	 * least once).
>  	 */
> -	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY0])
> +	if (!display->power.chv_phy_assert[DPIO_PHY0])
>  		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH0) |
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 0) |
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH0, 1) |
> @@ -1362,7 +1363,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 0) |
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY0, DPIO_CH1, 1));
>  
> -	if (!dev_priv->display.power.chv_phy_assert[DPIO_PHY1])
> +	if (!display->power.chv_phy_assert[DPIO_PHY1])
>  		phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1, DPIO_CH0) |
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 0) |
>  				     PHY_STATUS_SPLINE_LDO(DPIO_PHY1, DPIO_CH0, 1));
> @@ -1390,7 +1391,7 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  		 */
>  		if (BITS_SET(phy_control,
>  			     PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0, DPIO_CH1)) &&
> -		    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
> +		    (intel_de_read(display, DPLL(display, PIPE_B)) & DPLL_VCO_ENABLE) == 0)
>  			phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0, DPIO_CH1);
>  
>  		if (BITS_SET(phy_control,
> @@ -1433,12 +1434,12 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  	 * The PHY may be busy with some initial calibration and whatnot,
>  	 * so the power state can take a while to actually change.
>  	 */
> -	if (intel_de_wait(dev_priv, DISPLAY_PHY_STATUS,
> +	if (intel_de_wait(display, DISPLAY_PHY_STATUS,
>  			  phy_status_mask, phy_status, 10))
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
> -			intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
> -			phy_status, dev_priv->display.power.chv_phy_control);
> +			intel_de_read(display, DISPLAY_PHY_STATUS) & phy_status_mask,
> +			phy_status, display->power.chv_phy_control);
>  }
>  
>  #undef BITS_SET
> @@ -1446,11 +1447,12 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
>  static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  					   struct i915_power_well *power_well)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
>  	enum dpio_phy phy;
>  	u32 tmp;
>  
> -	drm_WARN_ON_ONCE(&dev_priv->drm,
> +	drm_WARN_ON_ONCE(display->drm,
>  			 id != VLV_DISP_PW_DPIO_CMN_BC &&
>  			 id != CHV_DISP_PW_DPIO_CMN_D);
>  
> @@ -1464,9 +1466,9 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  	vlv_set_power_well(dev_priv, power_well, true);
>  
>  	/* Poll for phypwrgood signal */
> -	if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
> +	if (intel_de_wait_for_set(display, DISPLAY_PHY_STATUS,
>  				  PHY_POWERGOOD(phy), 1))
> -		drm_err(&dev_priv->drm, "Display PHY %d is not power up\n",
> +		drm_err(display->drm, "Display PHY %d is not power up\n",
>  			phy);
>  
>  	vlv_dpio_get(dev_priv);
> @@ -1494,24 +1496,25 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  
>  	vlv_dpio_put(dev_priv);
>  
> -	dev_priv->display.power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->display.power.chv_phy_control);
> +	display->power.chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
> +	intel_de_write(display, DISPLAY_PHY_CONTROL,
> +		       display->power.chv_phy_control);
>  
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> -		    phy, dev_priv->display.power.chv_phy_control);
> +		    phy, display->power.chv_phy_control);
>  
> -	assert_chv_phy_status(dev_priv);
> +	assert_chv_phy_status(display);
>  }
>  
>  static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  					    struct i915_power_well *power_well)
>  {
> +	struct intel_display *display = &dev_priv->display;
>  	enum i915_power_well_id id = i915_power_well_instance(power_well)->id;
>  	enum dpio_phy phy;
>  
> -	drm_WARN_ON_ONCE(&dev_priv->drm,
> +	drm_WARN_ON_ONCE(display->drm,
>  			 id != VLV_DISP_PW_DPIO_CMN_BC &&
>  			 id != CHV_DISP_PW_DPIO_CMN_D);
>  
> @@ -1524,20 +1527,20 @@ static void chv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  		assert_pll_disabled(dev_priv, PIPE_C);
>  	}
>  
> -	dev_priv->display.power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->display.power.chv_phy_control);
> +	display->power.chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
> +	intel_de_write(display, DISPLAY_PHY_CONTROL,
> +		       display->power.chv_phy_control);
>  
>  	vlv_set_power_well(dev_priv, power_well, false);
>  
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> -		    phy, dev_priv->display.power.chv_phy_control);
> +		    phy, display->power.chv_phy_control);
>  
>  	/* PHY is fully reset now, so we can enable the PHY state asserts */
> -	dev_priv->display.power.chv_phy_assert[phy] = true;
> +	display->power.chv_phy_assert[phy] = true;
>  
> -	assert_chv_phy_status(dev_priv);
> +	assert_chv_phy_status(display);
>  }
>  
>  static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpio_phy phy,
> @@ -1607,29 +1610,30 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
>  bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  			  enum dpio_channel ch, bool override)
>  {
> -	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> +	struct intel_display *display = &dev_priv->display;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	bool was_override;
>  
>  	mutex_lock(&power_domains->lock);
>  
> -	was_override = dev_priv->display.power.chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> +	was_override = display->power.chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
>  
>  	if (override == was_override)
>  		goto out;
>  
>  	if (override)
> -		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> +		display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
>  	else
> -		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> +		display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
>  
> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->display.power.chv_phy_control);
> +	intel_de_write(display, DISPLAY_PHY_CONTROL,
> +		       display->power.chv_phy_control);
>  
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Power gating DPIO PHY%d CH%d (DPIO_PHY_CONTROL=0x%08x)\n",
> -		    phy, ch, dev_priv->display.power.chv_phy_control);
> +		    phy, ch, display->power.chv_phy_control);
>  
> -	assert_chv_phy_status(dev_priv);
> +	assert_chv_phy_status(display);
>  
>  out:
>  	mutex_unlock(&power_domains->lock);
> @@ -1640,29 +1644,30 @@ bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
>  void chv_phy_powergate_lanes(struct intel_encoder *encoder,
>  			     bool override, unsigned int mask)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
> +	struct i915_power_domains *power_domains = &display->power.domains;
>  	enum dpio_phy phy = vlv_dig_port_to_phy(enc_to_dig_port(encoder));
>  	enum dpio_channel ch = vlv_dig_port_to_channel(enc_to_dig_port(encoder));
>  
>  	mutex_lock(&power_domains->lock);
>  
> -	dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
> -	dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
> +	display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy, ch);
> +	display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy, ch);
>  
>  	if (override)
> -		dev_priv->display.power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> +		display->power.chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
>  	else
> -		dev_priv->display.power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> +		display->power.chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
>  
> -	intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> -		       dev_priv->display.power.chv_phy_control);
> +	intel_de_write(display, DISPLAY_PHY_CONTROL,
> +		       display->power.chv_phy_control);
>  
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Power gating DPIO PHY%d CH%d lanes 0x%x (PHY_CONTROL=0x%08x)\n",
> -		    phy, ch, mask, dev_priv->display.power.chv_phy_control);
> +		    phy, ch, mask, display->power.chv_phy_control);
>  
> -	assert_chv_phy_status(dev_priv);
> +	assert_chv_phy_status(display);
>  
>  	assert_chv_phy_powergate(dev_priv, phy, ch, override, mask);
>  
> -- 
> 2.39.5
> 
