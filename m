Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8458E7991B7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1201110E155;
	Fri,  8 Sep 2023 21:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96B910E155
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694210237; x=1725746237;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PPFJOBSvGi9j6sjbK0rAMA/xXS/N39LmQsb8ZXwljFU=;
 b=Oafs9L2VD8gz7NMYcoMOpUJYCbaXAmhxNc6QAneIxpIvjlMg8/sGnXYP
 av8Rv9uUkjm4xabEWckO3CsJ9YqzxNDSZeUlW/CW1b/yj4wSgoOQZDdBf
 N0QJQhJ2pbTWWs34tuFCDCt6D8QfTDx87n1w/DInRYAtHVBQ9dVbN7We9
 a/GXLhU0kH2z0osvLlvKb4171B1JeLsAu1JJTs79QIoe8yCgwMBdAMcXW
 GJ49nY2248HL+yC0VWiHqTaqBLo1TB1IX8wYieWAdpz6qgi72Fl3s6zno
 XcikOeNM/Apfg4s9SIQ4rYOtcVGRk1zKjNJbjb0QBTZAXEj5Y09Cg3o57 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="381576718"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="381576718"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:57:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832799637"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832799637"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:57:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:57:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:57:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 14:57:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbCXG1VWZEbpgmATlAWfZpNcrsQ+vnaZTRBO6Ou2qUe6FMClno24Y6UfdThvNQ9HE9Ip1JP2ytmzey4JGCCv/76iAcQ7olcjl4eeU/E/RnNP4x5k4B+R4qrJAZn+vaW3zBjJpid8J1wX35jflmzsux4t1gHYsLpLiULa+rT3ULsUL6RWSTi2N9NwNx7N4W5SvqjrqHC72boqnnlNfFiSGsPPMF1VCNm+QUgBmRqHkOM7HgMviQl9vHGVNoB3DXRQ6u2nxemGU6Y3yV4hj+Y68Lj7iYHOKs3mWTW5GpYuOjah5EkS/1/s5QQpiODJVg4WLl1Nndxdfw7s8pp9rnvB3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W6twkcykjw38Zle6TXho8q+8bkLI8oY07qNocDo7UMg=;
 b=M/0VU32L+3xoJGiJbgHH6/qNn1swaYjhcTXW0rlKnAUdXuovhANEDPTuW4KTKjLEvBUTea2mGzzXMqS8XeLTKLIT8q2OJQuUL5HjQ/001Zx5Fm1W9FKIkcDzMeOmCDordP05SWkBxUhowqFRSeR4DUbH80onjT/6X4z5NMVcBm2CIQDxjDexXYUppDeVt0mAmoVwPutDmrvt5tmpj7qRONr+iogsgZPQbU7OcAOhpUVEYZT8R2b5DYLlm0bIx4hsM3DEqwH5VoenLXOVk/untPfC66Mp+MpF4GM3S+fOjyeKmhfmzYmXLlotZKil5+5uSBUgeE7vWps6Cvrz3mizWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6209.namprd11.prod.outlook.com (2603:10b6:930:27::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 21:57:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 21:57:09 +0000
Date: Fri, 8 Sep 2023 16:57:07 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ftf5hec2u6ebezngdt5rdky7x3bezi5ovig6a57s3i4ra5yj2f@z7vtysvi4jcl>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-7-matthew.d.roper@intel.com>
 <fi5xscz3ycdvcq2fe6ptjwoicw6clcao7xwxsos5sbr2kczqob@f7wo7gsjzegj>
 <20230908215055.GB6080@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230908215055.GB6080@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR07CA0107.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::48) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6209:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e41d4f3-2c5d-4490-aa3d-08dbb0b68c9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UzqSpgT7WZ8NQKssNi2QHsn0sPqlvZ3soLBIQk9MqKBW3GpbICD2UE8m93fL1sURmltlj/1rG75MNPZW4U0osb6KOn9+r63SIhr+hYQTln0FyRcpMnFvMc0EE1vKpG6cNvSV1s/7ynurHW0sKbksY+W7epc8mSBFcixY65ZtEQB315M+2+pmDwSos49wYX6h4HbTX5Uru4B58WxUbszJNX4683qBQbl+MDj9o5O0TsZE/S9QkkTqYexnPBlNEY1oTOr7PTNzfjoFCu8Vhs4GMjnkzeSZ2OS3xSD0rNkyCU2jzji1T2a2r9DnSDeSGgY12H2B//X5x6dz/D5cdScZFFzWZENePhzgogVOD/4RVQeE6WCh+vRpOu9XxnustnfvZdnwp2utoXbH55vijWPr87M8JJKo0Lf1fyABRfsSWFB6x9oX7eHu/hWiEV8Sq3DMdhrjT7DMXQL5wDAGHXyKjWLyCMm4pfOfbXA6DjPHyX9p486y1G7YYD7uABEs+dG7lWXZa+OrsfS02NrMpNJVNOHucddDPZCxIoSpMdqJdV6CoazVl5DLUs+UQ2KVn4Mx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(346002)(376002)(396003)(39860400002)(136003)(186009)(1800799009)(451199024)(6486002)(6506007)(83380400001)(41300700001)(6512007)(478600001)(9686003)(26005)(2906002)(66946007)(6862004)(66476007)(66556008)(316002)(6636002)(33716001)(4326008)(5660300002)(8676002)(8936002)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SvvSiRvUWFSU+y4/WUHo6LvXEIWUwCODy8qURVzoExLxTIjip59KsL187iVx?=
 =?us-ascii?Q?X3vIE2P++/8LCQtJrOjXu4qrcML3V4xRwT8b3hR1pcm7YU3EhQO9MFLv9edf?=
 =?us-ascii?Q?2j2whEY2oZc3bmASUHib75zs1qChDC47NQ4FCs5/kQs7S+G92uHesJQEFzBd?=
 =?us-ascii?Q?Dg6bVI9rfRWo8f340DQYMkWFw5r8z3kM4Yb83uATde8whkXTCHar6BqwKAnM?=
 =?us-ascii?Q?MUcfoMs43yl5XcPFWBQYazNunJuGPvopeiXq/cHpnXDoY5i0UsN1XMR+0miN?=
 =?us-ascii?Q?U+8zRvkC9qNd2YmSw5TW/aKIMyfBPBpbo7EzeVUuNgB1U/RxjaKmJJ+xkJ+M?=
 =?us-ascii?Q?827pAJRmO7cSZ4vJ+FN9cBbClqM1wbVX7kQdybIQtMdMOJSm8ojQ3HZmFMx0?=
 =?us-ascii?Q?ZoBES80G9zdTjeK1bzT05nS8is7THof06EDZpX8T81ttjxxK7zBQ/vt3ukum?=
 =?us-ascii?Q?YeHI0czav9aFTTvHBm05vLmflzx384HkI63ul6atYC3zKmISZsU5/qF6p/0w?=
 =?us-ascii?Q?8OrEF2xRaRyH72CbSxgAHKnmWqmGbZfSZjXgEGB0B9cLt4UqGSReMbrIxoTF?=
 =?us-ascii?Q?abrtWhlIjd6tKA2xmCG/+Uh0SZiIneXwILe9g1cuiTPgy8njyKIODT6gnYOg?=
 =?us-ascii?Q?D/PQV48CLq3bFICVAwy1Qgk5pmjp+9g79kF16BYaYAwajTEJq/RjAxJhuafq?=
 =?us-ascii?Q?Kkn2oOW/q1GBN/9UuZtrKpCcf0OAPqOwREmqLFjxiiLX0KT0gPD5IWFVE7uv?=
 =?us-ascii?Q?j1eSFixKgzhzDkqo4vSPTDDTzGkMHNrSBSOuZb35Qj1XGjIsMQ4ltkX/dTCn?=
 =?us-ascii?Q?bIbpGCtZjxZMGykhxWaPQbBqoy14gX1ah4652VjYLqyoryKB+s+DVI2Z7gbs?=
 =?us-ascii?Q?Ba03uwFmVRtHx1ok1/WQ90+EptBjvdt8dKPnmDV03FT7Dxodv0AeVKQGcM61?=
 =?us-ascii?Q?jdBzwJKBXeEepzTZqjn3yKFqWV1Uump7p2AgsPZ05jcLObKlZ9xvnLy31teO?=
 =?us-ascii?Q?RMbJhRYqvsdQ87Oikf3420vOXsdkavC8FVk/9KWNUxgXQKNSlaMrzWFBmUlH?=
 =?us-ascii?Q?m39V6xV5jk/OwiXo32FO+YB++v93lbnnY/S0oxyevL+ZNSKcMmbK7lZe/SQW?=
 =?us-ascii?Q?CTUtLKS3qGmZYgmEIV64FBbRhrayIwMxT1T0TtSGySaYqWBuItpy7YvQv5Cp?=
 =?us-ascii?Q?UyLFd6Br17JuO8M5ioveEmWNQoySgTLYHG+32cdQ+VuSzrfxvzu03PGHGDEO?=
 =?us-ascii?Q?UcxAZqbr8RUCeeOaJApMe8VDIkXhnGTyVbyvK+WZKB6Xz378UEzz1/HfrSuy?=
 =?us-ascii?Q?fs3t1FKWCgSNfmNs9Ha7NBmeu9yOxMPqYX7Z6EZxOVLirzBZPe292s+0dlu0?=
 =?us-ascii?Q?VS0I8WOP1yDCuGYttJc6fyUuwneo5pw1AcIBv6M2dsR1yvUXQ6b2RqvN+iR5?=
 =?us-ascii?Q?fCvaeLGiQH0yzHIjIunqd2/7lkCJdN7MVVP7y/iX8GiWuGsZx47SMYOJEGQ7?=
 =?us-ascii?Q?qgfKcZiD+4zd8NiPL5XNij4m+DjG7hruTpguIC8n9VUVDvoBlDSQz56Aj21p?=
 =?us-ascii?Q?WhPxZQjmeyzJhLw+AwM1trujbTohFk3VVUrZqKmHSC6gGLVUqt7f1CEUpH1K?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e41d4f3-2c5d-4490-aa3d-08dbb0b68c9a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:57:09.4217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psWYoEP1z53nMtbcWwJ/pYuCh++dQfa5xhksFAkuKAOcF4QGLDSEDHZWZndbbjqGJMOZIiTujSRTvYBUjEJWiZVx6i2nZQiUjlmoF95rFak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6209
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

On Fri, Sep 08, 2023 at 02:50:55PM -0700, Matt Roper wrote:
>On Fri, Sep 08, 2023 at 04:45:33PM -0500, Lucas De Marchi wrote:
>> On Wed, Sep 06, 2023 at 04:47:34PM -0700, Matt Roper wrote:
>> > In the early days of i915, pretty much every platform needed to
>> > initialize _something_ in the clock gating init functions.  In some
>> > cases the items initialized were inside the GT (and really should have
>> > been initialized through the GT workaround infrastructure instead).
>> > In other cases they were display programming (sometimes not even related
>> > to "clock gating" at all!) which probably needs to move inside the
>> > display-specific code.  The number of initialization tasks that are
>> > truly "clock gating" and don't fall within the GT or display domains is
>> > relatively limited.  Let's stop forcing future platforms to always
>> > define a clock gating init hook.
>> >
>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/intel_clock_gating.c | 10 +++-------
>> > 1 file changed, 3 insertions(+), 7 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
>> > index c66eb6abd4a2..1f2e2d7087cb 100644
>> > --- a/drivers/gpu/drm/i915/intel_clock_gating.c
>> > +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>> > @@ -835,9 +835,7 @@ CG_FUNCS(nop);
>> >  */
>> > void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
>> > {
>> > -	if (IS_METEORLAKE(i915))
>> > -		i915->clock_gating_funcs = &nop_clock_gating_funcs;
>> > -	else if (IS_PONTEVECCHIO(i915))
>> > +	if (IS_PONTEVECCHIO(i915))
>>
>> shouldn't we use the normal "last platforms first" and just add a check
>> here for GRAPHICS/DISPLAY version >= x?
>
>That's basically what we're doing here.  PVC is the latest/newest
>platform that needs any clock gating handling.

kind of.... we usually have checks for >= in the middle of if/else
ladder, which would short circuit it. Anyway, since all the checks here
are for == version, I guess this is good enough.
>
>>
>> > 		i915->clock_gating_funcs = &pvc_clock_gating_funcs;
>> > 	else if (IS_DG2(i915))
>> > 		i915->clock_gating_funcs = &dg2_clock_gating_funcs;
>> > @@ -845,7 +843,7 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
>> > 		i915->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
>> > 	else if (IS_ALDERLAKE_P(i915))
>> > 		i915->clock_gating_funcs = &adlp_clock_gating_funcs;
>> > -	else if (GRAPHICS_VER(i915) == 12)
>> > +	else if (DISPLAY_VER(i915) == 12)
>>
>> why changing this while the others still check for graphics version?
>
>If this used graphics version, it would pick up stuff like MTL now that
>they don't show up at the top of the ladder.  DISPLAY_VER matches the
>platforms that we actually mean to match, especially since the
>programming inside this specific branch is display-only programming.

ok


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>
>
>Matt
>
>>
>> Lucas De Marchi
>>
>> > 		i915->clock_gating_funcs = &gen12lp_clock_gating_funcs;
>> > 	else if (GRAPHICS_VER(i915) == 11)
>> > 		i915->clock_gating_funcs = &icl_clock_gating_funcs;
>> > @@ -885,8 +883,6 @@ void intel_clock_gating_hooks_init(struct drm_i915_private *i915)
>> > 		i915->clock_gating_funcs = &i85x_clock_gating_funcs;
>> > 	else if (GRAPHICS_VER(i915) == 2)
>> > 		i915->clock_gating_funcs = &i830_clock_gating_funcs;
>> > -	else {
>> > -		MISSING_CASE(INTEL_DEVID(i915));
>> > +	else
>> > 		i915->clock_gating_funcs = &nop_clock_gating_funcs;
>> > -	}
>> > }
>> > --
>> > 2.41.0
>> >
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
