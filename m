Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4E69FD2E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 21:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4604610E1EA;
	Wed, 22 Feb 2023 20:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E91F10E1EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 20:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677098901; x=1708634901;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ScOixDfMU3X8moBuz+UUOEmay/otPTxbA53bM0AaZM8=;
 b=ehuQL5AgnzT1DyVafVJep0r+i+lvzbehac9LvX/Jblih2kW4mnzMNGYa
 eulLQ6WE353gPk1Dp0mNhmj30BrRkiE/0m1XIMGaTvOgZjIegw8jy//qg
 Z1lA7Q4JGskHBhpc7+CMZCPHW2LCKP2mh4lpZJCx5OX0ly7G8PX7cm2yz
 LdbL8jj0xyHAQwEl5TNYKyHJ95jgUTZVePDX1s/CqvNF1q5yliOxkeUJF
 k2rB9CPKUrs8eJ7GyP87XRNlX+muU3Izk0bWtb4AEy5BJ+Qh17naMLJNz
 uLR7dfvMbo1NA8Zq6I06j6LucPVmJvuZRvcAIZhOh23ctkQxSEouyJfmZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="313411415"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="313411415"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 12:48:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="740982048"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="740982048"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 22 Feb 2023 12:48:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 12:48:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 12:48:19 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 12:48:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AkBQnEjhuR9SRFSznT73SKHB7HZpZaFB3QaE4OJCSylvN1IIqcGCPCJJpm49FmCxmQINJD4lnahR5+EIMOsGmTaf8/kJrvohpkkJR3oiXZGwsOPk5PfYiawPrUXtWDG9XG2NGi0QCfKirmvJLDs3U4+qbuwxMXIfuntyPfb7y9QLj39GFISc90SRviikzPYjczZfCeA2qkccA5m1/2TV/FM1LxW5Zma1+rmKE7NxTPCFyhpKiTUQv++r3p9Z6V1LTb1Vt+EM4ozBKLR60l2DjAByNNlDBZzzp268Y2or2fgLaVY7Lt0KNFegwgbunvIEOCvSPzTMAYraVWmeA4cewg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+fkrSim/ppV3Zof0ed/MPN4mZ7RxU0pWOVoYJ1wRe4=;
 b=Tmi3bXt9HQIiou2tX5+MqW2ZrZNKeAIzIj062XzZOf7x4eMB+eDt9mXHAaX8Bng1fPSYeFdReBMfsX2HUBB/jbw8e7O1X9o2OVkobL+ki7NTnZryhMrG4UZvbcjDHuBN6Mux4UrZf7V3lMZHn8756eybD4UrWwlKAiYahV9nsmT13/t8qUH9nOShAlQdAIgc8jr7PGseoBwIYBsz44kfH0TvMY0cQZ4QvKCsMwJYifXaM8jqhQn8dHXy9iRf8h8oWge5EquUkIC5B6hAQ9MpMonXTsm/vJ1WrzchfUEO8sbDUCFHdMVsj0InD8gd6VH9NFvbPuM4vgjL51APAG9d3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5388.namprd11.prod.outlook.com (2603:10b6:408:11d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.19; Wed, 22 Feb
 2023 20:48:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6111.020; Wed, 22 Feb 2023
 20:48:11 +0000
Date: Wed, 22 Feb 2023 15:48:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y/Z/hoSnbKMvSLoI@intel.com>
References: <20230208105130.3233420-1-andrzej.hajda@intel.com>
 <cc097be1-5b7b-7702-c9f5-873ffebc8b34@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cc097be1-5b7b-7702-c9f5-873ffebc8b34@intel.com>
X-ClientProxiedBy: SJ0PR13CA0193.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5388:EE_
X-MS-Office365-Filtering-Correlation-Id: efed2aa4-f60d-4275-cb5f-08db15161c34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GxqtgYZlqhnGtf4QzqfT3cxme3puad3RidrBmN1CeHmN+bs34oYBm8OduWTreYUm5RtYhZlf+ayK1GjeSi+OaEox7CXUxKx1pHvEE43Sz0nvw2p/kU8cQ4ZtDxOIwRpCMIkfyQ56lhOHIVMwmHeJeX/EAqcC2HcE+6rNX7PBVmZC4fYDGCRS9GkYRidqm262XukepxPtMb++hvhuZdUGDWciiIn2olTmFNlK0GTU5vJ64Oa1JC8PRPEKc3RYh5UBYVmOI+icV7R67bhEyMu3HDiVSFBYIQANeOXtzaY/Tci+tF0izTnXbBks7dorFGnc4V5aNqPhcDQMF9hoFBFB80qM+26bTNnL9dVqmmlHYQyrb0+2gAYXh2Wto9AckyFqZh1iB8RCqUmrm3nStxWKbzr+r84++RKKMo8K1z/EeYb69XSdU7SYSyt4+hH41oeeX+SnZWP5+iuONpkb8RZXB0Dgm4Kgg1kGVy4lwSK1BlXN5Ad5FvpsDGaE3C3PbfQWN7ivErYmewekJIioKY/VbLQI5QhLosO8q80fTvLudrVv8Ei/9E3RE3S0R7TNFkihfBtwg5qIorB6nTnZdSrHsDqxvPdB5uHqIGwhYNuKVIkJuv87Nvk0mcTm0b7ByUtT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(136003)(376002)(366004)(451199018)(2906002)(44832011)(5660300002)(36756003)(83380400001)(186003)(26005)(2616005)(6506007)(82960400001)(38100700002)(4326008)(66556008)(8676002)(316002)(37006003)(66476007)(66946007)(8936002)(54906003)(6636002)(6666004)(86362001)(966005)(41300700001)(478600001)(6512007)(53546011)(6862004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Lbku60gZYiB9PQaIEHxdsiUth4TNK2WsvOY0vknE0la/EMuWd61liEj0OwVk?=
 =?us-ascii?Q?lIwruqR8e3mPpMhAi6yPSEzxWdMUzz+RTYk+gFqDvoy1d2oI6kfcc8VzanId?=
 =?us-ascii?Q?jkmL/iM8VpjLWOTUhHnVk1pRgHD9h2uYCgE6lhdJ5WUFgjI5Ig/gffZf2EVM?=
 =?us-ascii?Q?gf2T4ubxWOyq5uLBcGPtCQldfpX9yj/rwtg0o3K+iWoXlikvw8L8U13VD41N?=
 =?us-ascii?Q?IoerHba/hZ9SRG471YlndMAoJKhjA2cFE2GIL7iK8wTEitVGcwNhLQF+SPLo?=
 =?us-ascii?Q?0+sISHfKH+IlNSvYEMw6XBD5YduE+XeH7VlokxClo9mfxwgmmXhbEMnJAQjO?=
 =?us-ascii?Q?cg31EJ3EDAhK675j+G5G/LE7ySPUDBaa+dlY0nSPI3MTkCSZPbgj6GLpEbmq?=
 =?us-ascii?Q?X+eCdxRWCEnk8jFGnLdu0uFSY43splgXKP3Va+EnG6OZyT4Vzwv1CXC6NTmq?=
 =?us-ascii?Q?dK+E4kLIQqVqNLVce1cA9/ulAdf0fH5wea+SucxY1tA3I3VARnAHBpyUQ/y4?=
 =?us-ascii?Q?bJ04zK+6EqhrAAxmmYjCTTiXCF5Egc9zMkGx44lsNIqh5ULXFAgwD1sdiLkZ?=
 =?us-ascii?Q?qmO3f7awLZTiNNZVintvE4QKt2GmGSUqUx3pt8gW7K/Va/trASW8g+fHwJ4a?=
 =?us-ascii?Q?OTkXE86awwtKcDPeTvd5iUILbPgMnqxMKUQCRkvlLcwMTJIyQenXt9i2iDI4?=
 =?us-ascii?Q?if/xM2NZ1V939DNVmMGMCZVIXwr2fal6pCNEmswKtr3r+14R1IcWm+pLXx8Q?=
 =?us-ascii?Q?olA8vYBQhIFzHcvFC90VNMaVpDpXN6D9xalfWTb8+HiaSmIBh2MYzAA6rTk2?=
 =?us-ascii?Q?P//sBtyRAYDFbal9OEeL3COGHr3tvoHuzNsqi5Kt4fXjR33XTeLTXKJQa5lU?=
 =?us-ascii?Q?m+0MB4WK+OVJClbIaRc2noWerHvKrT2Z3B2KZreShFAvqbkZa5ISvEIzRW3n?=
 =?us-ascii?Q?CWmNYwLQ5XyW+t3mnp6OEfHyznjm6l9nNwf8xsBZkq+ms+YI0gQUrB3vW2PK?=
 =?us-ascii?Q?wMusLCn7UsjTm/41mlQa2ug64YWYrwPCL5OtGarqTI2wgPoMg9kap+QYibwk?=
 =?us-ascii?Q?z8l3beWBDgd4pG+pNT5ho9ke1kNystCAAR43grVYvlv35PQoz/dBjqi3l+kP?=
 =?us-ascii?Q?Efu0eSiixBXjPkVJqA+dIpdggUbBXzU6TKVnpjFapjLCFlp6tivWv0idy0Rn?=
 =?us-ascii?Q?CuSLBaSPa0PBOA4zZkaLDA3n4jbEcCbFwxRz51CiPc18W7K5GPXjPSFKokij?=
 =?us-ascii?Q?PQxoq56A3Vm/o3yWj3AfjqlFbkE4adQvGm68Vc21Yb8O+r8iWHJlsSvSlWKP?=
 =?us-ascii?Q?n6LJEcgKwzB6efEPmDanB8mkHkYHaoVfrH9/c/CfWRQiBhQaAwzsybfLKvJY?=
 =?us-ascii?Q?Vby8nrphlUj8ZsAtob2q9EaERvK18a32ePvY2Wg2nahcjw1gc8cLXajOfDo1?=
 =?us-ascii?Q?y9KnGnEIUaipy6jJkc3QS8f8xw1fbBX7yY81NQ8XiuXBgKNYGXTRII7LoUxY?=
 =?us-ascii?Q?zVTtH/OrVEhmlIjgX71qWtAaD54Cm3PzU10GzSEtN3CLfPwbKu5q9ugSDb2v?=
 =?us-ascii?Q?sXGCpNUb0w3Rs0EZwVPvNY8oFfGCUNHJaSLV6HhJ6/4fW8Ltjs5EUtOx+yPR?=
 =?us-ascii?Q?Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efed2aa4-f60d-4275-cb5f-08db15161c34
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 20:48:11.3648 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YzlQlmteXljNeudlZ+MCVOzxtkSgyTR5zL7EYZ+QvDWtE6Wl3v2PcVIIIrlamhysxddYz8EPJctVyIlnKn8gJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5388
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: add guard page to
 ggtt->error_capture
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
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 chris.p.wilson@linux.intel.com, Matthew Auld <matthew.auld@intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Wed, Feb 22, 2023 at 01:05:16PM +0100, Andrzej Hajda wrote:
> Hi all,
> 
> Gently ping on the patch. CI pollution is quite high:
> $ grep 'PTE Read access' CI/drm-tip/CI_DRM_12768/*/dmesg* | wc -l
> 308
> 
> Regards
> Andrzej
> 
> On 08.02.2023 11:51, Andrzej Hajda wrote:
> > Write-combining memory allows speculative reads by CPU.
> > ggtt->error_capture is WC mapped to CPU, so CPU/MMU can try
> > to prefetch memory beyond the error_capture, ie it tries
> > to read memory pointed by next PTE in GGTT.
> > If this PTE points to invalid address DMAR errors will occur.
> > This behaviour was observed on ADL, RPL, DG2 platforms.
> > To avoid it, guard scratch page should be added after error_capture.
> > The patch fixes the most annoying issue with error capture but
> > since WC reads are used also in other places there is a risk similar
> > problem can affect them as well.
> > 
> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > ---
> > This patch tries to diminish plague of DMAR read errors present
> > in CI for ADL*, RPL*, DG2 platforms, see for example [1] (grep DMAR).
> > CI is usually tolerant for these errors, so the scale of the problem
> > is not really visible.

is this info not relevant to the commit msg?

> > To show it I have counted lines containing DMAR read errors in dmesgs
> > produced by CI for all three versions of the patch, but in contrast to v2
> > I have grepped only for lines containing "PTE Read access".
> > Below stats for kernel w/o patch vs patched one.
> > v1: 210 vs 0
> > v2: 201 vs 0
> > v3: 214 vs 0
> > Apparently the patch fixes all common PTE read errors.
> > 
> > In previous version there were different numbers due to less exact grepping,
> > "grep DMAR" catched write errors and "DMAR: DRHD: handling fault status reg"
> > lines, anyway the actual number of errors is much bigger - DMAR errors
> > are rate-limited.
> > 
> > [1]: http://gfx-ci.igk.intel.com/tree/drm-tip/CI_DRM_12678/bat-adln-1/dmesg0.txt
> > 
> > Changelog:
> > v2:
> >      - modified commit message (I hope the diagnosis is correct),
> >      - added bug checks to ensure scratch is initialized on gen3 platforms.
> >        CI produces strange stacktrace for it suggesting scratch[0] is NULL,
> >        to be removed after resolving the issue with gen3 platforms.
> > v3:
> >      - removed bug checks, replaced with gen check.
> > v4:
> >      - change code for scratch page insertion to support all platforms,
> >      - add info in commit message there could be more similar issues

in general in i915 we keep the history in the commit msg itself as well...

But with this CI history behind I would like Tvrtko or Joonas to take a look
and merge to drm-intel-gt-next.

> > 
> > Regards
> > Andrzej
> > ---
> >   drivers/gpu/drm/i915/gt/intel_ggtt.c | 31 ++++++++++++++++++++++++----
> >   1 file changed, 27 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > index 842e69c7b21e49..6566d2066f1f8b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -503,6 +503,21 @@ static void cleanup_init_ggtt(struct i915_ggtt *ggtt)
> >   	mutex_destroy(&ggtt->error_mutex);
> >   }
> > +static void
> > +ggtt_insert_scratch_pages(struct i915_ggtt *ggtt, u64 offset, u64 length)
> > +{
> > +	struct i915_address_space *vm = &ggtt->vm;
> > +
> > +	if (GRAPHICS_VER(ggtt->vm.i915) < 8)
> > +		return vm->clear_range(vm, offset, length);
> > +	/* clear_range since gen8 is nop */
> > +	while (length > 0) {
> > +		vm->insert_page(vm, px_dma(vm->scratch[0]), offset, I915_CACHE_NONE, 0);
> > +		offset += I915_GTT_PAGE_SIZE;
> > +		length -= I915_GTT_PAGE_SIZE;
> > +	}
> > +}
> > +
> >   static int init_ggtt(struct i915_ggtt *ggtt)
> >   {
> >   	/*
> > @@ -551,8 +566,12 @@ static int init_ggtt(struct i915_ggtt *ggtt)
> >   		 * paths, and we trust that 0 will remain reserved. However,
> >   		 * the only likely reason for failure to insert is a driver
> >   		 * bug, which we expect to cause other failures...
> > +		 *
> > +		 * Since CPU can perform speculative reads on error capture
> > +		 * (write-combining allows it) add scratch page after error
> > +		 * capture to avoid DMAR errors.
> >   		 */
> > -		ggtt->error_capture.size = I915_GTT_PAGE_SIZE;
> > +		ggtt->error_capture.size = 2 * I915_GTT_PAGE_SIZE;
> >   		ggtt->error_capture.color = I915_COLOR_UNEVICTABLE;
> >   		if (drm_mm_reserve_node(&ggtt->vm.mm, &ggtt->error_capture))
> >   			drm_mm_insert_node_in_range(&ggtt->vm.mm,
> > @@ -562,11 +581,15 @@ static int init_ggtt(struct i915_ggtt *ggtt)
> >   						    0, ggtt->mappable_end,
> >   						    DRM_MM_INSERT_LOW);
> >   	}
> > -	if (drm_mm_node_allocated(&ggtt->error_capture))
> > +	if (drm_mm_node_allocated(&ggtt->error_capture)) {
> > +		u64 start = ggtt->error_capture.start;
> > +		u64 size = ggtt->error_capture.size;
> > +
> > +		ggtt_insert_scratch_pages(ggtt, start, size);
> >   		drm_dbg(&ggtt->vm.i915->drm,
> >   			"Reserved GGTT:[%llx, %llx] for use by error capture\n",
> > -			ggtt->error_capture.start,
> > -			ggtt->error_capture.start + ggtt->error_capture.size);
> > +			start, start + size);
> > +	}
> >   	/*
> >   	 * The upper portion of the GuC address space has a sizeable hole
> 
