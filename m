Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A17E263FBEA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 00:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C114B10E68D;
	Thu,  1 Dec 2022 23:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C0210E68D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 23:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669937047; x=1701473047;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+Dn1S9KzlSuh5DympPi3KyCODOsmC/twqQKqi7RaqAE=;
 b=lHP8PtMYTmDio2EPtSoLVGxJoJ9EiMAKrH5/cNvgbhGnjkb3KK8FuUA2
 oyDvlOzZ0YCHO83N6tK2mDHKAyKEpuMfabVsymnI6Ns4Z8tuppvnM2HAd
 LgvOXx1Db77iLaEY0+xgNeM6TQHk8+fButTWIBUM7hIWdjUcigJTAppA/
 HP89ad4c031QI7qszvSoqt0HClAWZgNJW1uAsuVnPueLXa0wKoqQg/Rke
 mtvRZYjAOoLOfgwf68AK9Usdf68UKMeLul4fcjhqGKTeZ9NdXDo9a7jLP
 yvY0BcYgN2eK7tvpuXdlsm6ToHRyf4h3cUc2PoBebNZwrbinToSkj4nOQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="380110806"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="380110806"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 15:24:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="973701610"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="973701610"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 01 Dec 2022 15:24:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:24:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 15:24:04 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 15:24:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyGywKg7vas6TDmig8EoLfIkrkLSeBQEg1LaakkZ3wEh1sUhHwqdMR2Px4eOdq9bPD/kGQPRGMuGMjGuAr5UzbeAHc3Fhm7T8IMWov36cWRndjyFTiTC22zQy4jxTCxxg9xyBBow7x1eo72uMUerLgs4d9UpSIppBBRufVjTbbLeI2AGRu8gzRBNqbNYtuR21OrkS0RhzPYRWQCUsvGVvlhmM7ReUGDWSMgUWKXmGN4jyuqd1ZlfASx9YsJl8M8AwnKIwWr8KLnPD7BiOmuKmebP/zPa79tNi/WLyFU8aogHEkZw+rz5GuFWlsSyl5TyP7U9kyqguNA7Xtx97TOjpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ldeLdu+DCoG+XlKDcgyC6W96tmwHtWiAsRygrSPvvYw=;
 b=S0ER5g3PiO4j/7Y9LyFN1OjGDXEBMJB5+JAgEzeyUEq7Qo04LahQc7EDQaM4TiHR37UK43Lh3MIOcgzZSNU0UdnLfsDCDbIPPHBcWBp96QDpoaCgVkIgRffExAC5yHADDiaTgmhRj4ALQTW/1Plzn4GXw6YQAVo2w6E3JP+PX9BFIgBmsNqhqonB8WV6oFjF/l6G8AHrokzOvQDKePHJ753Xx+t46tRwKs5lIu5h0FjaoHRv9gNV6SFDqkE9kDp3zhKQRFu6KLP6Gi5bobaiEI9+36JFEISmBBYEzBEWD4ztSVrcLCSif9QteNzHMec7gX1uXyBMagp+ON+8pUJLZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 23:24:00 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 23:24:00 +0000
Date: Thu, 1 Dec 2022 15:23:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Y4k3jt4N2oWeVZKN@mdroper-desk1.amr.corp.intel.com>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <20221130231709.4870-2-matthew.s.atwood@intel.com>
 <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
 <20221201172307.u5z2vcg2ce4344iv@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221201172307.u5z2vcg2ce4344iv@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0PR05CA0126.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::11) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SN7PR11MB6946:EE_
X-MS-Office365-Filtering-Correlation-Id: 96fd51a3-7935-4dbd-0a0b-08dad3f32095
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nG86KKWO1Mi98aGcXa3ZytlqwuaEPz8Vhv+iZUgRjfdMZOHhmgoWdU9L7yjiCqYnKp0KzhVEFTylUOJD+VSOgdFngagzJfSkCDy6kLmo4OvVwdIKlbBBJFnnlHfTOtVT+PekKcx30siR3u1k3xG8Os45WbEA9G6a6DYlPusSfq8znuVBpAEje/Hp9cVrcA+CyMxuJK7jEuZEEGMk2QGrZHcWmZlKQomuUASKOLiKMHwvd3k7EYUjh1bzGN0T5Sjf5nQKx69V07LMbaWYvREXweEoW51/WLKf0Xtp2KHj7U/B51urikYsgJ8uko8ehLV8kydklD7ImhFcM+47z/zEzEcJHYr0Pv/13MybGx1V85NI40cTjsziERAYZsuQHv9Di2ojKl8+FNmnoBFJre/a5bvmkrXTkNshYdJDYaLMYFuNusc9nq46NQFRS+X8WGdH4MWOX3s3DKyuvpqwiJw2QFOrPv/uHyIpwEtNWTgYAzdg/RDa3bSQRYh2o3tOKo7WBt7Z3tDJ8cdWueR6IpFBtUf+yzij7JHxnKF17cszcs7wnSzkEz0WiglK9etAlb1W+P7f7CPlGKwz+vMKNSuGpExlPYN32A3+y++665nyceh5jt8iDLo6SVaWf5VPcHe4TCQM5EkU/QARBAFI5//OfA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199015)(186003)(86362001)(316002)(6636002)(6486002)(82960400001)(38100700002)(6506007)(53546011)(6512007)(26005)(8936002)(2906002)(478600001)(6862004)(83380400001)(4326008)(5660300002)(41300700001)(66946007)(30864003)(8676002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yLoVAAd4swjU0Xm7Lfyf8c87glzmKLXp1IfNFvgoHrnbCDQ/gJNMuSqjf+6o?=
 =?us-ascii?Q?i/iHxJyS5rdedx+zSz56aNtKfvDpKspcrOhk6nYPa5xIu4jjyWW9JaCDnn3p?=
 =?us-ascii?Q?K6qCZ0YvIr0aHzpPeJ8B7BkS8MS/DD4wpng9Fsir6q3tRM3X/T9ViYPl0MZD?=
 =?us-ascii?Q?l+vGac8i11za1lm7h/bDJn9QKyy8scsaQpY6e7hUYxGaQI0CXFPjwEuKnL+A?=
 =?us-ascii?Q?9NwfJtvS6Lzt3QnJLBxAILjbO0kGPdKbrT4b+F8afgfqpgt72aWEHBWoujPI?=
 =?us-ascii?Q?1k4UDM50XQS2B4hzgEluowbo9op0UKoftWBiQ8p1XOd05wds6FrHNTH4tnHW?=
 =?us-ascii?Q?4hYALmvkOZxZwrg+rIeugRv+hSib86OJPOgvLQgWzVzROxlQ5hCBd43B4IWz?=
 =?us-ascii?Q?O888ccMru4X5r2NlIL76zK52S9OAPgLe9PyiLZNj6UZG7YwbXvoZ13D3yPGn?=
 =?us-ascii?Q?4HdwzHRqbB8Si/w2dNr6GIMEeSDIMpfk82OMVDLBBh4o/bC4zFBpRNWgX1t1?=
 =?us-ascii?Q?TYZZ+huX4RncWphqeffwowEDBX4eRCa5ox7fGQDkYcpLiWDHKGeKn2AHDv2O?=
 =?us-ascii?Q?bDrhzW/ttmDSBUZV3DE4armf574cOFDJcicUJQGf9Z/uA7m5rJScmlv+InVc?=
 =?us-ascii?Q?01ETZevJoXzyc7D8CbyzWd3tBxBv0lQvUnoy0bxUt71g/cbeD8taXZQLwrgc?=
 =?us-ascii?Q?o69L13KK1rdiO/RQFa9yWaAvZoEFzBFHldyiBQ1BjBBv7/twAJYtsOM4vsOJ?=
 =?us-ascii?Q?o5VaUcQ3qCBHGB5f90OlxFNlrJEVRZyNh6Q6iQb/3EDivLfNPY2Hwx8P4XWb?=
 =?us-ascii?Q?uWxiP2vLA2hLw3Gz/VUNt19F//W74bT7RiyGHXpFvsUkv5c/7r6DTjwbE/ca?=
 =?us-ascii?Q?OXazejTFki21o8CkTcywt+q8WYM5C0ngzni1BXQy6tzszaT3nq1kQiNvY+qk?=
 =?us-ascii?Q?8aWJ2m+93hbbGADAI+oO9nCZ+hBIRpRJlGbqdM7y0JUh+J+OwRbFuORmJ+0R?=
 =?us-ascii?Q?u1MN8zgXGXWOs1kGQYdu3k8r9yCNMdi/JFZAdP41PnxnXU7PFsCpIYfB+bE7?=
 =?us-ascii?Q?K1gvpgXj+FcFgJGgK2ccLyJ5+Bw4sfn1QxkMmSP2KMSnwyVLvgniNuAfGRV3?=
 =?us-ascii?Q?wF//YOR6EJvkpIuh5NFzC8aHkvL67I1fZGhqKPukeG3FtH/sviv4GLO3gBTf?=
 =?us-ascii?Q?KINuGi/PElocdfL2J02CUQCkM2C+Xm8ZH3wFsocjS/m2rRCiEbGNFzDWqiH8?=
 =?us-ascii?Q?rZSmQeoLxXrGzW42xSn/vHbFtu8R2ex/WMPgl7aEWGgPpN74jvGUFf/8fGo8?=
 =?us-ascii?Q?Ym6sGUZzN97YcmUt6doc/fl/23IpAHL2lly6RBxt54zTt/S4BDBN1blQtwhK?=
 =?us-ascii?Q?liiZHtLp6fNNvzDxu5BIdWYEk/T8tFFO4wWVwq9QwjcGuAuIlBIrthCMshmU?=
 =?us-ascii?Q?7LgBs20I3w/rQtxyXt2VnSVd04CrOa4nnyZRt3uCy0Cju7hhb+95fH9gEr7+?=
 =?us-ascii?Q?l1e3RK6GmhGqzI9kiT7Il5HIhZpF6Sy1y4oXpWiobGWrStKrPBS+ckzIpNtu?=
 =?us-ascii?Q?1gPIspgxMz0MqPkYi+S9LV/GDFpgdADIm+DNaKXd2i2hEOl7FmaMQy1S/Mgd?=
 =?us-ascii?Q?4A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fd51a3-7935-4dbd-0a0b-08dad3f32095
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 23:24:00.5217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IPo+RE7cJMZLY1kUYY4l4t09fZM3rv8qYfqiCJs2WydHfot1Yd6/XlVdWrZpzRF4bVXBHyvn6nY+rhaghNNCS4URjOUQu6mrMfeOTA6aWe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add initial gt workarounds
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

On Thu, Dec 01, 2022 at 09:23:07AM -0800, Lucas De Marchi wrote:
> On Thu, Dec 01, 2022 at 01:15:35PM +0000, Tvrtko Ursulin wrote:
> > 
> > On 30/11/2022 23:17, Matt Atwood wrote:
> > > From: Matt Roper <matthew.d.roper@intel.com>
> > > 
> > > This patch introduces initial workarounds for mtl platform
> > > 
> > > Bspec:66622
> > > 
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
> > >  .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
> > >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
> > >  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 105 +++++++++++++-----
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
> > >  drivers/gpu/drm/i915/i915_drv.h               |   4 +
> > >  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
> > >  9 files changed, 121 insertions(+), 37 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > index c33e0d72d670..af88d8ab61c1 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > @@ -1479,7 +1479,9 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
> > >  	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
> > >  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> > >  	 */
> > > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> > 
> > Does comment need updating to reflect the workaround applicability?
> > Elsewhere as well. Some are left as dg2 only. Some gen11,gen12 only.
> > 
> > Then there's a few of this same change logic throught the patch, so I
> > assume a general situation of workarounds applying to only early MTL.
> > 
> > if ((IS_GRAPHICS_VER(engine->i915, 11, 12)) &&
> >     !IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_B1, STEP_FOREVER)
> > 
> > Would this be correct and simpler? Not sure about STEP_B1 for start of
> 
> should be STEP_B0 if doing this. The stepping check is inclusive on the
> left, exclusive on the right, i.e:  [STEP_A0, STEP_B0).
> 
> But even if the check is simpler, I'd avoid doing a negative check to
> maintain consistency.

Agreed; if you have access to the internal workaround database, you can
query a list of which platforms/steppings a given workaround applies to
and get a list that basically lays things out something like

  Wa_XXXXXXXX:
    MTL:        [a0..b0)
    PVC:        not needed
    DG2-G10:    [b1..c3)
    DG2-G11:    [a0..a2)
    XEHPSDV:    all steppings
    ADL-P:      not needed
    ...

Even if the code condition has a bunch of arms, it should translate
pretty clearly to what's in the workaround database, so it's easier to
audit and make sure we aren't missing anything.  With all the platforms
we have these days, negative tests make it a lot harder to verify (and
in your example here would cause problems if we get something like a new
12.80 or 12.90 platform down the road...presumably those wouldn't want
this workaround either, but wouldn't be captured properly).

The corollary of that is that we should be really careful about using
range checks like IS_GRAPHICS_VER() that only compare the major version
number.  If we aren't sure we've fully moved past the upper end of the
range, there's a possibility that new platforms may show up that
shouldn't be included in that range (as MTL did in this case, breaking
our "applies to all 11.x and 12.x" assumption).


Matt

> 
> Lucas De Marchi
> 
> 
> > range, if it is possible to define it. Don't know.. One could perhaps
> > even suggest a new macro to avoid repeated whatever patterna lot.
> > 
> > >  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
> > >  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > index 49a8f10d76c7..a91c912e35d6 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > @@ -2992,7 +2992,9 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
> > >  	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> > >  	 * to wait for any pending mi force wakeups
> > >  	 */
> > > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> > >  		intel_engine_wait_for_pending_mi_fw(engine);
> > >  	engine->execlists.reset_ccid = active_ccid(engine);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > index aa070ae57f11..0e90a8f86b27 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > @@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> > >  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
> > >  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> > >  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> > > -		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> > > -				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> > > +		/* Wa_14016747170:mtl-m[a0], mtl-p[a0] */
> > > +		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> > > +					     intel_uncore_read(gt->uncore,
> > > +							       MTL_GT_ACTIVITY_FACTOR));
> > > +		else
> > > +			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> > > +					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> > >  		/*
> > >  		 * Despite the register field being named "exclude mask" the
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > index 784152548472..c2c03b02f200 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > @@ -413,6 +413,7 @@
> > >  #define   TBIMR_FAST_CLIP			REG_BIT(5)
> > >  #define VFLSKPD					MCR_REG(0x62a8)
> > > +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
> > >  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
> > >  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
> > > @@ -1532,6 +1533,10 @@
> > >  #define MTL_MEDIA_MC6				_MMIO(0x138048)
> > > +/* Wa_14016747170:mtl-p[a0], mtl-m[a0] */
> > > +#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
> > > +#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
> > > +
> > >  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
> > >  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 3e35facac2b4..2e3d5de0c522 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > >  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> > >  }
> > > +static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > +				     struct i915_wa_list *wal)
> > > +{
> > > +	struct drm_i915_private *i915 = engine->i915;
> > > +
> > > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > > +		/* Wa_14014947963:mtl */
> > > +		wa_masked_field_set(wal, VF_PREEMPTION,
> > > +				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > > +
> > > +		/* Wa_16013271637:mtl */
> > > +		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
> > > +				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> > > +
> > > +		/* Wa_18019627453:mtl */
> > > +		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> > > +
> > > +		/* Wa_18018764978:mtl */
> > > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > > +	}
> > > +
> > > +	/* Wa_18019271663:mtl */
> > > +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> > > +}
> > > +
> > >  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> > >  					 struct i915_wa_list *wal)
> > >  {
> > > @@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> > >  	if (engine->class != RENDER_CLASS)
> > >  		goto done;
> > > -	if (IS_PONTEVECCHIO(i915))
> > > +	if (IS_METEORLAKE(i915))
> > > +		mtl_ctx_workarounds_init(engine, wal);
> > > +	else if (IS_PONTEVECCHIO(i915))
> > >  		; /* noop; none at this time */
> > >  	else if (IS_DG2(i915))
> > >  		dg2_ctx_workarounds_init(engine, wal);
> > > @@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  static void
> > >  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  {
> > > -	/* FIXME: Actual workarounds will be added in future patch(es) */
> > > +	/* Wa_14014830051:mtl */
> > > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> > > +		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> > >  	/*
> > >  	 * Unlike older platforms, we no longer setup implicit steering here;
> > > @@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> > >  	wa_init_start(w, engine->gt, "whitelist", engine->name);
> > > -	if (IS_PONTEVECCHIO(i915))
> > > +	if (IS_METEORLAKE(i915))
> > > +		; /* noop; none at this time */
> > > +	else if (IS_PONTEVECCHIO(i915))
> > >  		pvc_whitelist_build(engine);
> > >  	else if (IS_DG2(i915))
> > >  		dg2_whitelist_build(engine);
> > > @@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  {
> > >  	struct drm_i915_private *i915 = engine->i915;
> > > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > > +		/* Wa_22014600077:mtl */
> > > +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> > > +				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> > > +	}
> > > +
> > > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > > +		/* Wa_1509727124:dg2,mtl */
> > > +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > > +				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > > +
> > > +		/* Wa_22013037850:dg2,mtl */
> > > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > > +				DISABLE_128B_EVICTION_COMMAND_UDW);
> > > +	}
> > > +
> > > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > > +		/* Wa_22012856258:dg2,mtl */
> > > +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > > +				 GEN12_DISABLE_READ_SUPPRESSION);
> > > +	}
> > > +
> > >  	if (IS_DG2(i915)) {
> > >  		/* Wa_1509235366:dg2 */
> > >  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> > > @@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
> > >  	}
> > > -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > > -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > > -		/* Wa_1509727124:dg2 */
> > > -		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > > -				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > > -	}
> > > -
> > >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> > >  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> > >  		/* Wa_14012419201:dg2 */
> > > @@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > > -		/* Wa_22013037850:dg2 */
> > > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > > -				DISABLE_128B_EVICTION_COMMAND_UDW);
> > > -
> > > -		/* Wa_22012856258:dg2 */
> > > -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > > -				 GEN12_DISABLE_READ_SUPPRESSION);
> > > -
> > >  		/*
> > >  		 * Wa_22010960976:dg2
> > >  		 * Wa_14013347512:dg2
> > > @@ -2954,6 +3000,20 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > >  	add_render_compute_tuning_settings(i915, wal);
> > > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	    IS_PONTEVECCHIO(i915) ||
> > > +	    IS_DG2(i915)) {
> > > +		/* Wa_18018781329:dg2,pvc,mtl */
> > > +		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> > > +		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > > +		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > > +		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> > > +
> > > +		/* Wa_22014226127:dg2,pvc,mtl */
> > > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> > > +	}
> > > +
> > >  	if (IS_PONTEVECCHIO(i915)) {
> > >  		/* Wa_16016694945 */
> > >  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> > > @@ -2995,17 +3055,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > >  		/* Wa_14015227452:dg2,pvc */
> > >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> > > -		/* Wa_22014226127:dg2,pvc */
> > > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> > > -
> > >  		/* Wa_16015675438:dg2,pvc */
> > >  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> > > -
> > > -		/* Wa_18018781329:dg2,pvc */
> > > -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> > > -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > > -		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > > -		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> > >  	}
> > >  	if (IS_DG2(i915)) {
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > index 52aede324788..5ec74a167df9 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > @@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> > >  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> > >  		flags |= GUC_WA_GAM_CREDITS;
> > > -	/* Wa_14014475959:dg2 */
> > > -	if (IS_DG2(gt->i915))
> > > +	/* Wa_14014475959:dg2,mtl */
> > > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > > +	    IS_DG2(gt->i915))
> > >  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> > >  	/*
> > > @@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> > >  		flags |= GUC_WA_DUAL_QUEUE;
> > >  	/* Wa_22011802037: graphics version 11/12 */
> > > -	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
> > > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > > +	    (GRAPHICS_VER(gt->i915) >= 11 &&
> > > +	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
> > >  		flags |= GUC_WA_PRE_PARSER;
> > >  	/* Wa_16011777198:dg2 */
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 0a42f1807f52..f148d2f88d40 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -1615,7 +1615,9 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
> > >  static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> > >  {
> > > -	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
> > > +	if (!(IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +	      (GRAPHICS_VER(engine->i915) >= 11 &&
> > > +	      GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))))
> > >  		return;
> > 
> > The situation in this function looks bad.
> > 
> > It is not documented at all why calling intel_engine_stop_cs is only
> > applicable on gen 11-12.
> > 
> > The workaround comment only comes after that call so one should assume
> > it is not part of workaround.
> > 
> > Could you strong arm someone to put a comment in here explaining the
> > situaion?
> > 
> > Regards,
> > 
> > Tvrtko
> > 
> > >  	intel_engine_stop_cs(engine);
> > > @@ -4202,8 +4204,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> > >  	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
> > >  	/* Wa_14014475959:dg2 */
> > > -	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
> > > -		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > > +	if (engine->class == COMPUTE_CLASS)
> > > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +		    IS_DG2(engine->i915))
> > > +			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > >  	/*
> > >  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index ecb027626a21..2f18bc123438 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -731,6 +731,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  	(DISPLAY_VER(__i915) == 14 && \
> > >  	 IS_DISPLAY_STEP(__i915, since, until))
> > > +#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > > +	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > > +	 IS_GRAPHICS_STEP(__i915, since, until))
> > > +
> > >  /*
> > >   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> > >   * create three variants (G10, G11, and G12) which each have distinct
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > > index 849baf6c3b3c..7add88dde79e 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
> > >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
> > >  		    &runtime->graphics.ip);
> > > +	/* Wa_22012778468:mtl */
> > > +	if (runtime->graphics.ip.ver == 0x0 &&
> > > +	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
> > > +		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> > > +		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> > > +	}
> > >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> > >  		    &runtime->display.ip);
> > >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
