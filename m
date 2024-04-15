Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1311D8A57A2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 18:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA64510ED14;
	Mon, 15 Apr 2024 16:22:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hT7jgj3+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8747410E9E9;
 Mon, 15 Apr 2024 16:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713198177; x=1744734177;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZXcR/ztq09GvrRV7ArvX+j/IeJ5UcsF4UnRA2onq3ao=;
 b=hT7jgj3+fq8PGHORBAj8NlLOeHI6hTSeDbVG0lWWfCSxGhQy96uAvPR7
 N/l4toG3FCbKe85kvlRjgMhXXA7H7krsFZvwHU1+siohaAz/kZg4QTh4g
 e43S/UZrReAwdpIs8J3XjCQJomaiBA8rYE2DWjCNzr3h+Dx7Fl8Cs5oES
 xDNHEYfW3M5hgKfGJEz9+yVL4UW5146zpKKRQJV60vi0wZ96E2MGbDNky
 aBqcBCPnXcs2gycjK8XcwkEATGElAAy2bdgmy75cNIBOKaqiPayj/nJ+y
 PkApD2Pv/iijT+kdYouwC8E3Lq4CAjAps+vMih8/sMnOouzGgM7OHpwtE w==;
X-CSE-ConnectionGUID: UoUO7etgQu2e6GAFaTOY1Q==
X-CSE-MsgGUID: QGKmlC8rSgyJS+3kYCK+bg==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8469779"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8469779"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 09:22:57 -0700
X-CSE-ConnectionGUID: FxHAy7CETO+1LakWm9UtfQ==
X-CSE-MsgGUID: Sq/X0ucnQE+nSBpf59Wycg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22387841"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 09:22:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:22:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:22:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 09:22:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 09:22:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FolDYJuIvS5R2DOqucXfE8GyaftOuVmtVeoqwAF0/8B/2PjxxTPJGsyJYHKLqLvS/oQKaU3g9WytGJK1L1LhchhbrmibFyTiA64oJ2lCHVTZC4UTEjNMMHca5TmPJG83o3Wd1g5r0HRR7zoNxDNFQxBb/n7xH2RU3N4T4YjfST/w7LcjYKcGjX0AsVe5NeTV6I0dprdg0Ycq/mvg8Y1VdkUUoXTjOb+Z+wmi7nBRf8xeWa6tkalr8h8buyEqi6jPrx1X51dSuK4+qAQubFm/MWx9IQbL2jLh3AIFHjpxXzurNq8Sfa+KuuiiYj0XSe3Oub3XtKzUhLToUz8PCJsF9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+Vl7VXvdCLcY45TbSuXHqxoKLxDhv16MIoYUNZjH6s=;
 b=Ko2AFywR2a1s22J5BnzFep+WvXYg248XV+VYwCdxJG+bk7YgvPBXpcBzkCLMguzDbbceg9EUd8DPhOmhAAcrJ3M7EssnjtrJYq9b+upxfyM1aFnZrlu79tH+H5bvbefr2hXqQjgHEw/AeXiWwmR7ZD1+g7WcgHK4/td/lTGphk+D8gd4cl4f3vaCaQaUI9vSxLtz8qCmQw+QpGl760UDYO3/9w52T5VpDZhB8OzjU6dm7Hikt+F2lz2JKGsUylQTfuknwz4D8Q4FQq3af5vj/nAIXpZr4JbgFAfqwaiFAzwnz9xln5E8l1zOcLDfZhBOVtx9hUNaKeCOic1CRdXQ3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5791.namprd11.prod.outlook.com (2603:10b6:a03:423::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Mon, 15 Apr
 2024 16:22:54 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 16:22:54 +0000
Date: Mon, 15 Apr 2024 09:22:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH v3 11/21] drm/i915/xe2hpd: Add display info
Message-ID: <20240415162249.GD2659681@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-12-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240415081423.495834-12-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5791:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a4a350e-7070-430e-589f-08dc5d684d97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 967hs41ji7bN25iiE/2+M/r/NMLzJx3VEj32uRYO61oQ2UGq/ZHB1qvzHnbrNedm/T5/Rux1MenNk63dqSdF9odgUGp6Z1VAt1aO8136CxaSZStfcIqq9Qibu2yGHIl0+e+4m2QUAKpyoFnGCa+g9zNxNjTEb0ejbDjQY8rVhNgISesLt79YU8FcZUjoMjgGkPHV2wtPVbtBbc/ivnA9MPCUCTYYxedczLKyK6uV/hdYd+sRzL5rWDwUozLZFYPUnVuGGyEjviCQj1XCHToV564MGbR2E6ehEh8gTxua4iHnMOS3CMa/6YwwvdjQuZkJ3HoTWA650Evv6d0YOVBZ3VKpCeWIJkpMkuJbhjrf7Ccx4s36fUetJmFkXb6F2D/Ird71QFZigipFwkjb4FCgV4siGzi0nQ3FW43ysU5IS517wNoK/bFxJKLTDHYra3/2XkTtRkD8zaB5HWw4j3EawyiBTRYHwb5ZC0PCdWpTS+pTZgpcr0BbH3BnVpEa9FSmaouM1jxHgFADdrAtoeIk9i9QMvjMsxEj36t3umKPLAEckGBfow1pmCpAqNNjnQFxGl0VSuQqmuYq7+aiNHkUq2rby3pvzsnmkXahz0d9H8+xwc7GNg06t6tj9ssmUt/kBI7K4q1lnVTRMFgskcu15EKebk0pg9OUp545zRqNk74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9o9to92bnvbQpR+og36PwSLXowz49/U8zWzgaEb3bHE6berk6pluhTebzccI?=
 =?us-ascii?Q?aBxQELpxV0eQwWYes22kCO7HAecl4tqprEtfMqGR6i1ImfeVOq4DKhQENtPN?=
 =?us-ascii?Q?1Msso/v8+R1ji2ZbcD0zci4XHjcfrc/lmNnUvbyeJ3i9TWK0c08hFZ65banN?=
 =?us-ascii?Q?fTeO4S4kie9hH7ZSJunaBsn+zdfiF9/6vtcl0YKy61YsBsfC+HGG39rZdx8Z?=
 =?us-ascii?Q?9/lrPr68YK2JFxahxQC3QdPvUUg4pThLVw4ckeT4W5tSRaXb/iYBReRkVjT2?=
 =?us-ascii?Q?nAsnBsM0PjjCt852VrcbASiIQAy/aJjeRbsyEsCkmCYpqIk/Y/p89bVNp1vx?=
 =?us-ascii?Q?btxbMzhtZ2mH927ml6yLHA6Ytj7YFTD9bPmpmT8rv6okHb2O+7VADpRbDHwn?=
 =?us-ascii?Q?asT197ZsNcKZdcPH0BSbHjRedQzrlKbxnrgx3jS6ski2Pv7amCbU9aJIJPIg?=
 =?us-ascii?Q?MLeQ9SKXANO9ZwlA+ZtR9R1YM6VPpbVIbr7kSzVeRcYlgL7nvcCWNkSZe17A?=
 =?us-ascii?Q?c6a9OFZt257YBY6OJg/31bFmOW9T7UWm5a7g8f+XN0UxNFqnnW5O0PtMShAo?=
 =?us-ascii?Q?Nwfpybg7QWPAs5X5k1H7gFwBWi79g01bq9LFKCPt8m3hGmXnkwrEk3yZLE8h?=
 =?us-ascii?Q?t/4KTNSLbTW9lMDmF7Y9DF4y7ev9R70REPLAehm94tikbypts7RwB3EMLath?=
 =?us-ascii?Q?wTz8aEWuHX2yfMrNhmytqigDpPt2Tvzb4YErit/ytxMU1zHPAwc5Om6S6PMj?=
 =?us-ascii?Q?4yxVs2IkQ7PVCyVqcxeFgx5QFJpTMw7AV9E8gsQv5UwU60RnZtnLGQyKJsyb?=
 =?us-ascii?Q?m0xH2NIs0v3LAB7nDjV6EMW9gKV1p6XFDJA6/46JMukcOjIJ6WSRQ7qwuhuo?=
 =?us-ascii?Q?5rXy/INg1nAGpOt0OgD1aGBSb17IcktuapcUDTlA6CNFoCcwNZSMSimmzKH4?=
 =?us-ascii?Q?ulcjeU9Vsp3BA2GVafDA6F0C/vYr1MzOynrilh9y7JoriLyI3nUlA+J/btIc?=
 =?us-ascii?Q?LMWDdTP81tNWTd4N1wNHtzYce3PPQi/K4NyWk2bZrWoQ3sQftWUm+c3YjeHk?=
 =?us-ascii?Q?0110Dgt9HLXn1GkmKE69hSowCLBluRa0vWbW7KgybsXgWv+qOvf0T3aBeNAz?=
 =?us-ascii?Q?516DVA4twzWDjQJR5UiseD3XpDLxiUfh4UL1HCZRBTePog+f3K2lrkW1KsLq?=
 =?us-ascii?Q?xG3tZnmvip2nRReGJcfFM9lcxDIzOQ4ceKG2/WSrmTEBIXcmZHI6EtiRjtpx?=
 =?us-ascii?Q?wIb4RJP4Eo5y/qzJfrQdmj2r7CCtvXmp3psFTLx7plJtVBRN6S4h0DsokII/?=
 =?us-ascii?Q?00DjtjmSLry9fz8NvzYA6M3JS2st9tnmGDDbRm+yzjkBoYDtIMY0PUShAxjE?=
 =?us-ascii?Q?Zlw24Sextrh3nj4oWDYoSXq8nlWh+G6iS7cGVs+kCtrxzdhqvLGjl/Mxj1oW?=
 =?us-ascii?Q?lePeRzUcptd2Yup6WbItRXo7Mb121rl158yUHMMolTmiq0f8lvTUdqr66ZrJ?=
 =?us-ascii?Q?ZaTXiQALlWStaWUA7GF9UD6JNlRNuIjYAhm/Qg8xqP/eqQ/fHRik6E/LpF+f?=
 =?us-ascii?Q?6qtx9aNqDTs+NcvCtOsF/Dfas7kQ+ip4a4oz88pI1NQGTsVC/QPMWnPsVOdw?=
 =?us-ascii?Q?pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a4a350e-7070-430e-589f-08dc5d684d97
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 16:22:54.0794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BQ82bAyftLLmLJnoWfWiBF24MhIOtZrZu+AqT0QEp6VMM/pS0mVPsGGAnsmcZ1RYRTebW8Nvub6X635FJvrWBF/b50KQ/eTRER6kwDN4UE0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5791
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

On Mon, Apr 15, 2024 at 01:44:13PM +0530, Balasubramani Vivekanandan wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Add initial display info for xe2hpd. It is similar to xelpdp, but with no
> PORT_B.
> 
> v2: Inherit from XE_LPDP_FEATURES instead of XE_LPD_FEATURES
> 
> Bspec: 67066
> CC: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b8903bd0e82a..2740ccaeb086 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -771,6 +771,12 @@ static const struct intel_display_device_info xe2_lpd_display = {
>  		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
>  };
>  
> +static const struct intel_display_device_info xe2_hpd_display = {
> +	XE_LPDP_FEATURES,
> +	.__runtime_defaults.port_mask = BIT(PORT_A) |
> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> +};
> +
>  __diag_pop();
>  
>  /*
> @@ -852,6 +858,7 @@ static const struct {
>  	const struct intel_display_device_info *display;
>  } gmdid_display_map[] = {
>  	{ 14,  0, &xe_lpdp_display },
> +	{ 14,  1, &xe2_hpd_display },
>  	{ 20,  0, &xe2_lpd_display },
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
