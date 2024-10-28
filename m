Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 900CA9B3A4C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B1110E52A;
	Mon, 28 Oct 2024 19:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Apai9pWK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFE310E52A;
 Mon, 28 Oct 2024 19:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143063; x=1761679063;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Uny4ZMEFIWTOSX1e2O2jGOiT0PnzzKiSGbL3HPb7t58=;
 b=Apai9pWK+6xEquSm+6Xbaq7n3OpeSB/U7pOq0eSeUeAqfR+xxVLkhHF8
 kniYYNNfwEhHKA2jJmnzBAWXfyyEVXKsn3BZYWZS5d6Sz9r2GUJ1dCtdf
 oc8VI84uwwRUJ8PrUafeVM25lQEM8vqyEyCnkkWt4ezRbotbVOjJL3dj0
 jBtZBOO6VvRpcHG+gWHW84Coq0wfHUmIr56mGNvtxBTg5YXEuz1ihdpHm
 Y/wMe8mDYsosWt0Ey6GZqrnN2XCsRe08K+/rzGZjLYyYpAlbejoWrIYRZ
 l77lUwqBl5lBt9RuPKgs6IYP9NrWt8c5uY0GbkGHYEWmT3WOU2hEXzbO7 w==;
X-CSE-ConnectionGUID: 4mVX3WZbSc+iPlIdAsXSEQ==
X-CSE-MsgGUID: 8b6ICEORT2GBNDRxj1x79A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29897931"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29897931"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:17:42 -0700
X-CSE-ConnectionGUID: AuXIUoV0STS6mZmH//deoQ==
X-CSE-MsgGUID: xGbre7XWRByccEKDVleccg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82528631"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 12:17:43 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 12:17:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 12:17:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 12:17:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KTYfyOEvPLYTkbxjQP2fgoBtKzxOUZWv6VGw/xQXt/rGZ9Uds61zhsbn1aRSe9N/ziAmH7l48pB4ys8kRNu6MgmSBh1xbgQ6NMCvZuA0QH3C9QX2eMviOpPx2Txsq8zav21XacZBhDk8JsSEklzFYJP45LHojLFYDRqDKa7UriXwrkZWQVTw66FggyPV5Nai8HMNu8oLz5s+CKKvEimz39ED2whE+r3CsPuRaM/aF1f32B4Cjl27zSi349v0x9zy5qH7MaafpVOt4z22EeOewtg1o+pUYNPXfI70yRZmnyIwKHypmhWewGXc3v67YQctGPEHv75EUSbe0F0ZKrwdmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JSKSHjRahN/wB/dV+iG3L7nuPvMAA2I8ni936jTFGOk=;
 b=Ne6Z53kvtxJ3KxL1DHz5i5LqurM0lIGj6ouAU6mp+iUUMvkpAlozpy/h5WYwLl6+EPJVXs9L4nScrvaOeE2qjNSkPpcWpHkcYSYgkujkYxnI4kpS0GueHq5K1K45j5bbK2+LA8ZSBNv9FW6BFFKLe7uYdwH2YCFwIiVE6+s1DtEqp04OLec68n7kSr7cmn83Q7CM7Ccn7z4Olbk5+b/NWC3n28uZLoKRoFNrQINeMAqdKh+CCFCxGlg1PXdLvp1NKv3QRW57soMhAIYRkNS4qCTNmNKPhDaL1Uebt3vS/96VKtZh7+MKQQdJzHp8N9+4qHB80nIqoR5twQmqyhVHjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH0PR11MB8085.namprd11.prod.outlook.com (2603:10b6:610:183::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 19:17:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 19:17:39 +0000
Date: Mon, 28 Oct 2024 12:17:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v5 11/11] drm/xe/ptl: Enable PTL display
Message-ID: <20241028191736.GS4891@mdroper-desk1.amr.corp.intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-12-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241025204743.211510-12-clinton.a.taylor@intel.com>
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH0PR11MB8085:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b945e51-5bcc-4b25-efd0-08dcf7853031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CywQL4aglIw/IUGNmlYsrC4874ru6u+pLOGY2D3+l/QVKw83k0c8tA1AMaMp?=
 =?us-ascii?Q?Ys5WR+D/rH1P8jI4b6p32WBb7jYzGDTDdLwLq6VPMteT7kXltfOXBnFW0CD1?=
 =?us-ascii?Q?Hd0pAJFfViqgZZFtnJM4gBeIpBFmhrUD78LkJpdBX5f4Mh5WHrJ4m8OZ5mGM?=
 =?us-ascii?Q?MLbKr06LO0jKjJTFfQiW++Lpep5AnOq/ZnPKUEdZtXxKpW+r7NXM2G8W5D3C?=
 =?us-ascii?Q?norI5xNVQNgvOBLapfOjDNOF1VEjQO1tIkcJrafu7tE1YL8dJLqGA0RWwau8?=
 =?us-ascii?Q?uSUzasKKIhx9kMiwTgAAHpoETauG1AhJ9OZ8ZRZN+dw0cCtKI8vt9fFeL02U?=
 =?us-ascii?Q?flyZb8WDBtmE9gjREDlGRheC6nmPpVpQFYoU1kHFY0+gcinmUlTJaHKxaKGx?=
 =?us-ascii?Q?yxgo+i7jj9QP4t/exq10RNnzMnc14jCWK/nwQ8jpi6GPf/oDo/OU8fvtql2m?=
 =?us-ascii?Q?boTcxPXENCM11K1q2nE1iKVg7uRVtSW+XULxq5FLfJwdnDoMQvih+9qGGI3V?=
 =?us-ascii?Q?ZD05j6WPqbaJ8DUlzKBELABFJLpor1Fph1ZyOgB0DdDnyIi0mq96GQHb6rnx?=
 =?us-ascii?Q?HC6iNkMDWUfdWkzqP6/fGgbZ3TdVbx+IFo5V2mJ7cac3q4jkTxuiEwIDEOC1?=
 =?us-ascii?Q?7uSTKMPSS4gYNQp2YnSvtoDEV69DfqBy4mi1moreHd/5VY5KmorJsqQ/fjar?=
 =?us-ascii?Q?w7M+BtKw7FOjaYWGDjOmi1SkzCilU3DQ1/o1MIYHvFLgyCBwLiNPpwwfceed?=
 =?us-ascii?Q?23kjvgICptIMOuaXD3AvXO9TJvGctpEQJcBEx2KuVSIBcRewlz7lxWwObdXI?=
 =?us-ascii?Q?Vld7Vlc+0/vogPDCBs1AB1Ju/V5s04MTSfwVPQxZoZNiOj0tTvM5RHGUdww0?=
 =?us-ascii?Q?J63NdDodK/7tyvrtB9cPZQgNEI5I7nA2ChViwouruPz0YFOfUZqMOfsiVX3l?=
 =?us-ascii?Q?t5PnAT09pYCra8fsSbPV3cfqeWwOijx3YimyuBk+AFbjq5ePN88nSiYIsPCx?=
 =?us-ascii?Q?IMsS5qQKwN9VTddj6lXPsEtoinrLmmBFYTL/+Vs3TC6cBjB4OSxfaquk/WMm?=
 =?us-ascii?Q?mjXfQSrCWWKI56yRRZ7m2GsppuGr7HUhddQv/GNW/BuPeSAD4TNFMjwJ5snb?=
 =?us-ascii?Q?PEqGk3oz23NNbMQNlco7h4qJlJprRrBHk5uVJb8RdyCjH+OkM/PJYf/tYt44?=
 =?us-ascii?Q?eIVzXzAl2wUdRHy28L1uooUM0e+gv4KDZfpert/LXvq4XyddLJtuW3WbhGjg?=
 =?us-ascii?Q?tJTVqfujSNnoKI52bd4hH1qJvzWRk6PN3yPvmDDnJhUnIOcOX6Mug0d4jiFO?=
 =?us-ascii?Q?3diSHZ/9fRy2EEzw+ENCs6K5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ak0s2wNegx9jffTq9QW4uD/d2ScFzNr4xtrwsaAg7PgoSX9wa9EEuSjVsJ2I?=
 =?us-ascii?Q?qOGN5itE00YHJqDZAKE0K8SjpCDWeks6UiqC1OrZLXVPCVS8mkhT/mtxwB8i?=
 =?us-ascii?Q?lHrESPwmpFnQT/pR+NP/SZLpYihf8oz6r0qrFRfOdIBEM8JE+6gyS/UN581/?=
 =?us-ascii?Q?azp89oIxj6eFSKhsz35gn/1SVfSBXlSx7WJedNSPVeB/AV4hmL8LYmNOeKlo?=
 =?us-ascii?Q?GGWULxmh8w0mNr/2Dzsuc2Vbk+a9PONC/yI8/iW3Hwvb4piFlKBPTZQRhfgh?=
 =?us-ascii?Q?GRsPM68WHyxPVgJDwWw8YWq5yVOceoB1sDl2m6E2+P5av4zvCPZFwVoj7eLy?=
 =?us-ascii?Q?8Jy9Hsh+ya1hJpjE/xBU1OkRPLQqEfUndK8Z7z8uv2pzEr8uUB+DOv9GJYYJ?=
 =?us-ascii?Q?fLONcpYabzecokzvrJ4bdqu3D5UOHSXTbUvR4SwRkuF4/Fz209LuPhFHwexE?=
 =?us-ascii?Q?HKo62TMpmJvtj6osPFu7R6zBoPhBpqht3JLatj+4ATz9zAy/NiDntF8M20n5?=
 =?us-ascii?Q?1oK9OyHceeIUjArsWt6jrYcYukBcbdvlQjS0SOhQc3YmYxmCpz+ydwPfnCeF?=
 =?us-ascii?Q?+K6e2D2GNNbL+UGhLQ5p4tco3MlT6EQlGn4sjId2v8pTd5h2GUDOcZkNPKWW?=
 =?us-ascii?Q?koHFc+Y41s92bwFzLIpsvl8Z7hm7/Db1VdfQ465cCsN4OMP6zF+SxNPtxB62?=
 =?us-ascii?Q?/OIrDQu+fS8H61riaypuBMRCfhKl+Exfb8/D6yKhYzUlpDsLs2xdcONqMTzf?=
 =?us-ascii?Q?bVomoovSf9BZok9k31x3vB5z0XFE78RoXAzEXGkAn8hlmklllQ0tbgeKraWW?=
 =?us-ascii?Q?M6qQlbpR4OuV29O+DnOduxJdW/e2wmIw9b3vyyUUAzGjaKHSG2T38l8dchz4?=
 =?us-ascii?Q?Fl0fcEcmbI3cBAhmsiqUUSU0pXg67+fsaYekM/FPw5CnIMIZaWbXYDBegN1c?=
 =?us-ascii?Q?TLNZLSzgC+reqikch/KnhJDeQdFIyLwKl3hocczaDZmCWuHptyIfr8gGoJ1A?=
 =?us-ascii?Q?qqqY9Y9kt/YOYPoQo2bzjnCsS6WFq6+PPj/KbE2lo3Xd3yje2Wv9N2w4/GXr?=
 =?us-ascii?Q?L9aDE6V8cJ+4znOreJYCtzapOIRl4cnb6lwRHNRHZP5Uh541wI5xJdTcpoda?=
 =?us-ascii?Q?r3nJpjXcmoS5LD4Fm8y5oWTX7Cz6YqMn+MZk2txtxBnb46xm/iwQ6+lkFXf1?=
 =?us-ascii?Q?QPnwzcVemV5Av1gOa+aqps9o49GnRVucpuoy3TPyRJecakswOXa6vvEoWIi3?=
 =?us-ascii?Q?ksveQC9TDovYDMnDOdg0bNmHx4deSJIkJLMCbAUS366wh2XaBIidZz4N8Ccb?=
 =?us-ascii?Q?I1fATo9+ZG4iAP1Rb2MMNbX1DinQ5lz6y7oxnv0za/ra4bG8tQg9+oQwIu7G?=
 =?us-ascii?Q?v1osGFh2dATwaaa7tLxG7up+u1S9UOqLkWIuA0QGSAZkks0F2sIOPMnFONZ9?=
 =?us-ascii?Q?YqymAh0AQxaQuvrVGVh24TC50JftKwvFWCcyMmFZdg56t+7VxjGbcUH3GVJD?=
 =?us-ascii?Q?rRBedIGL10n5ikYKqjprIk/tnm3X7d7+aY5LFyjPJjPoXgILgHp46Np2amuw?=
 =?us-ascii?Q?Pj5iBTE+DEtFv33kTp9+0462BCTp9diHeY0dW9R6akKRvDTem8KD2hUvvShd?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b945e51-5bcc-4b25-efd0-08dcf7853031
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 19:17:39.2901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h7ahaBZHKCEjLEaCiIMzfFhqHIPCO8YuMI1MPdEBe9HaBkqbewxg8Ecnrnij+A4jFIRNijK/LN/g3KFmcahzzeD53Dfav4qiD/n7yNgbEIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8085
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

With an added commit message (something simple like "At this point we
should have enough support landed to turn on and start testing basic
display functionality" would be fine),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

On Fri, Oct 25, 2024 at 01:47:43PM -0700, Clint Taylor wrote:
> From: Haridhar Kalvala <haridhar.kalvala@intel.com>
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

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
