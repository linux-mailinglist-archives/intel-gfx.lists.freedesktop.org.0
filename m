Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A912D98FD63
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:35:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B20310E798;
	Fri,  4 Oct 2024 06:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKFZ51IB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2331110E69B;
 Fri,  4 Oct 2024 06:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728023715; x=1759559715;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=e877Lg6XGe+QGhKme9mS/AizyHReRITFL685uQVT53A=;
 b=AKFZ51IBWOVi6PASb7pIuPdqw2ZDAQP+wdCz0qVxN9RAOmTeZ7Q1f0Fw
 vqGuph/unDHZ0aWWBVM0WsYH8ld0/dHcM4zQanpAAZwQgya/6qyqfxI9H
 KgciSMmNXFYFOEmuZ5GnFc9Ortpt9TxTqCgPUFJTGFI05VmewNa+5ohFJ
 slBD+P/b9uyF19F9hT2JiSlQKg9xlgnd2Jw4XrzgXGhRvK3ePT2S/MKho
 1VyKIKghYyIOS+b0SuooGbvt9qrtui9ZjM22l9+kHP2Kl/sUerhKk4lzr
 GzSlYKdRSYbi9WqPv5of4CEw6ms+EId8p9wJ7GMPGN2a+BdxVQhB0pDeL A==;
X-CSE-ConnectionGUID: RWnJxgPYSVKx2zjTv2i3Jg==
X-CSE-MsgGUID: 3iLqA7iXSxeB7Iu7MK1Cxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27367028"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="27367028"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:35:15 -0700
X-CSE-ConnectionGUID: cMiuIX9xQYyrkR9R+8nBnQ==
X-CSE-MsgGUID: HouL9I/zTiWPEoQb5SXmgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="112066590"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:35:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:35:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:35:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:35:13 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:35:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i0NYq6XKirH62OwRdugsOp+QZKaUSZsdqjTENAwrSei34gbVnSApKTtfO2w+oj6VX4yuN2tz7DhD9adCV7SqXGCDRHuOUtoMVjb8wNF06ivxmgpmyquAFtdNveHly3PGptXYPVDTvbmzA2Cik44fzOyD4eByTdKJf01d4ajAlgor0yeo4gnX4zVjrkWMWPbNk5A1lg+Zo/NGnU32C7ShNMP6nS5YrmQs9n6Q06zCkAQWN5Fw782BOvfOCX7MxiZO3seKym0NmrqqdLfQpIKsk/M0Yk+FcctNzSc4BYJIFPKTHKxlVWN1f8u1cUhVUF3jRlpJSu2lmODzC3LUnx10wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bB9eOIleJEk+haOfard77551sFXzhwr0RH13EkeI+W4=;
 b=bpxYD+ZWStlVJEW8NUGPIk2QIJaZ1YD4UVm+hN4nmKCJ/iPDWyrKA6M65InsIZz0M3eHJZdXolxL3EceYYEcq+eK6BnCp9kHAT2DjDapfeW4DKzRo45ZkSt/N28nNOI+RWardAha3RcM0ygeaF2GsGp6eTqddT4zFBweFIsizUBdsVwltH1o6CjuGy6l7d85oEEUtPL3SyEDF5dqflrOQwbb0vYDayjwlqRvjllwoYuYrGmnYPRHJIInN71/EKfBu4eDQqpBoXKCYS7FV4yP7wM0T9cDLFM6KEIopkFd9L9piZbttOLKvqV8yzlS2RChbYiBcb0i0WMnr5NmNqbF5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:35:11 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:35:11 +0000
Date: Fri, 4 Oct 2024 06:35:01 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 09/12] drm/xe: Abstract read/write functions for GGTT
 PTEs
Message-ID: <Zv+MlVl/6ANWkf0g@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-10-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-10-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:254::14) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH0PR11MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: 0adb803b-0dba-4665-2238-08dce43eb2a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RTivmaOdlzcGWgZFEqGplEJEDPb3Aw5rnogwCIqJPHVmXpfOyJV52Pakvyl0?=
 =?us-ascii?Q?w3b57cIZLjTSsrkZfvxAP1vNiipWFO1zFOdfK5NIEcW56elSPcTIV3IfLNkn?=
 =?us-ascii?Q?1mtlzEbnK/a0jsa73ak8HC1J8Uq8q92PxWm31iplJeu98gA9CRkQ/dtlRnLA?=
 =?us-ascii?Q?fbUXUpkJGcy15pNcUiVQhTR6KVls94i+OtxkB9eLb5Gzn/pZQWoFINsK/pS8?=
 =?us-ascii?Q?T9sSnVIaSa56jt6X/ObdjYJoz/mrSA/4eLvHRGzAZcCvy9g5c7crLDiB5OAF?=
 =?us-ascii?Q?AUo/Inmf/roOUM2neNyVdz9hsBq5xD/raersLCVN4yzK+LRWPvgV6XHvQHxR?=
 =?us-ascii?Q?vVBwVB4XfoKWV4A1lFzR6j2KLeD7qdy/zRgZC+sNtUCjwFv5lwNBbsuDwFvV?=
 =?us-ascii?Q?1jPrcilhCrawyViSmSAAvY/UeOr2KL8pkY/q6tK8LqC95s/zpgVikx7Y+efI?=
 =?us-ascii?Q?15TiRKKFoDUe1Z1cNGsXUYHtDWIRv/4Auj4Xn0dqQF0FSmEBED33D0KMnifK?=
 =?us-ascii?Q?mOcbbgR+9L69dcJhbckDk59CMYcBjYhNUaXHEVp+YPOQlJ1S61qqi0QUpfvg?=
 =?us-ascii?Q?9O+ip7IbVFIty6w+86RCsKSEyvVUECrIG9xou5yNIxW8dKOn48r+pJ6sI8+7?=
 =?us-ascii?Q?bPuIccwFn/FBFEOBwaGzll4HCJViFYCZqwD2XLnOdHWSlnJdMnF2ixYm1++M?=
 =?us-ascii?Q?5ohQESiCxuLfWLjEZrciJfVK3gvsp7Snx+GJJ+6cM2o2X1mVwkLSRWY2tPis?=
 =?us-ascii?Q?7JF5zu+AwERsJO+yZbPDsctJufNqrfIMFDDWshb1iLhvbA9JNH/f4GAcBlmU?=
 =?us-ascii?Q?925jfD9rae6rTpPYwFsswT2NjoDEywQ2sEJdMUc8JbV/eXl8uYYxW5YkovNj?=
 =?us-ascii?Q?O1M0ST6SukoFLzfSgipZ/SnlbkVNgZxgq7aU1O2NJQZLBHv2TsvvHvDV9kC9?=
 =?us-ascii?Q?TMDx0QzN3H1zW/m9iDM68obDX81rE0JJayJpECc8q8UL2tXamwLYWfP2J5D5?=
 =?us-ascii?Q?GwviYvjtJ2UNqbffYRXK5ohpPm1mcm00egK8qbKj5qiXWRWRkR+BxH76vjTe?=
 =?us-ascii?Q?kaI9FC0TNvZkC13ajCKgzhd/4OBxLZmnPZ7+K67f/hlBLTPxKqJo7EyGgFnm?=
 =?us-ascii?Q?yE24nw/U3UgnRguk/ZfWRJfflGMMrFouVXj7NtfF6+5HbbTBKa9HLkVVe5lt?=
 =?us-ascii?Q?hoytejDcaFuUID079PqkNFYJzZbAJZRgk5nUF78VFzxSilJFTpHiiG+L+hXI?=
 =?us-ascii?Q?H9n6biEp/d+uhhVWneiD6+Rj0G1ye5mwFV0Q4hXTpQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i18P6W+8jQSymSexeF7DhU3oPVWvCsZyDO3S4LIXM/5wcSJVA6uim8OouETe?=
 =?us-ascii?Q?D5Bk46/LB04IksB5qc0SI0zlP9W45an92pSMZaVQYnzAjc9O9n/eD43CyKIM?=
 =?us-ascii?Q?YBaCzbIkTL0RID9uvco72XAfUK7fDOTu6YnX22VGKgTd9mIFaBeQPuPTdlAy?=
 =?us-ascii?Q?BdEff6DSGwDbOQ3hCk9XBkZJJom527NwCaOS/STpTj9YE9WRVjhpVkSthHno?=
 =?us-ascii?Q?WM0jrbqx+mXyoAGsWTUFUNL7HiZ4dQJJregEVHLUA0pkajzlcLL0AdIkLpfo?=
 =?us-ascii?Q?AQmTaBIMM1MDVtwd/pPx21917zUUUruZpoPit49jWXrNlwcZyojR7Ypv/Xhy?=
 =?us-ascii?Q?G3ueOSGdgNQQ/ov5wzBCxyskYi+46sQndE4eYLSVpvu1EtBr1wlWLEFbR+wM?=
 =?us-ascii?Q?s4kh/ltAF40ru0GqXZqmdGEb4709qz+X58rKYhNBlAlw1Jtq/9KPwoIuDhqV?=
 =?us-ascii?Q?oH2orh4BC66qGhjkN8RTrtTce3NyFa/ocClxMBzCeUh9G+YE1E+U5WKBi3yS?=
 =?us-ascii?Q?RotkGrNqsZdpz9x0qjbMNI/y8uK7Y5Kq6AO8r92sBj56CurCjVxVm8a16EsG?=
 =?us-ascii?Q?B/Tzhgvx6uGjM4B1Aj1bAYpIu9X2ZtHcCn3THmTUQ7rHdLw+YMrpCTIy1MLy?=
 =?us-ascii?Q?AeqeAHf0FJORx1ftvkMHF8a8S18TTKHbKI9cXEcijRSNCnT0xmVLBb+jYVjw?=
 =?us-ascii?Q?1agPI2JpZfXtkpsAmJR5O7W3E9yYDIZ+WVcxZNJ5XVHTGwfugwOCc/my2Q45?=
 =?us-ascii?Q?9d6cEy6MgAVdxG/aHfWiad/y7WtBiAqZSRt0gi07yPEVgR3FAkDh+niTjtsm?=
 =?us-ascii?Q?9P8PzWP2SKzlw5/iCDC2f0viKEH3jKOOnXPq+aRkAEeeodOXXdZ0BYbgiIEg?=
 =?us-ascii?Q?X/Ha4nS62SiiTxskk7283vJ95om/NVtp1twqTX3PSKoFj4GG5oPNcDytDORr?=
 =?us-ascii?Q?re69+dKlANJ4d4SCXwHg7fZsSK6QicjV9Iahgu6nyHQ2eJ00pTK4Rf1+AuEj?=
 =?us-ascii?Q?l4pqZSrcVGEdDXYC/Am0VYPqr0f90AufFzziZTr7RMHqD30+Hcdv3B3kh4WC?=
 =?us-ascii?Q?8Eo88K5JtpIZ4/XRlEgDYTUcNUNxK8/Xqg1kqCUuVyH7EEKVeBu+k5D++bu1?=
 =?us-ascii?Q?dPwfAQsNPrGhq9dp4m0srR6SCzoMhk4ajq7QxFjmhh//m/iQRR6jbC/Y3LfV?=
 =?us-ascii?Q?iWG/EQqtGkD+COfM8eos1SgZOQPce1y8IgC8n5rBv9FmnXKiTaRMfE/aTcBi?=
 =?us-ascii?Q?uOFJAwC0WpdSNA61Yi9r9BEvbOyBY4/UqAGm0dOyo/fU7Vj35abD2mdhKG+L?=
 =?us-ascii?Q?YPvoVr2JJ/7APebdVGYbIQiVzCyVkk7WFtue1KHU76BkbvxqSN3p6OjRsZZr?=
 =?us-ascii?Q?mHyxLpp/f2wRLjgPn+KbxXNT70JS+s8kRqMwcKW5bwu2Lfi1SW0LOr9w3fGW?=
 =?us-ascii?Q?Q0nbzZL59Fk/Pg8sV/VmVRfOcClo5v3OWF5T/BdlLCxdg9VPE1In2sU8Wpkf?=
 =?us-ascii?Q?MK7ovkdbJwBkEkSGAfD+i49dSX8IqzgmPOXudc87VzY1EBv0RGVK1gRI0wxn?=
 =?us-ascii?Q?UsxcCvKnGQVcMypf2mfLospxRMfr2Jz79rzTJYvoTVsif8jN4k/C+fMTi4rG?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0adb803b-0dba-4665-2238-08dce43eb2a6
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:35:11.6885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BQ+m0fWAqcRoR+1pKcaiwKtQ/kvFrUmmItRZa5XtyGDbENnxPVI9qHWNDnQf7KW6LUigCShs7v2XomeeMOudBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
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

On Thu, Oct 03, 2024 at 05:44:18PM +0200, Maarten Lankhorst wrote:
> Instead of writing directly, use GGTT functions. This allows us to
> hide away more GGTT details.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 +--
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 +----
>  drivers/gpu/drm/xe/xe_ggtt.c                  | 25 +++++++++++++++++++
>  drivers/gpu/drm/xe/xe_ggtt.h                  |  3 +++
>  4 files changed, 31 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 79dbbbe03c7f6..bddd526b33297 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -172,7 +172,7 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
>  			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
>  							      xe->pat.idx[XE_CACHE_NONE]);
>  
> -			ggtt->pt_ops->ggtt_set_pte(ggtt, *ggtt_ofs, pte);
> +			xe_ggtt_write_pte(ggtt, *ggtt_ofs, pte);
>  			*ggtt_ofs += XE_PAGE_SIZE;
>  			src_idx -= src_stride;
>  		}
> @@ -226,7 +226,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x,
>  							      xe->pat.idx[XE_CACHE_NONE]);
>  
> -			ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, pte);
> +			xe_ggtt_write_pte(ggtt, vma->node->base.start + x, pte);
>  		}
>  	} else {
>  		u32 i, ggtt_ofs;
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index ddbd964dc20f5..7cbe7fcf8b600 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -70,12 +70,8 @@ initial_plane_bo(struct xe_device *xe,
>  
>  	base = round_down(plane_config->base, page_size);
>  	if (IS_DGFX(xe) || GRAPHICS_VERx100(xe) >= 1270) {
> -		u64 __iomem *gte = tile0->mem.ggtt->gsm;
> -		u64 pte;
> +		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
>  
> -		gte += base / XE_PAGE_SIZE;
> -
> -		pte = ioread64(gte);
>  		if (!(pte & XE_GGTT_PTE_DM)) {
>  			drm_err(&xe->drm,
>  				"Initial plane programming missing DM bit\n");
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 4866e9b252ad9..6945fbfc555ce 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -855,3 +855,28 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
>  
>  	return total;
>  }
> +
> +/**
> + * xe_ggtt_read_pte - Read a PTE from the GGTT
> + * @ggtt: &xe_ggtt
> + * @offset: the offset for which the mapping should be read.
> + *
> + * Used by display for inheriting a bios set FB.
> + */
> +u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
> +{
> +	return ioread64(ggtt->gsm + (offset / XE_PAGE_SIZE));
> +}
> +
> +/**
> + * xe_ggtt_write_pte - Write a PTE to the GGTT
> + * @ggtt: &xe_ggtt
> + * @offset: the offset for which the mapping should be written.
> + * @pte: The page table entry to write
> + *
> + * Used by display for writing normal and rotated GGTT entries for temporary pinned FB's.
> + */
> +void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte)
> +{
> +	return ggtt->pt_ops->ggtt_set_pte(ggtt, offset, pte);
> +}
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index 0bab1fd7cc817..f83e5af0400e9 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -47,4 +47,7 @@ static inline void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
>  void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
>  #endif
>  
> +u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
> +void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte);
> +
>  #endif
> -- 
> 2.45.2
> 
