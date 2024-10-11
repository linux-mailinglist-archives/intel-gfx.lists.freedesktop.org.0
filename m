Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A7D99AE47
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 23:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5849710E185;
	Fri, 11 Oct 2024 21:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XpZh/G9U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F369610E2DE;
 Fri, 11 Oct 2024 21:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728683371; x=1760219371;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1mUz+X1/WfKHZvXPVMNlm3msVIwi9Z10+CFH8+S1n+k=;
 b=XpZh/G9Utz2mJKGE7jmAjYqP1V7jbDtEqVN8vhwgcclNBGBlx1bsdJC0
 EhBWTe75O1XqxpRa5F6jaQrrlRIB4AYnGEAkcy2SlZvvEKD1T+u6zI5gT
 FAfyKiLXz+s+acZkOfwZbdJpakSP8BrAq/3/lcFVfblCrd8JK0kjgipeH
 7OO4lV2RcbPOdifR2kqR6j0qaQTSNeQnC2PmlevLvToyPPLvuV+W2VkEe
 sq8s+gfBVCofRsoJF32SjsY0yf70PNsDXfobbOrxz7IRVzmdvtKWdtq8l
 YoJTTr85gvwrNip9pJ5XkZwAxe2KSIBWREJQftv+ZL7fuU0G5C4lPJctd Q==;
X-CSE-ConnectionGUID: xkjhAWbrT8OyzCVc1dVVVg==
X-CSE-MsgGUID: k0cUK+urRsKvLfojZ4aWkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38673189"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="38673189"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 14:49:31 -0700
X-CSE-ConnectionGUID: B9LjOjijRri/kXpzW6I0TQ==
X-CSE-MsgGUID: 2l/i6zRwR4mIJC4povk/YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77030157"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 14:49:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:49:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:49:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:49:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 14:49:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 14:49:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mNUu4BTgzpto3BKrcu6UNKQH0kasj5upUzNEwa6PJASNOuHXDhaDxV49lhACwLG0xZA0NM0ETAa8w0vpNIZXH6Q2P4QTDB67A9VhENTW61IIoZs9LK+jN15E/R+mYPRnRVSIFJrZVziFLfwEmI+0veg2lqf8AdJz+yRbepjuStOGX8UPcX8ZNmgCkgoAGTkCn1zRuDhs5WZu3ef7t4TevEop1hIa9TZRjSt8mL3eb8f350JjJaa08aqFo4a+tFqOncYGOIkpW+yHP96Ok9e7TKKT9mBKPDDmSmyTlTZRlG/EqFVm1MbuB26RWacrnxUyC8d+L3Mc6Cm/qbaypHkVGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZAiRDsj4fMrML1Da9qTQ8FKedDAw1GHlh1tujIIHyAM=;
 b=J19frCivcS8OXS79tXFkTdQlghyc/cJrcdV2DzoRCRrVENe48GoLrveFp1UPANEiV1DN2AwbYIUhsU6Bq22z1pfJaUQUpxpbgRB7p17QwEnyr5EP31TFI2c0LCj/NFxefPyZ7kIsFk1MX/zSQ1vqZgb4rtXHWxss6tVeCwaX78oeBcYJMP32z4cZ/x6xwCBhwjpHalG7T2GzdM5UU82dCgVk2Uyu+n9D5DHF2U1lqHBW3EB0XCPIEYF35UJmBTVF1uZ2JNzW0vU7sRV+WNVk7LexgcyEeWzRG4kj4Ifax5K3n1PDkNxBIaCq4wQkbzWwnDPke9pbF3GsDj9mQ6Y/4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB7739.namprd11.prod.outlook.com (2603:10b6:8:e0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 21:49:27 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 21:49:27 +0000
Date: Fri, 11 Oct 2024 14:49:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 03/10] drm/i915/xe3lpd: Add new display power wells
Message-ID: <20241011214924.GU4891@mdroper-desk1.amr.corp.intel.com>
References: <20241010224311.50133-1-matthew.s.atwood@intel.com>
 <20241010224311.50133-4-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241010224311.50133-4-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR05CA0061.namprd05.prod.outlook.com
 (2603:10b6:a03:74::38) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB7739:EE_
X-MS-Office365-Filtering-Correlation-Id: 25bd1062-5fee-411b-9c2c-08dcea3e93e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8rmDXd4sLItWzqsIeHsgZTGPguXjxDaNTxgF3w/mdtW/xFEa0f2WUOGeFDAy?=
 =?us-ascii?Q?bojsaiEBbimQIwhMQuY0wThjPKQZjSLg7P9s1lxoWSuemsCbF31OSR5y+efI?=
 =?us-ascii?Q?jofeFjCVA55mNUuq5XO3BlU3CpvKYPa0ozEsNW3ScCLbRJjF1kMcaKMqEZtf?=
 =?us-ascii?Q?9ebHYhYYx8ldpJxvZ5dzt1cm0E2CzLfb7ihvrAzWrR2nrHzgC0c+5EUGXzpv?=
 =?us-ascii?Q?eaqwgguucSSbuSMY+48n9A94MqTCGwso762tC5tlgHlvYgXf7BExrpsNyvXy?=
 =?us-ascii?Q?BCUaNtOUXLpPlSKIBedx4FJfBmONfdpKGF/+VSlhQaJVWL3ZrxDvV9E3sizd?=
 =?us-ascii?Q?I0edatXLxLPJ0mcvXhAVYv8juA1xo3k8+0tU6xPiLJK2vW40odJzAAfK74Fq?=
 =?us-ascii?Q?EpyIn3TdumUvCw/nR7Na7faJKITac6jRd1rwonw70M5IrFQYEQgcbw8vnhUK?=
 =?us-ascii?Q?A4aT3KuJ2sVIfkvmNEEVfdRKBRYZA/MuvcsEd64eyf+2R1BOIzApVk0P9rYs?=
 =?us-ascii?Q?XNHz5r9aHGP8SWAxj/6Gnn5kCrOsuqR1E3ST2aBteKKLl1+3Xiofagv1HCzG?=
 =?us-ascii?Q?oq0t7ycjHPYhneGx/XfLzoeMUz4piKwK0gJn2GVP9/vmAphBb9nwxKONkaYm?=
 =?us-ascii?Q?7uiYxLcfsZ2cHDFLGu5E9t6E8fCxsdTA/AvQaXhQ90+tDCcYZKxY4xOHo+bA?=
 =?us-ascii?Q?DKJ7Owdp9pAVhLKtzPZCOBjWf6fithRxqQKehA1cJ063We0pEFBhUC/x4KFs?=
 =?us-ascii?Q?sr1xkG+fxNJq6VAtvPJW45nDLpNRL+Y05zGLKOVEZZWctEoIgH4yN9lMwz1R?=
 =?us-ascii?Q?18zLDSQhsJ3isjOhD5aqUf3bUCy1IEjn5hVeHQCxDVRTtdVATLxsNx61r3D4?=
 =?us-ascii?Q?LqvsVGPUsa28DFogVkPNNgXXoCY7vQbHdWPNVoii+HAjp+uvPHODaKrjKThT?=
 =?us-ascii?Q?lL4YxG8n+xsn/6hPwNoBlVrjx345Kt8Xo04qtKFUAOuwHkpSS4W0ZJgJcmcy?=
 =?us-ascii?Q?xvKZEWvPfvL48WYnUFXpeSlxo9ulTIYLhtkpUoeyPI15Bxqqz0+H81MJyac9?=
 =?us-ascii?Q?/JuIe/b02kXyjjL4PgLwkLWIsZIcjnJoSe8B912G6xRqFDSB4ytndYDd0aVK?=
 =?us-ascii?Q?fkAyR3w/Yg95zG/Ncs3rfLAvw74LE5tybHjy7aVb/qjqMrmEQzXWbqlOfPcO?=
 =?us-ascii?Q?9VYYkL7NckdD4e3VdcqNgUG6Ym2Jh/RCXqeHoIYswDdeUM0Sl49iRohh5IQP?=
 =?us-ascii?Q?n7C0ZuLOyaax1eDLHhT+Vd+cS7Ti3TD3qrXwFU3mqw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h62XAMpfM+oRCdPCwRZQcgQPg6fO4RhSTzYTC0o78p8g/H8b+5/BkEJKHxNQ?=
 =?us-ascii?Q?H7L1XnsnwlYWcwCEzE6Q21TSNs5J5gwhNCZAW3gae9wvFFjE3pvSdrym6lsl?=
 =?us-ascii?Q?pCm8zXzFucoCbCBjsDR5aBnUr7sq35peZPsDVHIomLb/uyEZnbVVqReZvK97?=
 =?us-ascii?Q?KQOxk7YOHgFK7UDRduGWd/wuYXvTgCeKLDJs9gtZebhQRgBKHfqXKBwlKjuL?=
 =?us-ascii?Q?ajFAjMBwDJ1b2+XfseBhwvtT1VivsV3d96DqzFshFc5BE5m3Zas9YUPKZVaQ?=
 =?us-ascii?Q?Pq8ONn5oJH2PPWFrogiqtoyucLKKCsrhMAmDil/DSvYMoC01PzfeBa3FeDqe?=
 =?us-ascii?Q?g9fQpIV39FSdSFQnUSM8UAFd394IV8M/IHG8ePNHIsUANiO4YJT/2cOBpH6F?=
 =?us-ascii?Q?gSj2NTEOq3lMLoHLJblBuIj60Hr4M55URHb2T+jRZHVuy+8hef4fkqI/OcyM?=
 =?us-ascii?Q?Jj3wHPCUJPZXPiSXfNNpFAyr7MW/gNOFK8W9+3kbvD8tLUAZqljCaCCVV5uK?=
 =?us-ascii?Q?omgb5u8K0mm91XHRYOW8fw2Q+53VVktS2knughXLyfVYWgJGhkYGf683sUrv?=
 =?us-ascii?Q?3RBeh/k9MbWArE/qyDDosTCZm7NrEzCSyR8ZL/WGJjEk5tfqvEWeWDJgNIMI?=
 =?us-ascii?Q?wNQgILgNjrUrqlB+iKETyq5BGSEzGNGAsA+RhZ4/yflNg+AE6exwan8XVDOP?=
 =?us-ascii?Q?Mf9AiABeNrNafWrD9mpXw/QIM8R4jNg5tlTXhoSSElfe7utQXk3kqxSnErMH?=
 =?us-ascii?Q?dYpAvBWdv88Uiog3zlVAYBUNgtGagc0o3L8LTdbXpw2yMdcK7JL0YKf+fKM9?=
 =?us-ascii?Q?o2nSTCfPHoqRSesCZhKnLyHB4k5g2ZJhr2AnkhnISryt+w6wbvxt2p996mzW?=
 =?us-ascii?Q?+KWit3i3Ju8etooRw8xlr6EKV6CHFQX6Nxv039TOvvDX/A8qYByotBt04iPB?=
 =?us-ascii?Q?vYb/YO+fAUvmuZKtUTj7p+h53N6nrFct9jhuVVhdyO8FFr1E6ILiFs94mYtz?=
 =?us-ascii?Q?LJRYrg34z90M2jiNShKs7CN2TVKPqS1FJiOeTFA3NpNaxYPs1Pkg1lMYkz+w?=
 =?us-ascii?Q?ymnNKoBXqZjsvAoqLgw8oxHoAQxMdP/569EAUFDrvBByng16GvSyfhDpvKtj?=
 =?us-ascii?Q?DkC89wD/7KQ+bX1YZ5PXPG4m30MQMl95cyAzZnFf1pO6E4KdJrS1cclAuL96?=
 =?us-ascii?Q?QmNQ5HXRvocAJ6PXzQYYQ+/11JD21MoAu7WC717qkU4Aes2pbyrtgPnZrwMR?=
 =?us-ascii?Q?0tfYOJSE5dCQ7eI/9Xg7klMX3P0uqLe970GnIIZB+Cl6SnD9A6SdA8D5yKp9?=
 =?us-ascii?Q?y8t46V8gIjWp/UOohIhpnFilO0f3xqdAOP79bqSde5iQesPenVDSPu5ZL3U+?=
 =?us-ascii?Q?7yygPeIpNpudj3GMQqd4D88dJQ+CD/SkmCjrDafkYgA5qvrZunjO4o5wULaN?=
 =?us-ascii?Q?aw9CydCDeyKbqEHC3OJu6+JZaTUQrkjPxBOfmERv1AoLL8TYlwCpjGO7AbeD?=
 =?us-ascii?Q?fF37oMQtX3gW6JV8Yu+HMjxUbKkehG51HCPuX7pMMypeTdSQzUY2tnc+1Hf0?=
 =?us-ascii?Q?rVG8GFsO4BS153axS1vETOEq2f8mx/lARSEKBwUKlRcfEideosf4K3KRysmT?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25bd1062-5fee-411b-9c2c-08dcea3e93e8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 21:49:27.2881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CANKOVyY3vGOPMxU5nJSrVIHetv6VCYg3yGM6UhyZXuKWd4YLllozMvxt2Gqb/MF8cByHlg7YzVzvZb1+Yxqj6BowcG3dx+LvcJtsIPpbgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7739
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

On Thu, Oct 10, 2024 at 03:43:04PM -0700, Matt Atwood wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Xe3's power well handling is similar to previous platforms, but there
> are a few changes that need to be handled to ensure optimal power
> management:
>  - PGB now only depends on PG1, not PG2
>  - Transcoder B is now in PG1 (was previously in PGB)
>  - Transcoders C & D are now in PG2 (were previously in PGC/PGD)
>  - DC states now require PG2 to be off (whereas on Xe2 it could remain
>    on as a dependency of PGB, although the features inside of it could
>    not be used).
> 
> Bspec: 72519, 68851
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Patches #1-3 of the series applied to drm-intel-next.  Thanks for the
patches and reviews.


Matt

> ---
>  .../i915/display/intel_display_power_map.c    | 135 +++++++++++++++++-
>  1 file changed, 134 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 10948b3964ee..255b2c09607c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1586,6 +1586,137 @@ static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>  };
>  
> +/*
> + * Xe3 changes the power well hierarchy slightly from Xe_LPD+; PGB now
> + * depends on PG1 instead of PG2:
> + *
> + *       PG0
> + *        |
> + *     --PG1--
> + *    /   |   \
> + *  PGA  PGB  PG2
> + *           /   \
> + *         PGC   PGD
> + */
> +
> +#define XE3LPD_PW_C_POWER_DOMAINS \
> +	POWER_DOMAIN_PIPE_C, \
> +	POWER_DOMAIN_PIPE_PANEL_FITTER_C
> +
> +#define XE3LPD_PW_D_POWER_DOMAINS \
> +	POWER_DOMAIN_PIPE_D, \
> +	POWER_DOMAIN_PIPE_PANEL_FITTER_D
> +
> +#define XE3LPD_PW_2_POWER_DOMAINS \
> +	XE3LPD_PW_C_POWER_DOMAINS, \
> +	XE3LPD_PW_D_POWER_DOMAINS, \
> +	POWER_DOMAIN_TRANSCODER_C, \
> +	POWER_DOMAIN_TRANSCODER_D, \
> +	POWER_DOMAIN_VGA, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC4
> +
> +I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_2,
> +		     XE3LPD_PW_2_POWER_DOMAINS,
> +		     POWER_DOMAIN_INIT);
> +
> +I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_b,
> +		     POWER_DOMAIN_PIPE_B,
> +		     POWER_DOMAIN_PIPE_PANEL_FITTER_B,
> +		     POWER_DOMAIN_INIT);
> +
> +I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_c,
> +		     XE3LPD_PW_C_POWER_DOMAINS,
> +		     POWER_DOMAIN_INIT);
> +
> +I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_pw_d,
> +		     XE3LPD_PW_D_POWER_DOMAINS,
> +		     POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe3lpd_power_wells_main[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
> +				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> +				.id = SKL_DISP_PW_2),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.has_vga = true,
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_A),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_B),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_C),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_D", &xe3lpd_pwdoms_pw_d,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_D),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
> +			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> +			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
> +			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
> +			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
> +			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
> +		),
> +		.ops = &xelpdp_aux_power_well_ops,
> +	},
> +};
> +
> +I915_DECL_PW_DOMAINS(xe3lpd_pwdoms_dc_off,
> +	POWER_DOMAIN_DC_OFF,
> +	XE3LPD_PW_2_POWER_DOMAINS,
> +	XE3LPD_PW_C_POWER_DOMAINS,
> +	XE3LPD_PW_D_POWER_DOMAINS,
> +	POWER_DOMAIN_AUDIO_MMIO,
> +	POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe3lpd_power_wells_dcoff[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("DC_off", &xe3lpd_pwdoms_dc_off,
> +				.id = SKL_DISP_DC_OFF),
> +		),
> +		.ops = &gen9_dc_off_power_well_ops,
> +	},
> +};
> +
> +
> +static const struct i915_power_well_desc_list xe3lpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
> +	I915_PW_DESCRIPTORS(xe3lpd_power_wells_main),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +};
> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1693,7 +1824,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 20)
> +	if (DISPLAY_VER(i915) >= 30)
> +		return set_power_wells(power_domains, xe3lpd_power_wells);
> +	else if (DISPLAY_VER(i915) >= 20)
>  		return set_power_wells(power_domains, xe2lpd_power_wells);
>  	else if (DISPLAY_VER(i915) >= 14)
>  		return set_power_wells(power_domains, xelpdp_power_wells);
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
