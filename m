Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 578C3787B4E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 00:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B7C010E5E9;
	Thu, 24 Aug 2023 22:16:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D0410E5E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 22:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692915396; x=1724451396;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=siVz1KODvLOfxswzRayTCx2/d+o747HDX+X3wBVx/io=;
 b=KHfYW2T+VB0U9rdkI/DP6QtHXFj4F5fzIji2gVl9h9MIUqNPu6rRWzIS
 5ur5rUtPQaGorruUmTMeKOpLGvZOqIkcjwRtIE72oFG1jsTnMbH2ESNob
 JVWDDYSvEqebVvqJ50OHRMLoF6TUy0K76rLP9Q92tKjtH47+3RezdmUvM
 2zlFq3/8/bufaqEcosRaxLkjwwUHajDi1BtvqhvtxquKeOp+RFhRLGx75
 KPcG2wOKzJaIKJfnpDQyRmaiDhI1Zcmg8S3ZuSYPNnBLjrm5ScFzjoGkX
 npwz1jHTYniSFOqZ+w+l+Z/e7XranHT8XDnS13rm95m83Hq8sKxbx2ejo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="377314815"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="377314815"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 15:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880938051"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2023 15:16:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 15:16:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 15:16:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 15:16:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 15:16:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XTJ4R5qhn+RqbyoH38lKlnhVH0HgHJnMdJwFGygJn5UoxuMu9N1NxJjFvfMYjV/Q5P9kaLIc65CVMrbSdMhXscA4zFgZ+Sba5kaLMt4QRgwp7V4ZW5Ep2G64kc4e7eWLCEG2HRGm8KDZeRw2qAnH2nxFdXzOnpRsLEUmzm1iCLBHs1L6cClOuxXW8bhyXq66TJGNrot1Jvo6dpSOBa1w69DMu/UA/KJnZFgmLBtuJyW98U1HO2CPGkW1dykW+4LZRVPOOd0Z8/jbT2TiLWTuSF5fs2ACovxKBCpjDCUxmG5B8rft1nW40cvKQrecInCJ4Ig+zMThQw1k/dh36zKxkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vj3YiZAHA0gN01k5MdEx7mv857uB3UTLqPQFGz/51gY=;
 b=C/+LGqkdrRki1VB21GFYKoIsYnzFATrerqUIujZ22MA4f6FEV4azqCtG3LmjCgH2GNDLsZyw9rzvMwcSe4GeCZPnY1z1ZjQ/67/Cauqu/R6fsDDluXyH9rOyCl5ytnJJdRmTP42sFVjYJjODRkMWnE9HLlTJmvHCTDuIGfl7DUeZ5DFDvozFzdQhcC25ww/bZMtQMji4+MujduLeXIH8KR2VXPk/+npXfrwPVzl24aQr0meyhaea7g7Qoy5gib8OU5EiB5eES96VNZmZC67CckwvQjaPmCb9pyW6xnUImp3q6xY+178YduArelHJWxv55Wnfv+Jy5l+GqGcCtoKIVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6147.namprd11.prod.outlook.com (2603:10b6:208:3ed::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 22:16:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 22:16:31 +0000
Date: Thu, 24 Aug 2023 15:16:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Message-ID: <20230824221628.GB1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823213901.335696-1-rodrigo.vivi@intel.com>
 <20230823222203.GP1529860@mdroper-desk1.amr.corp.intel.com>
 <ZOfUUv+2RhOOEg7+@rdvivi-mobl4>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZOfUUv+2RhOOEg7+@rdvivi-mobl4>
X-ClientProxiedBy: SJ0PR13CA0080.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::25) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6147:EE_
X-MS-Office365-Filtering-Correlation-Id: 79c9a662-26a2-4d06-e879-08dba4efc540
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MAzbliHkglxaspXgvXqw2VmxUi+PaxXP6XGsC7GeMi4D5HQo4AK1IdtjgalR8wN6wkzVmqv9DoSmbobX0OD9HzMs2r8xj2gORN2nG+KXZXs8h6U6jqefQCyvqBmjwlhXt2pbTsDpUeplMHgn9cLNDczvCmClXtWZCTTqssbBt+5fLHoes7QkOJVtCf5smb64xZEy13cH5VY0CZz3SXBk1vX8Ieb4A2QTnGR40CLZCd5FFtLGqIcxdwFcV0OjyfLoj8TXaXfYwD/6sVV2jCyeFvy4FQo7bnlGFkYTBQQGWfds/d73Zo42wxVZmTXDviaJVxYB0uyvlV1SFYTeO7rlV/IPlCZM7CyisPjRUdcBfJW+EInCODdayS4wt/U4N8Ul/dIefGhUfLQ7LAWahebUxXeEeV2CNOEbiyKFeO1IGtdAR9bFk4E2fkymTYzbYrkI/8KHoZrdl+ApM9twy1ioF70IkXvxwMk8XYj7keYKBME9qd7D5m9X22Yf5T5RrQ2aGgSqJU9w2wd7mmQSQrWk9DL3STPDI+nFTZmm3f4Fgn7ZlEzoUdnAETPTTRO9mlgQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(54906003)(6506007)(66556008)(66946007)(66476007)(316002)(6916009)(82960400001)(478600001)(26005)(38100700002)(6666004)(41300700001)(86362001)(6486002)(6512007)(2906002)(8936002)(8676002)(4326008)(1076003)(107886003)(5660300002)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?53zkl71XQvA0klIvQIK07ovi6YP/EL8BvgbXuNZldthX8xRVzmsFofJmVDJs?=
 =?us-ascii?Q?Po8QdUSCqv9Jc1hUGMu67/faDxWtTULOpYlZ2KRlJgpmxrZ6NefOg9VbT2n3?=
 =?us-ascii?Q?kE91TgrpV7QRTxiPpB8l/sD8YLGfr6uFl7IlZreIFRjhkbbdkZa0XmLzTFsh?=
 =?us-ascii?Q?Q94XXIMqnS9sfIjqcSncOAyQTW0ckM7grD8ABuF5XTC+fIBJmYm/EXwS6mQi?=
 =?us-ascii?Q?5dTAy4Gcq2RE+MJmIYuuZtAZzMordhzIT9tkATqREiutOMRuUt9j2HTQ1dsi?=
 =?us-ascii?Q?WXkJqcn8Qut1jpZ9Qq2gmdyct8vL2PzDjmvAHXB4ZqKGckdPMXBInoW5bWmb?=
 =?us-ascii?Q?NIj4XwZlmjPCWCU17OREctdGdQYFnaQxdOUGXpAsbJ+zooAr6S/2mESJ6t8Q?=
 =?us-ascii?Q?ey89ablWbV3xsxrF19MMPKI/OTDvI0Nag5Ss2h1xxdVrsPf/lk0oyEHlG3hE?=
 =?us-ascii?Q?AvZmU4EKH5BfWrGGBPVVvU2RmjIhc4sweeeBWxigKxeAYQI97wGNHW0V3A4S?=
 =?us-ascii?Q?9VE8XiA0Df7BeMtjgmNFUpSjAk6zsYQPZ28XIPWpnQ6EgluPAXOKyqvZG1Hv?=
 =?us-ascii?Q?joOVOar2DBOgWNqI8VWWiaBhuIZrv/mKo2Sl4PMmy7ay1q2w33AMWk8hqdRJ?=
 =?us-ascii?Q?VugiyvunKTcoZ1eaVMr8vcPUzwpm/y/9oBLzI6mIzaebe9F65daUiP45uPBK?=
 =?us-ascii?Q?ydfFCiJxRRsYgTwjyULKrXKoSyGxvpZx4jZJ3+iZLZcHtT1KMOk5Df4NhThI?=
 =?us-ascii?Q?baPBClUCfHfqbaU0y9zz7/7A9QqHCt/V/Js+4wdOjJBApEG9u5AN4ZpvjeTY?=
 =?us-ascii?Q?kXUdyeLQfj/NF2M7ONIvFvkfwYv0YNUGKBudsdx2ZgKkgx1L0q9Tg7IPsWsj?=
 =?us-ascii?Q?bLP+UjKTXIF9BAUkfY/EJn1DezlqQJmtHK9YCXxMvzL3nbjNkl5hetMzAsk0?=
 =?us-ascii?Q?7AFLKgzUhcUidXfZXIU9Mgn/hvHcUjSm4y8bLFj84czjzReD4haGuSY7Nco9?=
 =?us-ascii?Q?/jg/JF/5zblhj11tN1UFJa/OH0loG9Yr9sAtYwXF9xXbgQ1cs8UJIYvgfRg0?=
 =?us-ascii?Q?HkmW4H4Kg5bj29ZTWbK7kGikvxw5iRc1tOojheSsm6GLqJqQUAvf10OE7M04?=
 =?us-ascii?Q?HFVG4NxYEr580UYfydXsfIC+D01GEnbyE+43QhzooirBgFGLdNUzwXkvmyHs?=
 =?us-ascii?Q?oiqSomRZSvKFTDa+kp8IyDkWOXu5+iAGJNJlK58dU5Bj1HoGext9S+YQ9Ajr?=
 =?us-ascii?Q?9c8idVuuVjnGUF/Doz4FVOqbey693/d3583sQLRJ0lAdEKKi4491ANDIAKcN?=
 =?us-ascii?Q?9tr5d+oJIXyIOv2CJhHYS9emlg56304K4EAdFHqyNiwssDjwIStleNbl6IrW?=
 =?us-ascii?Q?fVmWSTfd9iHfeAQfVGVgbHhHWDSpUI2USbvq5f8LZjtUZhhuWF+IdIbcrqT/?=
 =?us-ascii?Q?GYVo4npQsx4tZmwv1EyBrFUaqf//F7miLbvOgkKndro6T4+WhiS2ngTUR4p1?=
 =?us-ascii?Q?WzamgTijYOAEgaDNsxZ+zDeG2Hu908ny8Da4kJexH1yz7e3MMpBv5Qx3zo8U?=
 =?us-ascii?Q?iGeKdz6rn4UwvO4WsKzWB6pmPy3sk+/+1aMdgCl73yuQo2hkxh2A17GQ321H?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79c9a662-26a2-4d06-e879-08dba4efc540
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 22:16:31.9063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7CvIR59jXA9EK7rUaFpVpeTjwUYKAd7aF+HbhlaI4X0VnYl8AvNSn/hJNi/WPxdfhbVkDSEkVqlRDPIFy3XQD/END9MTv1iAKmNh8KGC1sk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6147
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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
Cc: intel-gfx@lists.freedesktop.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 24, 2023 at 06:06:10PM -0400, Rodrigo Vivi wrote:
> On Wed, Aug 23, 2023 at 03:22:07PM -0700, Matt Roper wrote:
> > On Wed, Aug 23, 2023 at 05:39:01PM -0400, Rodrigo Vivi wrote:
> > > Let's introduce the basic documentation about CCS.
> > > While doing that, also removed the legacy execution flag name. That flag
> > > simply doesn't exist for CCS and it is not needed on current context
> > > submission. Those flag names are only needed on legacy context,
> > > while on new ones we only need to pass the engine ID.
> > > 
> > > It is worth mention that this documentation should probably live with
> > > the engine definitions rather than in the i915.rst file directly and
> > > that more updates are likely need in this section. But this should
> > > come later.
> > 
> > It may be better to just delete this completely and instead provide a
> > reference to the better engine documentation we already have in
> > include/uapi/drm/i915_drm.h?
> 
> I thought about that, but I believe the 2 different documentation have
> different reader targets, although there are some overlapping.
> 
> But probably the right way is indeed to move these things to the .h where
> they are defined... or we are sentenced to keep forgetting to update
> this one way or another.
> 
> > 
> > > 
> > > Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > ---
> > >  Documentation/gpu/i915.rst | 24 +++++++++++-------------
> > >  1 file changed, 11 insertions(+), 13 deletions(-)
> > > 
> > > diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> > > index 60ea21734902..87bdcd616944 100644
> > > --- a/Documentation/gpu/i915.rst
> > > +++ b/Documentation/gpu/i915.rst
> > > @@ -267,19 +267,17 @@ i915 driver.
> > >  Intel GPU Basics
> > >  ----------------
> > >  
> > > -An Intel GPU has multiple engines. There are several engine types.
> > > -
> > > -- RCS engine is for rendering 3D and performing compute, this is named
> > > -  `I915_EXEC_RENDER` in user space.
> > > -- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
> > > -  space.
> > > -- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
> > > -  in user space
> > > -- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
> > > -  space.
> > > -- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
> > > -  instead it is to be used by user space to specify a default rendering
> > > -  engine (for 3D) that may or may not be the same as RCS.
> > > +An Intel GPU has multiple engines. There are several engine types:
> > > +
> > > +- Render Command Streamer (RCS). An engine for rendering 3D and
> > > +  performing compute on platforms without CCS.
> > 
> > I don't think the "without CCS" here is accurate; even platforms with
> > CCS engines can still access the GPGPU pipeline via the RCS.
> 
> indeed.
> 
> > 
> > > +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> > > +  copying operations.
> > > +- Video Command Streamer. An engine used for video decoding. For historical
> > > +  reasons this engine was alsso called 'BCS'.
> > 
> > I don't think this is true?  As far as I recall, BCS has always referred
> > to the blitter/copy engines, not the VCS.
> 
> doh! I meant 'BSD' to reflect the removed I915_EXEC_BSD... I can't even
> recall why that ever got the BSD name to start with.

BSD = "Bitstream decode"


Matt

> 
> > 
> > 
> > Matt
> > 
> > > +- Video Enhancement Command Streamer (VECS). The engine used only by media.
> > > +- Compute Command Streamer (CCS). An engine that has access to the media and
> > > +  GPGPU pipelines, but not the 3D pipeline.
> > >  
> > >  The Intel GPU family is a family of integrated GPU's using Unified
> > >  Memory Access. For having the GPU "do work", user space will feed the
> > > -- 
> > > 2.41.0
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
