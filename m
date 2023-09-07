Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC979765F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 18:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5766610E23E;
	Thu,  7 Sep 2023 16:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093EA10E23A;
 Thu,  7 Sep 2023 16:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694102874; x=1725638874;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7op8JVkTDNQIjso/M7hIOkNUkbwTEaCjh7aRuwxcj8k=;
 b=Ga53HCSo/rSPvt86ghJV+m94axUjbUI927AMSGV3FbklMvYT5rG2r5fV
 KfaXw0awi4UiTklfGBzmEBUTUoOYwj6gOrdKp2JiZVhEIUFKEUJoLVjra
 JQOztQpPhjf7x9ZnS2Q5Sr1mY6nv4cLQ+LtyHrWZ/Ms86T8aDSiJh0PlT
 Mwk15jl5qq0PKrMrwDoah5jJnkDSOgYt6cWisQ/9cwatpz0hrXpD1jivA
 L8RIW1gsg3YpjrmPjelgY8dBL/7RD+Af6cpDDqEWghdKyBBQKjAhDhBEF
 iLyZZhDIWTXObNhp4rSycULucxNEI5qz/CWDeRv2A3Z5Y1xsNJ73uY8zV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="408392946"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="408392946"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 09:04:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="771336237"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="771336237"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 09:04:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:04:09 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:04:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 09:04:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 09:04:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrzvsQbVBCIrz2tuVV5uPorcY520InePfPKwyElgjE1LlifGlxwinDt27U6/sH51zegOnOUCYb/xN8sFd2Y6oSEXdPlfIkK7cle1l3GkhpztAr3n72tTL0jc5ImB7lwB7DuD5rZluELHvNYJhmKnxF2KeEPdZtQWRSBaUEDm7QIdM4xYVPKz3GGuEFSZOjWJ+UrevdXF5TEKZ3iKVwuGq9Cgixc/xZDWYD06WNhRctRnjinUhujt+mfpq20v/GVjD0+IC9VhhYy+GEgw++8WsmdY2vjcPLUphu7SRbP/JhcYQ4+dfHwaAiV6Bpw6EVFj1wWSR7hSQntQAeAbfKsY1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKrNdR4lqc0NNvh4hI1zntUcoad9U2Xxgrq7q9C9YNU=;
 b=ASPl8Nnb2EZ+CQMCTVjpbxCQ+NH6DmSi6J1W8Z1XXDAOCDZV4SqWOyYFpqQoftU2ptjUatn7M/3ojqmqzcZqaXRYAg5fIQ61m1JAhTJFhxymoaK2ccwRQmM6S7MbEHu240A80S9jdnVGaO2bU0zcSAnoXZPq9IO/S6NDdf//8hUxEsR9HPTfROCA526/KSh5r2zZl8STAI0v8ot3sYKfQlL9lB5NCzd2xfuhijQiuZi8J/xXX6A7qz2dd7eWLaMlpFqlTvwBmvMI25/EIv6G4cnX+Drc7Tc4+HiqYwIdQtXogbOxID9ZjeW//lPNu/P0x9jTVDxdF3kBx+YExr8+IA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Thu, 7 Sep
 2023 16:04:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 16:04:07 +0000
Date: Thu, 7 Sep 2023 09:04:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907160403.GI2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-2-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0108.namprd03.prod.outlook.com
 (2603:10b6:a03:333::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8185:EE_
X-MS-Office365-Filtering-Correlation-Id: f2966698-08ae-4c20-3051-08dbafbc1039
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kj+sOCDTqHyeacwBSAENg/m70C6feoSdktLbds5xTfXfjjZxf0dj86W72idvvBqNa6Du6D/xLO1XDvI7euov+eroWF3qgHUoudZnkaQNezfzTYQDRSZX6avZERh/CPXIJID4QQycpVFtgwHiHzp/yccNCxo1pqDU338ccchEd7rrDg42zpoNpe3mGJJJdvuV933OYE3cnnL2eT8NYlXA+Uxvj3C/sBNcmh+7JFj4TXpFuOoOFIOzjIqvvEInBzVbPITVfujFpi8vgC9hN8Mtt16mmhykzKgBk4PG3c4ve7DVrVz3OHUo7gYAEoltwes3YBQANhV99c7dh/FzFfZSgquL7PWpllwIyxP24iGYWK7kfRvoedK0bowBvjO5f6NR77IHPRLGZiewP/f2zKduD9qGuQYO6EKKcRMM4hB59nbVG94t8Mzfsf25UNBAsLtI4lNQBgkWQ1v2W2OU7/PceRjZUGETm6yXlgdEuzv+CGcg1kcwgsYiMtx+ZDyklTuOERVAFXr+KFVMJnO2zCzLefUIj7CdU0ZVzbBvm7+wO575E+eq3NXLutwlXdJfOmx0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(1800799009)(186009)(451199024)(82960400001)(38100700002)(478600001)(2906002)(450100002)(5660300002)(8676002)(4326008)(8936002)(6862004)(6636002)(316002)(66476007)(66556008)(66946007)(41300700001)(86362001)(83380400001)(26005)(1076003)(6506007)(6486002)(6666004)(33656002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0TtkFf17XIndjz3dAfu1dm4SvGDUlFkrO/1IenrFv7pblK133krGaUfq8NZh?=
 =?us-ascii?Q?UYFwr0I0OffNu2rdSY+m7YdTkPUUbCRoeSYiu6ojYYeDPDFbG2pkHBPOnPxl?=
 =?us-ascii?Q?3hFIeRI+xEJyKnixpMDR2kDOkY5K+84MMlWZPtxn1SrYf4nkELrDU1fi47QW?=
 =?us-ascii?Q?N7fEbB92RkNlAtUyh/augxuXpvJNoPkKHLafCVujZG3oet8EiA+juO+MLg8d?=
 =?us-ascii?Q?icLxEWQTQCVRJS/MqUDaJU+EC3v1iWG5rWbekO9Wb79kcXtoB4i4ebsgzQFr?=
 =?us-ascii?Q?HGV/pl0zUms7H0ghLUQQeqdVwUsSn+/YIuzAFhWk0UqWP4B5ZuP/hr02xMNN?=
 =?us-ascii?Q?wkeiZ+FwIZaq5dpaAy8Dt40FPQ/+R0wQ2Xc9O00zsF0Z2zpMlUUojZHHlwBu?=
 =?us-ascii?Q?iYG0fg+wFjy1mTQLkxL9Esb7NOuQ6SkOd/O7ggnHZ0yEjiIadm3WpK4grHXV?=
 =?us-ascii?Q?4gPkCh6F7Xvz5zW+OScHS+/tznERfXwysgn63XASfbmmRkoAXWvlo6HKvbqt?=
 =?us-ascii?Q?2gqPBr80qxPnqElMZegir0YKtATOzl0epmBjj2EEYpIkiuhD101GBvQwmQka?=
 =?us-ascii?Q?pb+19vnL6U6XAJTg+y7NDBm2ZLtk5+tRUkKOrSYiJncnahShu09UT4oAjt2/?=
 =?us-ascii?Q?5JTCChKISY6j3lwRbvjEtsWkOZxEXQyd1om1ulejIH9po0NfcxdnbHhsFU1w?=
 =?us-ascii?Q?XGMfFVQlrZNMYTRDPJuN3yoW9oxxPRjHps1y5UUwSh6Q5yofsDg5hDCJAiMu?=
 =?us-ascii?Q?+CkRkdJ9Ann1F8HyM3fmnnCD2VETYF9CvYy5XM8QDckE7euxREqzMUa3ugEm?=
 =?us-ascii?Q?wNemLtJ1m7rvSVFdBf3KRGlEL85kxqV1zdOKhkIUIhhap8HLKimUkarxyP0G?=
 =?us-ascii?Q?ZsG0p82R00v5Yh6pXLFBVSMdA9DudsiyLQimIOnVyBRUm/7JLJuEuOdgIXWf?=
 =?us-ascii?Q?3HbcrtPiCy6dYH4iHCmC8koaw3MlAZvbSjXh7dMqa23QFMQhlS04hbJwoJnM?=
 =?us-ascii?Q?e1pjoBPeTWqol0Eqsm5YxVTCjuqtxbPaPBYAoNeUpkYvZu9OfCRZgySjjIid?=
 =?us-ascii?Q?/UapJLr//gBgj4dL8Q/m+oITIyqNLigeQMo1twm90WLNJ0Hi1J9a8S4KHE82?=
 =?us-ascii?Q?0vFsojmZuYvoG71/r5KcgoXGXdQXt3hO0I4f3kdQjAoBAxxeHTm1HMCAzNai?=
 =?us-ascii?Q?3PfaIrhIi+z3JBKtsPQep4QZFpwm8l/y6YdLDbZnkX4QhxngtCAmdLSqQEGe?=
 =?us-ascii?Q?x7hInnWK301hjMcvj45KHzFSKSpLbaxltMYYzG9NAGw+ebO8MgBLvJToGx4C?=
 =?us-ascii?Q?3CNTuRM3LEKZOb6S6xOqHLILOUSu3vKttJ8vnIc8GN5HgDX+GszvPbWPqzMx?=
 =?us-ascii?Q?QYjv71vWQgpJYOZ8MNxKLuGbafVf7VXCDuFREpHlcQEJ5kQgfK8kErKkIlzT?=
 =?us-ascii?Q?X2GIMuE1Gf+ic3wAh+uziWsAY9ifT0EfHJv/uVy7PCKDntv5YUeIJTGTt2MQ?=
 =?us-ascii?Q?5SEK/c+heLx5GtcBR3hB/OZ7Vw4gcPoef+AqsTiu6KZ5p4RDBJU1Pk4+GuBo?=
 =?us-ascii?Q?EaeUMA0uXgeOSOCM1AqGlC8tfXl0poPVkyaWoGuIE6MsUTN/k8V6IJuWZwt/?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2966698-08ae-4c20-3051-08dbafbc1039
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 16:04:07.0593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03wt9KDkJ9CgZXNg9wZrOyyV+PoKzw9ytLX/u3+bmGAqSyZQMyEBCdzPMEs6OjNWMAUK574f8+kKIEaKHwYMLJCvuWGNzT4O6+nBhiLfklU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 01/27] drm/i915/xelpdp: Add
 XE_LPDP_FEATURES
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:31AM -0700, Lucas De Marchi wrote:
> Add a FEATURES macro for XE_LPD+ as this is expected to be the baseline
> for Xe2_LPD and will allow to see the delta more easily.

Would it be simpler to do

        #define XE_LPDP_FEATURES \
                XE_LPD_FEATURES \
                /* additional deltas */

so that it's more obvious what the deltas between Xe_LPD -> Xe_LPD+ are
too?

> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 60 ++++++++++++++++---
>  1 file changed, 52 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index c39f8a15d8aa..089674e2f1d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -710,18 +710,62 @@ static const struct intel_display_device_info xe_hpd_display = {
>  		BIT(PORT_TC1),
>  };
>  
> +#define XE_LPDP_FEATURES							\
> +	.abox_mask = GENMASK(1, 0),						\
> +	.color = {								\
> +		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
> +		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
> +		DRM_COLOR_LUT_EQUAL_CHANNELS,					\
> +	},									\
> +	.dbuf.size = 4096,							\
> +	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
> +		BIT(DBUF_S4),							\
> +	.has_cdclk_crawl = 1,							\
> +	.has_cdclk_squash = 1,							\
> +	.has_ddi = 1,								\
> +	.has_dp_mst = 1,							\
> +	.has_dsb = 1,								\
> +	.has_fpga_dbg = 1,							\
> +	.has_hotplug = 1,							\
> +	.has_ipc = 1,								\
> +	.has_psr = 1,								\
> +	.pipe_offsets = {							\
> +		[TRANSCODER_A] = PIPE_A_OFFSET,					\
> +		[TRANSCODER_B] = PIPE_B_OFFSET,					\
> +		[TRANSCODER_C] = PIPE_C_OFFSET,					\
> +		[TRANSCODER_D] = PIPE_D_OFFSET,					\
> +		[TRANSCODER_DSI_0] = PIPE_DSI0_OFFSET,				\
> +		[TRANSCODER_DSI_1] = PIPE_DSI1_OFFSET,				\

If we're expanding out the whole definition rather than defining this as
XE_LPD_FEATURES + deltas, then there's no need for the DSI here.

> +	},									\
> +	.trans_offsets = {							\
> +		[TRANSCODER_A] = TRANSCODER_A_OFFSET,				\
> +		[TRANSCODER_B] = TRANSCODER_B_OFFSET,				\
> +		[TRANSCODER_C] = TRANSCODER_C_OFFSET,				\
> +		[TRANSCODER_D] = TRANSCODER_D_OFFSET,				\
> +		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
> +		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\

Or here.

> +	},									\
> +	TGL_CURSOR_OFFSETS,							\
> +										\
> +	.__runtime_defaults.cpu_transcoder_mask =				\
> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |				\
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
> +	.__runtime_defaults.ip.ver = 13,					\

Xe_LPD+'s ip version is 14 rather than 13.

> +	.__runtime_defaults.has_dmc = 1,					\
> +	.__runtime_defaults.has_dsc = 1,					\
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),			\

And the FBC is on A + B.


Matt

> +	.__runtime_defaults.has_hdcp = 1,					\
> +	.__runtime_defaults.pipe_mask =						\
> +		BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),		\
> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |		\
> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
> +
> +
>  static const struct intel_display_device_info xe_lpdp_display = {
> -	XE_LPD_FEATURES,
> -	.has_cdclk_crawl = 1,
> -	.has_cdclk_squash = 1,
> +	XE_LPDP_FEATURES,
>  
>  	.__runtime_defaults.ip.ver = 14,
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> -	.__runtime_defaults.cpu_transcoder_mask =
> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> -		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
>  /*
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
