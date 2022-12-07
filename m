Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A90766460E9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 19:11:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AEE10E411;
	Wed,  7 Dec 2022 18:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E4B510E19E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670436685; x=1701972685;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J9fYlAzE29KNG3UEnTGFdBQt83qYzf7XIJnDaAEArdY=;
 b=d3vRip9kUVxlD3mq1rdAGw3Id+PIEIO3YUP8fiLuibaGZ2ZIIsq/u6ox
 hjCnRyoQPyVQIGN5WAWK4yDYJJjCk/bWPOVUHQnvJxw0E7vVQaq87iVhS
 HbutWqaKZLGqajyCgjxfcY3cIBN38VKa9q/bV9eNW1aynyJ52kDz4ZHzS
 73JM+CeP0j0xrq3FoI9d9R6324+SazqLy4RoANhLfwiof7GIHC/gi2MQn
 1Hz5vInHXHg8cf6yImlW9mn/ua0owHclJ7RhbwKT+ffhZyYABaTQ1sR9A
 NC8TMIhnW7fUVaeE6dqBbbO1CiMVYqCKBl20x5tyU4BA25k4ZFEnlx8Ca g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="316977175"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="316977175"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 10:11:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="597055126"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="597055126"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2022 10:11:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 10:11:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 10:11:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 10:11:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 10:11:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dew2jUo8MkrJx+IlFM6ZwxzfDvIVSw9Kj8y7iNMaY/c0jr2kMBXkbUWnJ1WlFFuLMic9SH2z9Qyb61omSFbQOlm32k7YMtLbV9J2I2D/0P/Z+fxCPHwL/E91AuI5ah7KBcQTArt/tIteBrKHkvKwyGFROxViBGsM+wh/nfV1j3qsfkpm7dwKd/g6l3IGbCQhgb3avHld32gElTKtZ0sEsImFN0zk8jhbQyQnzDrUVjbSGuSBRY3jQu467FGfASJNu18CdmxYPeB7QvE/pjPBAlyCvYqaE3oSv9Zk8t2rxG3bQ0TfKPNnFEHc8DDkNet6QJ/nhCrvHhT+UVqNrueWaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k5yRStD9mNxylefDyceVyP2qUprR5qmt016JJ/jsx6w=;
 b=BIB4laZS2KNUwKuK25XIpcbFYjCWJHN3K5guyz+jJe4bUXpC0wky+aZqXiZyYqaQVtn/0f2HZ1wuSlXoT08k8J/n930U3fKCgeOrHfFxsPoIVYQPqDMuDnwCGKpld9gamJdh+EVD/Q2cfFoyzj4srhltvgW+o357KYqyXWHgeT2XCj6M26xKod3L/u/E8nT+pYvjtWOu82I5/8W6CP5eQJg0RIzM1MrXORLAollvonK3/cmUQSpu/vCkC22XedNgaIVW4GkW5tdZ+VLQkUg4IUV+kvZZiT+/E04Te701TaiojABOF25+bVAYRwcYaRmAIG8NFXBoDQ6u7IMALi9GKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB7523.namprd11.prod.outlook.com (2603:10b6:510:280::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Wed, 7 Dec
 2022 18:11:15 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 18:11:15 +0000
Date: Wed, 7 Dec 2022 10:11:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
Message-ID: <Y5DXP27pd5B7EcKo@mdroper-desk1.amr.corp.intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/SwfKbvCT/ANdp@mdroper-desk1.amr.corp.intel.com>
 <60152f3b-93f4-c0fe-d309-04c17ff25c45@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <60152f3b-93f4-c0fe-d309-04c17ff25c45@intel.com>
X-ClientProxiedBy: SJ0P220CA0028.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::11) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB7523:EE_
X-MS-Office365-Filtering-Correlation-Id: 46adc726-fea1-40f8-5db8-08dad87e6d28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UMfCPKJ1OAxEfHfBA2bN2tlU6IY5qvjA72DXfqdJwPSYyxhEqOs0AKxkMMjFyBNvcR5k3Xh+RpnepwkkQmm3prI2ciRAvcuM0r/4F3Jlr/k6v3L8zW61raWyoAZ6kHjZxw7fWp9TAOA310RLQRYB9I3nxbnhg9ZQ/BJBbKo5Cu94akTG5Tq/W4vLisnQsjr8IbrsbPdc0WcCVSLjyS/HIiVe0uzCYc+H8K0cZKEvH1aSWoxlTwg+3AFHGr5/Vw+R/HsXvtLEJYiiL/+Ha9z8nH12NuLrYL6vF13G0M+8IfOcQk6BdaIyRP5HlkyLMfmtUM7wr3L6OHT8OinAFveA/uokWoqycSbsaErZO94PRhoTsdQzDwXGjJsPP+DZt8Yi9vsYZZP2MKSf7FJcH2cvbnd3rbz+c6s+bczLGQtls0LVDMOxZhaSZxFGqxtpn7RkngQBM5eWjVv3FC4GOxjoxusmHhr3bhMA+ItDwRY0ysrox7C74K+LCFhwKHdrCEcXk1j/4R9aKx/3MT0UOPLVV2grDTeoqlYuEXMhPYXP/3lFZrg9drVK2G+eW3JTs63HANY7QvuZ++DMWUzqi7m1LETsAGEVGnMB00VmEc0wmwvCYPBT+JramBk04TWazedCCD2/OZL0uk17xLbTahCq5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199015)(38100700002)(82960400001)(86362001)(5660300002)(2906002)(8936002)(6862004)(8676002)(4326008)(83380400001)(66556008)(6486002)(478600001)(66946007)(316002)(186003)(6636002)(54906003)(41300700001)(107886003)(6666004)(6506007)(53546011)(66476007)(6512007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bx0vvSuVEPijAcQP354kiaKi5ZjnFzzWgdCZckfrK4sDmQP5v45WxAiyAWQg?=
 =?us-ascii?Q?k/NfMvKUswOCH7VwIu/iCyOtJY9hJWwum3SpXdVQZhbMPeOJJfqyoTe0njjw?=
 =?us-ascii?Q?EgVydK7PhWeo6nzon6VBo9yBPsh8luWFq1d+wpjCIqXb9nHXK2BgLXI9jgN/?=
 =?us-ascii?Q?yE7y48ZoFQvn89ZnoydZPVqdTcZJ7pHYdFYvoPl3iW5ksYyYfrhF8GiuV1Uj?=
 =?us-ascii?Q?tha1t/H4n5mPaxy0Un+WrZhjhzjowcq0re9p+sTC5H86+aYvKw4Kxogmv2ks?=
 =?us-ascii?Q?6nkMlepaqA8sDUjfb4TJIVV9/DI7Dv0BafnwsynDHkNzIUIc+fADayrXdFKg?=
 =?us-ascii?Q?cW4Q9QN14qtZrciAXxHRUw6iYxxxULCZW5tyM6wDwsBmJnnOiKAqeyrlWwmT?=
 =?us-ascii?Q?xhZ32sVjqQDLVnzT1Efhzuhi06hDvsPsnRPKvqvZfx6Jm7cECwrk5HNxwbJ5?=
 =?us-ascii?Q?eGaghsJDpmxXWgdV8onsLeg7OvUCj1ei/vTNm/NdwBreUR4ri8f9LZGi57LM?=
 =?us-ascii?Q?jgobHFvFJqkwoOl2DNXFoRu17U5Yp94atB0o+t+DAOE1DdPOued3DD0LnxIB?=
 =?us-ascii?Q?Im7kUsdR7Yda/grs7V2wRkiOtlocgO3r86hxsHOc/UlFuNEAd113zU9H2hZU?=
 =?us-ascii?Q?CDonroPSoaLoNVQHYzww6h2pTOWEzTzZDTOdL+DdK7XOjKK14Z9zZg9FTUti?=
 =?us-ascii?Q?SWfoLaYVxluXs1q0d1rng8klhE2Fbk8JG4aj3T0D7a4+ofacfTT2i90RTPZv?=
 =?us-ascii?Q?0YEZq+5CRREb4Vq+UJ9lWYNoPSqauH1cYmL7w2884IMOBQGsFFYGJTmcpKHu?=
 =?us-ascii?Q?Q5zv15z2UcYWqa0gUEgO72w7dbqDJnc23wI/ghiguayqewQln5DMSI9YlH8w?=
 =?us-ascii?Q?DwXMDx+Fu8qk5E87x3vhPwgXMNdLL2vKEPfeWzFxct7ZlMg4Dy2EOgt+c0QT?=
 =?us-ascii?Q?2rij6NbiS477u8FZKTErxj4CL/nqZi2JZLM23ia2bs0Y3H83PsOxeeJ6lN2T?=
 =?us-ascii?Q?xYY3SGJklpP6dtD3zf0Swi+XKxu65ierTj0uX5GSINDMAOeSW25e2VJyygoB?=
 =?us-ascii?Q?FP4430YiWKHjme64Euz1KHLhwHrWlz4/N6Uia8D79eLVi3erHUhi/CXaF8Nb?=
 =?us-ascii?Q?xzxrb9HvFL1+lnNkvjfIHc+Jr2abU4B3IivdqpeZSIKkd1bDYRXZKdJtaHDC?=
 =?us-ascii?Q?Os45/oM6BFpWYPRxRNDKuAUYLtAl+GdUTRl6o8BrZjtyCMkS5pmlDOwc3Kk8?=
 =?us-ascii?Q?xIwNf7CCxUu3RmgLXdkQ1lFB05qSb2G7pt+MKFHqR8qcU/LOJClpyQgmcC4z?=
 =?us-ascii?Q?uocaPppgxrNrtEZjdP0Q/vdAdMvMdndvD6z0MopOqc5+l6V8uG9dp5lnIwWo?=
 =?us-ascii?Q?pxy1XneQB4b8pEsqjPRxIGqzUvERepHhuj1//jebET31U3RLSwBTLPv37ZHN?=
 =?us-ascii?Q?NaxTojhn7hhCT4DYY1GWh2MyM00ndEc/O1IE3Uv1n8EPMAj/zQhI4hHAkvAO?=
 =?us-ascii?Q?AWKCge4O/RnfIe5jdzmC/MiQUsj7PIo6wBpGu89oV6HMOHFftoZWwpo3eXtr?=
 =?us-ascii?Q?c2Cq8GecQcGyXLaGdjAeDU5nfFZKWDocdfX9z1dRxtiTFdtzirb8HiXIwGs1?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46adc726-fea1-40f8-5db8-08dad87e6d28
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 18:11:15.0654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Dh7ev9kyAnVNYchqqb5B3vH5xDWQm6dOUNmOMJcMv934chlDvF04M2zKXYsyCiQSD2+w+FAjIxjNnbnZdRLpV8HfWpjA+ENxZg3r6kUd5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7523
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/mtl: Define new PTE encode for
 MTL
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

On Wed, Dec 07, 2022 at 12:56:44PM +0530, Iddamsetty, Aravind wrote:
> 
> 
> On 07-12-2022 05:09, Matt Roper wrote:
> > On Tue, Dec 06, 2022 at 01:07:28PM +0530, Aravind Iddamsetty wrote:
> >> Add a separate PTE encode function for MTL. The number of PAT registers
> >> have increased to 16 on MTL. All 16 PAT registers are available for
> >> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
> >> pages.
> >>
> >> BSPEC: 63884
> > 
> > I think you'll also want to include pages like 45015 (ggtt) and its
> > various equivalents for ppgtt since that's where the important layout
> > information is given.  And likely 63019 as well.
> > 
> >>
> >> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Co-developed-by: Fei Yang <fei.yang@intel.com>
> >> Signed-off-by: Fei Yang <fei.yang@intel.com>
> >> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 33 +++++++++++++++++++++++++++-
> >>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h |  4 ++++
> >>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 32 ++++++++++++++++++++++++++-
> >>  drivers/gpu/drm/i915/gt/intel_gtt.h  | 13 +++++++++--
> >>  4 files changed, 78 insertions(+), 4 deletions(-)
> >>
> 
> <snip>
> >> +
> >> +	switch (level) {
> >> +	case I915_CACHE_NONE:
> >> +		pte |= GEN12_PPGTT_PTE_PAT1;
> >> +		break;
> >> +	case I915_CACHE_LLC:
> >> +	case I915_CACHE_L3_LLC:
> >> +		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
> >> +		break;
> >> +	case I915_CACHE_WT:
> >> +		pte |= GEN12_PPGTT_PTE_PAT0;
> >> +		break;
> >> +	}
> > 
> > I forget what the plan was...are we going to move away from 'enum
> > i915_cache_level' and start working with PAT indices directly soon
> > (especially since the set_caching/get_caching ioctls are getting axed
> > and vm_bind is supposed to start taking platform-specific indicies
> > directly)?  If we're still using cache_level, then it's not clear to me
> > how the current platform-agnostic enum values (which talk about L3 and
> > LLC) are supposed to encode the L4 behavior we want on MTL.  It seems
> > like we'd need to extend the enum to also somehow reflect L4 behavior if
> > we were going to keep using it?  But given the continuing expansion of
> > caching functionality and complexity, I thought that was one of the
> > reasons why we wanted to get away from these platform-agnostic enums;
> > the userspace that actually cares about this stuff has the same PAT/MOCS
> > tables we do and knows the exact index it wants to use for an object
> > mapping, so eliminating the PAT idx -> cache_level -> PAT idx dance
> > would cut out a bunch of confusion.
> 
> The current plan is not to expose PAT index setting via VM_BIND but go
> with the defaults. Hence using the i915_cache_level till we decide on
> enabling PAT index setting via VM_BIND.
> 
> Also, IIUC the cache level we have in i915 apply to L4 as well (BSPEC 45101)
> 
> I915_CACHE_NONE -> UC
> I915_CACHE_LLC/I915_CACHE_L3_LLC -> WB
> I915_CACHE_WT-> WT
> 
> But I do not see a means why which we'll know that L4 cache is present
> on the platform to select the appropriate cache level.

I may be misunderstanding since the caching isn't an area I've
worked with much in the past, from reading the kerneldoc descriptions on
this enum, it sounds like I915_CACHE_LLC would be be COH_2W?  And
I915_CACHE_L3_LLC COH_1W?  It looks like you're programming both as PAT
index 3 (i.e., 1W coherency) right now, which confuses me.

> 
> > 
> > It's also hard to follow these functions right now because it looks like
> > you're doing an implicit cache_level -> PAT index conversion, but also
> > mapping the PAT index bits into their placement in the PTE as part of
> > the same operation.  The behavior might turn out to be correct, but it's
> > really hard to follow the process, even with all the bspec docs at hand.
> > So if we do keep using cache_level for now, I think it would be better
> > to split out a MTL function to translate cache level into PAT index
> > (which we can review independently) and then let these pte_encode
> > functions handle the next step of figuring out where those index bits
> > should land in the PTE.  If the bits are contiguous, you can also just
> > define a mask and use REG_FIELD_PREP too.
> 
> sure i'll translate cache_level to  PAT index and then program the PTE
> using those.
> 
> > 
> >> +
> >> +	return pte;
> >> +}
> >> +
> >>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
> >>  {
> >>  	struct drm_i915_private *i915 = ppgtt->vm.i915;
> >> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
> >>  	 */
> >>  	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
> >>  
> >> -	ppgtt->vm.pte_encode = gen8_pte_encode;
> >> +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> >> +		ppgtt->vm.pte_encode = mtl_pte_encode;
> >> +	else
> >> +		ppgtt->vm.pte_encode = gen8_pte_encode;
> >>  
> >>  	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
> >>  	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
> >> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> >> index f541d19264b4..c48f1fc32909 100644
> >> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> >> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> >> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> >>  			 enum i915_cache_level level,
> >>  			 u32 flags);
> >>  
> >> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> >> +			enum i915_cache_level level,
> >> +			u32 flags);
> >> +
> >>  #endif
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> >> index 82203ad85b0e..3b6f1f6f780a 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> >> @@ -246,6 +246,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
> >>  	}
> >>  }
> >>  
> >> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> >> +			enum i915_cache_level level,
> >> +			u32 flags)
> >> +{
> >> +	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
> >> +
> >> +	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
> >> +
> >> +	if (flags & PTE_LM)
> >> +		pte |= GEN12_GGTT_PTE_LM;
> >> +
> >> +	switch (level) {
> >> +	case I915_CACHE_NONE:
> >> +		pte |= MTL_GGTT_PTE_PAT1;
> >> +		break;
> >> +	case I915_CACHE_LLC:
> >> +	case I915_CACHE_L3_LLC:
> >> +		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
> >> +		break;
> >> +	case I915_CACHE_WT:
> >> +		pte |= MTL_GGTT_PTE_PAT0;
> >> +		break;
> >> +	}
> >> +
> >> +	return pte;
> >> +}
> >> +
> >>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> >>  			 enum i915_cache_level level,
> >>  			 u32 flags)
> >> @@ -993,7 +1020,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
> >>  	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
> >>  	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
> >>  
> >> -	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
> >> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> >> +		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
> >> +	else
> >> +		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
> >>  
> >>  	return ggtt_probe_common(ggtt, size);
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> >> index 8a3e0a6793dd..4bb7a4005452 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> >> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> >> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
> >>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
> >>  #define BYT_PTE_WRITEABLE		REG_BIT(1)
> >>  
> >> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
> >>  #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
> >> -
> >> -#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
> >> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)
> > 
> > This bit is never used anywhere in the patch.
> correct the default cache level we have will map uptil PAT index 3 hence
> didn't use it and since platform supports it and in future when we have
> PAT index setting this will be used.
> > 
> >> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)
> > 
> > As noted above, 
> > 
> >> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
> >> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)
> > 
> > It sounds like these bits have been around since gen12; why didn't we
> > ever have to program them in the past?  Is there something that causes
> > the PAT index to never get used on the pre-MTL platforms?
> these are mapped to _PAGE_PWT, _PAGE_PCD and being programmed in
> gen8_pte_encode. On the MTL we have new PAT bits in PTE and since the
> way these bits are programmed is different redefined for better
> understanding.

In that case why does it still have a GEN12_ prefix?  We should use
"MTL_" instead since this doesn't apply to any of the platforms that
used to be known as "gen12."


Matt

> 
> Thanks.
> Aravind.
> 
> <snip>

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
