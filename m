Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C011996E0EF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 19:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544AB10E920;
	Thu,  5 Sep 2024 17:15:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRrCxWsv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CE8810E91F;
 Thu,  5 Sep 2024 17:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725556531; x=1757092531;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VUjYwdIxjaH3XoyQfc34ZKeIioVYEiXk/tNlKT0OCzM=;
 b=SRrCxWsvuErw5l010+Iyj/xcwjI/6tYvjfwKQhwdAsA7+G++eHPk0EJD
 TSd4pS/xE64+v3tgalMMrmopDgn4u2oDCtfFu6TpP71yveZflAhchz7ni
 A6vbGMyeQbDYmcxfi9zWDN3g1kRI/NGxNs1gfpklBTWJF+L5+Mr5Ise3+
 5YgMhHa3OFwdGsRf9aFA3IyLUEP3p/BdfcA6ObUk2KhqBxHzqRZ09Y5IS
 Vfz5AwM515amkpRYH5gaJSj6LtUvGuqZrUk2PVzpAqSvZhNFWCNJA5muB
 0hDXGuV6gVANyo9QsZlTqcLfit89XajUkkKI4Cp+brnjXuIGJ9Lzuz0xg A==;
X-CSE-ConnectionGUID: WFDkl9dRTROOYttwJ3aXvg==
X-CSE-MsgGUID: inDSoJenTmKx04pRM0XC1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24447486"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="24447486"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 10:15:19 -0700
X-CSE-ConnectionGUID: lfk+00p+SHuQLexOLCogjg==
X-CSE-MsgGUID: Nss7agAqSD+q0D0wUWoOkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="66423220"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 10:15:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 10:15:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 10:15:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 10:15:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 10:15:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ts9wHUtOiSUjnzTqY6fD3tAAp1GoIrMGQ4/v3qFhCNQUHsVgf4vtJNQapAuMZjVHJXnjP+UeoVjqgbHQJfvbAvu9iSkEGFYfvBTBUNF1XrbVI36uO6CmzXh3JD8tkfyS85gQSRtKTMgHHfKNelhdtFMbS2k71o/ZrwmB93lW4RSbuDyqqkCD7H9cD0VGAUVSkcKijucMsv+JizN5hzdqmaUocv8OS/wetTWkDebN5lAkB4FY8e0g2+kanvCamZ9gIh3ixmKw/EEQ5vcnpghbtXxkc+b7ONufXbeNlykHesTnhLmuJ92tLqE16AGyLmQcGpGbtP/9TEKsDmiXsfiBCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g3vafEytV/zdQT83/3VlGlV9rky3wMn+rsXjsCfjTac=;
 b=bL2ctSy38JU5Mk5NWanUnyKAo0IK9Z16j0kwUYsShJ2yMjTD/p0UFe4hYK7qQuaylH5IEtOrBab1V5Bs9vB1ywgTrdNoglKWHiv/yxesp3S3oUaEXct8t3S7E1Ys5TC0/boY3E00RuGU3XCqoNKK9Klb1UThCLWHyJCuFZKfCPYfOnGOetBE7KfLgQQgha+DIgVJKiDh6d6ZPZozHxrKMqI2GxqydT0Ms4Rt3VmLM0QxPRulvY6GmSknBEgG4rkqid8xwgxc5j5NyMutO3DfxaDdIUPP/FeuF3HQFAXahB/teqzUUkJVDXG18hf5rAz+1uDbdh+V+MuZxRsKHaAc5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7610.namprd11.prod.outlook.com (2603:10b6:806:31d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 17:15:14 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 17:15:14 +0000
Date: Thu, 5 Sep 2024 13:15:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/pciids: separate ARL and MTL PCI IDs
Message-ID: <ZtnnHsMJGGKOmwqJ@intel.com>
References: <cover.1725443418.git.jani.nikula@intel.com>
 <b70af19ea017a76af4678d0a4ee8332253ee1f3b.1725443418.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b70af19ea017a76af4678d0a4ee8332253ee1f3b.1725443418.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0179.namprd04.prod.outlook.com
 (2603:10b6:303:85::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7610:EE_
X-MS-Office365-Filtering-Correlation-Id: 990503f7-3731-4ad5-e71c-08dccdce4e64
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?w51ORouklV/fMtB20uva1gVHBEjBo1bDpVOoQRf9QrjwFXHDg8hC8lpt6Vh/?=
 =?us-ascii?Q?tIQD2nPcrSs5VRfr2WftU1WyHOAs70OSOgvDvhbRlo5tgiHcB1nLyrsVhnvv?=
 =?us-ascii?Q?Dk6rjzla0mZ3PSC+fcIkRl0vRPSxt4YBmR2fvfUCOCweIXcpSDrpzv5hoT11?=
 =?us-ascii?Q?6yiq1oBtcv1hfITRIG17h1v0dOMs2yN2ws4qbFzv/Zw/xiDoCz5ZJA5ImXFQ?=
 =?us-ascii?Q?l0T6WqqGqczprxSPppx4Yup+wUUWLIOcV8TLn++UxSyOogH/p29LrPLAX87u?=
 =?us-ascii?Q?PkOOp/x1oQi2+F+J39uMaGQ0qxM1uEGSbBRy68J09qnUoEwbTWlI9FL7dWaz?=
 =?us-ascii?Q?OfpfM4rWwhwAx4JHsD+I/zpHhxh2cwUntHOhOtMLyVsiNdrZBiHH+QC41OR8?=
 =?us-ascii?Q?dN4gbterBhJhOf/6FdE6AmdIp8XR6F6B6h3X8pa4g9rTdnReDTWKJd/wHtzG?=
 =?us-ascii?Q?gB2fw5vXWPSGalj8k2S5fli7zw0nSS3QrJdv/RP6PCRpFvXxYXfnKdWeUXxx?=
 =?us-ascii?Q?rhRMI59KE9lEEGU1OLPW/w8Y1JRPYDV6BlbwIGK4C7L5HXaBUBq0Uf4M2umk?=
 =?us-ascii?Q?zXBGGENR7eUsCs5VGsd8gaTsORXbC7n7ZYhvgiWmOr6aZNEIR/D0Huhsxm+q?=
 =?us-ascii?Q?PrnQyHvNiaiCW+wDcknWRGiW59L/ZZX07+KZ/oAKRCHIByCLllSO38x9BDzS?=
 =?us-ascii?Q?Djbd29y1wGzNYcuEP6CqauPsDE+VfTKcgwpl3BZghQqeJi5yDtSMY/t0Cfxy?=
 =?us-ascii?Q?lPUB6T1NSmrBH5wAmM1qmAzK/G35lOGRgNibD1viTFXUSe0GFCqysxOg/PWR?=
 =?us-ascii?Q?RAzd/yk/wW1Sk3xcs9Q8JeG3J2RKXdykKDRAfkx3fYioJGNnrK5HqDV1lo75?=
 =?us-ascii?Q?Jac0mggJeLAS4u59DVkcyOdjfV2NdzEU/Z4g80+KBtXtl1mk4KgoC0xuMYtF?=
 =?us-ascii?Q?4yO/SY/B1+P3V3TnNs2A6iRP7gjCokwi5Gl5a5zGvX0elp0EKhzJrhF6UXkY?=
 =?us-ascii?Q?bWgp3sJwNNYHhB9VZXN81oUSL7z2jEEVDvrdeP7KNXx0HI97JBfLjH9Wtqr3?=
 =?us-ascii?Q?q4YACCQITEN3zi60WFts1WzF8uLe9+GcbiIL6n3ayv5xAu3pLd6TRUfc5AaA?=
 =?us-ascii?Q?7l9PtREhFqWjtbXDIfVTXa+fZLAS/23sa6trigG5ArSpDpquVb9I079sY90Y?=
 =?us-ascii?Q?agSq+5dd0K8ih2ryMMQ5OXVkWCJ9NCejVMSKytzyEnEQM7Gz8KoBEa6DLmW7?=
 =?us-ascii?Q?6S4JnDGNHjI2c2/SEbMkJ3OnWJX1FJCp9C/yiSIlAicyCA8q9BWBIBw9JrpD?=
 =?us-ascii?Q?nrKEygcKLq9ixsQjMwE6kHsbkvlKd03JfdA9rDwHTHL8XQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GntSQ3wknkWXq8ONV8qEWxydeIhqFaEPNlCKLGQQywVqEy76SaVlvWraz+aC?=
 =?us-ascii?Q?IZ0tLPYeTeSMs2u8ZxFpAY8j2QbntHbrLdWr9mBqYksd1pNbuLTYWwZRd9I1?=
 =?us-ascii?Q?mIVPVenVQVZyH1nvEuhR9Y3tHODwTQM0l9M3Ks2EWgGkWQaF+gUHovMipZ0F?=
 =?us-ascii?Q?4o5rzxwcC8j9K7KIaIUpcaStn6trjXrk4LwlLKCSNi1mj8/Z2cJDEVCOfpKv?=
 =?us-ascii?Q?CYoijcYm4O3rXWX2T49+wvdgzLfaqaBUVNjZNvhZim0bP7p22eMjjmB/R4w+?=
 =?us-ascii?Q?MaCW9yHuGw2sw0eLyMPLy+MA6zrT4Rv9hMxQ1CiKyP3dvVvR//F4BPhZLAKw?=
 =?us-ascii?Q?epwF5ehsb7JwryNO4x4DkImIVr4sPxCN8SN+r46RKaAqyDRQv1offJsYX9i4?=
 =?us-ascii?Q?RKtRvenfLYd1xLQYUGELGXOJ0PcZgR2KgFQeOYPYplfx4Wn4sfqSVU7/ohVs?=
 =?us-ascii?Q?aQjSXN3ZMeiuhg562+be2+aMona9p7zGaA0ICGuB6pJBMuQ05omzFpwk1GLL?=
 =?us-ascii?Q?xQl1XuYSjTMAue+z300qff/dGtTaCaYQrxL1p78JBma+3seLdM/EvpzGEndk?=
 =?us-ascii?Q?oXYhlY2qR/hxac2G14tyf6dOVPO+yosYRib+1sX5qe+SCNfMv7jrIetb+0uQ?=
 =?us-ascii?Q?pADxbf5R/AbMz2w4d/pVzddptnne3vTPePW1ai+ghlPD6ZvAZ7GCaWkav48b?=
 =?us-ascii?Q?fZZu0nI4wj6U3b9eckyaw8HHodD10SBZFXH8ZpZUxf2nVdHz1kKFIcyjpTDk?=
 =?us-ascii?Q?z0ka69jhpcY2nRNeOrhUpWspQXZFNxgfiReK0o2r17lkctdr5a6Jyq9rHO7l?=
 =?us-ascii?Q?h/9Ys6PBmKsT1vtP4+aPCwJt4qYAFVHK7yz6szBdlcwafBopHlDblGZmGt1w?=
 =?us-ascii?Q?zNPAmYaGm8nSD/7i44gKqV8wfqwKi1BGKJpqPxncUFXBAOYYmOZ9L7xscUvV?=
 =?us-ascii?Q?A1PwHF3dLXckfEpoNcTcri3MNwD6bsLW6LZhQCk5MreHUmtxH7ylEskxwgI3?=
 =?us-ascii?Q?vgzE83mdprFpc+MN49W+TN0jQYUp5Uz0ehXqdSQUmMbZKuCgwlt4JeY3E/62?=
 =?us-ascii?Q?V74Bb10eTgQiqiMUvPx3k4cF9f567ex7iLUqGK9LCaIh3CavDYZnJXDlU5RB?=
 =?us-ascii?Q?0g0NKYQLg+e/MVLXig7iMYK+OyGmzh3uI8OvMh3/fNdWVnS1y9iPiTEjlUHx?=
 =?us-ascii?Q?xP9XGXmtutoYzgM6kvKFak0AfO1G3j1gWgRs3Cd1aeeHdhYidCXB9kezC9WO?=
 =?us-ascii?Q?iBUxjW88vRB7WrkQ0mq/tusHC6QSAfm0DOsFIRMIj/RkcO6bt0bchn6ReqIo?=
 =?us-ascii?Q?BzjYpcymoMKwTi0bilG8IkK2wYMJXjyHEenpv34/BDJPmPOQkVAAkBkNkrq9?=
 =?us-ascii?Q?EE+a1lSW0fp3oWT0mCES6X3sLQhuunSQxHY24I0dc17ecGabOZ39wXJCV5UK?=
 =?us-ascii?Q?bmvBnQW1JvnaoUPgDq5+EOMwvatCW/x5n14QWuZRaIAlDMgOz1fi7WbGda3W?=
 =?us-ascii?Q?xTnNfiKif6Cz7/mACR0Cf+TkkaAnkNmv1sJdazMpNU18nWh8utxZFrLsSz3J?=
 =?us-ascii?Q?a8aPWkR3fcpSkqP9/hRB7/NPS9ADMa3kyLWfVF2vgjOBEJDDW/dNcieDvPFE?=
 =?us-ascii?Q?3w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 990503f7-3731-4ad5-e71c-08dccdce4e64
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 17:15:14.3925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hhv4dAQmP4l4cIWMh/7qTJOuprw620BeuN4z0FuYpWL4edtWrdgjWBTdUhArIqk11wKgyRdMTlIgwVTOaYI2FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7610
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

On Wed, Sep 04, 2024 at 12:51:33PM +0300, Jani Nikula wrote:
> Avoid including PCI IDs for one platform to the PCI IDs of another. It's
> more clear to deal with them completely separately at the PCI ID macro
> level.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
>  drivers/gpu/drm/i915/i915_pci.c                     | 1 +
>  include/drm/intel/i915_pciids.h                     | 4 ++--
>  3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 1b46ba985580..408c76852495 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1318,6 +1318,7 @@ static const struct {
>  	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
>  	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
>  	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
> +	INTEL_ARL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
>  	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
>  	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
>  	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index d37bb3a704d0..617f411feb8c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -870,6 +870,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_info),
>  	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &dg2_info),
>  	INTEL_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_info),
> +	INTEL_ARL_IDS(INTEL_VGA_DEVICE, &mtl_info),
>  	INTEL_MTL_IDS(INTEL_VGA_DEVICE, &mtl_info),
>  	{}
>  };
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 6a78df5687c5..cbb12fdbcb7f 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -764,15 +764,15 @@
>  	INTEL_ATS_M150_IDS(MACRO__, ## __VA_ARGS__), \
>  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>  
> -/* MTL */
> +/* ARL */
>  #define INTEL_ARL_IDS(MACRO__, ...) \
>  	MACRO__(0x7D41, ## __VA_ARGS__), \
>  	MACRO__(0x7D51, ## __VA_ARGS__), \
>  	MACRO__(0x7D67, ## __VA_ARGS__), \
>  	MACRO__(0x7DD1, ## __VA_ARGS__)
>  
> +/* MTL */
>  #define INTEL_MTL_IDS(MACRO__, ...) \
> -	INTEL_ARL_IDS(MACRO__, ## __VA_ARGS__), \
>  	MACRO__(0x7D40, ## __VA_ARGS__), \
>  	MACRO__(0x7D45, ## __VA_ARGS__), \
>  	MACRO__(0x7D55, ## __VA_ARGS__), \
> -- 
> 2.39.2
> 
