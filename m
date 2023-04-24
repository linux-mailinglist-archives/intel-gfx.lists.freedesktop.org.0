Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 769F26ED39D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 19:36:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0801110E070;
	Mon, 24 Apr 2023 17:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0672210E070
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 17:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682357776; x=1713893776;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UeDfS3R1iSCFZXCwGFgQtcZOy6yxlgQr05A9erEfbwE=;
 b=Aw7/+PGtCZQGXUK9OizYDvnBUYtheB0gcdiNMFfNSObvXElgD4nc1w70
 MX6zd/lH8w/VKXypVR6QsPcwZXiyUofwkG8dRelP5CAEqFxK1bD3i5unz
 YIV4qAxCDULPkZwHcSOJDPpFE3OC6n/0UqbFChzSkpXVyzO+3HxXFkZey
 uY/QL+Cr5aF1YGgo1kcR/OWALFKpitjTR3q69J1x1ZOG43gmg8zkrKnZz
 wAq2LTIh9ze8DeVdjDsgpqD9eQ+SglTXlKlA+FIy7HNJit1zE0RCGH4Kg
 h65s8R+wvdeQGA/uDMAF4OawNUtxg+ap1Q7TPHSB4WylxSsb54Q6Vpe9A w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="348427696"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="348427696"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 10:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="804705633"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="804705633"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 24 Apr 2023 10:36:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 10:36:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 10:36:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 10:36:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 10:36:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STRnu0EcIqGrwovUkcgGZaPZonRjnXZeZ8UY8dTRAyWJL+z1eMCpp+ivR+iuP0XmxY2c/OnOrIlFUEoKaxWDoL4Q2i+PYhtzfdYhbgJ8k7vbNofZ5VVJCnbDDhZZQhB3vnBUzbk3FS+pvgjYwJMVVl8BCTp6y9Xeqe1ET8iO25Im2wL+hw1Sc2RDx16jrFe+Ygqhv7cOvVKrekQEisbaLDuflH+xwRgnYh6tWM6Kp1vxbuCmQ4G0iGfSgKwJ1d4ho7uepYSsZ4LDx2tEnqHM+H3b+GzRhGCf2tzCpNFPsGr1n8JMReSBd9ZQSqrVhF7zXtCvestE3+HX+OqQhAeBjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CAJ7TfZVT0e7sgEkHQUoLsamXeSaFrL6Upfo3w0Tb08=;
 b=h8xL6OfDhgUU05bpLbZywonVReclLA5GcL8icyfBsaCVNHye+pJoWgJDwVM5sLaUoaabYS9xotlukCWeyDpj1kJ8zzZM5ZCXCL9jjKK3Y5WcbmOCn0/lg4MbVjFtniE9+IANdW+rL87BOijKWpn8lw/BPGZItFzt3lmOCTZrDVCJkH7ednzW54lyCkfXK14wv8mPLHZHpEzUYIMTsxRDv+95glXD2BTgabWgrqXVNEem4OTy4alYQQh/lN0shKsnBqynLW4kOW1lCaaM5vSdzk8wPvUS+ZIh6y0GJQutFVuc/kGzq5biAJDatzUGXg3X39EmnQjcCWWPCDWgajjuoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB6669.namprd11.prod.outlook.com (2603:10b6:a03:449::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Mon, 24 Apr
 2023 17:36:10 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 17:36:10 +0000
Date: Mon, 24 Apr 2023 10:36:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <20230424173600.GB6250@mdroper-desk1.amr.corp.intel.com>
References: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: SJ0PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::25) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB6669:EE_
X-MS-Office365-Filtering-Correlation-Id: 301f99e9-9973-47de-6ba5-08db44ea6421
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VueJKLC6r/W6Z65PSzPwtpSUpH52NizC+J7JZ8c0RzvPfuVwiXnIpqUubzblb1rlx63mjqONe6haPzsS0Ge+gex9pu5y+OF4HRmcGJmn7AySfypWkm+tr0pXFHzZuedNLcMq0UBvSod2dsKAKKLUDtwuSQxdFHLrKG1DnG9KoZJbWr12nO5XURoIFV1MvFD6tAEWVbWYAaY2xzixkMqYFaihbxRPgqQlAdlMB66/6pU0szRW/Mmo2JmoErCVEyQKZcGXBr0S4t34phtyMXFPrpmLMzSZt9W7Qs1r2HFUXRbCQ7Cvx4wDgJXqmEQqIB09CbKYpaByGCdBV1rktatNzIzB703OkVa7UvnI0VmKr5xPpe3CvJWBW4vD3kOoA2fBS7f8X2GBqzU8SMWqU15+R/NAx25lJpvjpV70Y3bodg3VwLUKr7xxxqdYoqhURE8mtCI3bKHzYDJzmymqMQQUWv5+HR2B72Td8rHVAank5wuMBnw3j7KHN8Sefn0zH/waN8FA6hS4XFkMwwkGijuB8b7gQ3UB8YExu7kgiTY+FvY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(376002)(366004)(346002)(451199021)(6506007)(26005)(1076003)(6512007)(83380400001)(186003)(82960400001)(38100700002)(66946007)(478600001)(86362001)(66556008)(66476007)(8676002)(6862004)(8936002)(6636002)(5660300002)(6486002)(2906002)(41300700001)(4326008)(6666004)(33656002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U1LmO4cG8t+8SEj/uYELuIbyQZEBgxxIyzJpzDTspt7mD8V7olMjtjYG7TtW?=
 =?us-ascii?Q?/+nY4IHCd7KZyf8kADEYCkgnK9hns+IO+lj6D7MqNFcKlS5nZlHDcR31vPZ0?=
 =?us-ascii?Q?5huwu64DSuPP2/GJ5JT12sJHWyljs2NZVOm6Mk0imPaXbDDN5fvT2p9v3FRQ?=
 =?us-ascii?Q?eoRnxf5YtCnGbc3xMQ3Ray5hhW9G/poI2PLaNF4n/c2I+vfzScnYRtiNpQzy?=
 =?us-ascii?Q?LHe+DEOP7Ovqa+lz9fUmrEE66LkVLfNOC9LC7oKR0JJvOhMHkTpsaOcAzn7J?=
 =?us-ascii?Q?S6dGO94Fvp0J8GL3/6EJzFWTVTJwC5bVGxVxN2osv1/lfLZZs++hDwZg7gyK?=
 =?us-ascii?Q?8FS4dFh04tXQ+Agql4fXGPM8RMvln2Ce6uSFxJtHSKtRok4eCY9jY9MuVJ/r?=
 =?us-ascii?Q?rGBjNGGPNGBE/VO5Y1TzvcxpbDj40gyyID4CytuWAojRrqlkcEEj0kDhtKlT?=
 =?us-ascii?Q?+ZLNnUM7oQb+8SCEQvD4Y8ShuvubsmBmc1d/6p44ii2DWVwgp0E5G+u/aLm0?=
 =?us-ascii?Q?8mB+HsCf7JwIlRGs57kBnxtUa5LZJRFHycscigQNRljJnpBLQV++KdN5cirx?=
 =?us-ascii?Q?Yl7jKP2YXw5S22tYY/IKr1oFk7ERRv94TpxeE9TNz7ypWivrxeYfVc0ypRPX?=
 =?us-ascii?Q?grlVw4ZQI4LjFo1kZH27UjXoNSdbvJfg8DJxzs60opwW8Ux6mwUG0s+Y1wJP?=
 =?us-ascii?Q?JIWXwtEc1lnxCo8ZBTLox+Oyrc7Bj1jqjro1RsNkm+tsgRK9y74nOvOQ/Yb9?=
 =?us-ascii?Q?u6vyTsB+oEdY+YkGMf+80EynMCykvaz3GyGuDPTrKVxJ+4j/EfdxDJp1HshY?=
 =?us-ascii?Q?eKhowch65jxigon0Osc+AtovE9BB9HTwbwizwKo5cxARofTlhzWcFWnmQmf7?=
 =?us-ascii?Q?kQu0mL7zOxZVEXzitVrrleBpav5N9sVbYx6mi5juYqRfPf6De41z9AXoAEhG?=
 =?us-ascii?Q?r67gy1CnIcjXV0LG3foEfBUMuYZ9xoPwOTxg25f6bO48nrnm8ItXLytk+QOP?=
 =?us-ascii?Q?VpL57asdOcSlOE5gbao/TLLX+pLOSjK7vOIpixPjm7R9gUfWRRruhjF5keRo?=
 =?us-ascii?Q?Z1XIWgMfG4UWeFCS4V68OL5EDqcpTaTNgxfgtcrBMHuo4D6TQIT9jO6V4hk+?=
 =?us-ascii?Q?+zJFyhtDCo24062YF3FqH7s3JUupSj3gbaftF7RAfmIf8ifyKvlIAqfuJyqd?=
 =?us-ascii?Q?AvXcQIBiCRLDA49Uq8qo0mmQzIp5ALExB73gbn5EETx34+LRvkKVdU4ftuCJ?=
 =?us-ascii?Q?L2f+j2aEK/3SPom9dP7ZNZ++oH6/Rdbfdn+WHchIZxrkIYrZjbT7OuT9XSV6?=
 =?us-ascii?Q?8E/Bm0IECHKhCQEmJNCIBlonDUvvkQxDKiVjBtJPLX3+coA5C6t/XzQ9DQKa?=
 =?us-ascii?Q?UyM4J8zxzVpjdNCcqVcvDQU9ZEPwACrENb/UVOExVeeU1Nc+trV9HxwQptqr?=
 =?us-ascii?Q?2vsaNiwNYB2LAB1MwTXdPxLkIOOzmHgGgeDNz6ZqRyL2xqGwQy0e11fXdvt5?=
 =?us-ascii?Q?VgFzA4RbDWcEO1dqnQ8zMvVpNQfQrRXUG2f4Zyo/RD67xIjq3gFxbPmJQRUN?=
 =?us-ascii?Q?7x3xDApfQvj83bgAoqwQ0r6eDjniE+idBOw8UQLKLLRRnkMXvMX5vXu/dIRD?=
 =?us-ascii?Q?Sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 301f99e9-9973-47de-6ba5-08db44ea6421
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 17:36:09.8113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lxenb6wJL8Oh24Qyg2DTea8LdPUJUlp6nDGjmzE/3BpzjhL4puMqEqb8a9Kwo+XawIITqIJq3MPUDYnrTriJvbEPMeM3dKxO1O2zfgDEZ/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6669
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/mtl: Add workaround 14018778641
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

It looks like the number you have in the title and comments isn't a
valid workaround number.  It looks like you actually meant to use
Wa_14018575942.

On Mon, Apr 24, 2023 at 03:47:49PM +0530, Tejas Upadhyay wrote:
> WA 18018781329 is applicable now across all MTL
> steppings.

Wa_18018781329 hasn't changed; it's still restricted to just A-step of
MTL.  What you're implementing here is a different workaround that has
the same implementation, and a broader platform list.  It would be more
accurate to say something like

"Wa_14018575942 is identical to existing Wa_18018781329, but applies to
all MTL steppings."


Matt

> 
> V2:
>   - Remove IS_MTL check, code already running for MTL - Matt
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 30 ++++++++++-----------
>  1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 312eb8b5f949..de4f8e2e8e8c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1695,19 +1695,18 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> +	/* Wa_14018778641 / Wa_18018781329 */
> +	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014830051 */
>  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> -		/* Wa_18018781329 */
> -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> -
>  		/* Wa_14015795083 */
>  		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  	}
> -
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
>  	 * all MCR accesses are explicitly steered.
> @@ -1718,17 +1717,16 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_18018781329
> -		 *
> -		 * Note that although these registers are MCR on the primary
> -		 * GT, the media GT's versions are regular singleton registers.
> -		 */
> -		wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> -	}
> +	/*
> +	 * Wa_14018778641
> +	 * Wa_18018781329
> +	 *
> +	 * Note that although these registers are MCR on the primary
> +	 * GT, the media GT's versions are regular singleton registers.
> +	 */
> +	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	debug_dump_steering(gt);
>  }
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
