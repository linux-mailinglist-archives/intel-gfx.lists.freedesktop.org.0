Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4C8995B7A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 01:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4E8310E60D;
	Tue,  8 Oct 2024 23:18:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HculvhFz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98DC910E606;
 Tue,  8 Oct 2024 23:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728429486; x=1759965486;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4lNZuDogNewpKISiinY4QXiP4dUj1ZVLbI445mtxCh8=;
 b=HculvhFzTTqyDFyynRvybW+Y5Rt3ivJFJUj/N17S8hqL3f5VufquEcRZ
 3NjlNN6Pw8Z3Ua4QxrWCk0fjckprbnTDsHFxhocGFe1CgkaraHI7FpXfR
 wrH1bU6KhkijJ63rhaK+oZ2mffW9+mfggXx4Kp8piq1OThpDB6Ac7YPjh
 Yx/B+lmJHSESpkaANnU7dN4BKDI/R1KpSIqZHcZeUZ0r+xXBLRzUCfN4u
 TG+hydvNYuIxXQHFJWijGmUMxzKmv+yIrKifAv3QTHi3pyIe2CruP60wX
 gYJGkS8ij0/q9vQ7nNucgIbemXvDTofIWidy7M4jTUVbJj+QsprQEQlDI g==;
X-CSE-ConnectionGUID: AYw3Dmi9RNi8A5CCDMCDNQ==
X-CSE-MsgGUID: Q5cfmp4YReeWrRk2F7WE+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39076641"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="39076641"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 16:18:05 -0700
X-CSE-ConnectionGUID: NxpJQaYzTSe+2zCLVhXleg==
X-CSE-MsgGUID: USWgBA+jTmG3TS8ehHcRZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80864481"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 16:18:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 16:18:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 16:18:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 16:18:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7T4e9W8QBJv89KGbB/4I/4gudpwDIp3P+vGVMXAl2ZPIf0UwYVbdAM4fuoN6yMozIUlLpdjQ1cDm/iuvj/YT3kjDUB8SNPIeFM59qDR7boE6+R7ssqnwyJvkyntZ4uVrap58oDXIxB2Wnjlz4JIxMsPMhi2iV3PBBdeXpGRzQAiYiSrYYSOe/4rpTRDEB9KdiVBW4usn2tn8QidFl6VeRal2c5Rt2I/aAXzcYkpa4fNQpczlsRaerhi6BZKCKdkW2yzDPdyAWObBQJxKyvIZM+9b+B95sztsavBzLipxwoYUheJsBxMRJ81jtSWNUwlty7todcinITV+pseonXw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AuNGROPNlzwrvWWVGdgkc3yXKixxLrqNMhQGJJPU/OY=;
 b=cIS0AFT8KpQ6vUJ3ZIt81Vf46OoIh2FWyxJ1Tth1sKOQq2HQN+DgKwjgQy4EjfP8NEw61aY3bEE8m56c9/sZCM4bFP46Aj4vOhPlveL4YqpTIo4pclWwyyKQFfh+225B0sMBKDQE+tlvDS2Y2pFlUq8xElEm0UdtIdsZt7p7eYwtiF2HHhw/BpJP/+Stej9RevGgCkU3UXgrNY1VVwdPsiiFbhqirOdhIBUpKbcnZJZLYmItlCJgUMO4MH3Q9okTYhE48uBbXlzK+9RQ8Kxcw6NkTbVbKhH5+bZTqUQdhgwUX2vlEgRq30NkMpsWjzGJ6XKW6zfsvsFbqThJnTWcRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 23:18:02 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 23:18:02 +0000
Date: Tue, 8 Oct 2024 16:17:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Clint Taylor" <clinton.a.taylor@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/xe3lpd: reuse xe2lpd definition
Message-ID: <20241008231759.GM4891@mdroper-desk1.amr.corp.intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241008223741.82790-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:a03:338::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH0PR11MB5265:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d5ed75e-2611-4625-2d72-08dce7ef74b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?A18jWzoUEY3xoW0RL46vEfS1W6ZIgGpqTQ3OU5vUM6JrQecNGDYPrUJ1xO3L?=
 =?us-ascii?Q?dEdkPwoCfwprwj2omTZhyWdKkG8mecqaR2JxxdFVvSRh+yD7lM7+sQxOQo81?=
 =?us-ascii?Q?hIJePt9ohPsdL1y8Pyh3cgOErM9muqnPUikRbyP4jrAnLAvqqtSVMrftFn+U?=
 =?us-ascii?Q?HXxDvp2mN7sddDKliAlF7+EwfCLj0IjJxyUvZ6shtUp8zauAeFMRAQIv5PME?=
 =?us-ascii?Q?9xvSYK0EQAHWFqnnEdfi35OGM3I/+IDhGXVSa0/IjRXEzXtr/NEe+x7REtdz?=
 =?us-ascii?Q?2cSY8rNmKijQ8uiiMQj+cb8EmqJvhJ3NjSsk6qmhjZDGq8Ndq2EYqQgoJVfs?=
 =?us-ascii?Q?/KXf1Ri1FMu/cdsTgCsoe2yEGg1wgf9yZEUmNNPzAb3l1OgVYZeK3rC+0gfo?=
 =?us-ascii?Q?8XOP8+EleZg6r/0DOv81qpAQPr5L8/d/ECJyB0xdVaNnEG2b5zfY7++CSHsP?=
 =?us-ascii?Q?+u5dtAtJPD/StWpE8f0j0xcNaLga84EbNvvBF1JcTQweMPTxeOMG0tedvI4/?=
 =?us-ascii?Q?ycMvf+RAPw9FIWDslUsk4AOQLfNzhcKp4vkpQrcuGIeFav0VW/XOCy8MLtrM?=
 =?us-ascii?Q?QK1y9BzWmXwJ0Ar2ZSa5Qlybe6KFutg/dfmBWIJxPBKylZw9L7DqFjM9mtAX?=
 =?us-ascii?Q?WRdPGH+P8MWpqS9j4xKs1Kr66Aoc1s82ebDFwe759eBZs7mcd/f+CltqSucy?=
 =?us-ascii?Q?96UP78C5CU8bKkz/xcwFFm9koJZ5AHOO4aju6NLIS6wCxgDwi/PA1NqYd09j?=
 =?us-ascii?Q?U3C062bKTwF/ucJC+8Mapni8+njjZoEwx914phHsTlEY/ktY2LR/3ZAJryGz?=
 =?us-ascii?Q?a5L38jaUPkBRgI3gORuoCoF/KJDwGomihBksL7G3wETeP0sxPaVoT22002qI?=
 =?us-ascii?Q?UAM5Nyj7TxOmaZtrh+mlAyD38xtFQWkwkMXYhFiBNUjfTdB4Z8wUUcBFHI0m?=
 =?us-ascii?Q?35h6zQ7NXQiH/k/PT5hXvsMHn02nvF+UVJilUr8SGXtWt2VIew+EFcdilNCF?=
 =?us-ascii?Q?MoK4BULQgau4CmlrgNikjbdZYK/d5gSNbj97pu6zfJhUS3mTwPPlAwHhUwyS?=
 =?us-ascii?Q?w/sQOe6MfYE0mgG+sSMcMCCwwBYXFWsGctxeDnaFC1lltXU0glo8FZv3B7Io?=
 =?us-ascii?Q?NqQYwdJaW6AXqTiCXxMxi3TZybosO9ed6cHh5vVpY3lbNefvtx+kn1VrfMXq?=
 =?us-ascii?Q?/uDj/BDHi39LtYOxkmj89LdvZXMRBIlfeqtGYqXg3aeBIN+mz7SgR2jLbLZs?=
 =?us-ascii?Q?/Uxm1jPH+botiW3oyq9Pt3+eCzBJvje9+enaH8gerw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nZ0XX/bAkr4T8fPDj36y0v62RzHa2nzDWAfcrNK2YJNU7/3LCIltSkPw+6Ba?=
 =?us-ascii?Q?Wh/5VWMI3fD9Gk/m8MG5UKazAf3NQ3ZWkkOzyn1MTwhXFwXiNJwxS08W+bm2?=
 =?us-ascii?Q?7b7JYyO02BlOqIheUiKoyqwmrMc6/2mkMa75vyBm1WGVG2MpiRGpJjOSO/Sw?=
 =?us-ascii?Q?9p8rZVY7bMuK//9Rk5QgwG0yAnw0IAFW6avv4Jjv5zIcz1SsyqQ0aRrUg/BT?=
 =?us-ascii?Q?ieBWVP0OlcHAFHeI+0Y822gxHI9G1XJ5dLV/zurOsvnYYt9ALlAFCoPMMc0R?=
 =?us-ascii?Q?EPxDeoghv/A4Z/grsHU/l1qfvuk/mE+LlobsK6KGruab1p8itw/PHoNrSbIF?=
 =?us-ascii?Q?eYryp/0vca27zN/uhAn1swMaqOBTj/WCk9m+E77VCK2rDPvJTv5RrFzeMXvz?=
 =?us-ascii?Q?3Cutfs0NOTqjjB1vM10s7sgFeXXMNjWNopXH/KA1aZv5ulUNxqm0AVu78/wj?=
 =?us-ascii?Q?kz/000NN9uMX1A57ODz015E6i00Ku8BPb4/YSIh4vmjRHGXcUwwngiji3LyQ?=
 =?us-ascii?Q?TJcndcVjl6om+mi4m1tWjQ/tPDnDczPHXtDVewou3V/2BR2fx8aEOkPuO9vD?=
 =?us-ascii?Q?qnfrFWT1CNFJlFuAX/PoveLdLmdoykt9I1yNP7VndzQFbEUjKxlq/int4uaq?=
 =?us-ascii?Q?4OyAedvZpP3OH6R9IX0sn4/9vscbR3IWAY0Ohk94xNcbLKbT5mHzC1SszCBN?=
 =?us-ascii?Q?FsZA3Sfc6U4w3FSwmtegfxKzPKFjL/In6ceGwi1O7IPLkZB27bywejtm2af4?=
 =?us-ascii?Q?m1OgOhtTozRlUdGsf1V2hHDKXytKvs0SspHmqynQdc0+gf2TrtIclPFFSj1T?=
 =?us-ascii?Q?LVdi9ii+AVCYQEgpwreA2w1nxSzucz6ZHSJD70pB3uDY/QJHw83OxGVojjAx?=
 =?us-ascii?Q?1R2Yr6oK+e/7hu5xetQSuDttgDsY9/kLTbUCZSvY3sfGLLPPi4/wMxWdPn7I?=
 =?us-ascii?Q?CGaWSIwFrhx7w3BteEHXZDjHgHVkbAROzt/l3VZtzHUoY7kJ6SoeleAAc+Ix?=
 =?us-ascii?Q?YRT2fcF0YszG5a7AKaQ+akc7x2vEDIPfK+51Ip0BmxUwdTIiwsUhHDWAY24F?=
 =?us-ascii?Q?/Vdzgbg8fKyKW9Zzq87dBrWyJVWbUivxnw8o5Aw9IJtycOgv3JFqgw1I1qSV?=
 =?us-ascii?Q?gdIoYMrd5yCpQfUe4M28/YETzlxQquj1mACKnzM9M6KMEj5l2G/K2xYEYrir?=
 =?us-ascii?Q?63Z7ru1T3fENwa7BhD/dGceq0VKdYDYRKiSlOR49emxMOE3Xy86OTpZ58/xY?=
 =?us-ascii?Q?g0UAya+27yvZZR/HehHgrVofCr7sUIw8++YCObN/MDzcHqWZf1NNFBK+8cIZ?=
 =?us-ascii?Q?Xd4f2TBeXAU3ZptYhN/i8z6l22L9gu8cjouS28R3PgmYyJmKMr6EcGOMFrpN?=
 =?us-ascii?Q?rQICjbgm/5BJvA2vT7eZf+TkvbiM05Vop2rsP3i/2p68nR54DrQZl/gsh0Xl?=
 =?us-ascii?Q?YGC6vKxekG3KbkBcAPeAGw1gIypjlmhmyXVTaKAfjyu8tSDBF9y1KshsfS9d?=
 =?us-ascii?Q?4qx5AJ8riNaIBROsfKkWzBE64V7bG2BuUDsfs95diW5aHQVl5bh2libe4y7r?=
 =?us-ascii?Q?Ae3wbGqgr9KMNLstFGDmDzsMm1Ml2FOWXtlEPwXuCwfwIIQwjCR8cfOdB8Ok?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d5ed75e-2611-4625-2d72-08dce7ef74b7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 23:18:02.2678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HdSRSHaOuGwsDlRLd+RK1Najey8rDXEdEgxZk2nt8O1mweCUO4L85UyrFZX4M/DEobO3UeXQ0TAwksJUBfxekK119i1xHFepZCXyoS+sfHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
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

On Tue, Oct 08, 2024 at 03:37:32PM -0700, Matt Atwood wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> xe3_lpd display is functionally identical to xe2_lpd for now so reuse
> the device description.  A separate xe3 definition will be added in the
> future if/when new feature flags are required.
> 
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_display_device.h |  2 ++
>  include/drm/intel/i915_pciids.h                     | 12 ++++++++++++
>  3 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f33062322c66..aa22189e3853 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1252,6 +1252,10 @@ static const struct platform_desc bmg_desc = {
>  	PLATFORM(BATTLEMAGE),
>  };
>  
> +static const struct platform_desc ptl_desc = {
> +	PLATFORM(PANTHERLAKE),
> +};
> +
>  __diag_pop();
>  
>  /*
> @@ -1322,6 +1326,7 @@ static const struct {
>  	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
>  	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
>  	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
> +	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>  };
>  
>  static const struct {
> @@ -1332,6 +1337,7 @@ static const struct {
>  	{ 14,  0, &xe_lpdp_display },
>  	{ 14,  1, &xe2_hpd_display },
>  	{ 20,  0, &xe2_lpd_display },
> +	{ 30,  0, &xe2_lpd_display },
>  };
>  
>  static const struct intel_display_device_info *
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 3ef537fa551a..071a36b51f79 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -70,6 +70,8 @@ enum intel_display_platform {
>  	INTEL_DISPLAY_LUNARLAKE,
>  	/* Display ver 14.1 (based on GMD ID) */
>  	INTEL_DISPLAY_BATTLEMAGE,
> +	/* Display ver 30 (based on GMD ID) */
> +	INTEL_DISPLAY_PANTHERLAKE,
>  };
>  
>  enum intel_display_subplatform {
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 02156c6f79b6..6b92f8c3731b 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -794,4 +794,16 @@
>  	MACRO__(0xE20D, ## __VA_ARGS__), \
>  	MACRO__(0xE212, ## __VA_ARGS__)
>  
> +/* PTL */
> +#define INTEL_PTL_IDS(MACRO__, ...) \
> +	MACRO__(0xB080, ## __VA_ARGS__), \
> +	MACRO__(0xB081, ## __VA_ARGS__), \
> +	MACRO__(0xB082, ## __VA_ARGS__), \
> +	MACRO__(0xB090, ## __VA_ARGS__), \
> +	MACRO__(0xB091, ## __VA_ARGS__), \
> +	MACRO__(0xB092, ## __VA_ARGS__), \
> +	MACRO__(0xB0A0, ## __VA_ARGS__), \
> +	MACRO__(0xB0A1, ## __VA_ARGS__), \
> +	MACRO__(0xB0A2, ## __VA_ARGS__)
> +
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
