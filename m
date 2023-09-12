Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0983179D15C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D960310E22D;
	Tue, 12 Sep 2023 12:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A8A410E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694522786; x=1726058786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UUWu7OlPFdom8rL7vcLtGZa9HgGvTCWbJgtP41+3rvg=;
 b=LljQIBEZ5VZygMksTM+nD9qhiNeYo+NUg2O52RX5NBRp80FdrA6RUDAH
 K+NXC61kkH+02EyYu1sTTdTUtCJcZdGK4gYLPgFgQINBiqSPryaj+kYRX
 X4pb0kzPXkq//BjsNtWa0QmvJsq2UI8oWbjEa0WnrF/Z4dy0H3CenaxCQ
 eao+cUSwnonXMVYtHThVhE4mnNRRIWsuBSNZzj77wifd+sU85Jr0g+lcY
 /Tr3z7ETcUoZXB0ea6DIpMEfwgX9WUgy4sKP/7OvIZYD4MRamlbVRItCK
 QF6c1ohLWX61UT9T50ydy7jceHfG9EA6rKVK58aA4mNQmLddVI6jciR+i w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="409317088"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409317088"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="720396738"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="720396738"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:46:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:46:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:46:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:46:24 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:46:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jpf4mwjBhFZXWdLLawJ49858+1aQMDDEUMpyAZhOLFwGh6uJ9rUfo4U50IdPS/wHX7eXqHGBmL6Jgyqt+oaQdc5HqMX4oMfluiYtOM9bT6STm/sqA35M3lu+G6GkXNKVDcA0kQH4FemK+fYCRoiE+SiEDTm3K+iI6hBw7COJykb9ZRP40zkWljfzgJaAIZjkX738hBIKjc+evs+92KDyeJTNdm37dlFudBcAr6TN5TuF0DDu45UrvW0tAMSExcbRUGpZU2KuFFHX6CvFasr3A/aYIyB0zLeHNfXC+KW9M6wM9aItMn7jhzkqUmE/SiMfU14IF9quDCY2PFt1/WnPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nhEt6NHaqSZi/LuLF0EifNVNPd1tRDaqMuTF5SO2jPY=;
 b=WPgOo0JuptEncBxr6UoLvKsA+JqCPENczUNZkMBZ8cWe77VFnvmTxtEavbx8BT15mRwr3nacdRKxP7GPdrPBxps7Pqq47nM/FSYL17mvom3lfh0F/W0gAQHZ00dCGCIQOAkTfd5dHPsoL4mqmeB7DuWuEQd+2Dekflh5ECemVs9mH0e1M7LNqqQYvgZ3BIStS14+4MJaZ18MHD+UjZe5bAt27EGjYNNKJjwLp8BxsJHZ56MdvPmwPoG14yAY7v1H7Llb/r2SbH/qU/pd/+3blN7hunpavSGz/Y0ZmABVWwTG2t59GSinjM0ykQhHaYHCUq6SpNd1KlC93a/Y5zOXRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Tue, 12 Sep
 2023 12:46:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Tue, 12 Sep 2023
 12:46:22 +0000
Date: Tue, 12 Sep 2023 08:46:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZQBdmmo8BPZ26JJG@intel.com>
References: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: MW4PR04CA0360.namprd04.prod.outlook.com
 (2603:10b6:303:8a::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5290:EE_
X-MS-Office365-Filtering-Correlation-Id: 28cf90c4-879a-4893-6e78-08dbb38e44c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sHSle7MDsbsYRqzVOlqXPnOICKRTjo7HKcVZdHwuePLXgYsaZKNtWUAnvTZDDpd7vC0AbJFXUoquZ2Zho3qEdTm1hipiBdjq+AgfQIKrFOFeYrV6OLMTkRWZwujs8cKYKIZqUuBq7GTuRJ1v+s+lwDa+KlFboh0br3ENMNf0Mqk+vrD4n02AU1G9Qo+C5PjjziqvMEVu/9FqKAzCvoCx7I9DPTvoeLBLvU/sBe0zoKQzMvnzCFAeQFKy+seKAY1ko0noklmQFymgNiUp+zkIdd0UHWAc6NSIILZT5J6/D3bDJ5eC+FkGA/bwVUiGh/7HxDcaeiIUOdVFu+YtSqHNlS9NCdaqxPj2HuagbYHDp4sopS11cIwLtesQZRY6upPrvrk4+gg3PhiNGwlbDNj2h5acD2FHH8HkVLzyqCkpPqm7XY+cWrxI73mVaJ8BDPxLwvGFzJoE4L40uUMAUGrrGWCFdf/MJbNmkIPJ8COFKt1VFA1xjH0sHWX3IlRqhfuMpdMuH0PPzhUIpT6qu+P+5HZRDV0esS560rc0zBMc4ksu2rstdHvbX5LOtwj5bN+p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(366004)(136003)(39860400002)(1800799009)(186009)(451199024)(6486002)(6506007)(6666004)(5660300002)(86362001)(38100700002)(36756003)(82960400001)(2616005)(26005)(107886003)(6512007)(83380400001)(478600001)(316002)(8676002)(6862004)(41300700001)(6636002)(4326008)(8936002)(44832011)(2906002)(66476007)(66946007)(66556008)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XU1GdbihTuojkxjzGhkbhuN/yCqv4RAvF66WBBKey4nb9YMVUdI2XLoKSzsh?=
 =?us-ascii?Q?pyfbaLLVR+JNhfPab+I1tt+gecvLoUdWiM9YGmUAbUrz+FzDeDgggrVsZWtq?=
 =?us-ascii?Q?iS+oWTNZO/HtyuGygN63QZgepKNDbHrtJOms33xFjpjT0pCZvsemSged8we9?=
 =?us-ascii?Q?UPPIHpCc5QL5QNAY3qGdtFLfFPalIEu9n+hNFamrYjeBG54MdOMHFBwlBx8q?=
 =?us-ascii?Q?3WbrHJxbGQdaEDWgWVz4ZPhLPS004TIAQxKf1aj/XXdAEcMcU/Z0h1XTnYS5?=
 =?us-ascii?Q?EcuVu2pdFMU1heRtIFQayO5S9jxfYq9Gr4Klk22Mqsd1svwtbH9JrlU6X4Cn?=
 =?us-ascii?Q?rohXi3d1jfuCG1/UuLlW2L+dHKOCXYYibxzjMhI9wb+kCrnXn15tBmVKW+eW?=
 =?us-ascii?Q?6MYe9mzQVaT2ewHSxS5V4Uiybt3O5wM3U8sYVLxeJ1cYINjKhq8ggZfmr9xu?=
 =?us-ascii?Q?gn3XonnHrp/l1FlLpaUgMELcDWWA3o04HOX7CuSev8RV1Q+v3tuBlH8FTse2?=
 =?us-ascii?Q?fsf2t6njImAKc25ovKEajtiDsJwjiFjV64msDRZb0yN6BufKueNq/DOyf+Te?=
 =?us-ascii?Q?S34WSrVlAvtUf4BdmzfULTNQD0I4O6DVWDUPyd8b/bO/b6BXeGu0zawysJNU?=
 =?us-ascii?Q?RnlwLWxya4NPaPEjoqbvlAiAv5D0UR7qoYRXBEwKpI0dFPraJtHfNL0gAY5O?=
 =?us-ascii?Q?PdbnC6tYEtzid/TzAWJKvKrQpfqj0plSPYgzsvj2we3OedQQx75OTXcXyruH?=
 =?us-ascii?Q?E4zlh24CdcXFfbuJIn7ZObcxyJCvHVAHPJdbDhKeNqnQaJNTzcxfCx1CnuSm?=
 =?us-ascii?Q?OwmrETFAe9mWKxopLc0iIyd9KdE8vTy8GCHf4Q4R6jJB5HScOp5yctyX5yr2?=
 =?us-ascii?Q?9pAgi4+oIDE2FGOYDFjGW2GdsaYsPo4xJduXA37B9Pn7N6f+VvbGVvtfZxQh?=
 =?us-ascii?Q?pUJ4SZWTsAxXbPfwHrMh17KuWV01pJqMikc5Bgszxx3/tHRCE8kkkJ4n4OdT?=
 =?us-ascii?Q?jgPXqjtyuMqOee4b7kxUtN2r9Z1HlwDCZHseEceq5bUMToo0WAKY5QmbE/11?=
 =?us-ascii?Q?VerZzzq2xrrJK8EsZ0SZBx/H0NPKKzE4owVC2ALly1rjVzcsKUNEsREL152g?=
 =?us-ascii?Q?wS+0fGLpdH3VWZh+/O1/v2RVOi8x0E2gtNm7dz8QXNAp67B54XtuhiIVBBS/?=
 =?us-ascii?Q?pmlbyiMmlTXoX9IPbvZT9pxv07VnHSAYqzfCyQPGDlALhWeTl/Or5gtnMgim?=
 =?us-ascii?Q?Z9UUvfHQb62ze1q+xCe5RtW6JoCLbM1OFRCbmH8G/qZkwCs0KkK09pfXbjZ1?=
 =?us-ascii?Q?84uR9vJyaaymWE4TahZF2enadUmajbABM+/yhrpsvlGRDqDZtHTrgfrn9E8q?=
 =?us-ascii?Q?YH3Z4V3bHAG/GCUda8FeOC5kLejDPtIrPfoZpXlyFzfWiynhdfms4+CV4lWE?=
 =?us-ascii?Q?P1pBbxuUJXeTOeMjKVkQ73lIVvTSAOGJbSdocou80Z1mQH7s9BeOtsLuWRGS?=
 =?us-ascii?Q?k5D8gVu7NyZdnuxDwvN92lOoPiiX2l0GubmAl3WdniMkhhPRkrBvHvU7Pc3E?=
 =?us-ascii?Q?Axbb52thdW0fV9Q4j/gNtLjC7rt9gM+9suXeEGxY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28cf90c4-879a-4893-6e78-08dbb38e44c2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:46:22.7022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2nwO7Hmrh55EU9NFU8XsH4Rl/fMsX7X2D/Fe8VLmdl8xLMTNZkPDOnBU9okC1tVVTUs6Ski4ZDxve+X3iR5/OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5290
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 12:04:50PM +0530, Tejas Upadhyay wrote:
> Now this workaround is permanent workaround on MTL and DG2,

since this also impacts DG2, the subject 'drm/i915/mtl'
is wrong. I know, this is water under the bridge now.

Another thing is this patch doesn't apply clean on drm-intel-fixes
because it depends on 5a213086a025 ("drm/i915: Eliminate IS_MTL_GRAPHICS_STEP")
that also doesn't apply cleanly so I'm not cherry-picking them.

If this patch is critical for a stable 6.6, please provide a backported
version on top of drm-intel-fixes. You don't need to send the patch,
just respond to this email pointing to a branch with the patch is enough.

Thanks,
Rodrigo.

> earlier we used to apply on MTL A0 step only.
> VLK-45480
> 
> Fixes: d922b80b1010 ("drm/i915/gt: Add workaround 14016712196")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 6187b25b67ab..0143445dba83 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
>  static int mtl_dummy_pipe_control(struct i915_request *rq)
>  {
>  	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> -	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
> +	    IS_DG2(rq->i915)) {
>  		u32 *cs;
>  
>  		/* dummy PIPE_CONTROL + depth flush */
> @@ -810,8 +810,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>  
>  	/* Wa_14016712196 */
> -	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> -	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
>  		/* dummy PIPE_CONTROL + depth flush */
>  		cs = gen12_emit_pipe_control(cs, 0,
>  					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> -- 
> 2.25.1
> 
