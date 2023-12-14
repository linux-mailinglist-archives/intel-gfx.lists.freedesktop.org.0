Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FB08123B1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 01:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7382510E881;
	Thu, 14 Dec 2023 00:07:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE31610E873
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 00:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702512456; x=1734048456;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=erCbafIDPhp1ASff2asscdErhsTc8DsZB3wSFlJ9dsY=;
 b=bPBOVtnu1fBCme8CiOzwLBykxtxmcgjCd0PlhyAKeOtHqwQ6i/qMm0uR
 YR8HsC0GurAh5dQt457AjWIwi0Koh8DQdwQP6/GJ5EghonvIphL00Xcvj
 1jve1X6bxX8Ig4W2BxHm0uSU3K2alR355KG1vlJTBKCYxDdAW/ZiolXCC
 3dy2c3FQPEWesxdYzW0Ih+p+8JS87CzXFnR6DSefXy6I/5BcAF4y1sRRL
 KxWhyI25x4cyp0hFPCiiJVaXuA6xBRj/BO9TxJnSYsLp6BvslKK3OBT4v
 J+SFv2wfEKRyEWmu3ucqvuz1xRZiNRCV7ETNF0OJo7gxMZlee1P1kKTvO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375198940"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="375198940"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 16:07:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="844507084"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="844507084"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 16:07:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 16:07:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 16:07:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 16:07:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 16:07:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiPOiYHQSUpGk04uuWnUGg/t+MqY7aXbw7CDPuA56ZGDaQX4XpZ/bFHKGbC6CGZvkkZHEez96dMLc5c+jSrR+CYV5GgCKXmcolZSFW7w/g81fSrBY2+SzDYjds3ozbCTdH7EscY6N6mZjzqUCzLkY/o/pwkszEOrsIo6rzwiaXbgMTvktYXW2LznskRNGyjE9AHiRfmXH8a+W4JYG+yhxVrmzErrfjN/u2fwquny4lVYum7cq1V+LqmSsEl+VIJiZWPI1rmXexL6jqOaEEK014fL0CHzKTkH2g5FKXGbrPtJ1w6ap82X2KroT9uSVXhxHAQ8YznHsU0MFhN6tJ44Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pOvvJ40N/TIr4Td6BqJwLI4IavcYWZkUxwuzAxPvzTU=;
 b=FaJbO6NDz2qy4BoU1Aq6Gssyv6eE5nSV1AadQX6e7Be4POKSk2E8XcPGyMfyUPNPubESgCD5p4jXKOBgKKCsa3hf9xjHBCvG3Y6+XJN57Z41jw9FhfjfO88F2epzWiRhEa7fWOcWeWO1JwXCpFYp0/aZHq2M1IzgfqUN37S4wnrnIcztb//Rl0QD0XzvEafcwmovkljr04hxPDbQ3A2HMlA42JhlGvYOnRQXdTnT1ZJM+VBPT4FnZzvylSRkyvfBLU8H7kPcUqCXegBFsrA8QyD6c3cqrDIr5nJvnIwQafBqjdCKajXzxhT5FyEvvYzUYhU9zHyxQdelJW9/3BPOlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8493.namprd11.prod.outlook.com (2603:10b6:610:1bc::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 00:07:28 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 00:07:28 +0000
Date: Wed, 13 Dec 2023 16:07:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
Message-ID: <20231214000726.GS1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
 <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
 <170169866064.4486.2471074166550309330@gjsousa-mobl2>
 <170169923258.4486.10623068274437801256@gjsousa-mobl2>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170169923258.4486.10623068274437801256@gjsousa-mobl2>
X-ClientProxiedBy: SJ0PR13CA0128.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8493:EE_
X-MS-Office365-Filtering-Correlation-Id: fcf16a3f-9705-429c-9257-08dbfc38a8a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N209AGN6beiEjpyCu6xKii8+3FJFWjoVLg5KJpXLh7S3O6TUd1hm+DL+NlQ76P1MSoLYu88RzQ5dcMnxxRYLJXgiOB2/z/ksDiUzfhgahrJ17UF9XkvPB9/30YLPjYKe/Xr6L8oPleiITiGXhpN1sXMNAUR3xmY2Ryt90hs64BEfqZrfM6b7zY8HvVysWpKcUW0CljJjqq3wW38+/AN9uXVD9DN3In/HOTEB7vW6N96R1/abfjgxzuggdEmHYFvXvcbP+r+lhuunmPgIjyn30O9VRuRmTWXSXdGr5QVvV4iG6lNTihTaoc0vcFvXQq4p/EiG2TBfNC5rz1LG26YDJM6xotAV959IlS3Eu170Z5FlufJPV+KnPSNuzXsBD2CXpYQ2Ju0huCb98my12FwxjGD97FfLo1B5BhU5lZSgdJe9MBaymjz4FZPLzQu8HCuykrQtcMZV59vI8vzeiLnAGRX5p0We+3F3B3PPQcQWnmBYhK4WhfJ01nMXyjuIqAlRzsDw0e3sndUuIdy2BA7ygR6iq7uJQREQbWFMA/ecXZPzA9Z19XVYe3V+EjzuxbkZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(86362001)(6486002)(30864003)(6506007)(6512007)(26005)(33656002)(1076003)(478600001)(2906002)(66574015)(83380400001)(6636002)(66476007)(6862004)(316002)(38100700002)(66556008)(66946007)(41300700001)(8676002)(8936002)(82960400001)(5660300002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?CpJ2TqOsA0XoN8lNyTrFq/VN6gKnzjEmtfaYzwcwgcWlsdciZDgkKN2Tdl?=
 =?iso-8859-1?Q?5kvlRmLDJEww2/+2dzYI5AOLexJBLNEI2xq4iDqEsUmRGsjhVujfGMZgyo?=
 =?iso-8859-1?Q?/ZPnvrnXko6UuNCk5btALew1/bFR/u2xcxfFsvvc2wn7KcILoL5s/F/fBu?=
 =?iso-8859-1?Q?HkRsbcw5mOeR7OgDsUeT5XgRMiQG9oG73FCYUN4j5Lo8DROa/AbuXpwcIB?=
 =?iso-8859-1?Q?HtAcxT2s//9EISH7Vq//w1BBg37nifPGb9/WXT94/rtcDS7pNthZE4J0K3?=
 =?iso-8859-1?Q?955WM4o+KAV98+GxCqOuir+N7RNlzpQsRsGPM1+ygtqSsojYLvM8fjDPSx?=
 =?iso-8859-1?Q?bFXO5PDsLAHMRYS5adrbEZc4dD2H+CCP2+WxlGLwre3H1Fb1bb4A26LM0h?=
 =?iso-8859-1?Q?XjuPgmThdKn3PEFpL2g7gRB7fC4RNwrjGQbpiGkty+Jc8gP0/cJ6rh7Hu7?=
 =?iso-8859-1?Q?8LChvwN1bwCfUIJdj941JDqroj6IHTp8Puua1QaxsH3iFPpXMnfXVUEzvb?=
 =?iso-8859-1?Q?aQK9CrbtECVGslGvZGxIBdD+3v7+i9ASKoCi13leuy3/Mdv+vI/jM/L4wS?=
 =?iso-8859-1?Q?M8NIDjZ33W7hlSECtu4SSJDtLi3r2/TTqQKH5UpwuFQFX0qY+DKw2p6W2E?=
 =?iso-8859-1?Q?XdK7VfrVDGaGkNtwEskxvPal1cYfoO4b5Xrh/kEKQknFazX7UuTL5LK2jc?=
 =?iso-8859-1?Q?TFo0YE9e6HhXT4a+5L/aTY7jUaXU5O5RYawvUrseP+qtgYUm8BC0T8msym?=
 =?iso-8859-1?Q?SlylvHiPSfB9WPKt0N+RRFC5DPQkbhhoKVqiqF2FDMajKmeXYRyAExN0XV?=
 =?iso-8859-1?Q?o59JPTfa1IZBRjjGtyKPPt8e8SHqsnyYKK7JjY3a08MyTmsHQjAOIJ/ono?=
 =?iso-8859-1?Q?u0FJRmDd3S6UcDfpV1WSzoJD4LZ0iU5IePmesljWtJgar8J9tADfVInxmO?=
 =?iso-8859-1?Q?Dq1eFEikICxiALxKs74nMshwUVPvp+omZ+p8j1e37CI1RnABHbhW/Xxoha?=
 =?iso-8859-1?Q?fV0KbAEX1m+9VRg1nNVawUvXEzHRYRtntTmePvmRuAuXimnRon9UwaUdqK?=
 =?iso-8859-1?Q?4WiLTHPA7jWDK00BTx97Pg6klO7Dg5FPur6oXPXYmTQHySyhdpB5vL15v9?=
 =?iso-8859-1?Q?PMmcafxrI14DBXdhWYOTJuaQSEX+u+TaJ28gteUKpIrAa+wrpX2v/aRtih?=
 =?iso-8859-1?Q?UUFR/ecsdhKQyiD4LhoVDdD5GVnTMgmstKWLrB3Ri31H0FNhchI6lOZbDO?=
 =?iso-8859-1?Q?SiMP5t9KdMXEvDQV+NVv07QdnrjtVAoR81n4tvmCJz9gNIMm81woVxS1or?=
 =?iso-8859-1?Q?SR3sUi54/1XS9ahP8RGUxOc5gTrhwaVpX89MZ67QsVCGlBdp833GU7cjFA?=
 =?iso-8859-1?Q?qPcAr5tst4wqTL6fypEUnokhcasXCrj92855ez6/9qR++YQ7AQtO9YmPYB?=
 =?iso-8859-1?Q?u/r0IKHAETZR0ndTOqzq9XuklOMKgQouloNJB2JIb+juKXZhRgiIkcufAe?=
 =?iso-8859-1?Q?b4YHOtKSCEvXjE6/uOuBKA9Pdg1nByUGojfSb84ymqh3rrO7bU9l2LR2UO?=
 =?iso-8859-1?Q?O8p4Sg8UZZGs99i0OW4d/wvAukOZXsXohyb5Z6v9ZLJ5pDPF/PSY8FpBXC?=
 =?iso-8859-1?Q?DHQDzytnH09wAikFGRmU/OYTpvofKkQZSlIfJvr4cTr9crSkxW6WATjA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fcf16a3f-9705-429c-9257-08dbfc38a8a8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 00:07:28.3060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SAHzMlWS2tcrCF7kxG38+NXGraUSI8RdJe56fcLzFkwbQQc/u6Uq+q2Gl8l1a0VM3y2cgmj+NQL8T+hSlsPaJN6HNazvGnnEBZBty8sia+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8493
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

On Mon, Dec 04, 2023 at 11:13:52AM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2023-12-04 11:04:20-03:00)
> >Quoting Matt Roper (2023-12-01 20:07:48-03:00)
> >>On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrjälä wrote:
> >>> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrjälä wrote:
> >>> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
> >>> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> >>> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> >>> > > > Use literal representation of cdclk tables"). It has been almost 4 years
> >>> > > > and the divider field was not really used yet. Let's remove it.
> >>> > > 
> >>> > > I think we need to go the other way and actually start using it instead
> >>> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
> >>> > > driver is using today doesn't account for the potential use of
> >>> > > squashing, which means we program the wrong divider value into CDCLK_CTL
> >>> > > in some cases.  I pointed that out during the LNL code reviews a couple
> >>> > > months ago, and I believe Stan is working on fixing that.
> >>> > 
> >>> > The code should be correct as is, but it does assume that the cd2x
> >>> > divider is 2 when squashing is used. If that no longer holds then we
> >>> > have to change something.
> >>> 
> >>> Something like this should be sufficient to eliminate that
> >>> assumption.
> >>> 
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> index 8bb6bab7c8cd..58567d42e725 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >>>  
> >>>          waveform = cdclk_squash_waveform(dev_priv, cdclk);
> >>>  
> >>> -        if (waveform)
> >>> -                clock = vco / 2;
> 
> Ah, one thing I did not mention in my previous message is that, this
> assignment here means that we were always assuming that the divisor was
> always 1:
> 
>     x' = vco / 2
> 
> , meaning that bxt_cdclk_cd2x_div_sel() would do:
> 
>     y' = vco / x' / 2  = 1
> 

I finally got back to looking at this.  With Ville's cleanups it's a lot
clearer and I agree we should be safe to drop the dividers from the
table.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Sorry for the delay getting back to this.


Matt

> --
> Gustavo Sousa
> 
> >>> -        else
> >>> -                clock = cdclk;
> >>> +        clock = DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(waveform));
> >>>  
> >>
> >>I haven't had time to come back and revisit this (or check your new
> >>series yet), but when I was reviewing the cdclk stuff a couple months
> >>ago, my concern was around bxt_cdclk_cd2x_div_sel() which is deriving
> >>the CD2X divider from the vco and cdclk value.  On a platform like DG2,
> >>we use squashing instead of changes to PLL ratio to hit different cdclk
> >>values, so the calculation there doesn't seem valid anymore.  Am I
> >>overlooking something?
> >
> >I looked at Ville's patches and they seem correct to me - althought I'm
> >not that experienced and might be missing something as well... Here goes
> >my rationale:
> >
> >Looking at how cdclk works with our hardware, I would say that the
> >cdclock is defined by:
> >
> >    cdclk = vco / div / sq_div / 2
> >
> >, with: vco being the output of the CD2X PLL; "div", the CD2X divider;
> >"sq_div", the divider that is derived from the squash wave (16 / "sqash
> >wave 1's count"); and 2, the final division that is done at the end.
> >
> >The DIV_ROUND_CLOSEST() operation suggested above is equivalent to
> >doing:
> >
> >    x = cdclk * sq_div = vco / div / 2
> >
> >Meaning that x is the "unsquashed cdclk". From this point, what
> >bxt_cdclk_cd2x_div_sel() is doing is:
> >
> >    y = vco / x / 2
> >
> >(the last "2" divisor comes from the switch-case statement).
> >
> >That resolves to:
> >
> >    y = vco / (vco / div / 2) / 2 = div
> >
> >--
> >Gustavo Sousa
> >
> >>
> >>
> >>Matt
> >>
> >>>          if (HAS_CDCLK_SQUASH(dev_priv))
> >>>                  dg2_cdclk_squash_program(dev_priv, waveform);
> >>>  
> >>> > 
> >>> > > 
> >>> > > I wonder if the misprogramming we're doing today is what requires the
> >>> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
> >>> > > 
> >>> > > 
> >>> > > Matt
> >>> > > 
> >>> > > > 
> >>> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> >>> > > > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >>> > > > ---
> >>> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
> >>> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
> >>> > > > 
> >>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > > > index b93d1ad7936d..7f85a216ff5c 100644
> >>> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >>> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
> >>> > > >          u32 cdclk;
> >>> > > >          u16 refclk;
> >>> > > >          u16 waveform;
> >>> > > > -        u8 divider;        /* CD2X divider * 2 */
> >>> > > >          u8 ratio;
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> >>> > > > -        { .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> >>> > > > -        { .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> >>> > > > -        { .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> >>> > > > -        { .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> >>> > > > +        { .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> >>> > > > +        { .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> >>> > > > +        { .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> >>> > > > +        { .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> >>> > > > +        { .refclk = 19200, .cdclk = 624000, .ratio = 65 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> >>> > > > -        { .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> >>> > > > -        { .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> >>> > > > +        { .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> >>> > > > +        { .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> >>> > > > +        { .refclk = 19200, .cdclk = 316800, .ratio = 33 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> >>> > > > -        { .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> >>> > > > -
> >>> > > > -        { .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> >>> > > > -        { .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> >>> > > > -
> >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> >>> > > > +        { .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> >>> > > > +
> >>> > > > +        { .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> >>> > > > +        { .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> >>> > > > +
> >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> >>> > > > -        { .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> >>> > > > -
> >>> > > > -        { .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> >>> > > > -        { .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> >>> > > > -
> >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> >>> > > > +        { .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> >>> > > > +
> >>> > > > +        { .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> >>> > > > +        { .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> >>> > > > +
> >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 68 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> >>> > > >  
> >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> >>> > > > -        { .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> >>> > > > +        { .refclk = 24400, .cdclk = 648000, .ratio = 54 },
> >>> > > >  
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> >>> > > > -
> >>> > > > -        { .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> >>> > > > -
> >>> > > > -        { .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> >>> > > > +
> >>> > > > +        { .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> >>> > > > +
> >>> > > > +        { .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> >>> > > > -        { .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> >>> > > > -        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> >>> > > > -        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> >>> > > > -        { .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> >>> > > > -        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> >>> > > > -        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> >>> > > > -
> >>> > > > -        { .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> >>> > > > -        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> >>> > > > -        { .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> >>> > > > -        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> >>> > > > -        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> >>> > > > -
> >>> > > > -        { .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> >>> > > > +        { .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> >>> > > > +        { .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> >>> > > > +        { .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> >>> > > > +        { .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> >>> > > > +        { .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> >>> > > > +        { .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> >>> > > > +
> >>> > > > +        { .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> >>> > > > +        { .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> >>> > > > +        { .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> >>> > > > +        { .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> >>> > > > +        { .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> >>> > > > +        { .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> >>> > > > +
> >>> > > > +        { .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> >>> > > > -        { .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> >>> > > > -        { .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> >>> > > > -        { .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> >>> > > > -        { .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> >>> > > > -        { .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> >>> > > > -        { .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> >>> > > > -        { .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> >>> > > > -        { .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> >>> > > > -        { .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> >>> > > > -        { .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> >>> > > > +        { .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> >>> > > > +        { .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> >>> > > > +        { .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> >>> > > > +        { .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> >>> > > > +        { .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> >>> > > > +        { .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> >>> > > > +        { .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> >>> > > > +        { .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> >>> > > > +        { .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> >>> > > > +        { .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> >>> > > > -        { .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> >>> > > > -        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> >>> > > > -        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> >>> > > > -        { .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> >>> > > > -        { .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> >>> > > > -        { .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> >>> > > > -        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> >>> > > > -        { .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> >>> > > > -        { .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> >>> > > > -        { .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> >>> > > > -        { .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> >>> > > > -        { .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> >>> > > > -        { .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> >>> > > > -        { .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> >>> > > > -        { .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> >>> > > > -        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> >>> > > > -        { .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> >>> > > > -        { .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> >>> > > > -        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> >>> > > > +        { .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> >>> > > > +        { .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> >>> > > > +        { .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> >>> > > > +        { .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> >>> > > > +        { .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> >>> > > > +        { .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> >>> > > > +        { .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> >>> > > > +        { .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> >>> > > > +        { .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> >>> > > > +        { .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> >>> > > > +        { .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> >>> > > > +        { .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> >>> > > > +        { .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> >>> > > > +        { .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> >>> > > > +        { .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> >>> > > > +        { .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> >>> > > > +        { .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> >>> > > > +        { .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> >>> > > > +        { .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> >>> > > >          {}
> >>> > > >  };
> >>> > > >  
> >>> > > > -- 
> >>> > > > 2.42.1
> >>> > > > 
> >>> > > 
> >>> > > -- 
> >>> > > Matt Roper
> >>> > > Graphics Software Engineer
> >>> > > Linux GPU Platform Enablement
> >>> > > Intel Corporation
> >>> > 
> >>> > -- 
> >>> > Ville Syrjälä
> >>> > Intel
> >>> 
> >>> -- 
> >>> Ville Syrjälä
> >>> Intel
> >>
> >>-- 
> >>Matt Roper
> >>Graphics Software Engineer
> >>Linux GPU Platform Enablement
> >>Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
