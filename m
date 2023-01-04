Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F3565CAA9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 01:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90CD10E42A;
	Wed,  4 Jan 2023 00:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86B4010E428
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 00:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672791514; x=1704327514;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wwj0SGtNtW1ncD8gJw7IDTd9yEkznoN9d/dmAAM6TMk=;
 b=HW/xBwgU86ppkofItlEoE0uKbii6IwJDKleX4tK03ilX2Gdw1ash5Wmb
 CXfiHpvT3mhY2MNTW5loKA8tC8t2VsEnJECc8xhjJOPTE8KSnSztsqTNM
 mJSbxjnLUJeY6fsVpjL+JjXPMN9rll4A2ylhz7ibqJx9npMmhfqYE7+04
 DHARPg49cT+NQOMBoQ/CR0hsYDNlG4YnYH8IKrBFtmyeUdBmiDnlrqfzc
 8kxkJ8Nd3d6+A1PLmp1SXjTNtc/DRwC4RC2aeLv87cj6A49jWz+Zuws3s
 sAXYxAU740QvWzM7CeXnpuY7zTpdaHqgnjLb7exYQbvy+QA2+qgGPqf84 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319499898"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="319499898"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 16:18:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="779022977"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="779022977"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 03 Jan 2023 16:18:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 16:18:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 16:18:33 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 16:18:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RyB5dLoL/G27TE4eLKSpBwyQegjs6Hfxm/eSOzABQYntswnLAcsJQhPK+wUfX/ceUiobWPNsCsT29Peg5+pI089vvijuCEkHojxRmvrlbjAB5tSqH03rvvL5fDSIgnhwtmPzQU+AVekn6YAa14epOMmvFpe11Fl9/Qkxk7q2TX4ElPNSm4kXzD5BVaoHW+d7VpRdXwFksUQLiFnQhs4ircUSIZkTmj7Da2rIeU1VnJTJ8jMKv/c3AvUWtebzdF5MtuwbpA4yUe4897SQr5rIXzoaqJGTztwE21vQ27o38kmCRlhbzmASitxSmMZqjR1VBg4eCjHshgIkMa16N1sNnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XjZfk2BS9wZ8/McBtdIlCcQdszVOax0HV3kTUQsk0Do=;
 b=Or/LE7mUN1S29tYXgEQSNT8iDn2VVkQujNi31ewft0Nkd5/xyRBczNrpM4o0gHX7XqF85p1QBzmoUDg9VpT8r4MyRfOGnTFbquKpUMpT5C8455J3LyuCEun5fdqiPwnyHBpyquI0LHF9lmWHg8ZsdkHYjmh4lBLFvCbgkjagLst7rf199WTII///XzhjF8u6FN4hAhkHUJhbws9Y6/lUhvxtmWvTk1fsuGgRqZOZieXwdzp6pmqySocB6P+psf1ULOZnQziLGYVDRB/Sj8wD/MZ2Ia3w/vWxsNmX8aQMOgcwULmEey0qkWqSNPkeYcC7uToXJ/vP8t75O2J5lw8AaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 00:18:31 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%8]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 00:18:31 +0000
Date: Tue, 3 Jan 2023 16:18:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y7TF07tG8t3HFSRR@mdroper-desk1.amr.corp.intel.com>
References: <20221215233055.816831-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221215233055.816831-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR13CA0142.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB8019:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e0f00dc-924d-4e6c-896e-08daede9356c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7Jwhi9+3qaOBH0LexF2VgFLOfMKUtS6WCkSUb99SxnDB5wVkNk47wB/s4IPIIDpAx72DB/sSuBgZnLTCBkHSCZjwK/ceJ19EgdJ9deWbxheaVV3wnS0ovSenegJELTQ/5g+8ln9WcnZ/cEHW5v1n30ndgYevyBwa1TiPyX9srgPiEUoRoecKvdMUwmGR6yq8VwepfLuLKBA0vZmqXUxE607TInSCSRUphOtP/UW2RWhOoiNtidkvUB6Yw2/Nycf+VRvYnr6wQ0mb6I7Lib3qAcbiqNGSdeBLs6u8KMrA6e3KavZaR5Kn2P2sF7dB/5DqjGH35kDVQuwQ9QzkppRnM3YE9VPnP/vs+/zcZAUV81ht/oZ8HEpPLuFe/ugi9wESOIHDpYQBKkzJfuSz+gE3kBxQFghJ4g0UjqJSWjhvmbLtwuFULcZIIz34S/hENvMirstEnBLyJvmERqkGBfvi4ZLW2aubM6M6gbTT90//I8O3rhVR9kKfTSmwXZ1/f12NAqjpgp6nO0PPa/6dGuTh9Ykl06q5SA64ZNPXGA8YOxwLACwC0i4bpHMUTFR9Akq1ETA+yAHKK7t40+YVWYv43ZF5ZL+4FkMLf9mQhzuW8lMoVKT67GbVY6U10KEnk3ees0rS+kKbCvPfLuzlE7y5Vw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199015)(83380400001)(6512007)(186003)(26005)(82960400001)(86362001)(38100700002)(2906002)(6636002)(316002)(5660300002)(8936002)(6862004)(4326008)(66946007)(66476007)(8676002)(66556008)(30864003)(41300700001)(107886003)(6506007)(6666004)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bk1fEEKhtv+zONbF/jRD8GC1NRqtQwzDOes+Ns9CzNxXI2HnDEiyG9+1WDjG?=
 =?us-ascii?Q?gdhi+fDcp4XXwKJf2uF/FGMe09ezqnIFZdSBk+bocxNS/NsdzSAj/FVP2Hs5?=
 =?us-ascii?Q?8F2Wrt8QYEkBUDIgvyry5tHPRtcWkHw1CHF9iAOdGAZ07Y0BnxclBpCKvNPz?=
 =?us-ascii?Q?wh5An5Y2bZ7ijOoCQItR4Eig6YLxsOr3+h3Uvw0zZK7xNjJEbRwzLE2oRGpQ?=
 =?us-ascii?Q?IDRYiyzeHH9RHE3qT/UbA9jI77QhAzz2H+2nH7TKLIMO16/N9VTNbf2jD7lp?=
 =?us-ascii?Q?DiaWuV9JbmDol244FDZi+TCT7Jt62s3eGyRHwiE1mPuM6zE50qZkVPZp8hh7?=
 =?us-ascii?Q?PyobHmf3rY3ZOxGEZR5EV8R8pEgYqDJhnNGRsrzj2ZZP6Yh4e9nI7UmJ1smi?=
 =?us-ascii?Q?JorZQrgCbkn83bdBCDZ29/+cnLrk53hLYJIJo1Sf1B9XZEDfv4BMH7J0jNtK?=
 =?us-ascii?Q?2RKm0UYus5yHDLys9ZWGNbpuCUamncjGhJ/JwoJCKpjMolf3Ntzpeiw/36q/?=
 =?us-ascii?Q?57vVBZBH0aG0wAMbDA+bv1h7ebyJjkiTmXVIGwm7177CEsI5jKgS8065jslO?=
 =?us-ascii?Q?vaMi/6CAXaqdJ4kDdr9IUoNe6Ifcm0ZXPlG9HOj+8G/JOrGQcZrXWuO/Iqsa?=
 =?us-ascii?Q?OzG3DveHx7ZBTYjnYuXEAOJDOpCmMUiLJUB6WuBQkHT6edR/j9d8mNvE/UF1?=
 =?us-ascii?Q?VA0iesvf47a2D7EaAvlVNdmZTrvjygWatBDYTDvJxdYWRldU+BcHwQYazpO2?=
 =?us-ascii?Q?v2tBKjNNa/OCuv+ij5t9dqkM/TX+R79JTmNcXdt3Mz+U12iAYIpF57dhDudZ?=
 =?us-ascii?Q?YqIMJpEpRhXnZZnU6DEn/a/d3B0+lUmY2QkY/PbqEsYgeUgUtQjlPM6MEkra?=
 =?us-ascii?Q?FH5CyKMo0/1Q3vMRyI9i3smuP9LP+nzYT4QJoZuJJ3y5GzePAqSTD8d//xco?=
 =?us-ascii?Q?Ux4kWQ3DDZmuf73tYBi83BD1dQ8f7sf0h4PNRhe58TV77GHG6PLkA4uTCuwW?=
 =?us-ascii?Q?2R4AApI5wSbHnzMg2zRk9JyHW0uHQn+qDU9u2FhOPYAsvWhm9EnZlI9WSYnO?=
 =?us-ascii?Q?FLhE6R/rlBN1grK0TOidINCxgYNjLGA7eRWCIHqSqAQqAWWsI/Cydo8cYZTY?=
 =?us-ascii?Q?hwkeJQZeCvw+ougDSnWZspGFj18rNdfJFblbzisqAMiQkriaTEVjWrMH4wZs?=
 =?us-ascii?Q?3olj7y6MajoFjdlIhkyaG51yigBOHTo087lW4IiWeqVt7jb1sw6plK8UzRxp?=
 =?us-ascii?Q?18s5q6yBX043l2TxhZMUVnEaZD4Od9UJ2xOXf0L9WpUz8lkhLbcAntjzTcxZ?=
 =?us-ascii?Q?1krIw0q2z35TWLu//84fAHGgDG9oIrQrb6pGWSmdgEwU+flmK/0aXn3Mm90c?=
 =?us-ascii?Q?vQwngiZWD+BwtHDoyEhq/xPbkqwqx/x0cjkkwYGbSnPeCFLzONgPe3V+GCcz?=
 =?us-ascii?Q?EbcPv3LeG37LL5wAIHYSIhMOnEG1ZIslYVYH/hAFJp8l4C3Bo+WOwG2V3FTP?=
 =?us-ascii?Q?TyYGf/4U6GAl4MSyq7p4n70QlohOzhPgTnF8wV6YpcUgZSV+fOcDJrW0Gk5J?=
 =?us-ascii?Q?i0DGGmFMo3ifScNjavkpDI5fkiR/IhVpyWgyT6HmMEU7RdVUMcn4kK2+GGUM?=
 =?us-ascii?Q?Sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e0f00dc-924d-4e6c-896e-08daede9356c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 00:18:30.7701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NC+4myl5LRnbqWNBYRjXuqRMPx9+Vko+RFedTjQttM9w9E9aVytIsLO7ZocPa1+I0eB3ToHQo9NUl0ItyvzQ6roIb1FOLsqiAuVlhqz38dQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8019
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: Add initial gt workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 15, 2022 at 03:30:55PM -0800, Matt Atwood wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> This patch introduces initial gt workarounds for the MTL platform.
> 
> v2: drop redundant/stale comments specifying wa platforms affected

This is being discussed on the other thread, but it also doesn't look
like this actually happened completely in v2 here.  You removed a few
but most of the workarounds still have them?

> (Lucas). Drop Wa_22011802037 for MTL.

This statement doesn't seem right...Wa_22011802037 is still (correctly)
present for the affected variant/steppings of MTL.


Matt

> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 115 +++++++++++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
>  9 files changed, 128 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 99c4b866addd..e3f30bdf7e61 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1494,10 +1494,12 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>  	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
>  
>  	/*
> -	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
> +	 * Wa_22011802037 : Prior to doing a reset, ensure CS is
>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>  	 */
> -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 49a8f10d76c7..c14476c777cc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2989,10 +2989,12 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>  	intel_engine_stop_cs(engine);
>  
>  	/*
> -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>  		intel_engine_wait_for_pending_mi_fw(engine);
>  
>  	engine->execlists.reset_ccid = active_ccid(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 41a237509dcf..4127830c33ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
>  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> -		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> -				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> +		/* Wa_14016747170 */
> +		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> +					     intel_uncore_read(gt->uncore,
> +							       MTL_GT_ACTIVITY_FACTOR));
> +		else
> +			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> +					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
>  
>  		/*
>  		 * Despite the register field being named "exclude mask" the
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index f8eb807b56f9..470d6feb456a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -414,6 +414,7 @@
>  #define   TBIMR_FAST_CLIP			REG_BIT(5)
>  
>  #define VFLSKPD					MCR_REG(0x62a8)
> +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
>  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
>  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
>  
> @@ -1535,6 +1536,10 @@
>  
>  #define MTL_MEDIA_MC6				_MMIO(0x138048)
>  
> +/* Wa_14016747170:mtl-p[a0], mtl-m[a0] */
> +#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
> +#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
> +
>  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
>  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bf84efb3f15f..fc166e25f606 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
>  
> +static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> +				     struct i915_wa_list *wal)
> +{
> +	struct drm_i915_private *i915 = engine->i915;
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +		/* Wa_14014947963:mtl */
> +		wa_masked_field_set(wal, VF_PREEMPTION,
> +				    PREEMPTION_VERTEX_COUNT, 0x4000);
> +
> +		/* Wa_16013271637:mtl */
> +		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
> +				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> +
> +		/* Wa_18019627453:mtl */
> +		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> +
> +		/* Wa_18018764978:mtl */
> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +	}
> +
> +	/* Wa_18019271663:mtl */
> +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +}
> +
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
>  					 struct i915_wa_list *wal)
>  {
> @@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
>  	if (engine->class != RENDER_CLASS)
>  		goto done;
>  
> -	if (IS_PONTEVECCHIO(i915))
> +	if (IS_METEORLAKE(i915))
> +		mtl_ctx_workarounds_init(engine, wal);
> +	else if (IS_PONTEVECCHIO(i915))
>  		; /* noop; none at this time */
>  	else if (IS_DG2(i915))
>  		dg2_ctx_workarounds_init(engine, wal);
> @@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	/* FIXME: Actual workarounds will be added in future patch(es) */
> +	/* Wa_14014830051:mtl */
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> +		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
> @@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  
>  	wa_init_start(w, engine->gt, "whitelist", engine->name);
>  
> -	if (IS_PONTEVECCHIO(i915))
> +	if (IS_METEORLAKE(i915))
> +		; /* noop; none at this time */
> +	else if (IS_PONTEVECCHIO(i915))
>  		pvc_whitelist_build(engine);
>  	else if (IS_DG2(i915))
>  		dg2_whitelist_build(engine);
> @@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> +		/* Wa_22014600077:mtl */
> +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> +				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> +	}
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_1509727124:dg2,mtl */
> +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> +				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> +
> +		/* Wa_22013037850:dg2,mtl */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> +				DISABLE_128B_EVICTION_COMMAND_UDW);
> +	}
> +
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> +		/* Wa_22012856258:dg2,mtl */
> +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> +				 GEN12_DISABLE_READ_SUPPRESSION);
> +	}
> +
>  	if (IS_DG2(i915)) {
>  		/* Wa_1509235366:dg2 */
>  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> @@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
>  	}
>  
> -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> -		/* Wa_1509727124:dg2 */
> -		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> -				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> -	}
> -
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
>  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
>  		/* Wa_14012419201:dg2 */
> @@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> -		/* Wa_22013037850:dg2 */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> -				DISABLE_128B_EVICTION_COMMAND_UDW);
> -
> -		/* Wa_22012856258:dg2 */
> -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> -				 GEN12_DISABLE_READ_SUPPRESSION);
> -
>  		/*
>  		 * Wa_22010960976:dg2
>  		 * Wa_14013347512:dg2
> @@ -2944,6 +2990,27 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	add_render_compute_tuning_settings(i915, wal);
>  
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_PONTEVECCHIO(i915) ||
> +	    IS_DG2(i915)) {
> +		/* Wa_18018781329:dg2,pvc,mtl */
> +		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> +
> +		/* Wa_22014226127:dg2,pvc,mtl */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> +	}
> +
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> +	    IS_DG2(i915)) {
> +		/* Wa_18017747507:dg2,mtl */
> +		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> +	}
> +
>  	if (IS_PONTEVECCHIO(i915)) {
>  		/* Wa_16016694945 */
>  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> @@ -2985,17 +3052,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		/* Wa_14015227452:dg2,pvc */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
>  
> -		/* Wa_22014226127:dg2,pvc */
> -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> -
>  		/* Wa_16015675438:dg2,pvc */
>  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> -
> -		/* Wa_18018781329:dg2,pvc */
> -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  	}
>  
>  	if (IS_DG2(i915)) {
> @@ -3004,9 +3062,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		 * Wa_22015475538:dg2
>  		 */
>  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
> -
> -		/* Wa_18017747507:dg2 */
> -		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
>  	}
>  
>  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) || IS_DG2_G11(i915))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index c0b5aa6fde26..aed2973e5f8d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
>  		flags |= GUC_WA_GAM_CREDITS;
>  
> -	/* Wa_14014475959:dg2 */
> -	if (IS_DG2(gt->i915))
> +	/* Wa_14014475959:dg2,mtl */
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_DG2(gt->i915))
>  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>  
>  	/*
> @@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>  		flags |= GUC_WA_DUAL_QUEUE;
>  
>  	/* Wa_22011802037: graphics version 11/12 */
> -	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
> +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(gt->i915) >= 11 &&
> +	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>  		flags |= GUC_WA_PRE_PARSER;
>  
>  	/* Wa_16011777198:dg2 */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 53f7f599cde3..f2d917132693 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1621,7 +1621,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>  	intel_engine_stop_cs(engine);
>  
>  	/*
> -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> +	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
>  	intel_engine_wait_for_pending_mi_fw(engine);
> @@ -4202,8 +4202,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>  	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>  
>  	/* Wa_14014475959:dg2 */
> -	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
> -		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> +	if (engine->class == COMPUTE_CLASS)
> +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_DG2(engine->i915))
> +			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>  
>  	/*
>  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48fd82722f12..f742328c4d95 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -735,6 +735,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_METEORLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>  
> +#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> +	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> +	 IS_GRAPHICS_STEP(__i915, since, until))
> +
>  /*
>   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
>   * create three variants (G10, G11, and G12) which each have distinct
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 849baf6c3b3c..7add88dde79e 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
>  
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
>  		    &runtime->graphics.ip);
> +	/* Wa_22012778468:mtl */
> +	if (runtime->graphics.ip.ver == 0x0 &&
> +	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
> +		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> +		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> +	}
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
>  		    &runtime->display.ip);
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
