Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE0F77E4E4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 17:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D93610E37C;
	Wed, 16 Aug 2023 15:18:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D73910E37C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 15:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692199118; x=1723735118;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Fx24gXwc1LiFqjtDzhrcYRWwdJutuM0BlPUeApNLyUM=;
 b=biewbjrfxurf4f53vsK09rIJuqAKBSsLyojOMTM4iKwzAlHE9D6C17MO
 3ZHEVYCwXt5smF5nBaKnXBpmVjFae0l22DjbzrOP5BeSEyrgT/eKQH+mm
 6C718jZdCk2Dzdbq8Clm74N3bts19i/lkkhxvGQB5y/Rc5p8HigyD29Zi
 cNHLE8cWLu1lsQwHfiKBHDKIQun8Qj2LI7MMo01mK+vwjZuaWHiYNyHh7
 C0rXhhE9fIo43YkfjNKA44iFnI1jqWO+QHsAU+gkPeiN+4/e8PKDTqhgK
 ZgxgsP0ULJ+zKVApDqIrHA8a6EXB7AqOAD7+P3rcVlBahVbHI7NQZnCiF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436461286"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="436461286"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 08:18:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877847280"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2023 08:18:34 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 08:18:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 08:18:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 08:18:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 08:18:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EC4kdO8OJo1bly2yWvdUf7z4PkIIjDsFCewUvFMWLoKbkDe2F7yL1RjdZ+Gs2OWeX4LpGGwhOoLfOoB5kreRBf8hbKJsEivi0YBryG9PTGGb0fvTzipzawU0oxYMR6OMF4ZrGh1+Vy4scuM4XxnZunVdzxixUNZ3XJowkyYKOLa5YJTQZ4Fo9KVKgakLkdXZYNV2ND/I1uXnU/0cj/4wGLd5I2H0gQKmtjVh0ycfLiu66qjq+G3+K+UYJ7CmaKUqNZLYuyvLHGDBiX5/ecpGluemZMtdhLm4cRs14vnPo0zDQN9TmvwAGU0+Q8BhSdKl9syexIPafYf23lk4ljnLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3+FT2+L784O3tcFgeqHorSLlV+kKVgkN9ZLVULsVc34=;
 b=bwkGG1qtF+41AjTLgNCCEo//C44ZUWW2tzX5GU0URfne5051+pW1kV+2cyRs7zXpi//HQtxr80C57Zb6MX3hDIaC11s8OstdfsgqKRNbYrxlpwrslL1oK7ZYwfabWoHUvlyRsRFpWP2e9zNOyPhN2c377ioUcnLU9/0SZCN0UlWrH6JyQVoqIlF+LYJjalIdjDCfacy2pizw/ApfrI4SigNPAWb/Kg2xSir60Jmi0hVaeFITlNI2pY3iRBem6ElXN9D1oPgQkyHJcylCYbP2mJ5SH0rhrHR+VJvMNb26diOUEnH+NmZj67zSQQmjp7YMz4zJmwjRe3aexuXywilRgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 15:18:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 15:18:26 +0000
Date: Wed, 16 Aug 2023 08:18:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
Message-ID: <20230816151823.GQ209733@mdroper-desk1.amr.corp.intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
 <20230810234618.3738870-4-matthew.d.roper@intel.com>
 <b2a1b3b6-5d9f-d29f-86e2-f4fed6691f20@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b2a1b3b6-5d9f-d29f-86e2-f4fed6691f20@intel.com>
X-ClientProxiedBy: BYAPR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::48) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN2PR11MB4695:EE_
X-MS-Office365-Filtering-Correlation-Id: 67dcf3ed-45ee-456e-b5f1-08db9e6c09ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U4pp9rLP9z6bH+NQPCYq34ZJE1BDht8qM5tg7ckqi0XeF3f2hBZriaGTk+YewK/GLuKTAjbtSQWra1OKdMwJ+u0+Zu75DVV43JgohetUke3oqbmM3b56GZZEsSEjXZB5qTd8bHbAOPvPhG4RP3YRAJUQizTPA2Towj+5y2sXxl+LSZM4AqOvQmlX7TM62i8vOmjevlKCYnGCiZXs83R1yOt3JUvy+9bJA6ekX2/RYZOPTEEDClZHD5AUXXp/y/cAcxNAx+Gc7BqwgwWi8JtjAf3yQ/QcXCHrkVgDcE4uboJlzpi2SMv2sZoQqaCDXVSqvfBQf15XfKxn9qP1OsZlm9Q+XaU7PeuT7jX3yRUh8gaG5YWZ3PezyGB541EniLZxweZsF9CH6GFSu/To0dyk7Tk/r0QOelI1ZbwIS+D6AEwHpwsvVwmquiVDmpT5YuFhkCBT71X5Z2OEYM7UgZhhGtFlhLILsdTPgHwl6K/Ix1IqbxuesywK5NjATmDyqpgD41Yb82MHgIAX/t3OaGDUKru4LKc+zJU9g6kDwv+cdJ/jNOqbOJ1ejwySAiN0SaZ3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(6636002)(66946007)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(8676002)(4326008)(8936002)(6862004)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(6512007)(53546011)(33656002)(6506007)(6666004)(1076003)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hDEP1X7geRG/8OnF5TCMVISYDTRk5TRHwUFl9qhBQvG7hcG+VLzGzrdCwNaW?=
 =?us-ascii?Q?sT8HokY4S+cZpzZzecUhBUpLDxN9tUSiAeWZQKFvxOFMbmJ6jEQY8S09mSVZ?=
 =?us-ascii?Q?PYyHKwAdxYLIkikiOEiKx6yixqwpk6nIxvi4Pd8vs8BZQIHNufEzOivobNno?=
 =?us-ascii?Q?3vT5/h0G707c5QKkKhvuDQFrA4FjJUKDb9RNS5VVvE8ymb7n0YVa4w7l9d2V?=
 =?us-ascii?Q?5Mj9B1ZiLfGmIrql77qUxcwUutaGLj/Knsn46ug3LWoWBvD+wyMSjjVbe4lI?=
 =?us-ascii?Q?6Qig54hvCaxtZ2pcp7zmx48+C3dRVB7d7laBw8ohrXeCauwFdh7Y+lUyYID7?=
 =?us-ascii?Q?RgN9F59dEgl4kvC8mg8t02MbwAkPvPD2QCEGHzpDd2bQ7rmN/2WKKsR2QGR2?=
 =?us-ascii?Q?WdUi2zD0EYjlNNyTAphURypIVOcb2YMF3RF6rHVhrOwdHqM5PxhB+YmNeR5Z?=
 =?us-ascii?Q?GM+OWHrffos8RoQpP5fGJJz/+msgUVrHMMNVgzdH2q9NtaarmxXH+FPU56oD?=
 =?us-ascii?Q?4LQyewaFEMS19SUJq0kpj5pHFUilzZeMV/J1dgmcTprwDV1fUUse6TPxHqko?=
 =?us-ascii?Q?DJfCpNeobO/hKP9Z5AtjIlWZUgu8tMwd9r0TiM+Y0yOnVFLE/bAA0fXgqziJ?=
 =?us-ascii?Q?p6G6II/VvacIeFWKdRNC9v7CHsl1LqMeFh9Z9h/mdSjFIayH1lLbXBJV4Vd/?=
 =?us-ascii?Q?R4V1zihVpOB9KNKRiGWB06Oxy0M7ZvzZh4s+h4qlC/ZXGNjvHz4zPGCn2wq4?=
 =?us-ascii?Q?9Eul4vgj4gdaC5Y88uQu0BvQA6wVkeoFkVz7zAnFzEmbbU9+3+49thMMx0OI?=
 =?us-ascii?Q?JEOqQTOl+RuVPZAZXGMmIr/5jmdcJgZ9lnwO97UeV/KeWcelkVk5ozyrr/hG?=
 =?us-ascii?Q?tUJTF2U7tmTj7pkl8Tsu1p1ZY+0XMM3iqxZSA/EOiqk4u6uRg+huwwphG4v7?=
 =?us-ascii?Q?eImmoYQhHxmpXZbXZIb/Y+1H1QSiYw7Lh9sBPQ7NRBwS48Bfola50AnHaBll?=
 =?us-ascii?Q?H2PlFz6WTjuMpBfPtUhlHNau2vI43q8wCpBenBtzLJnGehWLwubLmMwhJc/h?=
 =?us-ascii?Q?l6o4uVKCVrg0xRnIP8e+Hj1lFGWfyo0UPANKU2WfVGN4iJR4jzH3ld5wLKpq?=
 =?us-ascii?Q?5/eNm8kwILpEqKyOzCvGbUVsoe6fwo54t17Btpl3g4zHrIcPGTVKh3pZtxeR?=
 =?us-ascii?Q?BpjNu4iL66VAVtDZyEDLeW7KRECuUT1/bzAk0GOrPnK4dW5WHPsGRxgVChgx?=
 =?us-ascii?Q?jnsrb//i6nLoHz/6W4n/U5KzAlpdPOt8o7iCqgmHZoaQcqhyLmxkXdNUdtZs?=
 =?us-ascii?Q?QAUBYtIZA/sRBm4QOLTmhyVSQVoRFTYOyellX/jO+5DZv1uDbb/r7Uvs9Xut?=
 =?us-ascii?Q?pHBk5TRQbwYcjYm8BnPSqWG8iwda3q/+eSsQHJgQmX9Bms+ritvh+cHxTY09?=
 =?us-ascii?Q?63NTrN6QhW7nNtquaynurCurjCZPWaeWEse7IU9qztUN4uxrBZJFdl77T+sB?=
 =?us-ascii?Q?uF3NWt8qmgW/mcSM/R/QWt1CRGWSgZG62ndmSbMnEciHGaWcGAHGJj/Xw3Ab?=
 =?us-ascii?Q?gB+4MAN/zPwNiVcIKPyiaQbqmmgSzIdtlRKCyzXVmcCK4UhqHGIlTSaYgmVx?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67dcf3ed-45ee-456e-b5f1-08db9e6c09ad
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 15:18:26.0913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4f2xDeS5Rqf6tfjIh4MZwJ1Jl39806mCYlz2iBlRFsUNH9otLXbhlEDflNqY5lPrIdhyFWqhlW5JsbvreQwtHf++bHnhUj3Ov2sWYLjFpXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Eliminate has_4tile feature
 flag
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 16, 2023 at 12:16:25PM +0530, Kalvala, Haridhar wrote:
> 
> On 8/11/2023 5:16 AM, Matt Roper wrote:
> > We don't really need a feature flag for has_4tile since there's a
> > well-defined cutover point (DG2) at which all new platforms started
> > using Tile4 as their Y-major tiling layout.  The GT side of the code
> > already handles Tile4 vs legacy TileY with checks on the IP version
> > rather than looking at the feature flag, and we can simplify the display
> > code similarly (which will also make it more self-contained for re-use
> > in the Xe driver).
> 
> Hi Matt,
> 
> Looks good to me.
> 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
> >   drivers/gpu/drm/i915/i915_drv.h                     | 1 -
> >   drivers/gpu/drm/i915/i915_pci.c                     | 1 -
> >   drivers/gpu/drm/i915/intel_device_info.h            | 1 -
> >   4 files changed, 1 insertion(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 215e682bd8b7..eb630a946343 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -32,6 +32,7 @@ struct drm_printer;
> >   	func(overlay_needs_physical); \
> >   	func(supports_tv);
> > +#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> is this tab space aligned with below lines ?

Yes, it's aligned with the code below.  But if you're just reading the
diff, the extra column added for the '+' at the beginning of the line
throws off the spacing.


Matt

> >   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
> >   #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
> >   #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 7a8ce7239bc9..4c6852f0a61c 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -737,7 +737,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >   #define CMDPARSER_USES_GGTT(i915) (GRAPHICS_VER(i915) == 7)
> >   #define HAS_LLC(i915)	(INTEL_INFO(i915)->has_llc)
> > -#define HAS_4TILE(i915)	(INTEL_INFO(i915)->has_4tile)
> >   #define HAS_SNOOP(i915)	(INTEL_INFO(i915)->has_snoop)
> >   #define HAS_EDRAM(i915)	((i915)->edram_size_mb)
> >   #define HAS_SECURE_BATCHES(i915) (GRAPHICS_VER(i915) < 6)
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index fcacdc21643c..df7c261410f7 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -713,7 +713,6 @@ static const struct intel_device_info adl_p_info = {
> >   	.has_3d_pipeline = 1, \
> >   	.has_64bit_reloc = 1, \
> >   	.has_flat_ccs = 1, \
> > -	.has_4tile = 1, \
> >   	.has_global_mocs = 1, \
> >   	.has_gt_uc = 1, \
> >   	.has_llc = 1, \
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> > index dbfe6443457b..19d120728ff1 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -150,7 +150,6 @@ enum intel_ppgtt_type {
> >   	func(gpu_reset_clobbers_display); \
> >   	func(has_reset_engine); \
> >   	func(has_3d_pipeline); \
> > -	func(has_4tile); \
> >   	func(has_flat_ccs); \
> >   	func(has_global_mocs); \
> >   	func(has_gmd_id); \
> 
> -- 
> Regards,
> Haridhar Kalvala
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
