Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE477969E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 20:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6D210E6D2;
	Fri, 11 Aug 2023 18:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7246F10E6D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 18:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691776938; x=1723312938;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=rOKkOpkVpMQO9y8CJydm2+uvSM/9EIHPJgxpPWo2Tr8=;
 b=i0jj0lgsmNiAEN2S5lUii3h7oFFpCgEAp+asEHQzTFLD95VJKZBzUTzx
 eSm8yDltgZb3dlPxzORvb3DfiamESJoM4ieffaAgAzZ9zhmVe+pzg/MJN
 bSog/sFuHfBjCVjEplzjHeIQnVgDwKRgH0+SNzzpsUrGe9hl7O4Y9q8Yh
 HNLzEV+9L5qWfcSMuf+sYByce3iQlXy8TeCnhwSArrIxRxmltcsiDpBuj
 Duu1nBtC6blAP4Js7E/je7JCshpSOZIt0zw1jFAlumVKvauly9qo37Z6g
 3BNSWToajSkGtRbWf4i6Zfx6R33bHXsgiVNKNtsd5buvQMrxMszR3V9ih w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="402707510"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="402707510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 11:02:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="856366688"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="856366688"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 11 Aug 2023 11:02:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 11 Aug 2023 11:02:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 11 Aug 2023 11:02:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 11 Aug 2023 11:02:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMLa+gGXf7YnF0CEqbK5D8CtQfAv0aztWLjY2Km43UtQ7N6615200Lvtx6ZcAL3Pz2p1nhlLHprk1GW+f9apHTfw2oQhFIVPGcB0HcBTdg99P4pLII9GF3oreOadcex2+BGPS3rntizMvgGwPy3HDGELNjVFXvLpOJ3zyeQWksr1b2n0Dfk8O6aZ4wPTq/ZMl9hrHz1TU5mUQ7OWenPaBWDxiQd3szS7lrPLGE9pbMEVfxp/QUiahGbESQgm4obUuSXwygvlMu5m7dSlWktrpZr4QV4HOKD1CoFlERutqICdoFcakvlrcIaJDSLBbnOs5KtYR4C7ROlbunvX+quMnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezR+B2ZYNUfLANgR50SpYG95Jh7QoynXZFKtpmubD2c=;
 b=nsRqL02cy6LhGa0mQ3TCpLExoMTgkDj5CBVJwxN4ReovMLBe+Nsq/7ZWcWyJCgxJRxvibNcGY7kNDWkmt5Q9qtCHmsbsTo9PF1cKqVsOlddzxMeUNC/xyDJwhVdE7El7n3VnhyjRq/osZ5sy+JFkR5JKTSzMJYVWjh2tQm6ckLKkevBN09JocTCZhsq2EILWLMZ3NFjhcqYJkypQpfaeWUMKn7OqT/20dVosKQ3Z8AxxBQL4pd8kwf9SZfhRJfMaCzAC/bCcNg2/FyP4QKwSqghiYjoyJ3j62Wn/kgqG05EGrlH4W+1yqMOwDiSmzF5pmZWmZJ6UkEjV2EcHZmwnAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB8058.namprd11.prod.outlook.com (2603:10b6:510:24d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Fri, 11 Aug
 2023 18:02:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 18:02:07 +0000
Date: Fri, 11 Aug 2023 11:02:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230811180203.GF209733@mdroper-desk1.amr.corp.intel.com>
References: <20230810215750.3609161-11-matthew.d.roper@intel.com>
 <20230810215750.3609161-15-matthew.d.roper@intel.com>
 <87leeiqbk1.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87leeiqbk1.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0145.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB8058:EE_
X-MS-Office365-Filtering-Correlation-Id: 95efb43f-11d0-4e2b-d92e-08db9a951344
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DB34/fqCyHeyJRSHBHIrrPQAGWWI/qdEegyv7nkC3vmI8a9mMinS9647dLxEz9wcJ5flm5fs7+L+Eryo/ld8IMpnXZaJcfp0XlL3YWCxncxsH9sIwj/GY3YcloYMRh6ddDGB6AC1wTbRvJZ5aIAdIF7umqoaaCHrcfRkKk+NPXsnFVOYxnoGFoGr5YM0tPmM5lQE4eJuGGVk8XIwb6Z7CoklEyd7kFaX1b9nGTM/byiMJ4x/nqNQySNV4j30xAxRoSaLVJMg0cZO3IE14tkKIFspyoFVEfowT/W4hrBOYT5HkpXLccUV+ZvN5ji04FEnxwesgLJy8OOIEFatZcpytpNMYh+24G7tsGtyMFjiNSkTiB+96qFRUVEIKhpcxif3DBOAky4a/2grvyOJqkXrlG+YopGVVaLTdaRVOIyS7HJYPkzOHlUY/esmZZqvoqdH4Z1FVBx+3SSRXfiMwlsgMK/8xqOMn3Fw1AYViymxUVTRmMdst60aDOZN6ivPFTMJ05ku1k/MnpFEaT3BbqwgVtlyXdvK2wpp2mGRzkOGSNaKdeimXSQ/Tcv1cR+Clb1t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199021)(1800799006)(186006)(5660300002)(6506007)(1076003)(8936002)(8676002)(26005)(41300700001)(33656002)(83380400001)(2906002)(38100700002)(30864003)(82960400001)(86362001)(66946007)(4326008)(66556008)(66476007)(6916009)(6512007)(54906003)(6666004)(6486002)(478600001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?+oCrJ5wYKv3eFARCjn1QIBwMrWriQSTTyXAXUe5QE23eRExMyFB16lxtq6?=
 =?iso-8859-1?Q?xeiSXUTTApQya/JPe6NxjvfHXKh3lqTc/C1Fs2HKK55/x8zNKY5J+r/5OF?=
 =?iso-8859-1?Q?RTP5vJrhc0gCmlMinAF90yPs5YIn12FOOwtXyfsB2T0JHh25vhjEHy6Aqj?=
 =?iso-8859-1?Q?hdY1bWRhqYceCng9EfhD1HeocBSY+8ynCQIRXQN2Y9ApiTMY2ynFWtn5vM?=
 =?iso-8859-1?Q?H5tDOT5s9PdPBv+myBB0iMmyXyGkI/txpxsyTO1FSRMuO+/qQjS1UZUkCU?=
 =?iso-8859-1?Q?nwgqlUjFi1FDgrWEYaJFxflmQli44Yh9Nz1GhlvBZ5q3FDJzRUsbSq1wYX?=
 =?iso-8859-1?Q?tg76cO46Pfg+aN2RNS4r4RHNkDapLERfLEyCSM9fD77Xu/MZ9C4iiyuIJ1?=
 =?iso-8859-1?Q?4J2MzMio5U9NOCdiDu43tCJ76vyRsLBksQ14WOc2ACZzWkKY49iz1uPKCN?=
 =?iso-8859-1?Q?c7RXQ0ujN1I0Cr5l1bBQhob3jwSxxxdu5R8KfSMq1JMOxKWInKkJ3nj+zz?=
 =?iso-8859-1?Q?6cW2XNF1XC8K9SEpJgZwRH6LOJTk3v+9PNLjUkKnUcQ0nVMoeImue8b+vU?=
 =?iso-8859-1?Q?A6wBkd7oYEBPFih1Iq3FoyQKESyyn6DERNjabZhzd77LLi8jagXS7C/9u9?=
 =?iso-8859-1?Q?l/YhpFkvNsHkqV1W+2evZqKUheodR6jm0bBaRh8O5s/s2fclyAwlcVl4Cj?=
 =?iso-8859-1?Q?OeyeMi9wBd9aS4I7rn3A2QGFcqoCwOyJ3Sj8h1xBiYJFsIXrbGLTA8u82m?=
 =?iso-8859-1?Q?5enT5Y7+Ip9bW18w979NLM+Y6xvKKHkD4S2p/mBlr52N8VQ6lNZ+V+lkDc?=
 =?iso-8859-1?Q?9OWGUPRAaOCYgzltYabC1x9nsh5AhnoG6tvsOJKx5E4tuA6l9+wn5AzldE?=
 =?iso-8859-1?Q?HjDZ39EV5c4QtDEopUYjADWe/RFZyx4kgC8YljDisxNrfDoqEz1Tx9prWb?=
 =?iso-8859-1?Q?KHsP0VjloaCB7YBmre3z3XF20R8VN9Rr+5rztdvwuxliakzSf0DaxH2dID?=
 =?iso-8859-1?Q?JfoBWLUPFh+Fbyjr/cgfEflJcrFmG6/k9Y2Q8+gIySQG9bbkv+/SGqY/tM?=
 =?iso-8859-1?Q?Budhuk47qxR2a32qphbY7EwgyK1NsEcaliB+7pxEZiAM5sdt3d1D8gVH5C?=
 =?iso-8859-1?Q?mP10ZWCxC+z/3HmVuMvLkZKzrVsQF9DheQ0jjj/sUw1T3ilhvo4PuaA7/F?=
 =?iso-8859-1?Q?vOlxbQzP9s1ZRZ0OA9JfK4fOpTc+XbMLKOg7dS8BxS06vzskCp+UMyOCvn?=
 =?iso-8859-1?Q?dob70VQfU5rvCDplwfmdqxt/zilSdXrruoiKOh504ANAF/3cfYZY2AqNa0?=
 =?iso-8859-1?Q?AqJNeQw2R3+cl1LxGRIV6Dd/1ANNMaTDLwSglpIgfT/y8ziXXYFuQm/mAU?=
 =?iso-8859-1?Q?JNek3WaHST9MRiI7ZpeXm379N1a7UspDWSqqEgAiseeYJXOybjiKPROEVj?=
 =?iso-8859-1?Q?tCG6xwp5n1nSQs6velNtqJBAxV29urK5H84ubtd441yhWlPRsdhFTHhPdO?=
 =?iso-8859-1?Q?AIJxxRIVO5q0LxF+oXwLwevAenygPP4nlJ48gWmyMJCjzBtVF1z30Umqtw?=
 =?iso-8859-1?Q?0Xww446GkN8gxnl3nM+xQn/Q4yf9bTdcHjK0to0CJiY9Os7doWtk6S7e3G?=
 =?iso-8859-1?Q?J6+L+f+7HzJ2D55pVGt45noVH+IGmxtarF2cPvcTNjRzCcHK7oBd8EZw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95efb43f-11d0-4e2b-d92e-08db9a951344
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2023 18:02:06.9266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H2HJmoLGFcFumB+4umepFmQ+IKmGFfkRTq1qa0RWNB4jJwHtTQS7au44pF3vmRq8z3kZP0gRz5cvzNEB3Gjj51llkkcubRumWW5zDguMVHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8058
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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

On Fri, Aug 11, 2023 at 10:32:14AM +0300, Jani Nikula wrote:
> On Thu, 10 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
> > of these workarounds are actually tied to MTL as a platform; they only
> > relate to the Xe_LPG graphics IP, regardless of what platform it appears
> > in.  At the moment MTL is the only platform that uses Xe_LPG with IP
> > versions 12.70 and 12.71, but we can't count on this being true in the
> > future.  Switch these to use a new IS_GFX_GT_IP_STEP() macro instead
> > that is purely based on IP version.  IS_GFX_GT_IP_STEP() is also
> > GT-based rather than device-based, which will help prevent mistakes
> > where we accidentally try to apply Xe_LPG graphics workarounds to the
> > Xe_LPM+ media GT and vice-versa.
> >
> > v2:
> >  - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
> >    used for both graphics and media IP (and any other kind of GTs that
> >    show up in the future).
> > v3:
> >  - Switch back to long-form IS_GFX_GT_IP_STEP macro.  (Jani)
> >  - Move macro to intel_gt.h.  (Andi)
> >
> > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    |  5 +-
> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 ++--
> >  drivers/gpu/drm/i915/gt/intel_gt.h            | 20 +++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 ++-
> >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >  drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> >  drivers/gpu/drm/i915/i915_drv.h               |  4 --
> >  10 files changed, 64 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index ffc15d278a39..d557ecd4e1eb 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -20,6 +20,7 @@
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  #include "skl_watermark.h"
> > +#include "gt/intel_gt.h"
> >  #include "pxp/intel_pxp.h"
> >  
> >  static const u32 skl_plane_formats[] = {
> > @@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >  				 enum pipe pipe, enum plane_id plane_id)
> >  {
> >  	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
> >  		return false;
> >  
> >  	/* Wa_22011186057 */
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index a4ff55aa5e55..6187b25b67ab 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -4,9 +4,9 @@
> >   */
> >  
> >  #include "gen8_engine_cs.h"
> > -#include "i915_drv.h"
> >  #include "intel_engine_regs.h"
> >  #include "intel_gpu_commands.h"
> > +#include "intel_gt.h"
> >  #include "intel_lrc.h"
> >  #include "intel_ring.h"
> >  
> > @@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
> >  static int mtl_dummy_pipe_control(struct i915_request *rq)
> >  {
> >  	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >  		u32 *cs;
> >  
> >  		/* dummy PIPE_CONTROL + depth flush */
> > @@ -799,6 +799,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
> >  u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >  {
> >  	struct drm_i915_private *i915 = rq->i915;
> > +	struct intel_gt *gt = rq->engine->gt;
> >  	u32 flags = (PIPE_CONTROL_CS_STALL |
> >  		     PIPE_CONTROL_TLB_INVALIDATE |
> >  		     PIPE_CONTROL_TILE_CACHE_FLUSH |
> > @@ -809,8 +810,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >  		     PIPE_CONTROL_FLUSH_ENABLE);
> >  
> >  	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >  		/* dummy PIPE_CONTROL + depth flush */
> >  		cs = gen12_emit_pipe_control(cs, 0,
> >  					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> > index 7649a46a36cc..de1bb04c864a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> > @@ -25,6 +25,26 @@ struct drm_printer;
> >  	GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
> >  	GRAPHICS_VER_FULL((gt)->i915) <= (until)))
> >  
> > +/*
> > + * Check that the GT is a graphics GT with a specific IP version and has
> > + * a stepping in the range [begin, fixed).  The lower stepping bound is
> > + * inclusive, the upper bound is exclusive (corresponding to the first hardware
> > + * stepping at which the workaround is no longer needed).  E.g.,
> > + *
> > + *    IS_GFX_GT_IP_STEP(GFX, IP_VER(12, 70), STEP_A0, STEP_B0)
> > + *    IS_GFX_GT_IP_STEP(GFX, IP_VER(12, 71), STEP_B1, STEP_FOREVER)
> > + *
> > + * "STEP_FOREVER" can be passed as the upper stepping bound for workarounds
> > + * that have no "fixed" version for the specified IP version.
> > + */
> > +#define IS_GFX_GT_IP_STEP(gt, ipver, begin, fixed) ( \
> > +	BUILD_BUG_ON_ZERO((ipver) < IP_VER(2, 0)) + \
> > +	BUILD_BUG_ON_ZERO((fixed) <= (begin)) + \
> 
> Why is == not okay?

fixed == begin would be an empty set of steppings and should never
happen (i.e., the first stepping where you need the WA is also the same
stepping where you no longer need the WA).

> 
> > +	((gt)->type != GT_MEDIA && \
> > +	 GRAPHICS_VER_FULL((gt)->i915) == (ipver) && \
> > +	 INTEL_GRAPHICS_STEP((gt)->i915) >= (begin) && \
> > +	 INTEL_GRAPHICS_STEP((gt)->i915) < (fixed)))
> > +
> 
> I'd keep using begin-end or from-until instead of begin-fixed. This
> check should really agnostic about issues that get fixed.
> 
> We have macros for checking step ranges, e.g. IS_GRAPHICS_STEP(i915,
> since, util). They should be used instead of duplicating the
> condition. And in the previous patch you added IS_GFX_GT_IP_RANGE()
> which is also pretty much duplicated here?
> 
> But the stepping check is really orthogonal from the other conditions. I
> was hoping to replace the IS_MTL_GRAPHICS_STEP() and friends macros with
> IS_METEORLAKE() && IS_GRAPHICS_STEP() combos, because there's nothing
> that requires us to keep adding new macros for these.

Part of the goal here is to stop from trying to combine the conditions
manually because it's too error-prone, and the mistakes tend to slip by
during code review as well.

 * Combining a version range with a stepping range is always a bug.
 * Using a version or version range without checking the GT type is a
   bug on all platforms going forward.

Plus mixing a bunch of && and || conditions makes it easy for typos on
the parentheses to cause hard-to-spot bugs.  The macros here ensure that
all the conditions that must be combined are always used together
resulting in a simple || list where each item in the list corresponds to
one entry in the WA database.


Matt

> 
> Of course, with the IP check there's no need to add new platform
> specific macros... but is there a need to combine all these together?
> 
> 
> BR,
> Jani.
> 
> 
> 
> >  #define GT_TRACE(gt, fmt, ...) do {					\
> >  	const struct intel_gt *gt__ __maybe_unused = (gt);		\
> >  	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 0b414eae1683..11d181b1cc7a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -3,8 +3,7 @@
> >   * Copyright © 2022 Intel Corporation
> >   */
> >  
> > -#include "i915_drv.h"
> > -
> > +#include "intel_gt.h"
> >  #include "intel_gt_mcr.h"
> >  #include "intel_gt_print.h"
> >  #include "intel_gt_regs.h"
> > @@ -166,8 +165,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> >  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> >  		/* Wa_14016747170 */
> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >  			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> >  					     intel_uncore_read(gt->uncore,
> >  							       MTL_GT_ACTIVITY_FACTOR));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 957d0aeb0c02..1f0768652446 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1375,8 +1375,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
> >  	cs = gen12_emit_aux_table_inv(ce->engine, cs);
> >  
> >  	/* Wa_16014892111 */
> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >  	    IS_DG2(ce->engine->i915))
> >  		cs = dg2_emit_draw_watermark_setting(cs);
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index 1ff7b42521c9..fd6c22aeb670 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
> >  	if (GRAPHICS_VER(gt->i915) < 11)
> >  		return false;
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
> >  		return true;
> >  
> >  	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 80d67e487b55..e2562b0e540d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> >  				     struct i915_wa_list *wal)
> >  {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >  
> >  	dg2_ctx_gt_tuning_init(engine, wal);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> >  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> >  }
> >  
> >  static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  				       struct i915_wa_list *wal)
> >  {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >  
> >  	xelpg_ctx_gt_tuning_init(engine, wal);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >  		/* Wa_14014947963 */
> >  		wa_masked_field_set(wal, VF_PREEMPTION,
> >  				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > @@ -1747,8 +1747,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  	/* Wa_22016670082 */
> >  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >  		/* Wa_14014830051 */
> >  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> >  
> > @@ -2425,16 +2425,17 @@ static void
> >  rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  {
> >  	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >  		/* Wa_22014600077 */
> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> >  	}
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >  		/* Wa_1509727124 */
> > @@ -2444,7 +2445,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
> >  		/* Wa_22012856258 */
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >  				 GEN12_DISABLE_READ_SUPPRESSION);
> > @@ -3009,8 +3010,9 @@ static void
> >  general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  {
> >  	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >  
> > -	add_render_compute_tuning_settings(engine->gt, wal);
> > +	add_render_compute_tuning_settings(gt, wal);
> >  
> >  	if (GRAPHICS_VER(i915) >= 11) {
> >  		/* This is not a Wa (although referred to as
> > @@ -3031,13 +3033,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> >  	}
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> >  		/* Wa_14017856879 */
> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >  		/*
> >  		 * Wa_14017066071
> >  		 * Wa_14017654203
> > @@ -3045,13 +3047,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >  				 MTL_DISABLE_SAMPLER_SC_OOO);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >  		/* Wa_22015279794 */
> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >  				 DISABLE_PREFETCH_INTO_IC);
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >  		/* Wa_22013037850 */
> > @@ -3059,16 +3061,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  				DISABLE_128B_EVICTION_COMMAND_UDW);
> >  	}
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >  	    IS_PONTEVECCHIO(i915) ||
> >  	    IS_DG2(i915)) {
> >  		/* Wa_22014226127 */
> >  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> >  	}
> >  
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >  	    IS_DG2(i915)) {
> >  		/* Wa_18017747507 */
> >  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 22649831d3bd..6687cdf0272b 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  		flags |= GUC_WA_GAM_CREDITS;
> >  
> >  	/* Wa_14014475959 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> >  	    IS_DG2(gt->i915))
> >  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 1bd5d8f7c40b..b2150a962f69 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >  
> >  	/* Wa_14014475959:dg2 */
> >  	if (engine->class == COMPUTE_CLASS)
> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		if (IS_GFX_GT_IP_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> >  		    IS_DG2(engine->i915))
> >  			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 7a8ce7239bc9..e0e0493d6c1f 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -658,10 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> >  
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > -
> >  #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
