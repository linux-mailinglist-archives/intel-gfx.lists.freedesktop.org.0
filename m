Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB4463490B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:19:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2F610E1DB;
	Tue, 22 Nov 2022 21:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E893F10E1DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669151966; x=1700687966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5lVD8RYEGhUkIlVm/7vbz2V8qPlJKHFFB3gaPi8NlUQ=;
 b=L1V0gB980gtseAfxV8gjjIbhDRCoVPA9jEnedcgQKft4H3HvQY8NgGEx
 /fvmEnUMR+JTsBBBh3k5YYgCSHW2EDSwciQEecw7oYk8dJcjPJGOj/Y+Z
 uN2gqOb3yYjFwTQgeC0utmJUJRcTZ6dzj3SKVrV71jqizWAHL1oLa9A43
 1e0dFHoO3bWT+bBO6XEuw4d8LbI5YuJyjFt2Ti2r8BPaubHfdlu8x6EtL
 Kcot4C53DUeVoRxs2OO/n05W593onTIfFU9yNimSTGdvA3HSfYwRvRlvW
 wb6LZbpycivcd8eZTiEpGrb3eV8PnABFH9YYg2GjhRj398xUY549gZiYZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="340791082"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="340791082"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 13:19:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="710338315"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="710338315"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 22 Nov 2022 13:19:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:19:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 13:19:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 13:19:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZ7uNqF5Kk8s7lXBvsGQ9wQ0Ml4v1e+PGakml0lHGBWKReGt1JrQhINsKZ/A5R+nu9dO/NvBLGiGdasNQDjG830NiBy7lEYTizfW+dHKuo/vW2SQHvz9u4vCvtMiwlUmcrw+THI+0giUhc6qvlbuOBssJQkSb9KOwRqwPwYzGI8Hcqn+a6dXkLqXMaa1Yka6kSEqXlj5TpqmdSZQ5V1J1nGCrDqPPtWo+qzaxAympI/go7ZDHX7ZdKAb9DVDFPULlKT+f8opagSNk0odapO1T7aOmf9klhB3Q7196EfhXI0hDHkOgHq8WnFxxdrT45YbuMdM9oSTjJjN/ckp1AbfGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1UbiM9Q0nblJLvq2g/DLFomiGioZqLR2qaNYlvg17U=;
 b=TzSz1ZYzze2LKok6BGlEP26EKgJGc3IBMX0jz8XQmXPJObM6/oLSgWKTm6rq3tuteKOryaSY3YPYRzZ35tVm5YB9XD9QoCU1cvLs0LUB+/PUUUOH9XGF7ebqQ7IEHQARfz/vJAPXzw1r2qnvS4TEjleoeoahdIJ16X0UdS7ta09g0Rc5QbEi6Xn0nz1GpZtuqo55pvsO63+YdlbXyRsAtU6tP1kMIOCNNg70m0vVutANSspi0oX/UuGbjhLr7HfP5TvvrymVQSfmfMlrw9lf97fWtfU3NlN9m4E6jQ7f5lsgj2oWG1eJzfKg/ynnazb3grHRWtkPf9qNUry2V34SrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 21:19:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 21:19:23 +0000
Date: Tue, 22 Nov 2022 16:19:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y3081s7c5ksutpMW@intel.com>
References: <20221121211815.30950-1-gustavo.sousa@intel.com>
 <Y304OGPuYRHAjQkx@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y304OGPuYRHAjQkx@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5341:EE_
X-MS-Office365-Filtering-Correlation-Id: 7222e962-6253-42ff-3298-08dacccf398b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b0WZe3Mnn4Q151wOSZHtMn2RpCCUPcefpNcs942ymE3hd4dZNWPmdzlAy5lKKH4kzN2P6gDfWNtGRuv+d0FPoOa8R0eD2S02sJijsX3e2PYCSv6G/ANsyqJMZSm42hdUxm0CZnLL5mrpt1zTJdDU1RraH3z6yXYwx9MyKNqhjUc0eydxXV9HsEkQQxA56WIzolcnBtlgpKJX36AJj1UGlcI8k8fuTb0B7YA0icpSsrbYNZT4s4HcXzEmEzZJqM0z6VveUoEHvFtWaVVEFzaumGczCYIFiIEP66VS21IMq24zFP1SMpZ1DpBWfHTRE0XAl8QMAE/BAdcVWn6xuw8JEsCQdBvVB/9cJ1q7fj6PdRNeLcuIbwFvwP+Rof9BbU2uf4H0K9tm9eXosdGh5CWRmUOykuexZnw+wJmVldUng0FcVonG2Ju+vwJnLq7nIW585c7VURGrt3o909g93m+s0yGUfddVxUXeA9s6a3q/rMyfuwhBLcIDZnVufuve3N/zpdzsWu1fJA0+oF9n60rm9mxha1hvItnwWa34GZxtacTodMzJy1WgUG+E2tO/PKVrN3fl4MDN/qu15xVNoF/SvPPGSxiytht8bSy467IuWKWdKnNi9DPW4l6nGYiHHM7r1tm+yfcbhY7WG5AulRXIIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(136003)(366004)(396003)(451199015)(5660300002)(83380400001)(37006003)(44832011)(82960400001)(6506007)(316002)(66476007)(8676002)(41300700001)(4326008)(26005)(6636002)(2616005)(36756003)(66946007)(66556008)(8936002)(6862004)(186003)(38100700002)(2906002)(15650500001)(86362001)(6512007)(6666004)(66899015)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TtBm4RQDX0PYgJkGW5o5f9NYHPYqgvK/NsVHD0hIs/3dNzjXURHMTUmAuWHo?=
 =?us-ascii?Q?IlVzCXvR2wM64+u3micldkr9D4mMtk8twLg+EGEzBy17IzF3GdfurXmlIpCh?=
 =?us-ascii?Q?hL4Y80+Fvi8OKI8m3UKyDQHjfjv5dx4kTkx7H9hRz32Xb/CpT9irUbwohs1/?=
 =?us-ascii?Q?LC94tR3EK/HbSGRbb+Y25azpZhC1pAbUDA6SILZC8JQU35b5gIRnjYsnXrku?=
 =?us-ascii?Q?Cl9rFOajqwMANBgRkUyriFtTkVlJDiK+he7vu+zp5zIs1979lC/W7CZb+TL2?=
 =?us-ascii?Q?BhB70H5skExfRX9Km/lIMpXXNEkXdIU6XaCHfCeFg3Nnn05gO0FzCuFMHvjq?=
 =?us-ascii?Q?aOI2m3X9iKquxFAa9tx93DsXjdtwTeyLDTx7yWcbq6rzySZrv1YyJLL3UipQ?=
 =?us-ascii?Q?XUWH3t63b9OhNTHpTa87WFESNHBTLXx4tyYc7AE5B91DI23h5UBxpz2uq/JA?=
 =?us-ascii?Q?D4yAG4Ffak7CgRtAS+bVvTDK9uow1Fzwg/kuW3IuGY38Ud83ecgJLnVvll4c?=
 =?us-ascii?Q?YfTdTPIzkFWSbRkX66IVnhSrlpXgwT5crhQ3kT1Zv/caWfzlCIDiE50AaaGk?=
 =?us-ascii?Q?M4oO/APRYTQzB2PnIAXfMkfLWhndsBTvLVpSV9Lp04k+2dVuyQS7zsBpnuM+?=
 =?us-ascii?Q?iq8yzukOdx1vtJ6wEcmxmUvFaA72DuF685A8La6HItKTGX/qivxJ7lwqrVol?=
 =?us-ascii?Q?uVq8pNuebn3Itu1cbwLSHgboYFWFDTtY1VZhzfkQCtI5gJgcVDTKc6A1MvTj?=
 =?us-ascii?Q?uO4DgOgmMjhR300BuyulLvhWrcTpAMtR0A65n/NCTxvlfzdOHEeRYQ/v+vV2?=
 =?us-ascii?Q?kzP/LQmNdgsUrB+XqpVRc/Q8Na3PZcNis/t90zDC7guNbfBECOET5yH+c9Bv?=
 =?us-ascii?Q?yuXvaPXh/flYeyaNmVb/pz15d6Nm/8STORvMyhW6cxyfbZMZwCEsHB9YBC+K?=
 =?us-ascii?Q?Zo55C9nMW1+wYcd4o3yJD/JUllWernJZy1IV1grw7WdyLtLYSDyEDxR3G4iq?=
 =?us-ascii?Q?4j/NpjsM6ybMnvJZsawRSPypepdr27dMjjDA4op9LuZ2oSLr/Sqh0bxWtTbc?=
 =?us-ascii?Q?6Rhz8Nx/dQI5Yra6WR4ZRpb5qgRlgyGjyevWtm6UZbmS5tV2yhwjIOkrBfbN?=
 =?us-ascii?Q?IP4Pd1zQgXVLEu3bQbQrzN3adin4Tlf64S6gRw05Dtz6FNhfhw1bP25jGeqn?=
 =?us-ascii?Q?8jXWteXm2v+KfETWSnOu1V3NVK4qYltu1/u6xQhPUnm1qv8vORgFAsDl+Djr?=
 =?us-ascii?Q?oIEKckEjIqBW0MYva9EuUDu98OOULHFnyB9Z060bvAteXitarBr/SNaAGW3D?=
 =?us-ascii?Q?xm+/vwre0VWtEbAOpQrIBSEqraBs2Rf6/o1ig6g7NJI0V19PH6F6cMRAWKcR?=
 =?us-ascii?Q?+WogcMm365MVxxjvNNGOo0wt5aVfDJ3BsPcRJHymMcMOW1rPexGJzblZNxlN?=
 =?us-ascii?Q?fFPbOBtqBhQcLCYyi+4AtaL/Su9yfUBVJNYviHJwQlW51npRmIPGKsm3F6GE?=
 =?us-ascii?Q?7uJhKI6aURJ+KwKNGcx6oWXPTVGQfE3LuiIlbsTySSG66hmUX4h/ylgC4NVt?=
 =?us-ascii?Q?DXxxzMywMz0CUQM7g/eh4X51Vqxq1N3+Yb1fA13p?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7222e962-6253-42ff-3298-08dacccf398b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 21:19:23.5193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ix360dZE16v9lZAgUC0NMWtRm3OViVaCF8hOxmUl60IG+OQqI5zljqnKRtiKIibjhqAKBD/3Y+vOivkqh1O07Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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

On Tue, Nov 22, 2022 at 12:59:36PM -0800, Matt Roper wrote:
> On Mon, Nov 21, 2022 at 06:18:15PM -0300, Gustavo Sousa wrote:
> > Release notes:
> > 
> > 1. Fixes for Register noclaims and few restore.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Now that we've removed force_probe from DG2, in general we're past the
> point where we can just directly update firmware versions like this; if
> someone has a working system with the current kernel + DMC 2.07 and then
> they update to a new kernel containing this patch (but without
> installing DMC 2.08), they'd see a regression.
> 
> In this case, maybe there's still time to sneak this specific update
> into -fixes so that it lands in the same kernel release that removes the
> force_probe protection on DG2?  But in general we need to start
> providing backwards-compatible support for all firmware updates going
> forward.  The GuC/HuC guys just went through an overhaul of their
> firmware handling to deal with this; we probably need something similar
> on the DMC side now too, although I suspect DMC should be simpler to
> deal with since most (all?) DMC firmwares are just drop-in replacements
> and there's no constantly changing firmware<->driver interface like
> there is with the GuC.
> 
> See Documentation/driver-api/firmware/firmware-usage-guidelines.rst for
> the official rules about firmware usage.

Matt is right here. But this update is an important fix and I will propagate
through the -fixes flow, so we don't need for now to support the 2.07 as
fallback. The 6.2 will be released only with the 2.08.

But please make sure you add a "Fixes:" tag to this patch. Then please
let us know when the fw file got accepted in the linux-firmware.git
so we can merge and propagate.

Moving forward we will need to support the fallback version like GuC,
or even better, remove the versioning from the filename entirely like
HuC.

> 
> 
> Matt
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 081a4d0083b1..697196368fbb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -52,8 +52,8 @@
> >  
> >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
> >  
> > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> > +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 08)
> >  MODULE_FIRMWARE(DG2_DMC_PATH);
> >  
> >  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> > -- 
> > 2.38.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
