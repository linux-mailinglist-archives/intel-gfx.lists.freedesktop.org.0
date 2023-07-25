Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FCC761D95
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 17:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53ADF10E0FC;
	Tue, 25 Jul 2023 15:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E4A10E0FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 15:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690299967; x=1721835967;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NnAvqR9y7Ug5w9mX3oNiuwnnacteRoD1ZUgCRbbGKKo=;
 b=kM9oiPIOt8NrZRuNQ/baJP/MkT57sCSwMKnOVs94TOdd9wkQx3HGpMIj
 9PKUH4c/bRVup8LbMxHzoc9LHhLa/I9982WHgWsfZGVxBF0p0K3bdJ0oh
 BlEU/I4x25uTi7WMZixvrPaGWyg/T566XpAaOmwmE8SFHvxnXGb6GTOD8
 ci24k68hfB/DxW5i1mxwsNFdUFTRIlQwIswY0DBBYZYIEhf0DqMYdgq34
 MLwnoG+Ax7f4NHyxbTaCLCPFWd0LWFzwv4ajbtlQNFIVj+RSmQFyS+l9F
 r+stJ6aDlMiqIpglF6crrkDBLcQeEJ2oTbf8467N6diKROoPORoWR4Mf6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="370437100"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="370437100"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:46:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="726155870"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="726155870"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 25 Jul 2023 08:46:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:46:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:46:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 08:46:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 08:46:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8vDDy7zsTwpBaAeRgRSqoikAV4Q3J5CKUOmPw+QxiebCSP3vR9HVcWWGyeM1urWBt2IYqq3icqfnSaEm2mJ+3pxwrrhR3P59E9xCQopZ8sg4Pui9DcbULXHtYqgfQDeXd+RYyrRSMKgsZ1SOtc5mUzAN7+TOB0uAywpQEC0l7szc2uxcPGWuqgDmLDgALBIBpcroRJlU9+oz6aZ9TjzRKImmX//Xf5ZmdiyeYxeyAh6vFUYXSBIP84VZaqFs6RYB8BjkIiNRA6qI5sL1S9qUM/K5Rd9yWfOglOJ6amrj8zH7QxF48V6HcYNdzkNvIJNy3ewsZoZyelnxYn8qPWkmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kH0TbzSyXqwrsgwj6DDQd3/6/5ENl+amVr98d0OS3+k=;
 b=d9nWqhgzkVkcIMHCPsSEPbfs6lRixaAwFfZ1a+nlqZEDDsd06Ym0ekpicxhc6tTZM5ofqqL+x5IqiAMX330Ujy+iFssI61ftJdCw5TNVVg/3WDMsLoYYILbw592v9N67EBXJFTmODSyjUMZp0Es5zxEyCSTXHOnHpQwOZswOyf89Ecb5/FdP4TNimx1SSB/xliIL5ffuvMxb97sMvJznH3xHA61ohMmjeNFSC3H/5lkRsrWH1pCEG0Hffv9cTOoi3Ui8+I+wOiY4TFcFXaAuohdA8DuUu99VXR1elGSRpxF1pwr69Ng3mn4E6JUAAAvnR/3I7yWBujH6Xa8/focVjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7648.namprd11.prod.outlook.com (2603:10b6:a03:4c3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.33; Tue, 25 Jul
 2023 15:45:58 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 15:45:58 +0000
Date: Tue, 25 Jul 2023 08:45:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20230725154555.GH138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-15-matthew.d.roper@intel.com>
 <ZL+eO0t6K8IRcsiD@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZL+eO0t6K8IRcsiD@ashyti-mobl2.lan>
X-ClientProxiedBy: BY3PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:a03:217::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7648:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ff809c5-ee43-4477-c573-08db8d263d70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AYgFTpEIxszw8DcS8evAtNrlPdaJYDhLj1EwBL0wiNGm4yPMUQsGY5WTt1V5uAzw6zJ27Hvg+F44LeKf4LUJ6WYsSI/mFMbTckDDqwLegaLnunZAgBeiYA51cUGEIFYW6l51blWX0K03VXxGMEOmc5y+9e1jCensyqg7c/pcIoBMthQKDP5E2A4XkrVP2sB2m61oJLsntBRh1AtXPXLyw+yEWEWIiEr7AeKC/9EY+ZxtKyWF69LZaV9Dl6kBSyM4rZb6HYj3ILa4vbSgpo00inbMvOsFyQ+gZ7A9W2oKXm8VK2I1n9kKFLFsbx0rfQOQ5E1bsIKOvxNXwGOC1qAx4xcI2rXZaCi5bkHGwOgAv7H5NOl+ceO4JlhqBioFr7OT74xBNBgj4qxudVXDcjuR2CHb3cbmmdWny8bSeWCbGeZRK5kOxYlpx2Huu1agz2vG09Ihzg5KWbSms/22rTF6eyRKNuVxgrAXKH6bxvK2yQ2hC/vi5rBsfZsFTrOQrCmbV+578oxws/6ZqGYJImFNBXzl7dlb+z8EZF3ztg6dV3mM6ffen7mg06nQVvSurwLk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(396003)(346002)(39860400002)(451199021)(66946007)(66476007)(66556008)(82960400001)(38100700002)(33656002)(86362001)(41300700001)(5660300002)(8936002)(8676002)(6512007)(6486002)(478600001)(316002)(6916009)(4326008)(2906002)(6666004)(186003)(6506007)(26005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/A6hlAW4y++PI5RpsBpZxRuqUsEiG9OgKaX7znF9kNc99Fx4QPPArbArlY9l?=
 =?us-ascii?Q?CK/sA0KIpGgJeLfIC1XKO85MMF/7NcYNtz0k8B89b3A2gvsb9EmEmGuvw+oi?=
 =?us-ascii?Q?r6oDIWv+LB+o8q74+m1Jgz2szVzPcQJOWgxYvERzcXIuxGU9dfnIy7Ewc4bP?=
 =?us-ascii?Q?DSUssYI+dDkci0S5GCX9/N8U1pi5D1NKi9A372A3gQJAWHetDl90tqdgzEAM?=
 =?us-ascii?Q?1BHeoWzl7TEILyhcswXrUYjuYErO2rhkZ6/aKydSBy/xVNjkhCvYL8eJ7IqW?=
 =?us-ascii?Q?ZNKiy27lQmBHhFjf11NeuS5vOmvyR1myM1EdZpjNN9nqZe/Z0oDAJli1VayA?=
 =?us-ascii?Q?5oXCUkJ1JOlTuQmMODnd6npoZ+d6bOsP+hQZ2FaPKc7/AB2nKYe3nChkMatv?=
 =?us-ascii?Q?2fBznSU0On1GVvgVRhEA7mB5eWxEmDtfrPoaUQV955p5EBy+u5eC3DGShzEL?=
 =?us-ascii?Q?QlTPC2x0lpKBPvZqHLn7LaV8EPcqa/NCbdciEmkAg064s2Zs2naNiB0Fa7Mj?=
 =?us-ascii?Q?TWbktepwJ69REP3CdzUNns7GHmIF38g3hxZcvJ4CAEezTE7dEZ/Y5dQNmF4V?=
 =?us-ascii?Q?YLZgVlfvn2aj82rxKf6YQVX4St6YgpxCD2ZCVrN77g7XNCsjpiDmecVbb8Ab?=
 =?us-ascii?Q?Kt8ZEQ0j9bmltHzhwD4pWkIXOVlludn9uea7Ajy1zYewjNyoGMufgVbiyHWh?=
 =?us-ascii?Q?GpiZDHUwLMLGuIg/KLWQnMS6THIl0PdrtV2PkHEgYL7XZmPZZIooHHn7iCKO?=
 =?us-ascii?Q?JZKZhsKU+yhvaNCoqaKLBypZ3JPmBR7fs6Cuf6Ujtkc7F7etfLIQPdQZ/vaw?=
 =?us-ascii?Q?/5zCJCbeA9j/mV834WnU15oMMJQIPUdSOxT8cF9X9fKAlfXpA558QfDh18lk?=
 =?us-ascii?Q?hcU1ZU+TpWFTPUjk3TdKEfCdGzqcfLnf9vkvJFquaF8t/YX1lmgN6mmuZhP0?=
 =?us-ascii?Q?H+FK3TH017bcfK+dmeXv2S/AIKvaGYZyNFEEaJj71OnGfwvWR4Z3y53gC5MY?=
 =?us-ascii?Q?SDjMSSqUgtF2iRuZsgA75scFjrK/0NUfG21n2Gy20jJfH7VLign9Kc+zzFB2?=
 =?us-ascii?Q?4IGmLY50VA1SDM2SZSYw6ZpPKWaOtvSguhAgMLEp3sB4gvs1z4Btdz4/f5UN?=
 =?us-ascii?Q?BXarBbqazKQZws/t1cVaIf87BR4OrQzeSci1PUzfmwqqY8dwwoX97n/gwOMP?=
 =?us-ascii?Q?OG1nRJ1bEwS/mE3bePe7irI/AW2RaKTaTS7sgeb00asOJCZfoHP8SwBQ+jup?=
 =?us-ascii?Q?xzDwEKC1GX4Uk9Ij3sT/fQ6OwyjRxQOHn0Q7+Ss9bqKXBWOCMF55KE5ZJI/y?=
 =?us-ascii?Q?n7OqwNTLWqtoDCUGUFdsBIIczY6WGawv6sUgrIJ1WBprBK59wgc0MSZiEcw5?=
 =?us-ascii?Q?Id3tlQCAmcZ4zhx77SBQa90P4npf1IbK2CynSF2zqZBhlhpC+YdUg+9y2VDq?=
 =?us-ascii?Q?sOVCnEh23b61551JqBhWOdP2USHfKy2RRvu3Ikg6utZsfsrZn6zsJeWHWqYa?=
 =?us-ascii?Q?VPEo+DCe8QE8yQ8AqMruV9Yi0zn+Gn+JZWk7o3CjCsgTPCSH93yLAMBBaCo3?=
 =?us-ascii?Q?e6iBT3r2UpcRMH6WEsm2EWR7jLK7VU5j+Ha/Gw7ffzzTdA42ITHOSxcQ9hlT?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff809c5-ee43-4477-c573-08db8d263d70
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 15:45:58.3362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sZBXQTDBVjizM9yorOxUtwCbWwd0RCKStTxyImiMFF2pN2FPfcXMlhvwW+YmNC8QaYqLeld/lLSDbVA2Wv+MN9hWpJyd6Syo76XyAm/8jpc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7648
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Eliminate
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

On Tue, Jul 25, 2023 at 12:04:43PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -436,6 +436,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> >  #define __GT_VER_FULL(gt) (__IS_MEDIA_GT(gt) ? \
> >  			   MEDIA_VER_FULL((gt)->i915) : \
> >  			   GRAPHICS_VER_FULL((gt)->i915))
> > +#define __GT_STEP(gt) (__IS_MEDIA_GT(gt) ? \
> > +		       INTEL_MEDIA_STEP((gt)->i915) : \
> > +		       INTEL_GRAPHICS_STEP((gt)->i915))
> >  
> >  /*
> >   * Check that a GT contains IP of the specified type and within the specified
> > @@ -454,6 +457,29 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
> >  	 __GT_VER_FULL(gt) >= (from) && \
> >  	 __GT_VER_FULL(gt) <= (until)))
> >  
> > +/*
> > + * Check whether a GT contains the specific IP version and a stepping within
> > + * the specified range [from, until).  The lower stepping bound is inclusive,
> > + * the upper bound is exclusive (corresponding to the first hardware stepping
> > + * at when the workaround is no longer needed).  E.g.,
> > + *
> > + *    IS_GT_IP_STEP(GFX, IP_VER(12, 70), A0, B0)
> > + *    IS_GT_IP_STEP(MEDIA, IP_VER(13, 00), B1, D0)
> > + *    IS_GT_IP_STEP(GFX, IP_VER(12, 71), B1, FOREVER)
> > + *
> > + * "FOREVER" can be passed as the upper stepping bound for workarounds that
> > + * have no upper bound on steppings of the specified IP version.
> > + *
> > + * Note that media version checks with this macro will only work on platforms
> > + * with standalone media design (i.e., media version 13 and higher).
> > + */
> > +#define IS_GT_IP_STEP(type, gt, ipver, since, until) \
> > +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> > +	 (__IS_##type##_GT(gt) && \
> > +	  __GT_VER_FULL(gt) == ipver && \
> > +	  __GT_STEP(gt) >= STEP_##since && \
> > +	  __GT_STEP(gt) <= STEP_##until))
> > +
> 
> Should this go in intel_gt.h?
> 
> >  #define MEDIA_VER(i915)			(RUNTIME_INFO(i915)->media.ip.ver)
> >  #define MEDIA_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->media.ip.ver, \
> >  					       RUNTIME_INFO(i915)->media.ip.rel)
> > @@ -710,10 +736,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> >  
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > -
> 
> For completeness I would either leave this or remove all the
> above. Or I would make this a wrapper around IS_GT_IP_STEP() with
> a compile error if we are outside the MTL range.

If we leave this, then someone might try to use it in future patches.
Every single place this macro gets used will always be a driver bug,
which is the motivation for killing it off.

In contast, the ones for older platforms are correct and should remain.
Before the hardware switched to the disaggretated IP design, steppings
for each IP were directly tied to the base platform rather than the IP
version, and we inferred from the PCI revid.


Matt

> 
> Andi
> 
> >  #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> > -- 
> > 2.41.0

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
