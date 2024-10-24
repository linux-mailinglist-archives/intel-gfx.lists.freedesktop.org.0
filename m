Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E829AEE40
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 19:35:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C5C10E97F;
	Thu, 24 Oct 2024 17:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SH3madTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D76DD10E97E;
 Thu, 24 Oct 2024 17:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729791342; x=1761327342;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6EdFJxD79FJ5I//wxeP/uDw/9Y69aDoXqaNOv5X87Lw=;
 b=SH3madTqjVczbBMjuk2F/9tuVf232yKP1ZY4uSiHv3Rry9JaMbx01Bmf
 GYi7flKPDyLG7Ciz9l3wsrN3PWxBF53TjtlClc3+G7tES/P75kWKdJBfq
 UNRS32KQkpuFO8zb21Ed61E3HwicloFjE2RtfV+xvF2UrAypTWFmW+RKd
 48RqzHShoFCSC2ecwCrFM0hRsI+GH+DfaxBdD54jPyWdsJmVjNHFAvl33
 Mo7oAPdUq7je7NeodsAMc9NzoujDupvgAixH7ctcQKFu81zoiIu+b7llz
 qAB2faIbutL4fPBxNb5s0dhPeoAcE6ffubNDBLqyuHfpT85XRSo5bJ8cl g==;
X-CSE-ConnectionGUID: B8SOUp0bR1mToW8aLYyIJQ==
X-CSE-MsgGUID: wvX9WWLpQY+cRI87v0I4Xg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29654909"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29654909"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 10:35:41 -0700
X-CSE-ConnectionGUID: GX7mTyawRsShf9M1JGMS0w==
X-CSE-MsgGUID: ePpfyAoaT8Kb14JTu+eGAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85440222"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 10:35:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 10:35:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 10:35:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 10:35:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mV27AW2hW751Uwr3vSLJ2BpH89oFpkZtN+2x9KujltAB+Eix/8nu3D+aJuhwWRUxchG5IbdBQWG8E0OsWO7K3QM1Pokc51O/LqMpamNlRP/v3M6/gOJoL3BxzKZCNx6KG2ZpgpS5YcLkK3VUO5+EqpzgPcTg881m+lQrdh/x8xuNqq1DuT1m4PsvkEU38OjHxnKXCUC4yJZWsSles/1M1qb4KJ5XHUoy/Mt79EMyurC7+qYJFaVzhlA8J7p76FZs/LWBU9EX6taYG3K7NGLpz0obP79ObvxcB5VK2lfXzTz01Bu/faO9+PCVg20ClirPt+8QvnItuRMT9jfHJoMaiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIydFvZVMyHIavAQy4wg2VmG+NdRaD1dKc/5zMlsQOk=;
 b=IHoGrG+0JtUgAcRADhLrTo8DoMSxJ4XQJ4eNWvGOkLl7nC+XgLf6Sm6jD9w9sIFjRfoCA3gnqha9RgYgdL6D85KAiDD8iZ5ZRq8aZY1J8FckjJNxTmhvsB5owAIMEGl3nqkNBuT7hvi5OxZ2ovRkKMFAoSehDngooybO44rhDVbMxCTv/Hx36gWvGo5jqVqf/4KJOyxysZEd7av36odt+l4Jv8bO+samtT/TL8eXSZyNzg84A5kxnXzDe82u0XMLYt5ENnkgnJkBvuKdkSkHvmpa5vXusFxuPZAJYz6fotV+yM43Xc5I9Fv+u7zq71MjpUiNBm/gJaQRAlUsnmCW8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ0PR11MB5152.namprd11.prod.outlook.com (2603:10b6:a03:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 17:35:30 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 17:35:30 +0000
Date: Thu, 24 Oct 2024 13:35:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 02/12] drm/i915/cx0: remove unnecessary includes
Message-ID: <ZxqFX_79t4zd1eVW@intel.com>
References: <cover.1729776384.git.jani.nikula@intel.com>
 <ac5f6b94b9ba7b3d1d54d0dc26c9ceff5a88b6f5.1729776384.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ac5f6b94b9ba7b3d1d54d0dc26c9ceff5a88b6f5.1729776384.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0065.namprd04.prod.outlook.com
 (2603:10b6:303:6b::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ0PR11MB5152:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e7c7496-fa02-4b7e-24bd-08dcf4524196
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nLi8wMrh7Jsa3U1zSyjZSEK0EKCOVZWhHnCOszIZ57V9QlEdBAjoMBgIN1kq?=
 =?us-ascii?Q?fzml8cw+51fzt5X+1KNIRup+tAnvcmipLs/KETFXSDWMkfhy26UFD5IRUbDT?=
 =?us-ascii?Q?oK98EyOuWa5TFBhCKQAi8zEaQ4x2K1TWKXSSJxVAB7oFnWb98xjxbHC9vqiR?=
 =?us-ascii?Q?j/Pxgk9p/tT7mvZo9JwZeOwVjWFuFdsdsvCnEKhlhJx+uIBo30JKUKuAMRdd?=
 =?us-ascii?Q?x/wK/woEVvpvr2voPqYygepq4sEDum4rhIfLGKPvk7cilS1neSc25DdjwYa2?=
 =?us-ascii?Q?cDyBW0uWTnGdjYielPhfRUjrebMP07jaN4Us8iaAW77FCK6BeNsLpuUa5GoN?=
 =?us-ascii?Q?pkgIT4ony9m3F9xlmxvSm6tYgeGhJMgKjwMVQjRN42TcqQBG0OTnO7HgG+R3?=
 =?us-ascii?Q?HMgmBCJyCRKugJnLcE8tgJMBBkQXIJTgiGg1o+o5rTA36f3qxktcHfjPEni3?=
 =?us-ascii?Q?Lyq7SO+Kyuo/gePxpInvZAXCT3y5X2zvRLClWrnKbz+WGHoXCRKeREyv0i5c?=
 =?us-ascii?Q?nuUmn90gemfO4LCChaQ3zpWHvQvgr2wI3K+AIMDlPPZUG1istjZGZE+pkMKt?=
 =?us-ascii?Q?WKO3xfPQlvIJarnAXneQIGKVMOO/Bxqw/Mybq9sGoHVcGLH3xM2MxsRtI3sN?=
 =?us-ascii?Q?ThDh2FvM3d8gFEE0XbLXGfYdQXEBqtlwBNRvBxBd7aRWQ7xz82Y23lIp+UoE?=
 =?us-ascii?Q?XTHn6YVvegZmA0EHtPzbWEo1bcuuU4kfg52hTU/v6VH7WqGI7YD3DeUjkP5A?=
 =?us-ascii?Q?Tgm+MCVYFxELJ451lHCa9+jI8FHhNcbSoFLQ93gCfTvzbZpvQxrogKqNVxX+?=
 =?us-ascii?Q?aNThrQOwJ3G7RB6E5YrrMGf3QzIencevTnH86qbJ5+GiL8qa5J4+zjhcKUGF?=
 =?us-ascii?Q?7jyy86/Q7Erp+ttqHkNi+qJFreiWVwhNhE3673okTZXQxSjAseDgZcHY//hw?=
 =?us-ascii?Q?gvH37YHsT28kH6l7DxnoH1gnVbL7d5+7AfsilVHjn86+sQhdbKJYUp7W7Wt+?=
 =?us-ascii?Q?xCQbyRTKWAek1pcsJCHHIWcHnGwXY4zoDIyg6b+gVEBQKov5+418a3pVWdSz?=
 =?us-ascii?Q?sHIdCAMu1IQ5jFL1GNHwzNm1PUD5Zk2t1qWwJuFbQ1sRsUhq9uZNPU0FrJj7?=
 =?us-ascii?Q?0IrCn9HAPwn7YDRy04EoteVX/9x6FHA1E4jOLQ6vZa7uGmlbD2g9CpjZNT0r?=
 =?us-ascii?Q?YYFjeLDQUMM1yuc4uwIQxc7J7GigPXYrYL6QdfmGawsnR2sQWcWiM9eOaa/a?=
 =?us-ascii?Q?xapElIKyZuW7qoa2tpGd7ewSwtTSdpW8wQSEeEveBkJ4gbJODuqC+tPsJuqn?=
 =?us-ascii?Q?AEAaj1Ta+WKqYAa0cS8hhq3Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OpjuvhTKpchk8NRjMJOROTOufwdowupaRCWFHDGRJiWRBYS6piyWhu2VNjoS?=
 =?us-ascii?Q?9f+2ipXzaQ1WvryGtdYKLELCpnGxrVCXnBH0/E941SaG6WMnxC6WaQmwCpMW?=
 =?us-ascii?Q?4ES8znIDD/1hgqMYnJruvWcpAwl6urq6uHO/fRlY+S3cpzdsdSYHv4m6Z21G?=
 =?us-ascii?Q?fzEsTMuEYtpK59j+7ubC+oJva/GSgTwyydoy6lHewxsdYjl1g+h7YTmrNT6o?=
 =?us-ascii?Q?g8yEL4S/TWsr0PxhLgGspiO5CSw0m183rC4a0W2dVLa9e2RoRbz22viMWBKb?=
 =?us-ascii?Q?KJNrm1+QsrouNxoCX1F+y+Egl4ILe7xvxt7oWChTFlqf9FNK0aRAfXFko3bg?=
 =?us-ascii?Q?kJdB6Jv7UR7IgfKGf5qL5iu8pAgHaRic8xI5dnjgxqhtHFRB+xqbL2BEikft?=
 =?us-ascii?Q?Sv/+N5MszL1FOt+XQG7kcQnZl2GTMk0nK4nQQnsKlgH6Y7zqdoL+g919t7vl?=
 =?us-ascii?Q?Ha+9Dbi/WvD18DfGssJFCMPxeQ/IrPfV4NE+4EEJRaGArihPPqYEBKaA0PIn?=
 =?us-ascii?Q?+S6MXQrQrQX/2oFU28rB7DPn8ki3aCNXuXobHiUbVgSVmr1OvQWdjICoaa69?=
 =?us-ascii?Q?rH5ziCXmeT8u+Q40SzijKKXFiFpHG/BUnvIP+Eokk91/YxfpCQdrAyTDG28U?=
 =?us-ascii?Q?wTSPj8cde8adbuBHLWNImwNXVRahkjX46VUN38HGOVk36jLYGeI6IKBp3Y4P?=
 =?us-ascii?Q?ZzOY6jdkThzyvms59AcaDxE37IVpj34lpiYjV8panSrPNPY3J80LxF7Emqw6?=
 =?us-ascii?Q?xW4MuzNGNLAQUi9eW+aHXjR+I4akuQB7Z8qibGHMZJQ0POWAPNTLWqPJLhyn?=
 =?us-ascii?Q?OfRlGrx947E6ReWTC/NIe1lJXcoFi/E/bMPMEtPwZ/IqvOKtxx3Nofev/ZV8?=
 =?us-ascii?Q?R0+k7SqV0Ulr8uJoIzd6o8gGydOvRRTXmy2ucg6DiJsoXS4YLt+v5aHuJzro?=
 =?us-ascii?Q?3HC0XnPNDUMorTxsCxrQhOCi7gbBycyTGln9b1fWsxJQXs+rCS54zHMhxTH7?=
 =?us-ascii?Q?5aJYreuzmIEmvCFOMZP2LbE4qcclRDVt63z7SJnBMzZ9Kzp7ZHCWwHYhGpON?=
 =?us-ascii?Q?uSEVmFI6E54QMmesA79LrlW6mXEdTsLEXFUReyz30G32mpL9rPXr07g+7kuc?=
 =?us-ascii?Q?l62E3kdYWTj2GhSZSyXKHzTsDl+MbZjzUIC2Nq51qk6y0R4C02VQjbL2xmRy?=
 =?us-ascii?Q?8Q3IHJYKJE83DBnsabpe1ouWQDIisI/yvBIrpyex1TJd7Lxcj3iE7pPf7mqp?=
 =?us-ascii?Q?uP1VJM57pNfx8fV44SMALTopLrG0ej4mC+w0yV+oHzeymGoQFbPaoxGQxrM5?=
 =?us-ascii?Q?x3dnfKr8Eyb+VoWsP6qL7cdLyLDXF1NZZm1e9A2uGbee8E2OX5Yi/8ma7OxJ?=
 =?us-ascii?Q?X6UNUoWcMIRM2O9fRo25ZhldX+hU+L4fVd9CMNJzL1vGQE2vzGkvnFOlmx4b?=
 =?us-ascii?Q?nNK8fKKKXnPHj07z4VW5LpuFn040/PfLrNbnIw7GgMMt7CXINW82mli/4uwv?=
 =?us-ascii?Q?sBNfS4zWIlFPJrtgteGNOyZYlSklmSH5Fkm6Y7G5DCMUWtTGEfbFq6+xV2OU?=
 =?us-ascii?Q?2pI/hFrQVYRud4LofZxdtAtDw5pJtLH6H+SodYX2ck8+Lh2thh1PA04g4wHZ?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e7c7496-fa02-4b7e-24bd-08dcf4524196
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 17:35:30.7726 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NpvWkn19HHuLyGwz34N3DjNFRXTfpF1TILL+bwLaHmM2pnCNUhwHzX44HB3HDPk9+BGzh80UURFPZHL1GM08RQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5152
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

On Thu, Oct 24, 2024 at 04:27:32PM +0300, Jani Nikula wrote:
> There's nothing in the header that requires the bit or bitfield
> headers. Remove.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9004b99bb51f..3555a9bc1de9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -7,8 +7,6 @@
>  #define __INTEL_CX0_PHY_H__
>  
>  #include <linux/types.h>
> -#include <linux/bitfield.h>
> -#include <linux/bits.h>
>  
>  enum icl_port_dpll_id;
>  struct drm_i915_private;
> -- 
> 2.39.5
> 
