Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A873A817A8A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 20:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADED489D30;
	Mon, 18 Dec 2023 19:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF8EB89D30
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 19:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702926251; x=1734462251;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=caPsIZPrTZ3DF/zg2oZLywdTBeLCB2Z9u1bw8N+X/j8=;
 b=XICYWCGlGJLVOAP5Z/VsDRQICOYFm1CpnLe7VwfEfU6IaqUoOHmCcEJQ
 UXcFJq/+DvH8Q1OIrVTHcCmYngBbdezGbLSNrPooXd0OIWxfiWh7nRD/b
 KvKexcD7Fak3tbY92wfkb+lVHVzoCy4xZF+4g1aJAueKHhZTPvznddI2d
 sPkHD2XkLxnaHI1GjDyr3woZ6XbMwDlsuLBiNQUoxN4cOSRNFKZBjvqYX
 SfSCd3Z5zZ0cBZZhT8wWVoV/w3gzFUy1rTab2QwHhmVddAeVoTp0+KnAC
 HSE/RyMsDKIWI4WnmTAu2gpiX/rnkExvh5ZmmHs/tRsByLZxX9I1i/h24 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="14209825"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="14209825"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 07:54:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="768877676"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="768877676"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 07:54:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 07:54:45 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 07:54:45 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 07:54:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 07:54:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xd4FNl+tEkS/wVFdZ2e6Q/uiyo26UI3234L5eSh8FeI5tXrSkAlLT7ZN/7bLMRh27uOaJeg/7rWw3CHy+Hrcye34r/ncMIzCX7wSifL/tpGoyaTH+RT4kCKGXmtigW8ohMWIcFHL9pd5bTnwuwUyKfx14eGBNzCE823sqdF/wa7fR3k73jdQ2qa9B6magD/vpX8Jj4C07vpRZG+4+gedkqfCvMxRaS7vFQZiYGrgzebji8TXFpmsPiK9+1kt5jEycJuPvTcvNe1d+tjC4b8QTiQoHWwSujlmxsnWeJW70dHO5BCGMMfJ82OGEN7AqHF2zi2oABL1C8YW8tQDszOryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1NEKDWkguFhK0dQsM/YUtAgBMx0aySK9mBZBrJMkCWA=;
 b=kBwUm6SCgfO53sPNtnddwYbO9R5xi8s60hFrsYUHs3Q4tf/qmIVX8Z5fyU0aVzokIZHsIGdreYl0ueN8ZEut/m0+I+9a08Pk1GfXOH1CdrfhrAg2C7kmkhAm5epM2ywQjBYpcuEoUVaX1jkJY115FyfEawmQM8DbCjcrCqACJ43bRM+i/yEJsXbV6YzC/myHjTyFVx+GAltba3MKWzToVxfQa41vZlbJNduqv9UxyVorlBF8dwyqTTujR1fBM040n1w9M4ZtmrTxwFfXVPhSEzUa2/QhecBNb4ns6ITPHdAMmLkIzBQNIgarAMdxupbKRjxH6Ii0WYuG7+KnPxEDRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB5344.namprd11.prod.outlook.com (2603:10b6:5:393::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 15:54:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 15:54:40 +0000
Date: Mon, 18 Dec 2023 07:54:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH] drm/i915/xelpg: Add fake PCH for xelpg
Message-ID: <20231218155437.GD1885854@mdroper-desk1.amr.corp.intel.com>
References: <20231218110313.1233745-1-haridhar.kalvala@intel.com>
 <20231218155204.GC1885854@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231218155204.GC1885854@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR01CA0024.prod.exchangelabs.com (2603:10b6:a02:80::37)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB5344:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ec381d3-6575-4599-dd9a-08dbffe1a4ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nabr1gxZSyo+lUuQMbqjVyldcKM4JjOqbcqllw75KHK2bKxl4Z1loYl2B+CbqEHsXBk0F+vIZ1bTQOPzc0f0H1g8dc4zK36yf68U9xqdT91M/ekmpMRyXLMzYnYQa0dJIZnhLRy3avAO8/31kLvzMfhtUU8S5ubPcY2tBwK+lgnVe/gsQFY69WHjp2xfkjbYMT0KSrAukL79Xh/KHbWigWoCnu6TEWEYf0kphwfki/vB0yrNg6mAZuOZ7MZI5dMOUP9v7Q7RAamRO7O6BKaKilXEueAJcEmgJtTzIQOw4aXvcXwdpCXwhlzDQjApUdDhRG2IujPiRU0g/1GckDl9XsIDCEHbS3cjaYzw826NUrWZoKMjJxktaO25BedWyL5C6RQs2SNg4wr0hpJlUjQHE2GJZhsTu90ztNCavWdmZQcR/eobsfE6Hq1GFv3/yB6ndEvPCyvs7nr2yQzTBx+6YVaIM1mDgI47rsLAmw+YR5IcbtdLx91BaQjkT/NKHcS+4jlqFkRvDO4v1+tNqH+jyVxw31fwa2AW19lz/0qI9xEIF9FDQjeHYnEabO3i2faWUvKt2nB/LEabzpNGp8mf78hArGvoaFBQVbq6rbI39DOz4XSZsAPFWF2MVGUvCf3M
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(1076003)(26005)(82960400001)(33656002)(86362001)(38100700002)(83380400001)(5660300002)(30864003)(6512007)(6506007)(6666004)(6862004)(8936002)(8676002)(66946007)(66556008)(6636002)(4326008)(66476007)(6486002)(316002)(2906002)(41300700001)(478600001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mkr6oZhoJT8V9blNSmCgvqUXu/YV5IC6HHIBA034oyomgsX14p9VVe4YJ+CF?=
 =?us-ascii?Q?24xMGuvOJWv+M1kgU/y00XzL5WbJXlVvdMl97RDMIAiO8L7gFAEwS2fxhkEh?=
 =?us-ascii?Q?fR37+gUssF4U+9RJ2kAbxA7XzKtp+YX8mRDW1Zmu5K4F779cjCat0rDt6TBl?=
 =?us-ascii?Q?vbM+GCXKit/G/vr3nnVDv+R94wnAm0mA6p+PuOrdraquLJcop/d3/8dA1Z7n?=
 =?us-ascii?Q?YIeA2ZV+mp74W4eML1WUs/GSaRSloshwAArGTpgcQpXsfoTN8x4Z2qRh3yh7?=
 =?us-ascii?Q?+ADAz65peA6psiZ30i/bjnTg5v1G8I0H2L4tiyms0qHNBjDv+4XCtsSDFGSM?=
 =?us-ascii?Q?vNikv09QAd83PZ33x+yVyg/ouTAwSDVJ/Aq99Vkh6PYaw/jVyo75gqsHlPu+?=
 =?us-ascii?Q?nkCJZ1gYfo+5GabE2SLDpBDXunozWaTGw05AQjaTGaGtfmwFvGOSMiGHePcf?=
 =?us-ascii?Q?Wqmi5vWFixEl6tqFv2cO/oPuxw405OwAGx3lDTgcbmTLd6fyKM6i7wICr9dT?=
 =?us-ascii?Q?Z4ZISWGYlIX/IBNJop5n87YgH7lp6uCP4JvgRByyDabeMFPnCb/7HH04cW8D?=
 =?us-ascii?Q?vO8J9J9HXQPYSKgD9tWPjF9JwVQwlkFdhwrs09ZOe8WFButpaqQZm6wsL4G5?=
 =?us-ascii?Q?jo8yf7ryyqJFvwKrSELBlPrgyduiJZJ5+p0O6/4mZLmNuYr01ZvsFPcGyTYd?=
 =?us-ascii?Q?dyY/UWZSdtlWbPsCssaz19X7WTpEvDqFANlb8ZSssxvv1gbc7Cx89QMgMck1?=
 =?us-ascii?Q?4QlNTsY/vwheKIeLyu7rMCwnvWa9TbZLK87l4Q4PinomQy++b/dEQrxXvUeh?=
 =?us-ascii?Q?AVHdXrUYll/mdCVOyJ+XDIPdMnShUVfvbOYta50LsLAiisvXQBB/EZMfT8ks?=
 =?us-ascii?Q?Y2vJdv6/f/qfvkwYMGykqWLXo+NpAqvH1iTwjszdeWoyxGFXpouRFREZDJ70?=
 =?us-ascii?Q?EOehkXGc9rUow8YO9mgSCp0h2r9xV/6kGOthGvx9IzdEycN4ciLNRTob8Jni?=
 =?us-ascii?Q?4Npk2nH/H+3XYKWPaq+B3QjdXDVJP+4JUIPOhsDHcr6+T5jKJrHEwV49NN1o?=
 =?us-ascii?Q?y7xPUTDBjhnAzEKX3rryOe/jancnh3hKI74ki3GPdK4XUxhrToGzKCZqnVIq?=
 =?us-ascii?Q?WkVfTMtJ8Q9Cv8aAbatk+eIU+VLR6VwlkzHQI21P+dLZ7TE/mVuuu8zo0+xg?=
 =?us-ascii?Q?mGLL5IiH9XvdhPXjQ6rgGmmrjQEtzeYoFu7g11Gcimloltn04zS6HOWd2O4z?=
 =?us-ascii?Q?qjjT9+h5RuMnYeCTuY1oLZLeqHq3anSJ6/cUeAgODoBlhlnQy+vP5e5LfsJX?=
 =?us-ascii?Q?1m93FDdLE1UpqGeDUVj/nYKYPPIZVPpBbmMqIfcNJHofz/kV8GUs5huKE6hu?=
 =?us-ascii?Q?5+4yOdp1j4b26GBMu/ZJZKnX9yy6AEElCUKAlgsAvRFwqd8vkp5pB5W4EcId?=
 =?us-ascii?Q?KECiTWwgk6JdyEwcH6M90lfYe1sBOKpQaFrTBXpgxAvKCWs3bDGjkQy68rGj?=
 =?us-ascii?Q?ngQZx+i37L4JtQeTYPbChhWtWgwszBvyEC4YNrZKwu7IuowN1uvz+Ty4HZeI?=
 =?us-ascii?Q?qHlS6wok172/r1KU2DSfgFO41rm4VWp1o5t0BPJK4VV74luJPmcz1Yw1Paty?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ec381d3-6575-4599-dd9a-08dbffe1a4ce
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 15:54:40.2418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3l1WcyKzoIh8OJ9oGQv45OI5q39a5ztusNlp3FyvRV3nQn225quRhaIn8SQsjnXD+lFCNN0FZAfRNnZ8O07C6M4ICBBREzyxrrW1FqiMls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5344
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Oh, and one more thing I forgot to mention before hitting send...the
title for this patch doesn't make sense.  Xe_LPG is the graphics IP used
by MTL; that's completely unrelated to the display IP (which is
Xe_LPD+).

Since we're assigning the fake PCH value based off the platform
(IS_METEORLAKE) rather than the display version, this should just be
"drm/i915/mtl: Add fake PCH for Meteor Lake"


Matt

On Mon, Dec 18, 2023 at 07:52:12AM -0800, Matt Roper wrote:
> On Mon, Dec 18, 2023 at 04:33:13PM +0530, Haridhar Kalvala wrote:
> > Correct the implementation trying to detect MTL PCH with
> > the MTL fake PCH id.
> > 
> > On MTL, both the North Display (NDE) and South Display (SDE) functionality
> > reside on the same die (the SoC die in this case), unlike many past
> > platforms where the SDE was on a separate PCH die. The code is (badly)
> > structured today in a way that assumes the SDE is always on the PCH for
> > modern platforms, so on platforms where we don't actually need to identify
> > the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
> > MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
> > us to avoid restructuring a bunch of the code.we've been assigning a
> > "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
> > of the code.
> > 
> > Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_gmbus.c       |  6 ++----
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  7 +++----
> >  drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
> >  drivers/gpu/drm/i915/soc/intel_pch.c             | 12 +++++++-----
> >  drivers/gpu/drm/i915/soc/intel_pch.h             |  4 ++--
> >  8 files changed, 18 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index 612d4cd9dacb..696ae59874a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
> >  
> >  	if (controller == 1 &&
> >  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> > -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> > +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
> >  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
> >  
> >  	return true;
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index c985ebb6831a..2e6e55d3e885 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
> >  
> >  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> >  		freq = dg1_rawclk(dev_priv);
> > -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> > +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
> >  		/*
> >  		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
> >  		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index a7d8f3fc98de..e318e24d1efd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
> >  	 * their flags both in the PICA and SDE IIR.
> >  	 */
> >  	if (*pch_iir & SDE_PICAINTERRUPT) {
> > -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
> > +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <= PCH_ADP);
> >  
> >  		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
> >  		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
> > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > index 40d7b6f3f489..2d9c740ba17e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > @@ -155,7 +155,8 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
> >  	const struct gmbus_pin *pins;
> >  	size_t size;
> >  
> > -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> > +	if ((INTEL_PCH_TYPE(i915) >= PCH_LNL) ||
> > +	    (INTEL_PCH_TYPE(i915) >= PCH_MTL)) {
> 
> You only need the MTL condition here.  The LNL check becomes redundant.
> 
> >  		pins = gmbus_pins_mtp;
> >  		size = ARRAY_SIZE(gmbus_pins_mtp);
> >  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> > @@ -164,9 +165,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
> >  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
> >  		pins = gmbus_pins_dg1;
> >  		size = ARRAY_SIZE(gmbus_pins_dg1);
> > -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
> > -		pins = gmbus_pins_mtp;
> > -		size = ARRAY_SIZE(gmbus_pins_mtp);
> >  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
> >  		pins = gmbus_pins_icp;
> >  		size = ARRAY_SIZE(gmbus_pins_icp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index 04f62f27ad74..63f697383bf3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -163,12 +163,11 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> >  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
> >  		return;
> >  
> > -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> > +	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_LNL) ||
> > +	    (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL))
> 
> Ditto
> 
> >  		hpd->pch_hpd = hpd_mtp;
> >  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> >  		hpd->pch_hpd = hpd_sde_dg1;
> > -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> > -		hpd->pch_hpd = hpd_mtp;
> >  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> >  		hpd->pch_hpd = hpd_icp;
> >  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> > @@ -1139,7 +1138,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
> >  
> >  	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
> >  		xe2lpd_sde_hpd_irq_setup(i915);
> > -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> > +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
> >  		mtp_hpd_irq_setup(i915);
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index a8fa3a20990e..2d65a538f83e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
> >  
> >  	if (intel_dp->pps.pps_idx == 1 &&
> >  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> > -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> > +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
> >  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
> >  
> >  	return true;
> > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> > index 240beafb38ed..f693c1ffbeee 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> > @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
> >  		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
> >  			    !IS_ALDERLAKE_P(dev_priv));
> >  		return PCH_ADP;
> > -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
> > -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
> 
> The #define's for these should also be removed from intel_pch.h
> 
> > -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
> > -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
> > -		return PCH_MTP;
> >  	default:
> >  		return PCH_NONE;
> >  	}
> > @@ -225,6 +220,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
> >  	if (DISPLAY_VER(dev_priv) >= 20) {
> >  		dev_priv->pch_type = PCH_LNL;
> >  		return;
> > +	} else if (IS_METEORLAKE(dev_priv)) {
> > +		/*
> > +		 * Both north display and south display are on the SoC die.
> > +		 * The real PCH is uninvolved in display.
> > +		 */
> > +		dev_priv->pch_type = PCH_MTL;
> > +		return;
> >  	} else if (IS_DG2(dev_priv)) {
> >  		dev_priv->pch_type = PCH_DG2;
> >  		return;
> > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> > index 1b03ea60a7a8..b044bb0a77ae 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> > +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> > @@ -25,11 +25,11 @@ enum intel_pch {
> >  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
> >  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
> >  	PCH_ADP,	/* Alder Lake PCH */
> > -	PCH_MTP,	/* Meteor Lake PCH */
> >  
> >  	/* Fake PCHs, functionality handled on the same PCI dev */
> >  	PCH_DG1 = 1024,
> >  	PCH_DG2,
> > +	PCH_MTL,
> >  	PCH_LNL,
> >  };
> >  
> > @@ -68,7 +68,7 @@ enum intel_pch {
> >  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
> >  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> >  #define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
> > -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
> > +#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTL)
> 
> Since this is a fake PCH, this macro should be HAS_PCH_MTL() to match
> the naming of the LNL fake PCH.
> 
> It looks like this macro only gets used in a single place in
> map_ddc_pin(), and that's another case where the MTL + LNL conditions
> can be consolidated now that the PCH enum has been reordered.  So maybe
> you can just remove this macro entirely once you make that change.  In
> fact, it doesn't look like HAS_PCH_LNL is used anywhere today either, so
> a follow-up patch to remove that unused definition might be a good idea
> as well.
> 
> 
> Matt
> 
> >  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
> >  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
> >  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
