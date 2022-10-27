Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A807E60FD82
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 18:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CBA10E105;
	Thu, 27 Oct 2022 16:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A670710E105
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 16:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666889447; x=1698425447;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HyDbzqadI5RMYmSImHPu7hMXL+ffqVOYE/MyCSN19lA=;
 b=Hpr2j3gNRfy/89EW+rAbo1j9v75NFer/Ev/UQcb1ZHhWDx0VV6E9Frh9
 /Gyn6709K3wBaEGr7fv/9eV6Ku6Kjm7Gx177mCR8j8k0UvTMDGj17n8wa
 LFNKjP/On4yIUXWPl4iDfSsh185udr6F3FVCXw8cPunDOIrL4DN0/ceIX
 +GhMQFDUL/GwvrepqccSe6x/oCbhp5bsBBFLfaR24etWb0ZMwER7vDmsq
 TiosA7KVCKnIt9OojgPR93wUuhcqAH3a0I/DU+CeiOLDUd/tvNVGOJ3jz
 s0CCLLCT/wEZVs9LshylUZYZAttoxV0znjM4YoPy2GfXcma06JyqnWdv2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295687690"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="295687690"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 09:50:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="665748095"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="665748095"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 27 Oct 2022 09:50:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 09:50:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 09:50:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 09:50:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGJ3Vmw+iKYYSvSlhT+e2i4nQSGgHkUmxNzdzF95tl2iN94EolWofeoaTEdwKgD2dRe7VHYt1XRvrZhR9T/pS4rJpUmnzJxtpPcSbJrp6WxQhjsLMEvU5giieUXPF+7rDpnBztIcqn3hp3HFN6B2v+thc4GRYgNc/jrBYX4gT7859ssc6HZSMeM+MbhJtnsbyn+an4bzCqFDQ6fhvrjLnnIIyy4yzxpyx37nPj5q6Wj3roqNAgKPmFmjOofbo/Df0K5eLkVjLtqMI5IXn7pXGaqXmGwMeahfHtq5+370bXz411e+J4LtsiKOlCVgGTaNKd6G500knUdfCZXka15ftg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9mJtwqKwhbemhUwe0CGsqlJI2heAhmFqDZhr+fKIrU8=;
 b=VCl6L4nfeVxEnrxTJZnyXtbCq83ebRBoeYxDTZdkxV/2rwE0ikdxGp8muJj2r96kZVZMOclWi3xTaDsia3qiqMT67whnzKQ6NjcHvn/e6GJqGsT4iUs9akjINuVEuDmS1JmJtWELC6wgRpW0N11KuUA2IRYTyD8MKTo+oVnF58Nc5QmRWcN7v+Dr2Av/jFwW4+8+9XeMe9T4KmnmDfB6D+LFxIweiINWNPfliQHZaLCpyxHcxnqiRER89q9R9u+pKtxln+FCsRUjROWZHU5ZsKGKR5fPOE1pxQva+XgQaaWoVo2Unsx4B7kywamgOXA8ujhqoG43TsJD7r3r+LrdHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ1PR11MB6273.namprd11.prod.outlook.com (2603:10b6:a03:458::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Thu, 27 Oct
 2022 16:50:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 16:50:42 +0000
Date: Thu, 27 Oct 2022 12:50:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <Y1q23TGMQiK/HisI@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-2-tilak.tangudu@intel.com>
 <YurbEfhNA53uoNlk@intel.com>
 <DM4PR11MB524866E916928FF7F9752A58E29F9@DM4PR11MB5248.namprd11.prod.outlook.com>
 <DM4PR11MB52486B936CD17F347D2B7070E2549@DM4PR11MB5248.namprd11.prod.outlook.com>
 <DM4PR11MB5248484CA0AF528B0B32AB2EE2549@DM4PR11MB5248.namprd11.prod.outlook.com>
 <c85e1e88ea721f74bb8e301aabd0f431906a308f.camel@intel.com>
 <CY5PR11MB6211953D90B432AFBF23588E95579@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CY5PR11MB6211953D90B432AFBF23588E95579@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY5PR16CA0013.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ1PR11MB6273:EE_
X-MS-Office365-Filtering-Correlation-Id: 04f65667-5544-4c14-abe4-08dab83b625d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xIu1wBkFS0iJdpv7Cqp1MBXjjCM5O31y0uSgZepW5RT1OozJDxbATDrSwk2/VuIvUQMf3JbJEosj3fA4XU/aqW4iRSA3arJdR3hiOBScASaaOMry8w6ozCZ8AxnFigzOuvkyKrgEMv28RxtFBQiodDwefq0UsUt6KK2/UPVDkrQkgWipzszZgG33//a+PsBlgKvJ4Iyz3VRn7kgBM5E/zibx9xEpJiWWn8Lay598mR1iH4wRXvIZ6OnGfWDMgaKdFxTeA6nf5eJh/FCpIuZZ3L0wzYJAZEctabC0bJmHRfU0md/16qmlaPhe84MhLXYkEotppje0ksSUldhFBx3KVprwzo+LwWqqxWZZrkgg431kATL4xhhK2u+Xiyu1d/3cKZuWGsv0uYJRMnbhnUXk0814eCa3jumdgQ9v3RNO20F7UdR6ns+Zzc94qVAcNU6dn8HLSDbzW6OvRd0byR5ML65sRYcOA8A9ohz9moTm1wFr7iJOcdAdUZjmY/CwJMwHSRiY3FgimN8BYU4eRIJKakUlqYlkZhXHwi5hhqYbzRyeWe523NICHqMsQ6ID4ood/vrp9BNU8j7faV272QCJpDfv2p5YRirQGiDYpu6vN8i74x7xhjmGOeRlJ21ULm6eQ2SxrGiYD0sxVGL9yZ0E+g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(136003)(376002)(366004)(346002)(451199015)(41300700001)(478600001)(6486002)(6506007)(53546011)(107886003)(6666004)(36756003)(66556008)(6636002)(37006003)(54906003)(316002)(4326008)(8676002)(66476007)(66946007)(38100700002)(82960400001)(86362001)(2616005)(26005)(6512007)(83380400001)(186003)(30864003)(44832011)(2906002)(5660300002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?LmNg6SMVQi41CFxGY3GBtIqzQ1VQyjS9o2CqMFfDNLcezfOBjtqJEbCmwi?=
 =?iso-8859-1?Q?y/K4fSVjNmqY+JI/HTfq7l3jvHD0KpSZLi0whD/SHwKente4NKqBL77nN9?=
 =?iso-8859-1?Q?wou52Vlc8hMvZ9lkyQBf420cFdzBgJIdB3PUZE0NWCUbkgTZ89QeiGlGBU?=
 =?iso-8859-1?Q?79AQApWkIKUpcRE9otULs+hMLFBvnDWERmCnhhyCIQIJYPfh1p2v/fSA+R?=
 =?iso-8859-1?Q?f0dIoUTCAOEJ3mv6k0yAr+H24udLUkpct0ntUwlIePEBK1aCRzwaPB7ukB?=
 =?iso-8859-1?Q?VFBl6Z15wDbIiVA9CQ/zBMFeDs63jGIsuI4CsHxb2k5pK9g0cYsVHZDlzN?=
 =?iso-8859-1?Q?Nhe2h0DGMCpK07HQa2k0+EZ662cPuOzFr7jtu9tzj6VMwQ7dj52WeSiTRU?=
 =?iso-8859-1?Q?MU2p2ja1/FvEBMESrq4I49kgWAOh8PUh1ckkBKES2te18fGLJzWrySA+BP?=
 =?iso-8859-1?Q?a/Itzsm44yj2+jPAIAJRdOkYCo+q/cgPcPU7yvAsDEXf8W3bNalQGIYhtA?=
 =?iso-8859-1?Q?FzQch8vyKEvVmYoibQpu6kiXb+lU2YwzKXSIDnR+nLZEEPLCBnJSRntFnz?=
 =?iso-8859-1?Q?JYNQ9PHMwTvZGoei5Pn5ql1nPlek/YWBLqhK8a15Y5DRE8AVz7BsAARR7z?=
 =?iso-8859-1?Q?ddFbsWPmIB+brPf8kaLNl1xU2sl/wSpaJmjJ+ZwSAPEmQqxsTk7mv1mAdh?=
 =?iso-8859-1?Q?o5n9+j+JseI+subLUUSOFfn6d9j/DCUEB5eB6ldfr8+PnzryFAEyDY3oaM?=
 =?iso-8859-1?Q?jbxQYf9DWM7PFutSB5UaDddmk5WoPLcUQ8UMaWJOgUxq1PoioW3M9gCMzN?=
 =?iso-8859-1?Q?MnQi4b2PDbp8YlJNQGcTz1HGPDw9LaCd/3eDDnxCBq9LoyCMppwPnzv/9J?=
 =?iso-8859-1?Q?x2tc2QIxV+ZD3SOpoiKPAsJXCO6qT3SVPVI+yXiYVijquiluUeA+Nc+aSM?=
 =?iso-8859-1?Q?WeaPHXWJIC4r9mWA7Mx4La5MHb9Absev95u7Kx+uxZn3BFicvBSTO6zqan?=
 =?iso-8859-1?Q?OPL2IuysyLEEQ2rjDBEDieILneBHy3Yknw0YO3CtKYm+9RnihLDD9dfWKr?=
 =?iso-8859-1?Q?4ahwkxh1kvLzcK9aqQst9D/TVKBkkjlbKMk9swG649d0HNRxN/rgef1BMs?=
 =?iso-8859-1?Q?6aCfpuPQmZxnn//09Fqw1ncPoXUBZ3ccHMQqlVK6qwuuzJHS8Lqi+n8/eU?=
 =?iso-8859-1?Q?NWSqgsw+RkIdyoMAyqFaYIMaTT4674nIVQgHJU1BZdWu798sszQsOZjZgz?=
 =?iso-8859-1?Q?1PJQH59rr7nslEibfw8kJFx5fSz5YBOB+y0RflSrOV54xLFSLCYAe43vvm?=
 =?iso-8859-1?Q?lts4PBO3zhVKZe9k59EOv4fiKxQnQmzmPi8RfJ2WmCKsD6lAr/ge0IZxhb?=
 =?iso-8859-1?Q?apNxfIfotqX4iICHcc0lNnlDhSvkt1Dr26z3ao8AV1TmVA26vQfrJyedXn?=
 =?iso-8859-1?Q?wSaBUIX6ovOypFfBNzAC9pFJ+tKC+FdOr69AojA1cuBE4xhJqwbSzuKNe7?=
 =?iso-8859-1?Q?IGM/xifzAYSw8H7WJ8zOHK1FZZV4GlkwOG+yrnO57736gtx1wP1LaLaUF2?=
 =?iso-8859-1?Q?I8gV3zNh4ySIaaDenbiT4/ps1nXN75JoDJDxmIkGgocqJ4+Tor+CeyjEDo?=
 =?iso-8859-1?Q?PPGAbbkp1IecohEXExeLnNN/Ka48fjCTafgmhYk4gs3OUYcVRLlWxh3Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04f65667-5544-4c14-abe4-08dab83b625d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 16:50:42.3295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fuf0zgPNn5wXTucORzb/PlK+VIP9OvJEEOcGk4J5yIMRJZc/RusJ753VTgY5NQcZPafLDOYHrO7lNYB3i367nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6273
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
 helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wilson, 
 Chris P" <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 29, 2022 at 05:56:36AM +0000, Gupta, Anshuman wrote:
> 
> Quoting Tilak.
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Wednesday, September 28, 2022 8:00 PM
> > To: Nikula, Jani <jani.nikula@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>; Tangudu, Tilak <tilak.tangudu@intel.com>
> > Cc: Wilson, Chris P <chris.p.wilson@intel.com>; Gupta, saurabhg
> > <saurabhg.gupta@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
> > 
> > On Wed, 2022-09-28 at 12:31 +0000, Tangudu, Tilak wrote:
> > > +
> > >
> > > > -----Original Message-----
> > > > From: Tangudu, Tilak
> > > > Sent: Wednesday, September 28, 2022 5:46 PM
> > > > To: Tangudu, Tilak <tilak.tangudu@intel.com>; Vivi, Rodrigo
> > > > <rodrigo.vivi@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> > > > Cc: Wilson, Chris P <Chris.P.Wilson@intel.com>; Gupta, saurabhg
> > > > <saurabhg.gupta@intel.com>; intel-gfx@lists.freedesktop.org
> > > > Subject: RE: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed helper
> > > >
> > > >  @Nikula, Jani,
> > > >
> > > > As you know we have reused i915_gem_backup_suspend,
> > > > i915_gem_suspend_late and i915_gem_resume in
> > > > runtime_pm_suspend/resume callbacks ,they use runtime pm helpers
> > > > (intel_runtime_pm_get/put).
> > > > These need to be avoided in callbacks as they lead to deadlock.
> > > >
> > > > This can be done in two ways
> > > > 1) push runtime pm helpers usage at higher level functions, Which
> > > > requires code refactoring
> AFAIK pushing runtime PM to higher level need to asses case by case,
> Moving runtime PM wakeref to higher level will also burn more power as
> Wakeref will be active for longer period.
> This has to be resolve case by case, as a simple rule of thumb we don't need any wakeref in suspend path.
> So refactoring based upon suspend specific function and general use function would be the correct approach.
> Rest Jani and Rodrigo can provide their input here.

Okay, I'm convinced now that the better path is to use the status.
But this patch needs some clean-up and split.

Hopefully we can get the runtime_is_transitioninig function in the
linux/pm_runtime.h directly later, but one way or another, this
part of the patch needs to be separated with the '-2' return.

And that one with a different explanation and probably some enums?!

> 
> Thanks,
> Anshuman Gupta.
>  
> > > > (https://patchwork.freedesktop.org/series/105427/#rev2    is
> > > > partially implemented following this)
> > > > 2) Add is_intel_rpm_allowed helper and avoid the runtime helpers
> > > > (https://patchwork.freedesktop.org/series/105427/#rev3 is completely
> > > > implemented following this)
> > > >
> > > > Hope I gave you the context,
> > > >
> > > > As per your review comment in rev2,  the below is implemented in
> > > > rev3
> > > >
> > > > """"""""""""""""""""""""
> > > > v2: Return -2 if runtime pm is not allowed in runtime_pm_get and
> > > > skip wakeref release in runtime_pm_put if wakeref value is -2. -
> > > > Jani N
> > > > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > > > """""""""""""""""""""""""
> > > >
> > > > Rodrigo and myself want to trigger a discussion, if 2) is a proper
> > > > approach or go with 1) which requires lot of code refactoring.
> > > > Or Is there any way we follow 1) with less code refactoring.?
> > > > Or Do you think there is any other proper approach ?
> > > >
> > > > (Please note rev3 is not clean, d3cold off support need to be
> > > > restricted to Headless clients for now , we see some Display related
> > > > warnings in headed case ).
> > 
> > I believe this warnings shows that the solution 2 has some flaws or corner
> > cases that we don't fully understand.
> > 
> > I honestly believe we need to go with option 1, moving the runtime_pm_
> > {get,put} to higher levels.
> > 
> > One way or another, we should not go partial here, but with full
> > implementation so we can see if we are really covered.
> > 
> > Jani, thoughts?
> > 
> > > >
> > > > Thanks
> > > > Tilak
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Tangudu, Tilak
> > > > > Sent: Thursday, August 4, 2022 11:03 AM
> > > > > To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > Cc: Nikula, Jani <jani.nikula@intel.com>; Wilson, Chris P
> > > > > <chris.p.wilson@intel.com>; Gupta, saurabhg
> > > > > <saurabhg.gupta@intel.com>; intel-gfx@lists.freedesktop.org
> > > > > Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Added
> > > > > is_intel_rpm_allowed helper
> > > > >
> > > > >
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > > > > Sent: Thursday, August 4, 2022 2:01 AM
> > > > > > To: Tangudu, Tilak <tilak.tangudu@intel.com>
> > > > > > Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> > > > > > <vinay.belgaumkar@intel.com>; Roper, Matthew D
> > > > > > <matthew.d.roper@intel.com>; Wilson, Chris P
> > > > > > <chris.p.wilson@intel.com>; Nikula, Jani
> > > > > > <jani.nikula@intel.com>; Gupta, saurabhg
> > > > > > <saurabhg.gupta@intel.com>; Gupta, Anshuman
> > > > > > <anshuman.gupta@intel.com>; Nilawar, Badal
> > > > > > <badal.nilawar@intel.com>; Deak, Imre <imre.deak@intel.com>;
> > > > > > Iddamsetty, Aravind <aravind.iddamsetty@intel.com>;
> > > > > > intel-gfx@lists.freedesktop.org
> > > > > > Subject: Re: [PATCH 1/8] drm/i915: Added is_intel_rpm_allowed
> > > > > > helper
> > > > > >
> > > > > > On Thu, Jul 21, 2022 at 03:29:48PM +0530,
> > > > > > tilak.tangudu@intel.com
> > > > wrote:
> > > > > > > From: Tilak Tangudu <tilak.tangudu@intel.com>
> > > > > > >
> > > > > > > Added is_intel_rpm_allowed function to query the runtime_pm
> > > > > > > status and disllow during suspending and resuming.
> > > > > >
> > > > > > >
> > > > > > > v2: Return -2 if runtime pm is not allowed in runtime_pm_get
> > > > > > > and skip wakeref release in runtime_pm_put if wakeref value is
> > > > > > > - 2. - Jani N
> > > > > >
> > > > > > Should we have some defines instead of the -#s?
> > > > > Ok will address this.
> > > > > >
> > > > > > > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/intel_runtime_pm.c | 23
> > > > > > ++++++++++++++++++++++-
> > > > > > > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> > > > > > >  2 files changed, 23 insertions(+), 1 deletion(-)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > > > > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > > > > index 6ed5786bcd29..704beeeb560b 100644
> > > > > > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > > > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > > > > > > @@ -113,7 +113,7 @@ static void
> > > > > > untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm
> > *rpm,
> > > > > > >         unsigned long flags, n;
> > > > > > >         bool found = false;
> > > > > > >
> > > > > > > -       if (unlikely(stack == -1))
> > > > > > > +       if (unlikely(stack == -1) || unlikely(stack == -2))
> > > > > > >                 return;
> > > > > > >
> > > > > > >         spin_lock_irqsave(&rpm->debug.lock, flags); @@ -320,6
> > > > > > > +320,21
> > > > > > @@
> > > > > > > untrack_all_intel_runtime_pm_wakerefs(struct intel_runtime_pm
> > > > > > > *rpm) }
> > > > > > >
> > > > > > >  #endif
> > > > > > > +static int intel_runtime_pm_status(struct intel_runtime_pm
> > > > > > > *rpm) {
> > > > > > > +       return rpm->kdev->power.runtime_status; }
> > > > > > > +
> > > > > > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm)
> > > > > >
> > > > > > why not static?
> > > > >  We need is_intel_rpm_allowed for rc6 helpers , the helpers use
> > > > > pm_runtime_get_sync, To avoid lock issue we need to use it here
> > > > > too.
> > > > >
> > > > > See this patch " drm/i915: Guard rc6 helpers with
> > > > > is_intel_rpm_allowed"
> > > > >
> > > > > >
> > > > > > > +{
> > > > > > > +       int rpm_status;
> > > > > > > +
> > > > > > > +       rpm_status = intel_runtime_pm_status(rpm);
> > > > > > > +       if (rpm_status == RPM_RESUMING
> > > > > >
> > > > > > I don't have a good feeling about this. If we are resuming we
> > > > > > shouldn't grab extra references... This seems a workaround for
> > > > > > the lock
> > > > > mess.
> > > > > >
> > > > > > > > > rpm_status == RPM_SUSPENDING)
> > > > > >
> > > > > > and when we are suspending and we call this function is because
> > > > > > we need to wake up, no?!
> > > > >
> > > > > As we have re-used i915_gem_backup_suspend,
> > i915_gem_suspend_late
> > > > and
> > > > > i915_gem_resume , These functions use runtime helpers, which in-
> > > > > turn call  runtime suspend/resume callbacks and leads to deadlock.
> > > > >  So, these helpers need to be avoided.  we have added
> > > > > is_intel_rpm_allowed and disallowed rpm callbacks with above
> > > > > condition during suspending and resuming  to avoid deadlock.
> > > > > >
> > > > > > > +               return false;
> > > > > > > +       else
> > > > > > > +               return true;
> > > > > > > +}
> > > > > > >
> > > > > > >  static void
> > > > > > >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool
> > > > > > > wakelock) @@ -354,6 +369,9 @@ static intel_wakeref_t
> > > > > > __intel_runtime_pm_get(struct intel_runtime_pm *rpm,
> > > > > > >
> > > > > > > runtime_pm);
> > > > > > >         int ret;
> > > > > > >
> > > > > > > +       if (!is_intel_rpm_allowed(rpm))
> > > > > > > +               return -2;
> > > > > > > +
> > > > > > >         ret = pm_runtime_get_sync(rpm->kdev);
> > > > > > >         drm_WARN_ONCE(&i915->drm, ret < 0,
> > > > > > >                       "pm_runtime_get_sync() failed: %d\n",
> > > > > > > ret); @@ -490,6
> > > > > > +508,9
> > > > > > > @@ static void __intel_runtime_pm_put(struct
> > intel_runtime_pm
> > > > > > > *rpm,
> > > > > > >
> > > > > > >         untrack_intel_runtime_pm_wakeref(rpm, wref);
> > > > > > >
> > > > > > > +       if (wref == -2)
> > > > > > > +               return;
> > > > > > > +
> > > > > > >         intel_runtime_pm_release(rpm, wakelock);
> > > > > > >
> > > > > > >         pm_runtime_mark_last_busy(kdev); diff --git
> > > > > > > a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > > > > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > > > > index d9160e3ff4af..99418c3a934a 100644
> > > > > > > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > > > > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > > > > > > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > > > > > > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > > > > > > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > > > > > > intel_runtime_pm *rpm);  void
> > > > > > > intel_runtime_pm_driver_release(struct
> > > > > > > intel_runtime_pm *rpm);
> > > > > > > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> > > > > >
> > > > > > if really need to export please follow the naming convention.\
> > > > >
> > > > > Ok will address this.
> > > > >
> > > > > -Tilak
> > > > > >
> > > > > > >
> > > > > > >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm
> > > > > > > *rpm); intel_wakeref_t intel_runtime_pm_get_if_in_use(struct
> > > > > > > intel_runtime_pm *rpm);
> > > > > > > --
> > > > > > > 2.25.1
> > > > > > >
> 
