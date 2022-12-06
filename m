Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F526644FBB
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 00:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E196B10E008;
	Tue,  6 Dec 2022 23:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 058A310E008
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 23:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670369991; x=1701905991;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YimorqlBReSPvdaDanDD7iCx72RF9WguegceUNdFl3E=;
 b=GQJE6W7yuyMLqeLmJWUfKBHNQP2kKb7smEQCJOXu9b9mzgm1E/Hiekhe
 ugWA7WMbLtMcMRuL16E6QoMjotc8z9VSwUwiJLuO7nTjiRHYBg1V0RQkO
 qOuP+tNFUYFAqC5XT0bRmFmRBczPfICaR5n78mxGYrBHXdHNOLzgQ8FpY
 MVGwSNJeb0Ti2LAPTwp/56Sc3qUTRpafrdfB6y2ASoUhj0yRKnVhu8OrY
 rZlzq1f15/MHNshjeJ+VDpCMlD/cnSKn9CoKEF28r8vPi692WaGKDU5P9
 bpsjaKy+DJefRUwgzbo7YQPxLK2P0tzfgU5dP/VkS4dFIvdMeRUkabg2M A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300176670"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="300176670"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 15:39:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="678927122"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="678927122"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Dec 2022 15:39:51 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 15:39:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 15:39:50 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 15:39:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mt3HNa9l+LPqSlbco2MQZhSAS0Zysek+yuj8e6XbA1O5hLZocgdVZl247wFO1cgd0l+JOnYLaVkjzOnlsN18U4WUjlO5F+afzK6NSTstwuayOQChLsDfTVKAGWIEoYD1R4NumvuFJi6uRrOERcfonzMdVCX9hXGoHkaN/Y6Dpbucl94RC8xW72c+oPK6Cs5+i5+k3wNk8su8HrrC/N/HF9EX4lRlferE8ueQaCyx7kqOr18GevdlFPpTim/+ZYg22ovc+IUGhcfV8IMjnES/RTsCBFZYKTNeaKB7RVDHnxgQnuwy/CdpE0yEoOaJAbPk1GiAg4j6VxdToH5tuRDF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQbrmy3nlcpyS5aMnp13Zk2YiMt1ZC/Uy1dkY9O5gdU=;
 b=eQlbVHJQ/kS92JMv42JCn3CKSEQ138NdkNbikAQ2cXgZBfUztdgQDxqQyc1DASUVoE71azQEIfkMKXg6Ttl4eT5EgUMZnK5XjRUVDJ7AWv02cnzUyTP21M+Y/dC2579bxN4sWDVm+KT+eYL5o/zLcJciGLWzP257QcQr4e6T4Pni9WGR+zEv1wxsgVw+EYTZu1p8o2T1uqnM8ncxV7qvfVKhmmrJnJT58Z+UBTmC+YR25jL0UOMKKB+tQyrgobbLwj9+jFGryW67aqUwyChA7VcZ3kFCzi4faMtto5ONQ8Pf+xti1/rHo1UHs3xgDMQeidigP+1TTE3DMwY79/w2pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 23:39:48 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 23:39:48 +0000
Date: Tue, 6 Dec 2022 15:39:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <Y4/SwfKbvCT/ANdp@mdroper-desk1.amr.corp.intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6f0bec943061dfa4604e3c479f44e98169ebd082.1670311877.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: BY3PR03CA0006.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::11) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|IA1PR11MB6289:EE_
X-MS-Office365-Filtering-Correlation-Id: de819274-06eb-4d54-f4fe-08dad7e32986
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jdzD9OkaTUPlx9G+H/JQtidQumxTKavq5kDaweGy5+C4JLpYD9azzmmyT/5slzKIoopbGHgE2yPf800lqG4nnfimaEg9u9UL8Bz65XNfof9/jxmTTNWC8PpaECSzU0+AvjGEtnAFflkD6B2xWh4fZVhusLCOmgimm+DtnqnDXxiqTtfKcQhstUOOECbCQxXRGg0NbbpXb8Nyq9dcWu4DtI+KmkOGJf5vH7V4m+gC6ySW26R+Oq6xzb1yv8iA1L4JKGwosvYS7WKhLb8Ae56sa3VmtCo0dD6ukP9xyJcPhrfd4k4EsFw83ZQDI4PPj8nQyiElBFCyloAEFaeOzLbBzJ37gSt3CgmhuS+upRwGfPS063tOeSmywpf5azDxnQv9VL474gqiNPn3BFD/raMdml3LAC4uD5RgEQBQqXx1tGJ1ABOVEG1uoQE6NHFq+1llmo036C3HWCqE9X5cRSfeQzg8WCIv6RMljIg3GDvkmF3aUi5d87H2xyKfnDkj4AQDxyxGs8c06eYckUYleB5v9h0/I6PKj/bpXYiB230dXHgnwtafesp3FIvEln0yxCUk3LDpNL7oD9yV8G04sge03gbD3jHT+Nt3IiBDYOwrqh0JNGtPYeukbvva6xae+LRH2qKLxZfoeAqDIm3FFczEzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(366004)(376002)(136003)(451199015)(86362001)(66946007)(2906002)(4326008)(8936002)(6862004)(83380400001)(82960400001)(66556008)(186003)(6486002)(6636002)(54906003)(66476007)(478600001)(38100700002)(8676002)(6506007)(5660300002)(316002)(107886003)(6666004)(26005)(41300700001)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Xt5qjAUaqFje7dEKWpLxPP2qkLB8TstEgKgfGZKn3Q6+w/JGTifCaI++mgkl?=
 =?us-ascii?Q?PeEOcEehyuSZX3HCU1Komh540wT5UHjVM/S20sZ46lMU3/8G+6N410F+M7Uy?=
 =?us-ascii?Q?cBPPwUeB+A3kKYwr3Yl2A8tT9zfDJzhdQiW5kk5Ww5CZ9eXKWGB/jAOBOvuu?=
 =?us-ascii?Q?gXMCsfKbT2SPpJjypzy/M+p3fDxmNrOMTHI7X/YiPyCaXWoR1d7mP4dUQgMz?=
 =?us-ascii?Q?VsOyJjU8yC5pcHKKHTM1k72CvWun6YUIKA1QoG+CjxnSnlMefXCOok6ahD1j?=
 =?us-ascii?Q?Hkc2Re1w1A4gVNHMc9aqNhStXITf6lj9QhGPbQJda/bRGonaFxObhsYPw5dP?=
 =?us-ascii?Q?QBHnFgriiQJFZxmHHY2nWcX4aW6/hXYvTGa6WasP5YkdERJ/ibTwv2CwMd5/?=
 =?us-ascii?Q?aiYJM/G4L5scIL4RJ2WtVBe9gbJ8o9OQifqT6H9hv+1kVrPIOceLkQ3MGUH3?=
 =?us-ascii?Q?LvVp5HNgRtDTRKnC6sB6nfyP1jFJtWu3G6EUqhiuB75YPmbKOMAcWNdUsZrS?=
 =?us-ascii?Q?oSz41smu6Hst0aenehM0LS2KIT63hIsPeBl1bYd2rnku2xs/UCaovVuBaI6l?=
 =?us-ascii?Q?nNLSLkQQ8lAQFoOx6GyeiyDSa2T+ZuSO9r+vq3v3Mmdnx0ADopsbF6QQngSu?=
 =?us-ascii?Q?0XK4d3RmBT0L7GG4amBT/Hl61aRPuWotBhf32tzCx4DBK0n8Uxpb0Rwcu+Ys?=
 =?us-ascii?Q?/wJtwA2H/n36mqRw4gMLISNi4l0ckyN0b6bdneAB3+1elSytTRvo2zXoIMUp?=
 =?us-ascii?Q?5/nW0/OTCg1BaAOsUfP72XAOAx1E2RGSzuRkE1IFDOvJoMhPfdi64535QW15?=
 =?us-ascii?Q?HcI9Y4/MLDC03F7KfCcOxSm1SW02iUgBuUgLJXO6WnWLZsBQCsVtt12fC9g7?=
 =?us-ascii?Q?GaPokzsnAKvPG97zGhUDYnvf6hsC8UlxGQwwdTcmk50JK2x7wzow+n2UN50j?=
 =?us-ascii?Q?jwFKDUUDOK4lsmaH4rCne6PLHFLgoWbBGRKNDnTxyK+0DTBpC0au1Hpf/Yco?=
 =?us-ascii?Q?CJA0IuBPhRwyOeeHJQZdX3FyIy0anrN1sgD6/tbU+LAhkswJpVzbyY5Rt5qX?=
 =?us-ascii?Q?SBkXx8TrmpfBfor/K9Es1EBz4zlnr0UL1hTXhUea9fVnwpG7jULrorGBQbqe?=
 =?us-ascii?Q?iY7XrDx2rRLAtTfvI8E/KJvF54gYBsc7Gsa54M9jOX+R8s1b8H6wkvI4AStK?=
 =?us-ascii?Q?irzi07oqyRnJU4NGk6rD3T5b4BQqB/beVqlIZb6stW1K56eY0s87t33Mnvl0?=
 =?us-ascii?Q?MUmVKK99NrxYIxZsmT27VFGX9QWUPEpD+5TJSIhaKXSrHxoNroCc8zV1/3QX?=
 =?us-ascii?Q?86kG0K4sTKMUfTMyqvbtGNumpaYD9MdrQkpghZ4UNAY5bfSL7uRvxY+xe2US?=
 =?us-ascii?Q?zdf0p41i7rziTgWPzmpj8rmEGyA6cMjbioEB3drpBVgxXD3kB8pouguX7IXs?=
 =?us-ascii?Q?P7rQnrWZNSuRRnRRVuOZjUu48LHpPB4UmWEQlWldKTXHsvYpz0MIsMDz+8q+?=
 =?us-ascii?Q?AxOE//xY1e937dFZOOJXpsE/ROWHpBjmrLMB0tX9CjpvVLd0bFrXAn1weu74?=
 =?us-ascii?Q?vJhO4fDjQjjhs+DUkNz9KJPDkaOQvZ9QgtwFutMYTBOhaKuiJ5q9ywVZXag4?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de819274-06eb-4d54-f4fe-08dad7e32986
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 23:39:48.2323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VLx5bZ3xchf1zZcBOjV4s8TNJ1OtWbUs3QcO29TSSuNk9BrjCSg0JyaVcQGSoZWu0Sp3621Duiw5WJGIkR8vF9Od5ElV06PjTQ9wtZlh/AM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
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

On Tue, Dec 06, 2022 at 01:07:28PM +0530, Aravind Iddamsetty wrote:
> Add a separate PTE encode function for MTL. The number of PAT registers
> have increased to 16 on MTL. All 16 PAT registers are available for
> PPGTT mapped pages, but only the lower 4 are available for GGTT mapped
> pages.
> 
> BSPEC: 63884

I think you'll also want to include pages like 45015 (ggtt) and its
various equivalents for ppgtt since that's where the important layout
information is given.  And likely 63019 as well.

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Co-developed-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 33 +++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.h |  4 ++++
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 32 ++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_gtt.h  | 13 +++++++++--
>  4 files changed, 78 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 31e838eee2ef..4197b43150cc 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -55,6 +55,34 @@ static u64 gen8_pte_encode(dma_addr_t addr,
>  	return pte;
>  }
>  
> +static u64 mtl_pte_encode(dma_addr_t addr,
> +			  enum i915_cache_level level,
> +			  u32 flags)
> +{
> +	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT | GEN8_PAGE_RW;
> +
> +	if (unlikely(flags & PTE_READ_ONLY))
> +		pte &= ~GEN8_PAGE_RW;
> +
> +	if (flags & PTE_LM)
> +		pte |= GEN12_PPGTT_PTE_LM | GEN12_PPGTT_PTE_NC;

What is the GEN12_PPGTT_PTE_NC?  The bspec is a bit confusing since
there are several different PTE layouts for different ppgtt modes, but
the ones I checked had bit 5 listed as 'ignored' so I probably wasn't
looking in the right place (it's also listed as reserved on bspec
63019).

> +
> +	switch (level) {
> +	case I915_CACHE_NONE:
> +		pte |= GEN12_PPGTT_PTE_PAT1;
> +		break;
> +	case I915_CACHE_LLC:
> +	case I915_CACHE_L3_LLC:
> +		pte |= GEN12_PPGTT_PTE_PAT0 | GEN12_PPGTT_PTE_PAT1;
> +		break;
> +	case I915_CACHE_WT:
> +		pte |= GEN12_PPGTT_PTE_PAT0;
> +		break;
> +	}

I forget what the plan was...are we going to move away from 'enum
i915_cache_level' and start working with PAT indices directly soon
(especially since the set_caching/get_caching ioctls are getting axed
and vm_bind is supposed to start taking platform-specific indicies
directly)?  If we're still using cache_level, then it's not clear to me
how the current platform-agnostic enum values (which talk about L3 and
LLC) are supposed to encode the L4 behavior we want on MTL.  It seems
like we'd need to extend the enum to also somehow reflect L4 behavior if
we were going to keep using it?  But given the continuing expansion of
caching functionality and complexity, I thought that was one of the
reasons why we wanted to get away from these platform-agnostic enums;
the userspace that actually cares about this stuff has the same PAT/MOCS
tables we do and knows the exact index it wants to use for an object
mapping, so eliminating the PAT idx -> cache_level -> PAT idx dance
would cut out a bunch of confusion.

It's also hard to follow these functions right now because it looks like
you're doing an implicit cache_level -> PAT index conversion, but also
mapping the PAT index bits into their placement in the PTE as part of
the same operation.  The behavior might turn out to be correct, but it's
really hard to follow the process, even with all the bspec docs at hand.
So if we do keep using cache_level for now, I think it would be better
to split out a MTL function to translate cache level into PAT index
(which we can review independently) and then let these pte_encode
functions handle the next step of figuring out where those index bits
should land in the PTE.  If the bits are contiguous, you can also just
define a mask and use REG_FIELD_PREP too.

> +
> +	return pte;
> +}
> +
>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>  {
>  	struct drm_i915_private *i915 = ppgtt->vm.i915;
> @@ -963,7 +991,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
>  	 */
>  	ppgtt->vm.alloc_scratch_dma = alloc_pt_dma;
>  
> -	ppgtt->vm.pte_encode = gen8_pte_encode;
> +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> +		ppgtt->vm.pte_encode = mtl_pte_encode;
> +	else
> +		ppgtt->vm.pte_encode = gen8_pte_encode;
>  
>  	ppgtt->vm.bind_async_flags = I915_VMA_LOCAL_BIND;
>  	ppgtt->vm.insert_entries = gen8_ppgtt_insert;
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> index f541d19264b4..c48f1fc32909 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> @@ -19,4 +19,8 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>  			 enum i915_cache_level level,
>  			 u32 flags);
>  
> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> +			enum i915_cache_level level,
> +			u32 flags);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 82203ad85b0e..3b6f1f6f780a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -246,6 +246,33 @@ static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>  	}
>  }
>  
> +u64 mtl_ggtt_pte_encode(dma_addr_t addr,
> +			enum i915_cache_level level,
> +			u32 flags)
> +{
> +	gen8_pte_t pte = addr | GEN8_PAGE_PRESENT;
> +
> +	GEM_BUG_ON(addr & ~GEN12_GGTT_PTE_ADDR_MASK);
> +
> +	if (flags & PTE_LM)
> +		pte |= GEN12_GGTT_PTE_LM;
> +
> +	switch (level) {
> +	case I915_CACHE_NONE:
> +		pte |= MTL_GGTT_PTE_PAT1;
> +		break;
> +	case I915_CACHE_LLC:
> +	case I915_CACHE_L3_LLC:
> +		pte |= MTL_GGTT_PTE_PAT0 | MTL_GGTT_PTE_PAT1;
> +		break;
> +	case I915_CACHE_WT:
> +		pte |= MTL_GGTT_PTE_PAT0;
> +		break;
> +	}
> +
> +	return pte;
> +}
> +
>  u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>  			 enum i915_cache_level level,
>  			 u32 flags)
> @@ -993,7 +1020,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.vma_ops.bind_vma    = intel_ggtt_bind_vma;
>  	ggtt->vm.vma_ops.unbind_vma  = intel_ggtt_unbind_vma;
>  
> -	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
> +		ggtt->vm.pte_encode = mtl_ggtt_pte_encode;
> +	else
> +		ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>  
>  	return ggtt_probe_common(ggtt, size);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 8a3e0a6793dd..4bb7a4005452 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -88,9 +88,18 @@ typedef u64 gen8_pte_t;
>  #define BYT_PTE_SNOOPED_BY_CPU_CACHES	REG_BIT(2)
>  #define BYT_PTE_WRITEABLE		REG_BIT(1)
>  
> +#define GEN12_PPGTT_PTE_PAT3    BIT_ULL(62)
>  #define GEN12_PPGTT_PTE_LM	BIT_ULL(11)
> -
> -#define GEN12_GGTT_PTE_LM	BIT_ULL(1)
> +#define GEN12_PPGTT_PTE_PAT2    BIT_ULL(7)

This bit is never used anywhere in the patch.

> +#define GEN12_PPGTT_PTE_NC      BIT_ULL(5)

As noted above, 

> +#define GEN12_PPGTT_PTE_PAT1    BIT_ULL(4)
> +#define GEN12_PPGTT_PTE_PAT0    BIT_ULL(3)

It sounds like these bits have been around since gen12; why didn't we
ever have to program them in the past?  Is there something that causes
the PAT index to never get used on the pre-MTL platforms?

> +
> +#define GEN12_GGTT_PTE_LM		BIT_ULL(1)
> +#define MTL_GGTT_PTE_PAT0		BIT_ULL(52)
> +#define MTL_GGTT_PTE_PAT1		BIT_ULL(53)

If we do an explicit cache_level -> PAT index conversion as mentioned
above, we can drop these two bits and just do a REG_FIELD_PREP() with
the MTL_GGTT_PTE_PAT_MASK defined below instead.


Matt

> +#define GEN12_GGTT_PTE_ADDR_MASK	GENMASK_ULL(45, 12)
> +#define MTL_GGTT_PTE_PAT_MASK		GENMASK_ULL(53, 52)
>  
>  #define GEN12_PDE_64K BIT(6)
>  #define GEN12_PTE_PS64 BIT(8)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
