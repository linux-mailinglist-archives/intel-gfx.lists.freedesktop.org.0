Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACCD8447A0
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 19:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCAD310E297;
	Wed, 31 Jan 2024 18:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115B210E297;
 Wed, 31 Jan 2024 18:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706727404; x=1738263404;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QmtyFAZtSikQr3xirsnwdpV85n0PdhHF6TVNDbhZgA8=;
 b=fy29fMAXKl8JwDOw+nZToSNL4V3Nvk5h6N9VSluBziPdm5nG1mFWqJtd
 sfVusy83vVn0C8cbap6aOJelRcpe+SXqA2/42EYeuRE14sIcTKFQ4FEUR
 ktiji+tI8nepF9yAUQHN5kOFhCqq/p7ToQdSJSma+C9Dg3RlDVWTwcnrL
 DUjZsobw94MD4IhQDc+tywiXetTKiZH+tZVdp5c+C6ozCyCsJcS78mz1/
 eEkWfjGquRqL7ssVP0TFGWw3uFXAiWl+r8Gs71mJyUtYOJluB/SDOnV+T
 KKp0TL1R8lI+zyhOI4rME6VASlFMx/5v/m9FqHDJT28cxx/TJGIvG13CG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10450844"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="10450844"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:56:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="4141684"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2024 10:56:44 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 10:56:42 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 31 Jan 2024 10:56:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 31 Jan 2024 10:56:42 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 31 Jan 2024 10:56:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXHd4viQmITjziCWNzKUfzlYbHtOxQju3GD+E/qXJwsgj/VIEH3SVewFJ81z6XIVjKLxuthgN+d5VmIjfwU73tDP/zg6SicBz38/VfLgw1CMCzVKZr4EIyqIm4gsxqRVfKefg4A+1efX2F7gdIzGUgWLtXy6ZJdejWmKSmpBi1eBTrEMEBjRVNZ6v2GopT8ipjQhGFnmsqt99l7IGgMfR8EplZtYUxwN8TBNwAbMu+BmOOq8+WCqTXklVl+ot5tBCH5dtrjTJ5aKWGEqzY2XAJ7Uzsq738M+ULqW/Riey30oeu1e/Yyj5Ft9OCI70uIGLGiS+JYmvnC3y4fxpkk3EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WbgOkqMy9X+5H4uHyjm8PX0tTpLI1jtFzhfWGLd0H0=;
 b=XMScR3yBgFx0grFWY14ufjicyxuc1k18+P/RmrwBBpksy0JFKgAt6AZDbxye1CUc6Fv8tGQPKA8WK1DFcxn7P1WF5qFHuU3C5DnWtTb//nbpIrl5EW9QHuYK1eEYD517QSL/b2tARzbkHzPLcacSi4UvefX2fdjkHLFlnGoNoeuWnOCDlgZVxibFJog8zk2uk0efh6/tcCRXHgNG5/oEKGhGoDBPdzAGPGCyJmdYq6gcbsEaZJcZDu4cb9L9av0oXUrd//w2LlUtAsVHl2EZZW+92cFvS9sMkRqpUoLzTeKFKYvzJx3433Gl6+MDY0xsWLGqpL7jNTtQLrOq7q71GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7734.namprd11.prod.outlook.com (2603:10b6:8:df::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.34; Wed, 31 Jan 2024 18:56:39 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7249.024; Wed, 31 Jan 2024
 18:56:39 +0000
Date: Wed, 31 Jan 2024 10:56:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH 2/4] drm/xe: add bind time pat index to xe_bo structure
Message-ID: <20240131185637.GB5347@mdroper-desk1.amr.corp.intel.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
 <20240130193652.374270-3-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240130193652.374270-3-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: BYAPR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:40::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7734:EE_
X-MS-Office365-Filtering-Correlation-Id: 2138739c-522d-4dc0-dd3b-08dc228e5b62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yVLkAMgfv8Q2tMoxvPNng4frezh8HENdLNvKZz8h4H2in8Tx6S+Cq48QF60M4zR9zvy1sxXfXvNer4AXzw4hERka85+X51gbfFuRoaTk7mCqMtQgGEJJlmPtxyYvKVTmeELTNONtnz4mZ90rkBmR6X9yj9vK3d9SiMtlGxtmL7g9HaqIBqUApYlRLe2oLrR6MG2r9N9xLfBElROCH4CNEBxp6zlLdt+kqGJWmfxtUUWz0obPL1syJSKwNRZkNye2RekCpMb9Ba0euOZ8sTLDnBcNF6xVGINiqZozPLs72ZvEYIWcRyFdUy+LGhmxOpyOjVSCTRPFi/UFw6NZTxJ/rUsqRe4uHsOgOT4MSJ529votzd4WlEEieFJd6puMCHbUf0l4vPpopN/KgvlilXsoNGUtlnEKo43EpViNyDKsmjQtT79Gt+9S77T/R6uIrx2VRPtAJj73YXbWXT0OFiZiBYs3KVz8sCd9qCHWqolNBbWigVTVZEK4+zE4QVFGUHV//Xhf9zAzOb7HEhMOhuLGIy4HDWuDxgoqFsOtn3mHm43clCf71GbOAE0UaEPwXd3w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(366004)(346002)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(83380400001)(2906002)(1076003)(26005)(5660300002)(38100700002)(66556008)(6486002)(66946007)(66476007)(6506007)(4326008)(8936002)(8676002)(6512007)(316002)(478600001)(6916009)(86362001)(82960400001)(33656002)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3IqOBSQqfqYw6rk1Szf0+W1m1EjfcK7TQQt+F1ORpgRjzmXvm/4rKybKZCZK?=
 =?us-ascii?Q?/qztK8a/ISowZmz/lxPkeHIk1daGlDRfjge0qx9/QuJpwjSfc84npO+qc+jH?=
 =?us-ascii?Q?KNbY3J98xOq7PNLLFRPVGZHayxvaj5iKPaEpthQqcV0z6WcaWlBzv4fTmRfg?=
 =?us-ascii?Q?/vOhmlXKb+m1qJCEQC1o9UL6RzIGBp+7wt60qOMH+4YJqIYLymxJQRF+cgzT?=
 =?us-ascii?Q?ezBlO1mZIognGFp+bcnLoZz7NJz0uFfu0wOtXSAUNq/8AV41osoiEl6s+Z9B?=
 =?us-ascii?Q?vXIJeNOhIClmq5dYrkRO8PqNpi14zJsLRubZXIwd0GNH9r25iMIK5clIZlrO?=
 =?us-ascii?Q?dO2RB8qUXvuQB0X4VccmQXn6OkWa+4rY7W6soiACbyqKy1VlYxSSzeKgptCo?=
 =?us-ascii?Q?bgPAIa7JU51PEUmwb2OplI/uMVmYYFvApQt++eJuJT+iQQavsf3uMxDcYzDt?=
 =?us-ascii?Q?tFS1VxptS2CSCfXbvLZ9YPZNJx/azPh9sl+Eq26t90KyhgTS+ky6KzjN0TOk?=
 =?us-ascii?Q?UrVIst8HYu0+U++Ql/LcIsmqlUcCORzOkOf+EJEPIgCfoO1E/HDwRM8Bu4T2?=
 =?us-ascii?Q?MKHXYMUBV/8nJm/Kl0suCpCHOr0RVrWMzd8N6OH68ZiurmRAu+ZJgv6f2KeN?=
 =?us-ascii?Q?I1QAZBX0dSvxR81xayRiewCicCllNY3MMofpIy36fyl6na3RsZTLRMuFfd3B?=
 =?us-ascii?Q?IaTy0eyds87/z4yQmlVZ9vHbxG3/1DO4KJufw3SpQW1lBa5NNLd+5b1LoCDc?=
 =?us-ascii?Q?GHC2OMqIGkCG6o0WuO93F6XoSmKN+IOhsBtcnEYh68CBCTxVTQhoRcDj5FYn?=
 =?us-ascii?Q?BS2J+DxCDXB7+uSaee8EiiEKhKJa0y4UfNo5QSfaYnv3vgox+T6y+oal6Abs?=
 =?us-ascii?Q?lWiuI3MawX8SrEgsQbtYz4FyIR3+mGfaYUT7m4goQdyLK0lZcnQA4NUmxmN+?=
 =?us-ascii?Q?qMPvN9BRcSqcDPnngh8EvV3Lz8fX4+jzCRXEuZZb4fLq955xnsjn000+WvTL?=
 =?us-ascii?Q?0Mj7Zo/SQNn1eXdTtgyulrO5QXTxJBcO/YnWuDHKuigeLGm4xgBTjoTrkn6K?=
 =?us-ascii?Q?LT2X0nuv4lGQ8C1TjaG3wby2syKaOnTW+aaeGLWKHFb1wjKyLgljcSujd6U9?=
 =?us-ascii?Q?VajidpZ40FdCPguR8CWMoBaDE5SBvq8c+n3jMue2hUrI0N0I4pNckB5q2N34?=
 =?us-ascii?Q?xmitNdpDSRTgvj84mfaevLIik2ri+h62vcf1XRXGOMHX36HaplvhgOSL957l?=
 =?us-ascii?Q?A+a9ZtP8d+v9lkA1nDo3AlWK4SIqtKUK4qN4z9McsKIyHd5Jn+56YQQmOcYs?=
 =?us-ascii?Q?OwWPTW7Cmc8a9EeAPcuPCogABIZ8rM3S191IaocpGQUTpCPNd2Br/tt8Tsiu?=
 =?us-ascii?Q?3mYOx+0f3HQ8lWgDDeSAiRBqv+GhfQU4R7kDOm40hgIIr81QCPM7SGVzGq/V?=
 =?us-ascii?Q?YoPO4S/Qsly2DHmJeN0QZSvxz5foeMmZLNFdNgadhvG/k7Lqur6GlnBdKU5/?=
 =?us-ascii?Q?LSOgygCHUy8qVJD6Sct0UipfoHkjphmX1zpuRXza36RR78L/FkH7mr2n+IhV?=
 =?us-ascii?Q?R8/dpP9CLPeB9i7PbB5IQzsopndDNh1vT3IcK+Ie3CqAtWEHs/Z4fS7yYJmZ?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2138739c-522d-4dc0-dd3b-08dc228e5b62
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 18:56:39.5478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PTUI71zhoFgEt90DVjbIACWNTlgRjzDop3CyLqDIHPlmQ9KvktdLTH2bLU9bEzP5glQfG6V3NVinnNtw2fQdQNngaT3NiTOJcW0y7KTAjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7734
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 30, 2024 at 09:36:50PM +0200, Juha-Pekka Heikkila wrote:
> Add BO bind time pat index member to xe_bo structure and store
> pat index from xe_vma to xe_bo.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/xe_bo_types.h | 12 ++++++++++++
>  drivers/gpu/drm/xe/xe_pt.c       | 22 ++++++++++++++++++----
>  2 files changed, 30 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_types.h
> index 14ef13b7b421..6d599f1e846b 100644
> --- a/drivers/gpu/drm/xe/xe_bo_types.h
> +++ b/drivers/gpu/drm/xe/xe_bo_types.h
> @@ -91,6 +91,18 @@ struct xe_bo {
>  
>  	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
>  		struct list_head vram_userfault_link;
> +
> +	/**
> +	 * @pat_index: The pat index requested when bind this BO
> +	 */
> +	u16 pat_index;
> +
> +	/**
> +	 * @has_sealed_pat_index: The pat index is sealed because this BO is
> +	 * pinned as framebuffer. This is to prevent flipping compression
> +	 * on/off from framebuffers while in use.
> +	 */
> +	bool has_sealed_pat_index;
>  };
>  
>  #define intel_bo_to_drm_bo(bo) (&(bo)->ttm.base)
> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
> index de1030a47588..c72cb75d993c 100644
> --- a/drivers/gpu/drm/xe/xe_pt.c
> +++ b/drivers/gpu/drm/xe/xe_pt.c
> @@ -1208,10 +1208,11 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>  	struct dma_fence *fence;
>  	struct invalidation_fence *ifence = NULL;
>  	struct xe_range_fence *rfence;
> +	struct xe_bo *bo = xe_vma_bo(vma);
>  	int err;
>  
>  	bind_pt_update.locked = false;
> -	xe_bo_assert_held(xe_vma_bo(vma));
> +	xe_bo_assert_held(bo);
>  	xe_vm_assert_held(vm);
>  
>  	vm_dbg(&xe_vma_vm(vma)->xe->drm,
> @@ -1252,8 +1253,21 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>  		return ERR_PTR(-ENOMEM);
>  	}
>  
> +	/*
> +	 * On Xe2 BO which was pinned as framebuffer before with different
> +	 * PAT index cannot be bound with different PAT index. This is
> +	 * to prevent switching CCS on/off from framebuffers on the fly
> +	 * with Xe2.
> +	 */

I haven't been following all the discussion here, but why is switching
it on/off a problem?  On Xe2 can't we just always turn on decompression
(assuming they were 4-tile)?

Even if a content producer puts data into the buffer using a
non-compression PAT index, my understanding is that the FlatCCS metadata
for that part of the buffer still gets updated appropriately (to 0000 or
whatever the code is for "uncompressed block").  If the decompression
bit in PLANE_CTL basically translates to "pay attention to FlatCCS" vs
"ignore FlatCCS" it shouldn't matter whether the data is truly
compressed or not, right?  Since the FlatCCS area that corresponds to a
buffer is still correct even when non-compressed PAT is used (I think),
is there a reason to turn off decompression for 4-tile?

Am I overlooking something?


Matt

> +	if (bo) {
> +		if (bo->has_sealed_pat_index && bo->pat_index != vma->pat_index)
> +			return ERR_PTR(-EINVAL);
> +
> +		bo->pat_index = vma->pat_index;
> +	}
> +
>  	fence = xe_migrate_update_pgtables(tile->migrate,
> -					   vm, xe_vma_bo(vma), q,
> +					   vm, bo, q,
>  					   entries, num_entries,
>  					   syncs, num_syncs,
>  					   &bind_pt_update.base);
> @@ -1287,8 +1301,8 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>  				   DMA_RESV_USAGE_KERNEL :
>  				   DMA_RESV_USAGE_BOOKKEEP);
>  
> -		if (!xe_vma_has_no_bo(vma) && !xe_vma_bo(vma)->vm)
> -			dma_resv_add_fence(xe_vma_bo(vma)->ttm.base.resv, fence,
> +		if (!xe_vma_has_no_bo(vma) && !bo->vm)
> +			dma_resv_add_fence(bo->ttm.base.resv, fence,
>  					   DMA_RESV_USAGE_BOOKKEEP);
>  		xe_pt_commit_bind(vma, entries, num_entries, rebind,
>  				  bind_pt_update.locked ? &deferred : NULL);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
