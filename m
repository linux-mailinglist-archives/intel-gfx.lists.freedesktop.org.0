Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3194644EBB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 23:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 748BE10E0B4;
	Tue,  6 Dec 2022 22:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA33710E0B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 22:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670367072; x=1701903072;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m0Mh/xCvZO6MprVUbxFCqMn7Grj5p+e8p6AUJ9pm7ZY=;
 b=WnrMh9NPPWqW4rndr9A5XPXqiL2rarzKuvHmd8J5vjomhmBoYRIwQ9ly
 +iYlVxV6iwc2DsMQcof+t7Rc8cM521Mr6GP1WVcalkv9ABYeJ+BvtA2cn
 0FX0VSA2/3OOJZSMGVNvxvpBZW8zaRepDZ2s6VTUjRsWVvAitVzmlfGrZ
 DPv7DNiBYVjJu2v40+mNCUNjtc/gGQCf9AeiGrRaiqNa1TT5xZ3TNbTNp
 RD8uYXAoQoq04XrkJebXOyVPBw/dazMBXK/kiaNPWagkfuWtg9TwTVmJ5
 dLqA8jkZ5RLgVwQKSiV/t1dLLoKZU4QPxPBseWti7erw59ifvUB/G54eu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="315464022"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="315464022"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 14:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="714969443"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="714969443"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 06 Dec 2022 14:51:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 14:51:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 14:51:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 14:51:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 14:51:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1B3GnC6KPLhwL4cYke7vNuoQdQJY1hcysB3QzVLPVDwEZn2lY9ArUkxnedMeBMV4eBTGlUdftRpyoCcYCFz0L8fdls3RJwD7a8jnyBJkcnNogSmYLSoImucM1TBmIJCGhe7zB1dqalCreKBsG35kDnW4CN8SduEpmYEDFusTBZooKjRExsyXbVU5iJKGvj/EGGr1tE9LgoUD9tcejecLjlA4gzR5Sww2pbF7RjAQG6HbFF6IXiczuz3teNkZioiEv8qdnVrYLtsxnOdw7vqzBsfNMhyrkvrOUczzEVpkTXRWTmECIKW1QRLd2RRJAdiM9DqarN8PVGWsN0V4MM9ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LFnmR2omN1nb29XuunAqurNGbJPx+qXC0FXbyOxvCuw=;
 b=RKb9QJG4DI5dDvxgq1UHQQq4hCREBnO4ubQMBIrECRQEFzxSYcRpH3Iv64yLX1F6vrbrPI/wgAQgHvuTmyNNLfTiWwNE1qnVZzyT0m0ZbJFpbaYvCnu2UjHLM0ajslIEGi4G3BqFoBaoqZ73ULDKpiCcVTTwDxTxGgaU7jLR0D3MT/GQdI0XcFdSJd0nD76EQ5LjQoFp7UBFmE4unBOssSjG/G2nLpzOVbbmYleLEhUS79fAdQtrFBzZ2GeG4GuW5thnEn+xJjxa3KGwTIVLkOqSeJl5ICJsORw+itsNOo1A1ecYdr3R12p+IWFqbmQQDLdhPZh4NXA8N4hHnvraEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 22:51:09 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 22:51:09 +0000
Date: Tue, 6 Dec 2022 14:51:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <Y4/HW8q1WdH/QBDG@mdroper-desk1.amr.corp.intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <5abb076e8a8f78bf1e13a08d8300d2f7cc043cac.1670311877.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5abb076e8a8f78bf1e13a08d8300d2f7cc043cac.1670311877.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: BY3PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CY5PR11MB6282:EE_
X-MS-Office365-Filtering-Correlation-Id: fe250b15-8098-455a-73aa-08dad7dc5de4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VISjM+vl6QAXEIIk633c8kzFY34nHc5ajDHQPioChiSbNbu9faIvL+7VSh58146i2jTTLSRzd9/l12QkRkwxbOoQ8c/mmUEP2zemUi4ZkiFvVb2Fcpm4sRF6emG8DDHFR0ezaUNNKi4NUbYE6bCnLC7edNpaHlAEcM61qsgARWOdsw/9PhZSvxqw7uMqK2PTrLApHjtQdgGAAGM/mz6rFvN4gv7HRNgJ5d05LSZ5kEqd+YllaL5EA2LHDEncAg8DKHCN+SdSAHPVtg/le+l84czp3vBFAODy1e65+JdnPR//psiBYfjvbx/IyuKg5Vbm48sEspgLFRh+E4WFQR8tCeqUgDUZMbopd5xARA3J64cBwLKm9/vEeNbpsOAzTrU9zPqN2Lp54aJgUHGOTpOb2p76Z+LBbJNcq+v5+07on/FnhVerq6QizJZpGdYYZLiejRS97hBNdu1ORiu1wTCPIYJA/d0WwctU8VFIk/Q2NjwO5O3Yf+zS1Une1FHHepebIC5p0iELfcKIk6y2/o2c0XP/qqBkyg5S1A3KDvYm2LU17mGPeYxEMEIHbY267yO2bzx04fTvUkjtHrLdfmBE59lnbLvHVjKq6yhM8CYkJ/1UF7Rjo0TH2EsDqlim9/bOlf+r4h+hJa2Mtp2tn0QTOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(376002)(39860400002)(346002)(451199015)(6486002)(86362001)(38100700002)(6636002)(316002)(478600001)(5660300002)(2906002)(66476007)(4326008)(6862004)(41300700001)(66556008)(8676002)(66946007)(8936002)(82960400001)(83380400001)(186003)(26005)(107886003)(6506007)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m7aiOPtsAJUL8mZsygK6GCY3w+7wOQWn0bsHBaJSLIMLA/KKLR7YOfAEwB1w?=
 =?us-ascii?Q?MlSq63WmYMKj+jbXsE4e7jSxI2BbS5wZ4JY0iRAbGIv1cO3hBL+bpk2SiFRO?=
 =?us-ascii?Q?Ni/IFEVg2ndAA9SZxRWjKfuuernmfBOkUCAOzQNKDuR8YVkQudrDHpCnGnX3?=
 =?us-ascii?Q?aMuK1Oq06WeAPIwGZ6JWOBAcG/LDX3RIQ+Z0nzKzLFsY1RSlgx1y2ccNtcvK?=
 =?us-ascii?Q?hMFMxiCreCYGoFkDNaFVK6ow5RdPRTpdCR60Y9ALPnLrzbC8QN9hsnBnGKjK?=
 =?us-ascii?Q?5hP7KDgX9+IZ08qg2s3SN7oktTfkcXLcT0CQSHbb69tWC50rvcZ7ogrb8u1t?=
 =?us-ascii?Q?RgwE/+muYBQ8EhKd1fi4pIH0WhuTyUjaowvW0XFZNFiejrJSr5d1CriRn604?=
 =?us-ascii?Q?YrEkfam7k09QxSNIDaCiU/b799X77MYal+t+Y2j8ZfpEwTPJc4yvP96D3wUt?=
 =?us-ascii?Q?5cJYGCNCNXnM9HvDkSjYlRTFM+JiCuHaj/ZAfCnOBL3EDEAQA2m1sRfVdY9e?=
 =?us-ascii?Q?Sm2xYVmCDOL6XDW1N7xwdPXgpcF9yMUoKw4INWFBmuJPL6kmG8gxFjxx2xDc?=
 =?us-ascii?Q?qEiQDosnlS1ihwD1XfejK+eMjMeFgEREUCeMUx5q9bSS0nQKpIwvs3r8BDkX?=
 =?us-ascii?Q?kO6ULQthOGwG9W3xGMDvF3c15eFMSakPJTvIjKilYpF//EBrKzf0frRUyvUj?=
 =?us-ascii?Q?JPKFV8/eALSfBjT4l6g2nGbVzQOF+85rqcj7ebmw2znegUe6HPB6YjwMrRZe?=
 =?us-ascii?Q?pULhpPsbdQmaHXPE53XKh9rj5IZxDt6XuxnpsS1VNEfaV+LAk1/VJ4QBJHRZ?=
 =?us-ascii?Q?9ejxkviN6HblSiD7k4+UJ/PVx/PxMCGTbVIyIYe8lsWGcvkmWjDF+tvgoIE4?=
 =?us-ascii?Q?+HiSytELsR1oLwHZQRGh546e8dWeW4VuEczeFBcQnKr3H6zqNeFqC8AGRZRE?=
 =?us-ascii?Q?oVLXquDBASwJCAKmWjB9MZ754+H6PEgapl6IAAb6ah1CTEXYQ+PP8rzJXJIR?=
 =?us-ascii?Q?xj0S6i0MiYNkfLp5ZNWeG6oSMHB9b8Io1bvuUDwOPMExT0rFWq/kt1csA6w0?=
 =?us-ascii?Q?mZbx6YOxlxI/qHJOpqN6bdF+XPAUo0Uhq6nAiaB7kjo6/wFetuk9jK8ewZlq?=
 =?us-ascii?Q?ZVea9VcXBMuZkN32rvchIDhYmQPyHJjTyRlZqdG2aPrWf8JpF9OcFqOZdbAF?=
 =?us-ascii?Q?zapPELh2e97fEs6RQC8luFHrFXkrK32Ix4zSYXi5dvh16EXsqfRU/FYsCPA9?=
 =?us-ascii?Q?Z3H3Q1rYWjDxFJ7Et5+hKH+6lhHG6bciZPukwpFG7WS/Xa5t8mywYSFMYLRO?=
 =?us-ascii?Q?crxZ08KRqE3pT4TuJh8IQ1J93PABq6gsolHXakjnyk+yzJn50gJW8c4TZ813?=
 =?us-ascii?Q?Q6Y8e9ZTsklZOqr9qj/1+H0GSvQ0QrfbxX3mYsmikilfQB+FRQKmMQCOvLiR?=
 =?us-ascii?Q?Rry98eerJ+fcrzYSQojACiF+wzBPLYfx826Q7DMzFIGd4mODsmGSndWpodaK?=
 =?us-ascii?Q?GxZmvMfS+o++B59qcEAtyni6ut3iqJzHHxEUb2rEn94WmCB8Yw5y9oO/Wvo5?=
 =?us-ascii?Q?y3ml125aqAA+5jSpZl8ueLl/wJmcpKBeaOZrqvTQ4fEN6JYSCtrYAVKHfHQp?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe250b15-8098-455a-73aa-08dad7dc5de4
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 22:51:09.6563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8GvLnFnRS7uoH4w/9BISADIQ1j4GVSWf5z08uDnPFdxXkloOW4mgMaw3HN4ZoOhRVhHMcwvbHOy3x6h5wys5NI/gzyRExNS8DZ2DWVGSmzg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Reference pte_encode through
 vm pointer
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 06, 2022 at 01:07:27PM +0530, Aravind Iddamsetty wrote:
> New platforms will use different encode functions.

You may want to elaborate slightly.  E.g., something like

"Future patches will introduce new platform-specific page table entry
encoding functions.  Existing PTE encoding calls should call the
appropriate function through the VM's function pointer instead of
hardcoding calls to the 'gen8' variants."

With a tweaked commit message,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c |  2 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c     | 10 +++++-----
>  drivers/gpu/drm/i915/gt/intel_ggtt.c     |  4 ++--
>  3 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index ad1a37b515fb..cb8ed9bfb240 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -298,7 +298,7 @@ intel_dpt_create(struct intel_framebuffer *fb)
>  	vm->vma_ops.bind_vma    = dpt_bind_vma;
>  	vm->vma_ops.unbind_vma  = dpt_unbind_vma;
>  
> -	vm->pte_encode = gen8_ggtt_pte_encode;
> +	vm->pte_encode = vm->gt->ggtt->vm.pte_encode;
>  
>  	dpt->obj = dpt_obj;
>  
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 4daaa6f55668..31e838eee2ef 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -427,7 +427,7 @@ gen8_ppgtt_insert_pte(struct i915_ppgtt *ppgtt,
>  		      u32 flags)
>  {
>  	struct i915_page_directory *pd;
> -	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
> +	const gen8_pte_t pte_encode = ppgtt->vm.pte_encode(0, cache_level, flags);
>  	gen8_pte_t *vaddr;
>  
>  	pd = i915_pd_entry(pdp, gen8_pd_index(idx, 2));
> @@ -580,7 +580,7 @@ static void gen8_ppgtt_insert_huge(struct i915_address_space *vm,
>  				   enum i915_cache_level cache_level,
>  				   u32 flags)
>  {
> -	const gen8_pte_t pte_encode = gen8_pte_encode(0, cache_level, flags);
> +	const gen8_pte_t pte_encode = vm->pte_encode(0, cache_level, flags);
>  	unsigned int rem = sg_dma_len(iter->sg);
>  	u64 start = vma_res->start;
>  
> @@ -743,7 +743,7 @@ static void gen8_ppgtt_insert_entry(struct i915_address_space *vm,
>  	GEM_BUG_ON(pt->is_compact);
>  
>  	vaddr = px_vaddr(pt);
> -	vaddr[gen8_pd_index(idx, 0)] = gen8_pte_encode(addr, level, flags);
> +	vaddr[gen8_pd_index(idx, 0)] = vm->pte_encode(addr, level, flags);
>  	drm_clflush_virt_range(&vaddr[gen8_pd_index(idx, 0)], sizeof(*vaddr));
>  }
>  
> @@ -773,7 +773,7 @@ static void __xehpsdv_ppgtt_insert_entry_lm(struct i915_address_space *vm,
>  	}
>  
>  	vaddr = px_vaddr(pt);
> -	vaddr[gen8_pd_index(idx, 0) / 16] = gen8_pte_encode(addr, level, flags);
> +	vaddr[gen8_pd_index(idx, 0) / 16] = vm->pte_encode(addr, level, flags);
>  }
>  
>  static void xehpsdv_ppgtt_insert_entry(struct i915_address_space *vm,
> @@ -820,7 +820,7 @@ static int gen8_init_scratch(struct i915_address_space *vm)
>  		pte_flags |= PTE_LM;
>  
>  	vm->scratch[0]->encode =
> -		gen8_pte_encode(px_dma(vm->scratch[0]),
> +		vm->pte_encode(px_dma(vm->scratch[0]),
>  				I915_CACHE_NONE, pte_flags);
>  
>  	for (i = 1; i <= vm->top; i++) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 7644738b9cdb..82203ad85b0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -273,7 +273,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>  	gen8_pte_t __iomem *pte =
>  		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>  
> -	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, flags));
> +	gen8_set_pte(pte, ggtt->vm.pte_encode(addr, level, flags));
>  
>  	ggtt->invalidate(ggtt);
>  }
> @@ -283,8 +283,8 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  				     enum i915_cache_level level,
>  				     u32 flags)
>  {
> -	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, flags);
>  	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	const gen8_pte_t pte_encode = ggtt->vm.pte_encode(0, level, flags);
>  	gen8_pte_t __iomem *gte;
>  	gen8_pte_t __iomem *end;
>  	struct sgt_iter iter;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
