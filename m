Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7DF9BF3ED
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14D010E752;
	Wed,  6 Nov 2024 17:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQ1ojRfb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7C910E73E;
 Wed,  6 Nov 2024 17:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730912832; x=1762448832;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=clSzK8kH4yPzpdM9si4z2TheffqV7gDd5nvp/QmVKME=;
 b=bQ1ojRfbwHVM0S7P9HNWggbNzE3OQdMjstnHXUlLvzB6jQcbyogSgzjr
 J7Yz3U2oc4fTsKUaHhIxhlR0mWtLlGBhExQshB+UdAPEH/j27wVXwH/+/
 YFzvfOXVQhg3Q9ScsRYa6Lm7Wh1Dp/OM+x2pNchSZ00q9RPmWlOWf4omZ
 tYp+EWu/ROHXSjdXjIGAB8JlRQIOmWtMmNyXttQsDqL6yN5BDD6rQgT1i
 Q4aweC9Ou3wzjwr0OtVNnv9DztxQHPqP+SR3rALilbXD12+1/Chvo+5Cj
 0BlD8HuseDJn4qv+/h+bE3H83KFKx3DDaQReTDvTJrlgR0vnyn9BK/h2Z A==;
X-CSE-ConnectionGUID: sDit8nlCRquWu218hNCUnw==
X-CSE-MsgGUID: vx6bRM5KSkmpR3E1q98OiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="18348601"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="18348601"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:07:02 -0800
X-CSE-ConnectionGUID: boAxQDeoReKJFiL3pZz3kg==
X-CSE-MsgGUID: 9ncZ24MPTgmboqd8XcMU0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89436612"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:05:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:05:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:05:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:05:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C9gu1zmgI0ZCc1kXuobLI6HmoYjH2iuAtLy25KMgmJuxY3fIzB6L7LwHXPsMYC7fyI+HkjFkm/xMbOGV3cZrw+exaLK2Qj2WsVP3d3j1ePdeeMor++1qUhryOgQV4a5JRrdgWHo/IDFwHZQK0F+JcjLGXF3ce5cKVI72RaRUyl6kc05lBcVM1axMMAYby++wOnInUNJGSp9Gzcosk70mmXd8gGyBrfxvvxCpc9MSVx6dxPOfXkYi4AStg+zQ79fm7gNbZvcz1tPrTVQdksqeo4VX2g2JzRAv9ERcAAXtxN6af0G6ySzmzuDmF+46MlhsIV4KScRNpfb9x3z65rOvpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DwkGt5ZZZAPDulCSZ4J3vmDYZnTaWygbOERQGt5l7tk=;
 b=uTFqbsZiCrW/+Ot2/gc8FEhPR6Hq3lKf31nIOpuCdwZzSTC7S/ugKr8RuxICnHP2AdKZvf3B3hRAvsuRdxvM8dkf5JFA+dl32mVWYmOxJ5bN+zKxsbmFgGP2J4QgWf/kFtTncVjMUnSDTcHxsOJytELqb+Ozk2dFBqbQc+9nJClwI3KDzaueNDo7Ae6EKHh6cpIYVL4JzWi6CgJRLt6+vbns3nlNvMEkFLyIA9BqTBV3+G5us5H2bGE5hyGau987FJNw5/JBuRyrWYlYLr3kcbRnEZjw9KX9ZIFzXFMHYV0ROmLeBglJajrfSxYrX1o1xAjf8d9fUt0h1lKQDYgQZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Wed, 6 Nov
 2024 17:05:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:04:59 +0000
Date: Wed, 6 Nov 2024 12:04:56 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to
 struct intel_display
Message-ID: <ZyuhuH9NaHex8YyH@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <754f1d16612082ef48e7e33b1240418549ed1407.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <754f1d16612082ef48e7e33b1240418549ed1407.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0047.namprd03.prod.outlook.com
 (2603:10b6:303:8e::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: 34ac4ba1-a2d6-4926-8917-08dcfe8525b8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hJXjclri/uJ/ekjFFbloi7BEDEcLAMjp51nElBnQU1IPl2GtzQz//RLtV/ji?=
 =?us-ascii?Q?YDaYAAhNbvX6UyzOKjyGs9qz6Aqch/CzNPXCT+GfbImveumqvyqzj1qzyQTT?=
 =?us-ascii?Q?dvw55LfzGGU7S0N1u9J3pnvLHhsQ88En8xtnmODAkATXLFqBMjxwPlWopIG5?=
 =?us-ascii?Q?0JYQyahCWgwLjeSTSZBLetdAffPyBD3xYnFXFXiYK/8w6hKVBqGLZhavDvXE?=
 =?us-ascii?Q?ca5lW9dGwLqshloLSd3wgTvd1os3F10JbtmNSUDF11ZbJg2bnHCsJ+55c5Nj?=
 =?us-ascii?Q?DvfVAHU9LQFH0H9gwxhtSf+eNll7mJid1bHxf+Ug3b9RH6bRAjfnOX3rCe78?=
 =?us-ascii?Q?vAGxodM9vBIpp8LS0E8dLpX8eevAEYXdY+fXgR69RpZbpzFvMOjzsL05MTPi?=
 =?us-ascii?Q?Uemxv/QNMVJmmHdGLf+eyPchdGAUDJcnRSvL8UbES67zmzavjJ3cm/aLJ4K9?=
 =?us-ascii?Q?C7imcCKfFZmYIuQbPhhIISgc3QPja6QHSGBBBw86GPXjKTBVuP+Xm2wkLAQy?=
 =?us-ascii?Q?Xsg0pvQMhr9kyrZHKh9AWUC6v7gKYx2KFLKspGeEJon6VBQFv/VXHt53WTuG?=
 =?us-ascii?Q?Ag3jC5Ts9wRxsB1e1w+j3j4mEPABpKTe/8BA5eMzd7gR1nZXFKpY2aXNYnQq?=
 =?us-ascii?Q?f7fsjb8Zp/zp2Axznydvgr0QFGTozGzNkqIvJCSiylseU6wptg1XaOQrQxav?=
 =?us-ascii?Q?UTD7MwjsYfSApav6LABiCBJTosbXwgK3H8z263kjJuE9swFkHaBbyShrxYAF?=
 =?us-ascii?Q?Lnj+dfx3Wxh2QeOzYu1CI1WRhc7QcGnfKr/MPYQtAgHp09vK/SDzLxHHcBhR?=
 =?us-ascii?Q?oWWNc6oAl1eY67dgFtBQvGjCMaSn1YyaObne8uCB0Kvn4eif5hMmN3feM4Li?=
 =?us-ascii?Q?TLBvzQO7nsDVEzVfRwHf05tBn7rGumkDDJjTNWUq3CvKH3dzYfFGEq8fZHIT?=
 =?us-ascii?Q?U7cNl7HiwTIsVuGTmfJX/e+qtsuU/ld5ZfKnIQK7TP72fEdL2Ge3z87jilys?=
 =?us-ascii?Q?0ibCcQ8lODIZsWlf/EkDsJdqcPGNFjQAD3DU+fR5X2HGrhFvhbsyH94VESwB?=
 =?us-ascii?Q?5HaD+V2LuojFYYVwNGBaPgufllU+5Xc4FhL4M+KvBwQo51PQuqBkfiAnRuCn?=
 =?us-ascii?Q?ZD9E04tRPDEn2G6dPEzPYMPHpv6fCkSIIUeVGCH5Hr1JpycPzghYHtpY6DHz?=
 =?us-ascii?Q?SUapGEpTYEQp2g53GoQKXt1lgns8qTbHJOIIrNqwbZBnnok99rcTAqX+AV1b?=
 =?us-ascii?Q?QFX87gcL+rBrIAJq7SgyIpmHXuv9zumv0Aez64QZ4VzEuiPthe0OP93zzkcZ?=
 =?us-ascii?Q?nzCTP8vCEfb9SHrShdgdOLxJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9874DPe63iT6bz87Jw6NqBd3mPVhLUr2n1FH4rnU/cYhodc6aHKVx3F4ifKq?=
 =?us-ascii?Q?N50z0qHeQAaLBxi9mSzrMAlEL3YlW/4QtE1EmLO3a648SCWM4E949ODXs9Uk?=
 =?us-ascii?Q?D3V1O12CXlZ9rXtrxlyGow14nP6wjSnXFd1i1LNDxiqqB2MeXA4T8bWY641v?=
 =?us-ascii?Q?h9wV04EiSEGJs7eIeerNKaYvG/oCGgi/3Z9hzlvah7bEx0fBxodm0GYBAP1y?=
 =?us-ascii?Q?3SQwuS30BnC8QdNezYVkVlTQJgMBbcK2S5z3GxVPyiE1dZO33Syjk5mHpZ3l?=
 =?us-ascii?Q?RDZoniLoFln+DwgZ0o2G/Iuo44J2qXP/+kz75zNTv1/Br4kCJqFuy10CNuQg?=
 =?us-ascii?Q?5AGHV0dXTWTi2/CjSkb0R2GzzQqsjOIlRMNtEPD1LZe82zBANNHNYNWLddqv?=
 =?us-ascii?Q?lL+Iq5BcnVtmPTa1UczXvHL0dlGFgm8jSTs6Vji8IykRicWf9Mn0wBRxc6NL?=
 =?us-ascii?Q?jHDZ9ScdHgWt/3EnPBU4tQoARfCYDeIkCldylmIglwQQ735OJgxOJ3xmAdsv?=
 =?us-ascii?Q?u/xmZkApDkQ/PJvOcpct18xNkVZ95pRzD470tRvNn2A6w7Ja/+T3r/wTatcW?=
 =?us-ascii?Q?OUAX0PUqEh6KpV8spiU6M241kmPuMd7Jj0Usb0aEmU3Wf/7WI6UlQw/mM/rm?=
 =?us-ascii?Q?obO3EkqS07cm6UJXOHWbV65eSOp5ozhHe+7V9m9w43uD1KHVBRMo1qsKbpaL?=
 =?us-ascii?Q?2x9wSlnb+C1a1eGUBIbsn7xPChDtWMY2mqKRYaJg5MyXHY+LPkEVxSVcnYIM?=
 =?us-ascii?Q?A6wnIbnKQc/qqF8Qf8CcC0ihYN7nsYQBx4NEOjzpo/P73vMHXug5AnoEy98Q?=
 =?us-ascii?Q?GfmWPJ7LpfJiFS7ffFa+j8iHfb2AqXkdiWk3K9ZYXVNlOTFuhfxQ7PjBgj0X?=
 =?us-ascii?Q?lkIFImkbsRUviZ4Md6enBJRrEPi8ZDH/B45n0FwXV+8hTdbtQDKw/TlopBPq?=
 =?us-ascii?Q?LFi5lG6RQa2dJQBsAekaxJVqlyH0b/YNn7FfeQzDxW2F8jFG7rKJ8DMWDKSq?=
 =?us-ascii?Q?mMSzG8KMnOoIiymNTEcGHGCtdJ5EIFfCnPLusWloaRP35OB9i/6hHrRxEQyH?=
 =?us-ascii?Q?oJtDZbwHJvSqrCLEvRBZQf2goJm1HO/5vG5b3S8g2V0JZspwBpaEAVQ3ClqM?=
 =?us-ascii?Q?B9SGAEstia5aXLIQR5lDTm+/2+ycCzg9R3fm5Uxamn4DXbXP86j54vHUwJeJ?=
 =?us-ascii?Q?ILDA5ZH6ug8U6yjrTveGsvgKqLrr6NuGL51WCF9FYFwoenzecXuQVRfBaPHI?=
 =?us-ascii?Q?0SfgipJtMhy+bAOkerxi0y3rz+gUB1k2e7crG00pZf3POKruZajcfa+yOwXh?=
 =?us-ascii?Q?H9MV4eqKm+Mn7laNfwsxKwU6ROsFztkHypGNc8NuhOa7uUjVgLup+yNUcX+F?=
 =?us-ascii?Q?uZOWQ8apIkmGN2qWOBZQDyE8r+N+Uw7xwqmUKhE2p3WJQBvMt/Snwj6fPd+X?=
 =?us-ascii?Q?G4LrFjHvdcYT3849ureo5IrKaH0PbP07YYtePD40w1GSzciVmi3GY9v+1giA?=
 =?us-ascii?Q?aXe4xT+h7f5fc2LSxQgM8qC/aDX77Rn43mMJhYjVs07cpi5Cgfup7BpRC+KL?=
 =?us-ascii?Q?L3kGWGg7UmJcFdZY+IphxsmvyAoBtLzjc2d732+uYM4i5FxGwACBbh95fTU6?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34ac4ba1-a2d6-4926-8917-08dcfe8525b8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:04:59.9194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4xAOIlLqhKjK/BPLuU5tgI5JHUlxFoQUNazwhK7NU+SG57jhkIDe41pjOg35VZbQNqTCP9BINq1YbkNQFPYTnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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

On Mon, Nov 04, 2024 at 07:19:22PM +0200, Jani Nikula wrote:
> Convert HAS_MBUS_JOINING() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h    |  2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c   | 18 ++++++++++--------
>  2 files changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b85b1d3ff708..a0fed40b7779 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -167,7 +167,7 @@ struct intel_display_platforms {
>  #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
>  #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
> -#define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> +#define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
>  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
>  #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 3b0e87edbacf..83e2cbbfcaf0 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2496,6 +2496,7 @@ static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_state)
>  static int
>  skl_compute_ddb(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_dbuf_state *old_dbuf_state;
>  	struct intel_dbuf_state *new_dbuf_state = NULL;
> @@ -2524,7 +2525,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  
> -	if (HAS_MBUS_JOINING(i915)) {
> +	if (HAS_MBUS_JOINING(display)) {
>  		new_dbuf_state->joined_mbus =
>  			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
>  
> @@ -2984,7 +2985,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>  		to_intel_dbuf_state(i915->display.dbuf.obj.state);
>  	struct intel_crtc *crtc;
>  
> -	if (HAS_MBUS_JOINING(i915))
> +	if (HAS_MBUS_JOINING(display))
>  		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
>  
>  	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
> @@ -3562,23 +3563,24 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
>  void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
>  					 int ratio, bool joined_mbus)
>  {
> +	struct intel_display *display = &i915->display;
>  	enum dbuf_slice slice;
>  
> -	if (!HAS_MBUS_JOINING(i915))
> +	if (!HAS_MBUS_JOINING(display))
>  		return;
>  
> -	if (DISPLAY_VER(i915) >= 20)
> -		intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
> +	if (DISPLAY_VER(display) >= 20)
> +		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
>  			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>  
>  	if (joined_mbus)
>  		ratio *= 2;
>  
> -	drm_dbg_kms(&i915->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
> +	drm_dbg_kms(display->drm, "Updating dbuf ratio to %d (mbus joined: %s)\n",
>  		    ratio, str_yes_no(joined_mbus));
>  
> -	for_each_dbuf_slice(i915, slice)
> -		intel_de_rmw(i915, DBUF_CTL_S(slice),
> +	for_each_dbuf_slice(display, slice)
> +		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
>  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
>  }
> -- 
> 2.39.5
> 
