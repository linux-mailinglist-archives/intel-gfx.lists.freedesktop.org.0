Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE627272DD
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 01:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0888D10E571;
	Wed,  7 Jun 2023 23:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF76810E573
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 23:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686180131; x=1717716131;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6DLkZyua7RRFhJRoNL2ZnJSHVhc8wzY0Cuzak6vyWy8=;
 b=fuzpNmY07yltDc2Zs7dUb2d/B5sq68aRuOOhVC5PKv/uicsDIYQ5iSJf
 ma17ga7WWb9Pm438Age5GOOqRUUsPhgrXVVVNpLbE4EKQCiDU4IW6aWjh
 t4C02OeUB6DWWKpKzSu8clhh5tvfXZShHo88/j6/KUiDeF+FwVPDTm+bk
 pUytLHM3xj6Z+R/nSb6Y87UjT39nvdGV4Vcl1wS/GfUkkAtfyCv+Lnedt
 cd3DWW51v/FrsaKFQ6hXJD+rLU9/LhkIvhxOxUF3o5mcrDHM8KdhE0+d6
 UYRpM+3AvZeUUkX5GIISnyH03GOctsOH0sPvDFoAHebem9NANt6I3rrcn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="354628786"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="354628786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 16:22:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="739459142"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="739459142"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 07 Jun 2023 16:22:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 16:21:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 16:21:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 16:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DUhY3BP8Z7zEfxB0lOVOCuMdc4eLkGtKXiSkWSPYauJoFJlwXCOttYB276ib98t3WZgGUWuM+KoCHVfRbCKV1ZBGifMDMyAckk5PmG5LB6u4eqDQ/NYXxpFkzVvSQLAJLM1rQlyAR2kPYsM2Ewfcfn4vms3TuC6P/K0z6A5niFuHfvlUe4WyoiIxHydI54x+Sl0hENOnl0qs9xk4o2HgWIcEBwmyTsPe99/9zVMrxV2hki39kOcf5F9BC7xFJS2VZeNMvIHAbV4NNUrP7Sg7NLbUswz0cjinZ/Z5l+322Z9Wr7tgu8rgs5FZuBqrbtzIBZqqDAnKymPTTp4GMtZKjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aNrEzeGP9W+cNqEu/+0BZveGlnM1hrC8mkjKjxxQn10=;
 b=XNAKUwNwnWHO3MxTGPZ+FmEcu/BydTuWcqkv2WDTQyIeuJPBifRgxE1GaapDlHAUrcqbox5BnItzvJU1EG/S/PFBFl9JY76r02hCPq9Q7M598znMxS6uaE8m4pW7pR1yvPRPGHe6BPL71DjP2CjIc3+o9p/5TTpk/8OXQayv+Wq78UObfAj7e9mwPStfdx8aGFMy3ZzuWXyQ0xVFqnAdVA/Z7xXQRPuaPou32zHWL4MT9UnwS1HzTQw+CiZpPeVMsp0Y6n3r4+c++cXHbUVWsqG+4436dAgrNgkMDk9XFsLvPBDHyImDmfKTgHq3BFDm6yDBupWGPb4LFzHtmwd54w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB6905.namprd11.prod.outlook.com (2603:10b6:510:201::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Wed, 7 Jun 2023 23:21:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 23:21:55 +0000
Date: Wed, 7 Jun 2023 16:21:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230607232152.GW6953@mdroper-desk1.amr.corp.intel.com>
References: <20230607150946.1996087-1-matthew.d.roper@intel.com>
 <878rcvteci.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <878rcvteci.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0056.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB6905:EE_
X-MS-Office365-Filtering-Correlation-Id: bcd30882-9f70-4a4b-8247-08db67adfb66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cw9Ed4eRYXOyZyUBKEH8JpjA8rEU+/08nFOsKblf2w5asgO0VRtNFhnkPhZ3PxF8Sq/RYb6WNQLd35U0rXG1GWR+btM19A6BtLTKQxKPDcOYReZZjm7GA4B+13fIhXSYwHrswKH5M1Ah5ucR3zvIgsVnW9dGYmWQoYdLVUi8gQepJVe0mjPh+m76yW+V0buHMiL5E0VKpEYuDGBIoFGT4m0cbHHZbDZyX1XAJ8ID2xqFUkdBOYmZEAVIaNcRGm2WAIus7VU6EuyxGiI73+lr2qJvr45yHMAhhYXZuGG0kc787fISORge/2q8snEwsMLcaMuKGiWuzBku0SSvZk1gqblp+A7G0U0cXwliZ0yIiuCr1PuR/YaIOovoqEXRwBMihfVOacBs6x5tKtC91iGAJFUWiBmruVEADaWD6YnCaReAiSRM8pBBSsiSLBTHl4foh+my85lLUgT9C66YTUSNCaZGSH/s2Hk/Jd7SCYq5KlFF7dyuncx8zJr+Ez2P4lu169erjAu88MWsp2lQ9C0rXVJbzepW64JRU+j3pUw0X1CpxQVnHN1+1Bs7BvNE2Fr9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(376002)(39860400002)(136003)(451199021)(478600001)(6666004)(66946007)(8936002)(38100700002)(6916009)(316002)(66556008)(41300700001)(66476007)(4326008)(8676002)(6486002)(83380400001)(186003)(82960400001)(6506007)(1076003)(6512007)(26005)(33656002)(86362001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2CzX5J2NHRpkQXrr7OqAEQwHRW3GTDTwFDxAxpHxwFDDpI9OWOzOAbSWsp1n?=
 =?us-ascii?Q?KpfVbUSvicbQTrXJYldyrHbXUKkd/x8WTy7Aa8h9hUN7CMcR4qh2rszRDGb6?=
 =?us-ascii?Q?HDqF+L6kWmOsT8vhNN5GD9Im1xoN1rJGgI4Q62Os9Ot+4iy5QSqnauii8SLJ?=
 =?us-ascii?Q?5YtRpYsw9VM2dMDrb75SoV5+v/yb5anT1V0v0WwETGv5898mzI1MbjqrVvQp?=
 =?us-ascii?Q?EQYxNrMduSQ3vpUYV6XVajcRICaP+UDMUk51zUSZzJeZnTNNlNRzsT1CUApJ?=
 =?us-ascii?Q?OtIYtJ7wGni+p97PP1BJbmV9NFyZHsexhfMevBYrB7ly4xrdKH4hMBb7Ub+J?=
 =?us-ascii?Q?O9zH6+tMPhHlFefeWBRsmeL38QLv/u0kg82GBBwdr/tDKGhOy2emYFHKpTcl?=
 =?us-ascii?Q?ew6yO1Tb458b4ubCMFJLdNJPrpKFLbgvsSxhCUdaJ4P+toJKRr+wvd7thYnu?=
 =?us-ascii?Q?zSbQabJErPpFreV/edPx8jmOYUXzwNpdHNyi/4MlCqN4cgPLWq3rHX0Brnc9?=
 =?us-ascii?Q?J8BvfELFKa5NEgmOpDWvMKWWPzeEzBeZDqkciAPT/Q818mzp7vkyf1xjZQEZ?=
 =?us-ascii?Q?tzasY0GJ7DxVBEkSblnfHl0ZwkwEB+k/L/jxFi2WBIlSxKPze/T8fXFoKhSn?=
 =?us-ascii?Q?W1brHmNw+XZAFZXJ5pn2VmlngMKQSWtJ6TsoZcLQ4v5MFiIOFhHJxgGvTBGe?=
 =?us-ascii?Q?3IAeCOsvpbvdLfDZbT/AuFON9PbCJBSa1PzjUt+Mj/zhS7ZAuM1gqhOa4kJn?=
 =?us-ascii?Q?xt+0ajs9r/3bTBs97b8uu7WSfk6zMu3vKJG3M7t0ego+nFM2Zk+8rGVvALsD?=
 =?us-ascii?Q?VVsOVIQhtvTSwtdL3V9ot/15N9ErQjQE9hOzPooZh0jCr1hDsNKaJe/4Cyoz?=
 =?us-ascii?Q?0BTTy1Rhj1fHDJdfQYQ+dNMynxoTFZ8VsZDNFTRg6OnhnWgxqGDO/r4GAc+m?=
 =?us-ascii?Q?mXjvC6j8BGfH9eQoZ8KwBfwyMF0DMwgAOE9khVgYY8wXGr2nSDAbbrgaU5n5?=
 =?us-ascii?Q?0S5DYw20QB+piH/kh/GRARmhDi53uaSEZWdGvvkkdT2aLUIcqusbL/wIg1an?=
 =?us-ascii?Q?DQ9a7x0M+Aq2UfesgeNU0Z2aHFRgLGPpuvXihniM7OigmF9v2gbS5Af0k0aT?=
 =?us-ascii?Q?6m+QBZzDTSVL4yzOYQs0hGyropXeSIwNRfOC7NQ4lF3x0AD0qSBV6WoLhRAD?=
 =?us-ascii?Q?ooSItVAPbw2dBWt2dCG6bExEU7LBiyRFoZuFfT6VshHEF92GNZmpn/d1rhue?=
 =?us-ascii?Q?yO14FRexUICTfrTIvgpQKC/WeRxO+UVGrgkO4bU04W+Qo5lc38g9r/gwEuIg?=
 =?us-ascii?Q?2ea9B+3Iw2OLHI/O/tox4DDu6gvklYQGJW3gyBXpJXetT7OQsmuce0mCMid6?=
 =?us-ascii?Q?RW1K1vtvpBYlFwmzOj1neQPCtPowb1ndoe3hTcAEluEiltUNLRbgAolViUOp?=
 =?us-ascii?Q?DErGYfK+rqqV3M2q8m3vo203u6aywbWDNMZk2T9lI1BeZ9Hq6WFanw38219s?=
 =?us-ascii?Q?3pMCMbkdOtopukYltlr6p2Woh8jMLMcJcuzKNhbNwbGpkKkTNRCbg7b9cnNJ?=
 =?us-ascii?Q?ufyYFrmBgWT3DP/buW1UqAOxN40pNKPwUDtwwhYF70jlucrVx27OLvdcC+Ll?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd30882-9f70-4a4b-8247-08db67adfb66
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 23:21:55.2216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IkjeUkeVrThERS6o+EBWaGJpHuzRIhv885BBiAhYvuCzow4NOzZLA91CqjIJtGqbcr2FQSqlxbBoyied1lWZFKeKnpW9GMncoVlmlMZOu7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Include of display limits
 doesn't need 'display/'
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

On Wed, Jun 07, 2023 at 07:41:01PM +0300, Jani Nikula wrote:
> On Wed, 07 Jun 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > Drop the unnecessary directory prefix.  This also makes
> > intel_display_device.h easier to use from the Xe driver.
> >
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Applied to drm-intel-next.  Thanks for the review.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 4f931258d81d..706ff2aa1f55 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -8,7 +8,7 @@
> >  
> >  #include <linux/types.h>
> >  
> > -#include "display/intel_display_limits.h"
> > +#include "intel_display_limits.h"
> >  
> >  struct drm_i915_private;
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
