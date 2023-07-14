Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49717754061
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jul 2023 19:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FE310E8C0;
	Fri, 14 Jul 2023 17:22:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AFF610E10E;
 Fri, 14 Jul 2023 17:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689355335; x=1720891335;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iu2flSLde6nwslOX82okFOO55bRNjjI0wT5/syS5mcs=;
 b=Qq94Uff3ToW73yuoy8ungmmGksUYp9PEBgnmhXu4/Jl8Vhlt3b1RpQM/
 9TgqkHWbOEniuLrY5MIED8nsnND3VpXjdO6EE2yemrx3dLZkL7r5JvyHu
 04kqHwNZ7445GECz1vNJ6WQFA/xcdixAtsjBES4KTkNj8jITSChl9NO1L
 1Mhm+Vho7odZARxIKQSNg+h8c1tCFeD+ziZCVB0tYgykq5tdVYSRQAIBJ
 ZEFHqi/KXfm8iCW5p9dtOyGfYoF3ZXqhepkzXX2Cg/RGJj8R8+2x10jMd
 NmS964xSacmC/9UVCbU3wnglrpg+QZhfNUhigs4cpDGIqXrT6iTaCtNPx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="364400363"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="364400363"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2023 10:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="757610057"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200"; d="scan'208";a="757610057"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 14 Jul 2023 10:22:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 10:22:13 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 14 Jul 2023 10:22:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 14 Jul 2023 10:22:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 14 Jul 2023 10:22:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ML/+XpMyso/td7/0DHvh8bcV13dLfuzBfBoVBKDOyBNebOz61IN34KRahbna5Faf+xHLBOeOs0M7zsAB59NEoAoi0VpOSaaei3OnfrRU4MrVTvzUAHP36m4/GfOv4G36hS7CE6OElzYoH4+yDeqFJ9tw5nCN9D9l40eTRLc8FYmsVsDT+iU2XUUTyV/6NFHzbxiHkre1shjv9jHgjQudVRnokTZMTV/ECYmOPZp2VekBC6gr6SXitTa/S7E+fodl8dkxZ0fK9SHkfZ5qeYzFNuankzH/s47xr1ge9aRl3k0PZDa3JmwJfEE8BqB9xRbW9BTIo4S8CxI/v0nkHkcg+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eieu5CDPhOQgHU51XhV43J1+EbV0RAIH+dZw7wUi8bs=;
 b=kCpMo0Bhjd4ZSZP8n0OSfjwXDBaho7PeCwBo8WX61Rf+RiPdh8d07T480i7g9Ca5PWqccT3RMAbezWNPgjZhhlwZhwt0LAyklMy6FMJzu/z9J+W5kZoV3ZLAupeYpGkhnUVXxYcX7i3SsA3YtalFjrm4yequZmiSfz7cckaCSWQbHfIfcSjiDwH2ZAC+wQN/PtpDStvsFksL6Tgi4P1IMJ5thaKGQiyJK/UyYv8nMbLMuXfeVz460UIExxI/yqwsXEuDpgOvc4WHt1A6offMRHkM39n1ZpN7/vLpzOW9l2K/ZzJrgPeAOhnHA3b3OoVI4qlRkyRG43dt8MxirdqM8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7589.namprd11.prod.outlook.com (2603:10b6:806:34a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 17:22:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2677:dfb9:456f:1227]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2677:dfb9:456f:1227%5]) with mapi id 15.20.6544.024; Fri, 14 Jul 2023
 17:22:10 +0000
Date: Fri, 14 Jul 2023 13:22:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZLGEPqoQWsBvTv52@intel.com>
References: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230711160214.463134-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0174.namprd05.prod.outlook.com
 (2603:10b6:a03:339::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7589:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fedc86c-6f9a-4b64-9579-08db848edb40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NfnE6GL6/sZmRxk0EZdW39ALtpl7HjhQg7vQMcyGzUTDt9f7czjpBjj+gnRe1Ssefe9EarmfvpQrjBMbDtnSmCFwBTGezij4fxjao90gpufNoT1BzuPvsETW7TIWl3Qe1V+YlsrTsebGibMB3W79cL+OBusAt6adsSw6QiTT5ot/lMAGSSocRfA6zPWeyg03PAeNNZ21wAHH7fE/DB7DTbSxltBiN4ToAMWpMHafuZ5UfH+DJwfjVZokfLQKUkZMQmn7ctlNynDxWPEl9Mtr+qyZVfAKSQz2nWYiB6TL/XBWA1PiAK1uV/hexBY0cyVJYnNf49TfNiuYov09nfDmhiFeDMDLa7j132qxRIcU5dgSI+JxO/9xgFcurAvIdD+MiBTvc6ZuIjHHY78cWvBiUCQrlM4i8RAuT0RbZZ04TmQlNfrH6wAl0O+lP2nflBln7pAcHNqU+pPqlLCi6akzI0lsWBmL1qulzPg98HqT7J8krLFD+l7ieUcprTFXYuf+SKgT0bwskyUgDLHnjaarOmr7Vo5MGO6/SCCONWd4mpQjFz1EBqZ9LAQ/296j+1N5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(376002)(346002)(366004)(451199021)(6486002)(478600001)(6666004)(83380400001)(2616005)(86362001)(36756003)(30864003)(2906002)(26005)(186003)(6506007)(6512007)(38100700002)(82960400001)(6916009)(4326008)(66556008)(41300700001)(8936002)(8676002)(316002)(5660300002)(44832011)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GnGl1YcfLqF+33KnoARdFJETIVMDy/DIrKT71TumD19flDzrD+jT+5z4r9ln?=
 =?us-ascii?Q?XsH0C04rvEbwJybA3pZ1WTB3UVHBELr0jcJV7El3fo+zy7DW1N7xAs99Al4M?=
 =?us-ascii?Q?Z2+bXc2yrzVm0Gx+G9H4ePIVM15g1A0q2Yhdk8POOewWVvJwADekZ/d5hKVH?=
 =?us-ascii?Q?tvrplifkF0iv/qXyjO6mXiag/IX0UmLVbAVvDRkTj111trtNSIeSn52TOCUo?=
 =?us-ascii?Q?vnBpVOm7IhJgqLmFyqQZgZNOydBiMiLudTpoDCSABZiiud+XuaGVdwLR71QC?=
 =?us-ascii?Q?bd3alZFSvkZuKVWOgXrlS8sPGy6zWKihOTRRb78pKga5ZdFLDFBOK/NOncFR?=
 =?us-ascii?Q?HK1jn4EUwcoEqpUYaZ/Qx8UcLxMWqUFTF8gW7fOoLkk3+0STRclwxjbFDRd1?=
 =?us-ascii?Q?cyS1lDQl8QUtLY6jRK55Ca0tzEBQ/68PPZN6FK78j3DUtxnrUnQvc24gcijF?=
 =?us-ascii?Q?1lV9SiS+p5C5ug8d3g9cquxP9f1dNOcFs9AofDxaigbAaUoMb+Ms8so6uUl3?=
 =?us-ascii?Q?ccOIMno+a5McEkd+NPvJMx6/6H3bZWpygfBFgeNow7Dy5MNATpVoPOJkQKaB?=
 =?us-ascii?Q?/e+G7Rg+NaVUiw2sz7j/a/MF9t635Ba4Hm/QPHzcxZmUDdkb+EugxATQL3pV?=
 =?us-ascii?Q?iq0ykux9LGtvMr3Mx+2+X9YC684nzbO+rK2QLfv9SNl7Rzsuk1cL7bhwF/3D?=
 =?us-ascii?Q?Jbcep1egPlpJpgPzDsMh0lB+9QG1E9DM4gFD7vXegwqzhO1PyYNbLPMRixza?=
 =?us-ascii?Q?hicChr4xc8rLtfCufIKvIkhQ3OtF1q+SvM37JdlrG6l//hF9F/jP551s+yHD?=
 =?us-ascii?Q?ZAGYNj4Ac14U9XRolQYyq1/OXCqLzISqF8RrsPgpBr4ARYJE19CLs+rB2kk6?=
 =?us-ascii?Q?yXDaynqk7uTwd2XOkhFePws2GT3VZ5OSLQ73jFrZsQeVR3/8Fci4Damq47Wt?=
 =?us-ascii?Q?Nmfh1hHYA+gi0J/FvpdSQMxD9IXeKJeazC8O+az0TI3jbeR0sWrCA50UEEou?=
 =?us-ascii?Q?ZD990NgKOZWtRz/0IYvleJui3ZRv/ToccgWzRUrcdBmNGCn1BEOEbXaoJaAW?=
 =?us-ascii?Q?HTmQJr8GB4ax/pQBux9FcKZcSaboBoLtC1qtq+ubnMGqHkTltwAPk9FNT8n4?=
 =?us-ascii?Q?CVGU/djy0vHK+MrfbrtYu8ZUVfdrGEKcoKd48WEaEA1vHDsBSfFEpkhWFUnK?=
 =?us-ascii?Q?NJzdXHZFUjrzPsHB/2NeKwrhqtW/1roxwD+umMivjbvVZWp1tRTVP/zX92np?=
 =?us-ascii?Q?w0aes83NnzrILSyytYMfCvqZj0k5OsmCOPFXbKbnNdz3LmgoaEW1nPUSzbVq?=
 =?us-ascii?Q?gfShU5FPjXenOMq6nDE8HT0K11pEc9dt40dEKn9RNre9oBrB9xdgeVcgAzGn?=
 =?us-ascii?Q?xE6fIuJw1UoBA8t4AF8t4C1c65hVXCBC2xuKnscMfm4Ac8ka9xuX7XbvSIAS?=
 =?us-ascii?Q?JnwpTWaf8e/raCIawldkyHch0MrmbBRGmbgtoS9yWCi8VM9WJXJB3hUlZSOY?=
 =?us-ascii?Q?666RiCDPAtJAwZnFbqOIyvUOSMqQVA3YwUQVU0q5CGam7rJtAAzPJ7c6zXYt?=
 =?us-ascii?Q?/B8QWy7NaPbKqZU3/LSIB5EUrBSdeUI9Iet+l1ylpmYgn55zOBj1YIg7zWUn?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fedc86c-6f9a-4b64-9579-08db848edb40
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 17:22:10.4793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtuqwTEebvZQJkIWVG1nc6yrUmZlrvKRfMs7i5/iUHQfrr6xsEFz9buYSt9rnyLZd5YNSAr6ouqefvWI9tTJBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/2] lib/igt_dummyload:
 Extract sync spinner API
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 11, 2023 at 05:02:13PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Sync spinner API is identical and compatible with regular spinners just
> that it tries to make sure spinner is actually running on the hardware
> before returning from the constructor.
> 
> A few tests already use it, one more will, so lets promote it into
> common library.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  lib/igt_dummyload.c     | 105 ++++++++++++++++++++++++++++++++++++++++
>  lib/igt_dummyload.h     |  11 +++++
>  tests/i915/drm_fdinfo.c |  81 ++++---------------------------
>  tests/i915/gem_eio.c    |  15 ++----
>  tests/i915/perf_pmu.c   |  84 +++++---------------------------
>  5 files changed, 140 insertions(+), 156 deletions(-)
> 
> diff --git a/lib/igt_dummyload.c b/lib/igt_dummyload.c
> index 9f941cef73e6..d3cee91540b6 100644
> --- a/lib/igt_dummyload.c
> +++ b/lib/igt_dummyload.c

why here?

> @@ -33,6 +33,7 @@
>  #include "drmtest.h"
>  #include "i915/gem_create.h"
>  #include "i915/gem_engine_topology.h"
> +#include "i915/gem.h"
>  #include "i915/gem_mman.h"
>  #include "i915/gem_submission.h"
>  #include "igt_aux.h"
> @@ -715,6 +716,110 @@ void igt_unshare_spins(void)
>  	IGT_INIT_LIST_HEAD(&spin_list);
>  }
>  
> +/**
> + * __igt_sync_spin_poll:
> + * @i915: open i915 drm file descriptor

anyway to make this not i915 centric?
or maybe move it to or start a lib that is i915 only?

I know that we have many more lib things that are still i915 centric,
but at some point we need to start organizing it...

> + * @ahnd: allocator handle
> + * @ctx: intel_ctx_t context
> + * @e: engine to execute on
> + *
> + * Starts a recursive batch on an engine.
> + *
> + * Returns a #igt_spin_t which can be used with both standard and igt_sync_spin
> + * API family. Callers should consult @gem_class_can_store_dword to whether
> + * the target platform+engine can reliably support the igt_sync_spin API.
> + */
> +igt_spin_t *
> +__igt_sync_spin_poll(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> +		     const struct intel_execution_engine2 *e)
> +{
> +	struct igt_spin_factory opts = {
> +		.ahnd = ahnd,
> +		.ctx = ctx,
> +		.engine = e ? e->flags : 0,
> +	};
> +
> +	if (!e || gem_class_can_store_dword(i915, e->class))
> +		opts.flags |= IGT_SPIN_POLL_RUN;
> +
> +	return __igt_spin_factory(i915, &opts);
> +}
> +
> +/**
> + * __igt_sync_spin_wait:
> + * @i915: open i915 drm file descriptor
> + * @spin: previously create sync spinner
> + *
> + * Waits for a spinner to be running on the hardware.
> + *
> + * Callers should consult @gem_class_can_store_dword to whether the target
> + * platform+engine can reliably support the igt_sync_spin API.
> + */
> +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin)
> +{
> +	struct timespec start = { };
> +
> +	igt_nsec_elapsed(&start);
> +
> +	if (igt_spin_has_poll(spin)) {
> +		unsigned long timeout = 0;
> +
> +		while (!igt_spin_has_started(spin)) {
> +			unsigned long t = igt_nsec_elapsed(&start);
> +
> +			igt_assert(gem_bo_busy(i915, spin->handle));
> +			if ((t - timeout) > 250e6) {
> +				timeout = t;
> +				igt_warn("Spinner not running after %.2fms\n",
> +					 (double)t / 1e6);
> +				igt_assert(t < 2e9);
> +			}
> +		}
> +	} else {
> +		igt_debug("__spin_wait - usleep mode\n");
> +		usleep(500e3); /* Better than nothing! */
> +	}
> +
> +	igt_assert(gem_bo_busy(i915, spin->handle));
> +	return igt_nsec_elapsed(&start);
> +}
> +
> +igt_spin_t *
> +__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> +		const struct intel_execution_engine2 *e)
> +{
> +	igt_spin_t *spin = __igt_sync_spin_poll(i915, ahnd, ctx, e);
> +
> +	__igt_sync_spin_wait(i915, spin);
> +
> +	return spin;
> +}
> +
> +/**
> + * igt_sync_spin:
> + * @i915: open i915 drm file descriptor
> + * @ahnd: allocator handle
> + * @ctx: intel_ctx_t context
> + * @e: engine to execute on
> + *
> + * Starts a recursive batch on an engine.
> + *
> + * Returns a #igt_spin_t and tries to guarantee it to be running at the time of
> + * the return. Otherwise it does a best effort only. Callers should check for
> + * @gem_class_can_store_dword if they want to be sure guarantee can be given.
> + *
> + * Both standard and igt_sync_spin API family can be used on the returned
> + * spinner object.
> + */
> +igt_spin_t *
> +igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> +	      const struct intel_execution_engine2 *e)
> +{
> +	igt_require_gem(i915);
> +
> +	return __igt_sync_spin(i915, ahnd, ctx, e);
> +}
> +
>  static uint32_t plug_vgem_handle(struct igt_cork *cork, int fd)
>  {
>  	struct vgem_bo bo;
> diff --git a/lib/igt_dummyload.h b/lib/igt_dummyload.h
> index 6eb3f2e696bb..b771011af74f 100644
> --- a/lib/igt_dummyload.h
> +++ b/lib/igt_dummyload.h
> @@ -143,6 +143,17 @@ void igt_terminate_spins(void);
>  void igt_unshare_spins(void);
>  void igt_free_spins(int i915);
>  
> +struct intel_execution_engine2;
> +
> +igt_spin_t *__igt_sync_spin_poll(int i915, uint64_t ahnd,
> +				 const intel_ctx_t *ctx,
> +				 const struct intel_execution_engine2 *e);
> +unsigned long __igt_sync_spin_wait(int i915, igt_spin_t *spin);
> +igt_spin_t *__igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> +			    const struct intel_execution_engine2 *e);
> +igt_spin_t *igt_sync_spin(int i915, uint64_t ahnd, const intel_ctx_t *ctx,
> +			  const struct intel_execution_engine2 *e);
> +
>  enum igt_cork_type {
>  	CORK_SYNC_FD = 1,
>  	CORK_VGEM_HANDLE
> diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
> index c0e0ba1905f1..5cafa0e469e2 100644
> --- a/tests/i915/drm_fdinfo.c
> +++ b/tests/i915/drm_fdinfo.c
> @@ -138,68 +138,6 @@ static unsigned int measured_usleep(unsigned int usec)
>  #define FLAG_HANG (8)
>  #define TEST_ISOLATION (16)
>  
> -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			       const struct intel_execution_engine2 *e)
> -{
> -	struct igt_spin_factory opts = {
> -		.ahnd = ahnd,
> -		.ctx = ctx,
> -		.engine = e ? e->flags : 0,
> -	};
> -
> -	if (!e || gem_class_can_store_dword(fd, e->class))
> -		opts.flags |= IGT_SPIN_POLL_RUN;
> -
> -	return __igt_spin_factory(fd, &opts);
> -}
> -
> -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
> -{
> -	struct timespec start = { };
> -
> -	igt_nsec_elapsed(&start);
> -
> -	if (igt_spin_has_poll(spin)) {
> -		unsigned long timeout = 0;
> -
> -		while (!igt_spin_has_started(spin)) {
> -			unsigned long t = igt_nsec_elapsed(&start);
> -
> -			igt_assert(gem_bo_busy(fd, spin->handle));
> -			if ((t - timeout) > 250e6) {
> -				timeout = t;
> -				igt_warn("Spinner not running after %.2fms\n",
> -					 (double)t / 1e6);
> -				igt_assert(t < 2e9);
> -			}
> -		}
> -	} else {
> -		igt_debug("__spin_wait - usleep mode\n");
> -		usleep(500e3); /* Better than nothing! */
> -	}
> -
> -	igt_assert(gem_bo_busy(fd, spin->handle));
> -	return igt_nsec_elapsed(&start);
> -}
> -
> -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			       const struct intel_execution_engine2 *e)
> -{
> -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
> -
> -	__spin_wait(fd, spin);
> -
> -	return spin;
> -}
> -
> -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			     const struct intel_execution_engine2 *e)
> -{
> -	igt_require_gem(fd);
> -
> -	return __spin_sync(fd, ahnd, ctx, e);
> -}
> -
>  static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>  {
>  	if (!spin)
> @@ -264,7 +202,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
>  	ahnd = get_reloc_ahnd(spin_fd, ctx->id);
>  
>  	if (flags & TEST_BUSY)
> -		spin = spin_sync(spin_fd, ahnd, ctx, e);
> +		spin = igt_sync_spin(spin_fd, ahnd, ctx, e);
>  	else
>  		spin = NULL;
>  
> @@ -349,7 +287,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  
>  	memset(tval, 0, sizeof(tval));
>  
> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>  
>  	read_busy_all(gem_fd, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -418,14 +356,14 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  			__submit_spin(gem_fd, spin, e_, 64);
>  			busy_class[e_->class]++;
>  		} else {
> -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
>  			busy_class[e_->class]++;
>  		}
>  	}
>  	igt_require(spin); /* at least one busy engine */
>  
>  	/* Small delay to allow engines to start. */
> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>  
>  	read_busy_all(gem_fd, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -475,12 +413,12 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  		if (spin)
>  			__submit_spin(gem_fd, spin, e, 64);
>  		else
> -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
>  		busy_class[e->class]++;
>  	}
>  
>  	/* Small delay to allow engines to start. */
> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>  
>  	read_busy_all(gem_fd, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -624,7 +562,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  			ahnd = get_reloc_ahnd(i915, ctx->id);
>  
>  			if (flags & TEST_BUSY)
> -				spin = spin_sync(i915, ahnd, ctx, NULL);
> +				spin = igt_sync_spin(i915, ahnd, ctx, NULL);
>  			else
>  				spin = NULL;
>  
> @@ -732,11 +670,12 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  			if (spin)
>  				__virt_submit_spin(i915, spin, ctx[i], 64);
>  			else
> -				spin = __spin_poll(i915, ahnd, ctx[i], NULL);
> +				spin = __igt_sync_spin_poll(i915, ahnd, ctx[i],
> +							    NULL);
>  		}
>  
>  		/* Small delay to allow engines to start. */
> -		usleep(__spin_wait(i915, spin) * count / 1e3);
> +		usleep(__igt_sync_spin_wait(i915, spin) * count / 1e3);
>  
>  		val = read_busy(i915, class);
>  		slept = measured_usleep(batch_duration_ns / 1000);
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index d889d67dcebd..6d4b8f7df909 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -47,6 +47,7 @@
>  #include "i915/gem_ring.h"
>  #include "igt.h"
>  #include "igt_device.h"
> +#include "igt_dummyload.h"
>  #include "igt_fb.h"
>  #include "igt_kms.h"
>  #include "igt_stats.h"
> @@ -429,22 +430,12 @@ static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>  	return __igt_spin_factory(fd, &opts);
>  }
>  
> -static void __spin_wait(int fd, igt_spin_t *spin)
> -{
> -	if (igt_spin_has_poll(spin)) {
> -		igt_spin_busywait_until_started(spin);
> -	} else {
> -		igt_debug("__spin_wait - usleep mode\n");
> -		usleep(500e3); /* Better than nothing! */
> -	}
> -}
> -
>  static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>  			     unsigned long flags)
>  {
>  	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, flags);
>  
> -	__spin_wait(fd, spin);
> +	__igt_sync_spin_wait(fd, spin);
>  
>  	return spin;
>  }
> @@ -963,7 +954,7 @@ static void test_inflight_external(int fd)
>  	fence = execbuf.rsvd2 >> 32;
>  	igt_assert(fence != -1);
>  
> -	__spin_wait(fd, hang);
> +	__igt_sync_spin_wait(fd, hang);
>  	manual_hang(fd);
>  
>  	gem_sync(fd, hang->handle); /* wedged, with an unready batch */
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index 0806a8e545b5..a888027ad9af 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -377,68 +377,6 @@ static unsigned int measured_usleep(unsigned int usec)
>  #define TEST_OTHER (128)
>  #define TEST_ALL   (256)
>  
> -static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			       const struct intel_execution_engine2 *e)
> -{
> -	struct igt_spin_factory opts = {
> -		.ahnd = ahnd,
> -		.ctx = ctx,
> -		.engine = e->flags,
> -	};
> -
> -	if (gem_class_can_store_dword(fd, e->class))
> -		opts.flags |= IGT_SPIN_POLL_RUN;
> -
> -	return __igt_spin_factory(fd, &opts);
> -}
> -
> -static unsigned long __spin_wait(int fd, igt_spin_t *spin)
> -{
> -	struct timespec start = { };
> -
> -	igt_nsec_elapsed(&start);
> -
> -	if (igt_spin_has_poll(spin)) {
> -		unsigned long timeout = 0;
> -
> -		while (!igt_spin_has_started(spin)) {
> -			unsigned long t = igt_nsec_elapsed(&start);
> -
> -			igt_assert(gem_bo_busy(fd, spin->handle));
> -			if ((t - timeout) > 250e6) {
> -				timeout = t;
> -				igt_warn("Spinner not running after %.2fms\n",
> -					 (double)t / 1e6);
> -				igt_assert(t < 2e9);
> -			}
> -		}
> -	} else {
> -		igt_debug("__spin_wait - usleep mode\n");
> -		usleep(500e3); /* Better than nothing! */
> -	}
> -
> -	igt_assert(gem_bo_busy(fd, spin->handle));
> -	return igt_nsec_elapsed(&start);
> -}
> -
> -static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			       const struct intel_execution_engine2 *e)
> -{
> -	igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
> -
> -	__spin_wait(fd, spin);
> -
> -	return spin;
> -}
> -
> -static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> -			     const struct intel_execution_engine2 *e)
> -{
> -	igt_require_gem(fd);
> -
> -	return __spin_sync(fd, ahnd, ctx, e);
> -}
> -
>  static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>  {
>  	if (!spin)
> @@ -484,7 +422,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
>  	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>  
>  	if (flags & TEST_BUSY)
> -		spin = spin_sync(gem_fd, ahnd, ctx, e);
> +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>  	else
>  		spin = NULL;
>  
> @@ -536,7 +474,7 @@ busy_start(int gem_fd, const intel_ctx_t *ctx,
>  	 */
>  	sleep(2);
>  
> -	spin = __spin_sync(gem_fd, ahnd, ctx, e);
> +	spin = __igt_sync_spin(gem_fd, ahnd, ctx, e);
>  
>  	fd = open_pmu(gem_fd, I915_PMU_ENGINE_BUSY(e->class, e->instance));
>  
> @@ -583,7 +521,7 @@ busy_double_start(int gem_fd, const intel_ctx_t *ctx,
>  	 * re-submission in execlists mode. Make sure busyness is correctly
>  	 * reported with the engine busy, and after the engine went idle.
>  	 */
> -	spin[0] = __spin_sync(gem_fd, ahnd, ctx, e);
> +	spin[0] = __igt_sync_spin(gem_fd, ahnd, ctx, e);
>  	usleep(500e3);
>  	spin[1] = __igt_spin_new(gem_fd,
>  				 .ahnd = ahndN,
> @@ -675,7 +613,7 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  
>  	igt_assert_eq(i, num_engines);
>  
> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>  	pmu_read_multi(fd[0], num_engines, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
>  	if (flags & TEST_TRAILING_IDLE)
> @@ -737,7 +675,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  		else if (spin)
>  			__submit_spin(gem_fd, spin, e_, 64);
>  		else
> -			spin = __spin_poll(gem_fd, ahnd, ctx, e_);
> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e_);
>  
>  		val[i++] = I915_PMU_ENGINE_BUSY(e_->class, e_->instance);
>  	}
> @@ -749,7 +687,7 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  		fd[i] = open_group(gem_fd, val[i], fd[0]);
>  
>  	/* Small delay to allow engines to start. */
> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>  
>  	pmu_read_multi(fd[0], num_engines, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -796,7 +734,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  		if (spin)
>  			__submit_spin(gem_fd, spin, e, 64);
>  		else
> -			spin = __spin_poll(gem_fd, ahnd, ctx, e);
> +			spin = __igt_sync_spin_poll(gem_fd, ahnd, ctx, e);
>  
>  		val[i++] = I915_PMU_ENGINE_BUSY(e->class, e->instance);
>  	}
> @@ -807,7 +745,7 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  		fd[i] = open_group(gem_fd, val[i], fd[0]);
>  
>  	/* Small delay to allow engines to start. */
> -	usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
> +	usleep(__igt_sync_spin_wait(gem_fd, spin) * num_engines / 1e3);
>  
>  	pmu_read_multi(fd[0], num_engines, tval[0]);
>  	slept = measured_usleep(batch_duration_ns / 1000);
> @@ -848,7 +786,7 @@ no_sema(int gem_fd, const intel_ctx_t *ctx,
>  			   fd[0]);
>  
>  	if (flags & TEST_BUSY)
> -		spin = spin_sync(gem_fd, ahnd, ctx, e);
> +		spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>  	else
>  		spin = NULL;
>  
> @@ -1406,7 +1344,7 @@ multi_client(int gem_fd, const intel_ctx_t *ctx,
>  	 */
>  	fd[1] = open_pmu(gem_fd, config);
>  
> -	spin = spin_sync(gem_fd, ahnd, ctx, e);
> +	spin = igt_sync_spin(gem_fd, ahnd, ctx, e);
>  
>  	val[0] = val[1] = __pmu_read_single(fd[0], &ts[0]);
>  	slept[1] = measured_usleep(batch_duration_ns / 1000);
> @@ -1776,7 +1714,7 @@ static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
>  
>  	igt_debug("Using engine %u:%u\n", e.class, e.instance);
>  
> -	return spin_sync(i915, ahnd, *ctx, &e);
> +	return igt_sync_spin(i915, ahnd, *ctx, &e);
>  }
>  
>  static void
> -- 
> 2.39.2
> 
