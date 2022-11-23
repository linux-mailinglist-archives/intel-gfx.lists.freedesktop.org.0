Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF409636A0B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 20:47:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B654210E23E;
	Wed, 23 Nov 2022 19:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D6210E23E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 19:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669232835; x=1700768835;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=dft/S6JstVh6ifgMAkIBWY+L1mhFe4xfjPsUU+6SS9A=;
 b=CUOKhsxjwrLPpZ7FXV40q5clxN1Z0Aup6CM51WeYAEY/oKvGWZao1fbU
 2rKoLoFjvHejbRnSuHytT1UQ0aNr/TOM5K+pLHPgr3xsVSFITYMLQWrOX
 BRB2zLxPht0EWXn5OXr0D4PGzY61IOpmYw+j6BJpoasdvJcO4hF0w6X2V
 DJ9AWxlZDxRGoS92jykGssn+jBRyqprMWHeK0rEe9ZiHCPir9OHF7Pu5/
 rcDLUUy5qn9eXaYOmFqYN3jz8KdQ/k9Og7ppdhfnJkOcnr01T5XkMhreN
 PEkkO1YWhGOMXr6n5xrMELP2YUbeK9/cTW2BGqc+TfCNLDCjYxrsIqmj1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315299340"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315299340"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 11:47:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="710708160"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="710708160"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2022 11:47:14 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 11:47:13 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 11:47:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 11:47:13 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 11:47:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UOgZQnAi2r/nQne1NStqb8dpXLbTBz4kU9iduMaReUUQkn0MiD6LeaHt2lxUbzrLZvJrPKNB7gswXq5tdR0fLYoYhidlnvc9RphVht+tsWbpI+9DWkcQk1/lBrwjDJDuuJQyvGwDWSs5BLg5XCnIHFgthJCc0toE0QJYPWDnKVO8EYq3Bs+xkcYE/ocw7Nn8sG3SfRPq7kgpmNz4RGaaSWLPB8JVMgozf/+5svOvjMNUmPDO53+Pc3UF2x7zpzGi1k73bMc1vf2sMWo6wUQlD8jyNuyaTno5HT8KG04b+yIllbZNIQzDHSJUESvLgwxZbNIt/31qlfSJs0JnaTU92Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCUaK6l1l7XxDaneCxbTdnPDOgikFs+kmQV5wShQirk=;
 b=F9GpKmhxiqArLN/+yFDEoFsW3gG4lkiuH7m5lA8ehEUY0I/Xt3GvIoUZNlzLCa/NXk6rZ53KRvljExZ7IvjuQA6UrDGrWrAROGHKZVFMq/Ee9gQpAq6Dyyl6TWAFdCBD3AuMPNtMjJfvZPSiDUENTJnXppKcoCXFG+VchSumF6qTcbX+N780D32wTa2j7FE771ziMs0oRw0ynGkfSF09ukFgyXkFRZKFWID+FsDrkwXNnzIk2YAEw81bHucW18V/TIgRYDSd4bnJGwq5zqKLLi9C4ouK7zZ0Bb9GduiMSeDUm1qKGg4RIO7a/OIDOe41CwBae94IkCCQQ372RfvZXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 19:47:11 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 19:47:11 +0000
Date: Wed, 23 Nov 2022 16:47:05 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221123194705.ejyelzlz5znmzaqo@gjsousa-mobl2>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123183648.407058-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221123183648.407058-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::28) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW5PR11MB5811:EE_
X-MS-Office365-Filtering-Correlation-Id: 02ed4fe7-77a5-4c99-847f-08dacd8b8322
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SIqrGWinjnbDUMdFvhwhsf9ptVo7SxStaRPxOA/Aq8ihp9ygSiElNEYjeuME6RLiYmfz4ZnjiOIUwBKJiPzsCDR1ajm7vzsyJJooAutXsF9e8oLuuYaGT1E5YIL5l5/ILVostKf/bvyblx5XVRZbTrrXEb4rwQAsMRhnCv0525hUQeZa5oI1nlU9kIYfEjS89xoCqgT8tRtYY/zw8UdGJsO7g0jEvd/I4G6i1jWIOBW6dGYywZ3mNMu4hH3YzbSL7BCV44ldFTm4xlMavP9zs0y2F3OiSbp0Iy8TNIiM9HSULcQZ/GVI+GVsOMcfPyqYUyI/CkEeDtuBaoxoOalKrKCHuJMOlCifmZG2ugMGGwI2jlDhBLFwV4ujmj+3XP4lu4GnQEQzrogEjYY1BfXj3Utd9gYk5CJ6TIKheWHLi1Y4dflKfTPB1OXG/+RRi7toCcHv7DHvpwhOKwEojzETyhIdXZz2OYychy3fpS412i1WdZ83y+cAJLyzkzbRzyXqOa6tXTifbPaS5RKsljb8KhcCBhiFX8Ifh2NxJImLaFXRyHsCnZAZpMyK2FuvXdHryKc33riu+PmcHjncE0mdaGX+FOaot84yqUckBOoeuk9tLoqm0JczAP3BrwbZewoX/Iz80kfWsp9dnsc+kGVSEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(41300700001)(186003)(1076003)(8936002)(6506007)(38100700002)(33716001)(6666004)(82960400001)(44832011)(83380400001)(2906002)(5660300002)(478600001)(86362001)(26005)(6512007)(66946007)(9686003)(6486002)(8676002)(66476007)(66556008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5dVtkKSFCNL0zWkmNq/rScA9ay9SDUDVKrjqD/HC//wjD7mhMp3Blz8sV4zc?=
 =?us-ascii?Q?ML/QIdY5Lpsa+rOu76OMPp0vhGhbCryeMHitsqHJlp3mGef4adj0wA8TdIop?=
 =?us-ascii?Q?JirPZFe+kEeqm8hCnb2Z+agDrrZ64QvtbXJGVSna7DOA1HHM+GO88yvQWlWg?=
 =?us-ascii?Q?VsSseUJxNkfRvDKKcmIWeAFCorUGLtpmZsJhK7Y2lOZl2bnOSCVu3sNnX775?=
 =?us-ascii?Q?AnmKkNP2frjoaBLiuJWE33Cp3VmylFPvkm9H66YuTcESfoIa4JMfBoTeA5bH?=
 =?us-ascii?Q?50dGX9afZvZpRZAashG7EU9GoRnSZiSYWiQ/lSGXpsBKi/qeaYKgMFIF13WI?=
 =?us-ascii?Q?gVlPF5leZf7sxIOyMsWzONju0Q04h9zUkaq+GSO8c3R3vUrWrcnITce7GZkE?=
 =?us-ascii?Q?aRCyYrSmF5aKC8erlqaP7anmAyxJrVoZ2UiswsGpxNzqksH2hV/HGZ14tnS3?=
 =?us-ascii?Q?wBuQTIZV1Mt4FQb+ltdW4bjhEDLWqSHyyoqU6ooVdQLqduRxnZEkjm6JVHvq?=
 =?us-ascii?Q?QIA4geGtVzwpSTkHxfwwzXouvk1lEvNVO98d+Z9BCYJosbVcTBXY3XHavASE?=
 =?us-ascii?Q?rygBA8OuT6sk5SJizwai/55HqllxxLfO8zE0PSDeoqWd03JFuSdmmBljH3sL?=
 =?us-ascii?Q?Q+0cR1KTWwE1ueUpYelGdWRDc4mTojNk55qiLNlY/oBNCMLxwwp6AEVMGllE?=
 =?us-ascii?Q?U8v2c9+8JJ7JIkoBCF3uEIjWluVD8xhj9dcibPFDE+hBp6A6cIOZrebisPiL?=
 =?us-ascii?Q?ks83nhNhCJh1RBVUmznOyj7xU3JGzp8mdsgqC+AdaHvpgXF69Fn9zMk5zpv5?=
 =?us-ascii?Q?Hie04MrATaKFyk43UExswaFdpRxHvMCCMHT287ZvMDfVRMXj/XDzz4nZ5Pap?=
 =?us-ascii?Q?+eDY5fKRDxtHUiGDrWmQawPMFXoiYZ8sgD3YuPmIPSGQvPszgMHSSzvaV/2V?=
 =?us-ascii?Q?NMDCt2VvKdnk1y6yDyrqU/JLjX+V2100hzCNLQfV4flnHGXPiVeuE+BLllkv?=
 =?us-ascii?Q?6ZXbuvBQRpR5WeB7eiBTZLNZxllD2sUX2yJCdt2ne0Urcfpbjz0bzQBmPb8K?=
 =?us-ascii?Q?BTIcA/MxJF3uhgPLzRsBbgAR+ksen46w/DnHDfuoLHX/fpqav7LwYDFWP2bj?=
 =?us-ascii?Q?WosX008dBv35SzP2ymyd/yE6kj9hwY65yyofHR6BH7fFym024VdMQEqkt9Ju?=
 =?us-ascii?Q?er2HPsoePHN4WS/7cExekRewXCQ7xyIwuS307nsAk9ailONJC/Yj9fwhfi5m?=
 =?us-ascii?Q?jxDUe0Rmz6DqhVO/jxBHnki/gTsJrd038i9CAgoxjzfMsW4jHQuOhwqIN1+0?=
 =?us-ascii?Q?q23DnMZlxhSv4cLWi5TZQRHExPFbR/8cPxR3ufwWCcpGn8jUu4kbgxF4irUC?=
 =?us-ascii?Q?BR67qt7ctaOE2TaZ5xoXRY1/A2WoLx9jCLaHRx+0Ljy3X0Fd15LogSpmvk5o?=
 =?us-ascii?Q?gx1eNO0ob9kh5ueLLZZqyl5toh4s0ioHpYGfsr+EN8TQDOImMfsNpTPHABTM?=
 =?us-ascii?Q?l2LVOGix6vydVQUuP0GjRDvooBx8t0duqWZYFSD5fE5RBY5qVVxS2+hOiItr?=
 =?us-ascii?Q?IsThGS07pg5Pa/pkF/FjvSFpMhvwMB8nTt4Il/0nCZrK6S/USXliz6apmXo9?=
 =?us-ascii?Q?UQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ed4fe7-77a5-4c99-847f-08dacd8b8322
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 19:47:11.4009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tTvziVsDcCbzRqf7EYawU6KD7rfZD21IncMySSNkU/JtEc/urrjxSjKriFycGH+IVSsorAWSp3/ct7d9TcxyzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dg2: Introduce
 Wa_18019271663
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

On Wed, Nov 23, 2022 at 10:36:48AM -0800, Matt Atwood wrote:
> Wa_18019271663 applies to all DG2 steppings and skus.
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 74379d3c5a4d..784152548472 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -429,9 +429,10 @@
>  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> -#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
> -#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
> -#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
> +#define   MSAA_OPTIMIZATION_REDUC_DISABLE	REG_BIT(11)
> +#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	REG_BIT(6)
> +#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	REG_BIT(6)
> +#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	REG_BIT(1)
>  
>  #define GEN7_GT_MODE				_MMIO(0x7008)
>  #define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 870db5a202dd..1b0e40e68a9d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -781,6 +781,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> +
> +	/* Wa_18019271663:dg2 */
> +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.38.1
> 
