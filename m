Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C52B6AD1F0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 23:46:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF89C10E233;
	Mon,  6 Mar 2023 22:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD4610E233
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 22:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678142758; x=1709678758;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tnP2ft5UDsoy5wHSDX5uTFB7OwF2QC3DYCY2Zp1izCc=;
 b=Y1dKGQ9aADNymZd5zP+IpSw8xSaIYhFHSp1JFRqIX5HDiQsF5NQ7uIA+
 d4SEg7mPJ9Oyp2uWoJ6K/KvKy4AToB+X5Wysahc979Z1K7wgg2r0p/1xU
 IvwqBwfJ+pvdWbpFkaz0fyLawOxnTEjr2jCS9pOOWTW+jrBXr3CM3690N
 JauyNgKMcf7JQPBumRHSgh/MzhCNO1uudLJ6/QvvOpMShXh2vLBaEEdK6
 Oa6KB+3/JFZ5hwcxtEk6q8c+T+R12DHRwWRSe2j/rvIQAwX5khvG+8eRm
 kgJ20SqXb6d82jh0QHdUHh1j+RrRX1bakbyY39v4Fmynzr4wj/C4gjA/A g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337216925"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337216925"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 14:45:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="676344170"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="676344170"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 06 Mar 2023 14:45:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 14:45:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 14:45:39 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 14:45:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JeawnUQjsbHgvR7c563/6jN6gpL82AOLEUpuGuG6JEELOIr6sm3ERkcpt5am1VVPiq1A8x5Cn1eBBmDu2GRS2usVKCCE0K7pz01OWLPPYB0dkftBxB+ijzbn7L42w7g1FH4Tpfpjt0FW6VwHY+HAF88Sh9r8HvD2jdHkXzFImcfZ7SP5CT/78H+2hYGrirna8JwDKdqs/XCfDvujPylMaSSzqfD8FzPyLhHzobrDbT2kCrAa7oXFlgso8PNqEi1XKVnisqLEJixOviKKjdS+DbY/IHc7S+6F2lcchd92r+pAZPPzFlKIbv5e7aT+0hL7nUXxa7ZQsIz6/wBgTSSHLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8Tslur12HtlnT0yNM2Dt52iysLR7rsIOdkEfTvATKk=;
 b=cwutr307k8BAmKBeHZo0qnCzkX2RGVg/N3EdaLZsgYCKkHBHPjKdWvkCQlLNoMgw2y6z/V4IWmi4H36J863ysuob/N1lRKfg4iNUDnSHoztEJTElqwVyZo5UuxEPRqVIyK3d/XgbVbjOQWrqgalRj7yo549+eMDHX0a3BSo0+jIhSs+xtCH1TMSrLem97Dd+3Oqf8yDV0juqCFadL5T3EH/5io7v/enCt/WP7Em0b1fcLG2GpmfPSWNGtXZaI//y9Q7mP+jvxuco2zaWCCZarH7RVjpUlsLszUkwY8HH6qctDshixayFrYHgZe6isBqvCVBeSAb4dtviDHt+vBpQvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 22:45:37 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 22:45:37 +0000
Date: Mon, 6 Mar 2023 14:45:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230306224534.GG1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230301201053.928709-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:40::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB8379:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a4c5ea7-c394-46c7-a7c0-08db1e9480fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K2VoxM1VqHu2aCBLq01dUs344Pi09goi8rQpiDBW1924b6qV+9z9GL9EsIpBNVNjahvG9fnOpf7AEiYqtZjLD5L8F9JYQH05X8KK8qlwCFoDI3Q/7WNGETUaQH5oCmZqmQ6AJakKAhybo+c/3rWCxUQj8ylI65/sc/q5HBm7xt8+UZu+gMJT6zf3xuXjx3do0BoZy0xiUsQHmRQSu64z+fsTVh/RdZijdsNKAMrQH8tmQXbmQHMA6+RdU192br4KumFI5FlmUeaG27Lu+/J1H+Bjui9VCVmIix+1zBOHXTl3m4SRcSOyq2Vnw8plSzaMFJuU8NnPVj8yC0wCSzIq6mBCx814hbxJI1hCQa2Fe7fbMdtF3j2QwYl5+zgsju4wradgHr6GjKw+sZFcu/RALTswt5HSsxaj02NRGNUOIOGll/jJyJ+pcMzuihOeHsPCbb4tWQ0Zj/PUJDdkNtLYV7jc30wgsP2g7NhhhvNafJVoIHdssmh7nOghhs+IAD+CZw4H7FIoCkp9uZzVVCYnoPyfFqKlvQDa1nbLIf7g5ZMWk6x2eySWiHnOW+NNrKA8hbYU/MKYUMk9ZNNOgHEbfMy5FzfUtmHl2SaKuRU4H04rS9OGcYVKfWCgB+C+7iPPNqg0Hy9TS9v08+qYTIPsTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(376002)(136003)(346002)(396003)(451199018)(6636002)(316002)(1076003)(6506007)(83380400001)(86362001)(38100700002)(82960400001)(478600001)(6512007)(26005)(6666004)(107886003)(186003)(33656002)(6486002)(5660300002)(41300700001)(8936002)(6862004)(2906002)(66946007)(66476007)(8676002)(4326008)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9crumqZhyuPU1cmrtmvVNGVWYkMY5Zl4zMOmc5GHjRj8BljDxLTxhbLIVHZu?=
 =?us-ascii?Q?voxZTsGp7JWzZArUfxJ02iNzoT7nxcms1mstwWmwNqdP3ZOcXJBmA4CoSXsD?=
 =?us-ascii?Q?Wy7YSwjMZBo6Dw0cYqbE0JpwI+i3YNZsvN7nKQhrPqafj/EhlgJlS5UAOt9O?=
 =?us-ascii?Q?rTc3t5wLmm4ZyA5nFYty0za/H/ad4nocG+jPJAfowlDOJEmEiN2z89rdN+Gu?=
 =?us-ascii?Q?ygI/4TK58WIdnGfFLauwrMVR89ZQ6rvEcnlEVOoHFyBgXVfMJ3fA+l51qUz3?=
 =?us-ascii?Q?2a+vX5q/Rj3orERkrNLahfh4/WENOgILWmiA6LbDbVXqpBYeLL09oKMqC39g?=
 =?us-ascii?Q?nGq3r/c6TQHDkO3oU4qKA7ezNV6vC3jpg34TCzzglgVqxL+K6xFO4rx4Al+X?=
 =?us-ascii?Q?rrDFxYupXngp6rM2fD4qq+Q1U7bBlozY0zwysxEMoMh/oC3G/pgBafo5IzBI?=
 =?us-ascii?Q?BqLHBBF03MdR9zGnPPHkQy4DAdJVNbYTRkUH5fExPHgC7knN0S9Qe6llR3nj?=
 =?us-ascii?Q?t7N1okb/3Y5RbEuckweVhWAWFMCMBRGLvw47ag/YiQ8dP4S03e8pv57e/90M?=
 =?us-ascii?Q?6hded3QdZ1O9DukLnekDaYm6zoc7qH9GRVKMCnn+NWqDVjl/3yZkMdB1axi6?=
 =?us-ascii?Q?RWHjeQo/t7sezz5/GFHtyUUOFBdeN/t2+M7yX/OS3fcTh76j7J9/WGAXd5z8?=
 =?us-ascii?Q?9O+vSa48y80iMv0LAQS3dkGrYU9HR5ZA8SMHIdw+IXohfDHVDGz94hOQB2Qt?=
 =?us-ascii?Q?Nql6tWOlkH5RKTYqhjndO2c5fKx1WCBM2CNoFlJj4QHL4+ELzdIqIP9LfbWs?=
 =?us-ascii?Q?6b7j3GNf/KClpn7KKCHdQ49sWo9s2F8JmEHucRb77grWZSWfmqxrgLIeAeyr?=
 =?us-ascii?Q?wHUZDr/luV2OCWmwwYQ8inGsEOFWy8lF+iKX+FyzD4632/6Q5FOOccUTRPCr?=
 =?us-ascii?Q?2iuZLg6BKnZcEi5nzHNrFbjbQbs1CrQn4HU9fxqj81idbBPXPssKC480AJwF?=
 =?us-ascii?Q?od4TizK+/U6C6TxMG+RykNnWNwhZr8UPenDgFQyNLPsQwQXYrgEFJssPIDcE?=
 =?us-ascii?Q?1JJ+dOxmdhOmUN78Pgt7X5FVZ9cY8Oj1J6JIxszw4B9PDQ6IHV/iMtzi6ZU5?=
 =?us-ascii?Q?468VcOEc2HfzKrPowDcrZ8raPfzIMwp2hKpvU1vz0xCc1fiLUyvRAVDzmWsf?=
 =?us-ascii?Q?ShocLZOYlMK0Yp/kyEUDeB1JX5SxGdCsoPl5yr3mBtkVBxhb+JHXwuRStTrp?=
 =?us-ascii?Q?/lOfYSUhE2e69qEsw4+pHbtpqqluQu5p4CwDqRd5ySB9PIMRvu+RMbnMlwlM?=
 =?us-ascii?Q?15QvTT18ISj83o4OGCwGQpBdgSl9Ji76uSn5zo0uvtQvfsUWqxYrNL3FEGEA?=
 =?us-ascii?Q?36tknouYxjGsceJxxwU66J2oyvSoT3eTXrh7OsFmmI2BkBf8toFA76+3HboS?=
 =?us-ascii?Q?zbzVuQ/hJkKhoXH6QW1BDBWV1MHKmkXZFV5MlLb4kgvKb61rcvTtkWg0IoWh?=
 =?us-ascii?Q?ZGkLZEspv+IaZ8HPS7mB9NFKgvK6GNMVUsEnuuUzqllbLniXwB07PmXNAgFs?=
 =?us-ascii?Q?P8HN7R0oM8NU+V49Tyr5O4k5el67uAophdH85WVYG/jLMWagK5TT5637gPvZ?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a4c5ea7-c394-46c7-a7c0-08db1e9480fe
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2023 22:45:37.3110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ZB8Si2xyACYeMipRpf0Lp1ppp3lgaILch9zgqWRLJUR84vEyA3BTdIE7acDIZb894bX4+hKxKW5shVX5hJP0ayUCIlUEp/yGeiJGglJzJI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/5] drm/i915/mtl: Fix Wa_16015201720
 implementation
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

On Wed, Mar 01, 2023 at 12:10:49PM -0800, Radhakrishna Sripada wrote:
> The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> extended the workaround Wa_16015201720 to MTL. However the registers
> that the original WA implemented moved for MTL.
> 
> Implement the workaround with the correct register.
> 
> v3: Skip clock gating for pipe C, D DMC's and fix the title
> 
> Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 26 +++++++++++++++++++-----
>  drivers/gpu/drm/i915/i915_reg.h          | 10 ++++++---
>  2 files changed, 28 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f70ada2357dc..b4283cf319f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -389,15 +389,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) < 13)
> -		return;
> -
>  	/*
> -	 * Wa_16015201720:adl-p,dg2, mtl
> +	 * Wa_16015201720:adl-p,dg2
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 * For pipe C and D clock gating needs to be disabled only
> @@ -413,6 +410,25 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> +static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * Wa_16015201720
> +	 * The WA requires clock gating to be disabled all the time
> +	 * for pipe A and B.
> +	 */
> +	intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> +		     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B);
> +}
> +
> +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	if (DISPLAY_VER(i915) >= 14 && enable)
> +		return mtl_pipedmc_clock_gating_wa(i915);
> +	else if (DISPLAY_VER(i915) == 13)
> +		return adlp_pipedmc_clock_gating_wa(i915, enable);

Both of these functions return 'void' so the 'return' on each of these
lines is a bit strange.  I'd remove the 'return' at the beginning of
these lines.

> +}
> +
>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  {
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1efa655fb68..7c9ac5b43831 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1794,9 +1794,13 @@
>   * GEN9 clock gating regs
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> -#define   DARBF_GATING_DIS		(1 << 27)
> -#define   PWM2_GATING_DIS		(1 << 14)
> -#define   PWM1_GATING_DIS		(1 << 13)
> +#define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
> +#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
> +#define   PWM2_GATING_DIS		REG_BIT(14)
> +#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)
> +#define   PWM1_GATING_DIS		REG_BIT(13)
> +#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)

It's not really worth adding bits that we don't use anywhere.  I'd drop
the DIS_C and DIS_D defines here, otherwise people will wonder whether
it's a mistake that they're added but not used.

Aside from the unnecessary bits here and the returns above, the rest
looks okay, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with those changes.


Matt

>  
>  #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
>  #define   TGL_VRH_GATING_DIS		REG_BIT(31)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
