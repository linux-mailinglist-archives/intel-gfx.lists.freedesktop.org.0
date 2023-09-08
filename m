Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662F7991A8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:51:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B36110E155;
	Fri,  8 Sep 2023 21:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0604710E155
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694209864; x=1725745864;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=G9eN9EDa12Kg0uEM1OUMnRzxrSdNHIViJIBN4r1kHtI=;
 b=HO9i4+OMt/XOtu+CE4nAJKy0zt+OOSHYXm9DaRCOMQ+p7GYHoyXMyqZv
 EBUHBA2/vpgWUTAiqeifZblSRyWL52kr5yiht1nuqjx3o7Srj5IGpUk0s
 012jiE6rLmKvoXHcaLsDtyVpXZsRe2i1jHm+KUriyxhsUAZDBajO0gV8J
 y2nv2lucG++hzOE5O4Vpjc3CbC1MpqnReTs0VauQh42GiyxqRCkgaumMq
 4N8CEOAoMfpW65MJkf2Z8WZch51IVxf0HHMZ6Of22tG4iBI7f+sRegrsQ
 HCSaftzfpc0+PJyQMN3ACBkAsOoaKmzhuX75nn/khfzUchHxrgRvvGQK4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="357220013"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="357220013"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="885811906"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="885811906"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:50:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:51:03 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:51:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:51:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 14:51:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LYadbgxkGqeo8YZ118Bk3ahhef35MuR3xBeGNYV5MPckmay4wVmPZTzpdr1IwgYTrD5EQktI85eSYg42dFCVL1XgUWE4no23G16uInE6v3BtMFz0m6LMRzEzHNArvRwJLcBOqFoe7BRKFlZoKW/t16qLcCfh5lvDOXYXII8TucgGjPIDE/Js5DFJNoaBV5zwjm+qZSQAos0y9pB58ur9i9Xsysati1fEJuO3C4W93wlRuVDUohvsPJUs5TmGE//1y4yZ2JbMFQRUh0x2awq6sVnhG3LlH1oj3lN2MQJ/DxdMkYqV+NvipBya202AafrLUlKXYQPQ2JaCjMK3g6fxSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VCK0TVQP+qAw2T6QCB94934t/bc1qnDU4rvbYHeQYfA=;
 b=Hr3dQJ7fIWYruLXiBHhNAxPGdqLEUQbR7/lZD0QG2wZTvUh+Ge2sWnemFSet0dyJzVl105OcPabZd0uCbq1F8uPYmHemmQknpEezxkwPAQ+LwFyHGi+8S8SX98q1XjDKW92sW7U9hmTqPNqkOPIWnLIzpjbherb59qdks0M1HnYbZjkDkkQZIFxCVuPDP2YHeIY3YehA+Zsue8MjhXvoN996yX+sJ2QZdGT5MohWqxdb/15idWxj2FedpyL/JIO5U7JaT4T2LK2lKvOzLdTnqbSy4y0IGH9dJp+jBpfUksOPeMmukTtaDa4ZdEVdfD9u+0O4fPLSyuAzAvPWYKpw+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN0PR11MB6034.namprd11.prod.outlook.com (2603:10b6:208:375::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Fri, 8 Sep
 2023 21:50:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 21:50:59 +0000
Date: Fri, 8 Sep 2023 14:50:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230908215055.GB6080@mdroper-desk1.amr.corp.intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-7-matthew.d.roper@intel.com>
 <fi5xscz3ycdvcq2fe6ptjwoicw6clcao7xwxsos5sbr2kczqob@f7wo7gsjzegj>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fi5xscz3ycdvcq2fe6ptjwoicw6clcao7xwxsos5sbr2kczqob@f7wo7gsjzegj>
X-ClientProxiedBy: BY5PR03CA0028.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::38) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN0PR11MB6034:EE_
X-MS-Office365-Filtering-Correlation-Id: e89b5204-e7ff-49c3-c328-08dbb0b5afb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wTCF4ATYuOxbfP4UyN+j7u6K2ONDND/vh4JpAqCc7IgWtlMyZKa6atbyCZovd6P8F2pNv8yo+ddS/iatQHwD5jJRQhFVV146tojb4oR2h5qbQR2SMkFwKtfKgsEP0729YGI3oVyyD7tYBoX5x010c5sUGvlD7uZ0rpSegnvEpzCebywv/pskjKlyGTq5wttfWmvji+jB3Atu7XHdgR3HA1jSjnze7un6EZc+pEKGIgUM0hrdN6A6oXk6YA8SqzlwWvE1cQlAzFzbOVQBP2t5nL01XHiTs95jzRw52Q4hUUsOCZNN0GaBx2i6TD/euMuFjdHYDgeWANX6AxM7PWjMUrN7cUD2D+sfsAr2pa8JaQUBa4Xyv1NBAvYANOAvy4jDhlchshtxnW0yAfaynsas8UmBZXEMVxSxYHAfhJgmqvaE0jibCeS+cJHBlpcbVxNW7Vn0Mz5Ytr1Eo09TldzcMzjlkMru12Va9rdqGoe4xh3Mpwbq887ocNnB2Va5XTds2+qKJbfgSAahUVYAwzsjWzdgf5dW+5adqC7IORukrd3UNMuNARsWSBi7B4zZEkhc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(39860400002)(346002)(136003)(451199024)(186009)(1800799009)(8936002)(4326008)(8676002)(6862004)(478600001)(66946007)(66476007)(66556008)(83380400001)(5660300002)(41300700001)(2906002)(33656002)(86362001)(316002)(6636002)(6666004)(6486002)(6506007)(6512007)(26005)(82960400001)(38100700002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HMHz7Uk0QuWZ57ZGi2oFEM6gXZBxJO5UnKsxonG/RlaDPWl9XuVEAKRFuC19?=
 =?us-ascii?Q?uq6vKZzufUxu8sq2zbfMBUItX6XYB+kUo7yr2WM3CTdcw8gu/zAJxOs7Lp6Y?=
 =?us-ascii?Q?QKLPJW2d3sov8ZevV2vmy5sYyMu411G+5uk23i0bCzrJcmKG6+6Bv7wRdskk?=
 =?us-ascii?Q?qmK2gJuwDom9qS80KxKpiF/S7tq1n84TgxLi3X7fDIyqosggdf8Ubkezooae?=
 =?us-ascii?Q?uAC7UBm9Z1o5LEs5p3jaMxfsQ1MW1fDqK2QYPmwKIGrf4l2xB4cs0qs7yM0V?=
 =?us-ascii?Q?ztZ4vtl/H92g6iL6EUsKJyhQm6AJ24yxr9uIne/zp2CfkxtXsu8/3WKic8WJ?=
 =?us-ascii?Q?GbPA0ev04otdFJk3j1OD3VLx2jU7VxJPCxYPA9t0JDGSErIYxgzwjNzo4TVL?=
 =?us-ascii?Q?09ti7AG+/x1H1yGeFENF5uBZgDuH7ch5ZeNl2xvfqOa05/CuArB23mMsEdhG?=
 =?us-ascii?Q?RKV0kJYdmmzWPzk2hnWpTJDFSG6FxvfCQJ6VUz9H0E+BqgVTXq8m5zrq7VCP?=
 =?us-ascii?Q?ItM4BknqHYuYVaCS/dSFjO6PSG5DykX8BqFlFDtj0Zp9k/dMKOdx+JO1MRiW?=
 =?us-ascii?Q?jig9Dqwn6VyAtgWcJxsSyyAWff2PChrqjzHUlrlS/dnIddvBcy5pD2YtdW6f?=
 =?us-ascii?Q?mwqfVPghc/RX+eir88Yc3G8u1BdxEiAbliO7GbEfX9aBrT6wyRWYZ3W1CZe9?=
 =?us-ascii?Q?ZYs59nnq/aPkiN8s+E2iHURphCt79qwFW+GjmPwgS/WAXIulOme02za4of6s?=
 =?us-ascii?Q?18yI1+Lw1s+sljY2ew+eKWmfPjgNT1liJbuNKM0Ew4ksBmFs4p8tybqkIoME?=
 =?us-ascii?Q?N25ECmhKxKWsIN95u3UFMusK4wlupHddLL/YblaU3KRejS6YipSbFrBDbRsy?=
 =?us-ascii?Q?LzRRGMKjcXwEnUzcRZscX7vCQHZ8p8oWN/NAAXk/+TcWxxTP2E0gJSexRjj8?=
 =?us-ascii?Q?UGp+6+sFC0Wuzz8NI7W7P2rG35El7l0EMzvH/f4diLUDjWFfRblUuxOAyhZ0?=
 =?us-ascii?Q?M/ByNxoRwTT1I+T5/Bx3a3Sfq5WGnsSDBS3AE6vlcV+fokK5jxikwc85Dapg?=
 =?us-ascii?Q?/7x/s1bHoiHWHff2geANjqaNgauJnyNAfsMFvVdj0lVxL0eWhjNajUxN20sB?=
 =?us-ascii?Q?05S2QRgW/2yT0/ATY5bj8waTkeW/VoAHpw5JIR78eSEWwIl0CYgc1YtAdF3f?=
 =?us-ascii?Q?LLFBvpn9UtUzfbRNUam7xXCgaLf01v0O0MfXjvHLxEnO7fnO102SKZOz0QaK?=
 =?us-ascii?Q?eoD6n8t2bR6yYpgOQIGJzXrik6yDk1fStYkFJCeADfopFhJJTx/Y0RiajOjr?=
 =?us-ascii?Q?Rp3CRfwFLwZrOIwhG8cDJOc1b0wCUKkGPyDZ8oQ+nYCOtX7PASKY/CLjzR97?=
 =?us-ascii?Q?VG3C9W7m4bKDvXdFDJf6pH2j+mmCB5JdtzIGxjAnJEWy4Jb1vrVZS1+pAP7T?=
 =?us-ascii?Q?WuYc4Y4s9/v6vQz9gZJ8hwVjZpWYWzk++InFR8Ka4TB06j8lLW911uh/l8oG?=
 =?us-ascii?Q?bMme80/a9il9Z6o4GuLxLp392ceO4/apXQrAPcnOmZDAMntbWKsOH8WKTIdg?=
 =?us-ascii?Q?HY5+CFJH//rIHUIJ/ocIS2pNlnyrkdF29qZbOl5JgaEgiHWxtK2SjJ2rJkmj?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e89b5204-e7ff-49c3-c328-08dbb0b5afb2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:50:58.7813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rQnGU+I0CxYdU5eaNfb3rnZVp8z8Ev/MJUdgRHWIZSLV5RHPXkiMqiLs8j6aLU30PpTkGlXrqHdMz79jr3JwLugEi65cHKbS25pHL7tCiSI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Stop forcing clock gating
 init for future platforms
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

On Fri, Sep 08, 2023 at 04:45:33PM -0500, Lucas De Marchi wrote:
> On Wed, Sep 06, 2023 at 04:47:34PM -0700, Matt Roper wrote:
> > In the early days of i915, pretty much every platform needed to
> > initialize _something_ in the clock gating init functions.  In some
> > cases the items initialized were inside the GT (and really should have
> > been initialized through the GT workaround infrastructure instead).
> > In other cases they were display programming (sometimes not even related
> > to "clock gating" at all!) which probably needs to move inside the
> > display-specific code.  The number of initialization tasks that are
> > truly "clock gating" and don't fall within the GT or display domains is
> > relatively limited.  Let's stop forcing future platforms to always
> > define a clock gating init hook.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > drivers/gpu/drm/i915/intel_clock_gating.c | 10 +++-------
> > 1 file changed, 3 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> > index c66eb6abd4a2..1f2e2d7087cb 100644
> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> > @@ -835,9 +835,7 @@ CG_FUNCS(nop);
> >  */
> > void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> > {
> > -	if (IS_METEORLAKE(i915))
> > -		i915->clock_gating_funcs = &nop_clock_gating_funcs;
> > -	else if (IS_PONTEVECCHIO(i915))
> > +	if (IS_PONTEVECCHIO(i915))
> 
> shouldn't we use the normal "last platforms first" and just add a check
> here for GRAPHICS/DISPLAY version >= x?

That's basically what we're doing here.  PVC is the latest/newest
platform that needs any clock gating handling.

> 
> > 		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
> > 	else if (IS_DG2(i915))
> > 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
> > @@ -845,7 +843,7 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> > 		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> > 	else if (IS_ALDERLAKE_P(i915))
> > 		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
> > -	else if (GRAPHICS_VER(i915) == 12)
> > +	else if (DISPLAY_VER(i915) == 12)
> 
> why changing this while the others still check for graphics version?

If this used graphics version, it would pick up stuff like MTL now that
they don't show up at the top of the ladder.  DISPLAY_VER matches the
platforms that we actually mean to match, especially since the
programming inside this specific branch is display-only programming.


Matt

> 
> Lucas De Marchi
> 
> > 		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> > 	else if (GRAPHICS_VER(i915) == 11)
> > 		i915->clock_gating_funcs = &icl_clock_gating_funcs;
> > @@ -885,8 +883,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
> > 		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
> > 	else if (GRAPHICS_VER(i915) == 2)
> > 		i915->clock_gating_funcs = &i830_clock_gating_funcs;
> > -	else {
> > -		MISSING_CASE(INTEL_DEVID(i915));
> > +	else
> > 		i915->clock_gating_funcs = &nop_clock_gating_funcs;
> > -	}
> > }
> > -- 
> > 2.41.0
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
