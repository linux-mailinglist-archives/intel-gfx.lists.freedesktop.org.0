Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A543D897A1E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 22:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF44C112EDC;
	Wed,  3 Apr 2024 20:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tf6N714O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C63B112EDB;
 Wed,  3 Apr 2024 20:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712176930; x=1743712930;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/Gwq9OAevPHXmPqNSE190k5qoqL05cS08EStlxZuZTo=;
 b=Tf6N714OUPFg7FmQW86yGlwx3lVThkFijHGn9QKnzv3jYeAolPGMkA1/
 OhzTOF7HMLKoY3dpeJoEZSKLOI9GFGKCnfRZEuuebP1biI5H2CxQsEm3f
 gVZuvgRDIRBGcLCnSBDIiXLOv2n47vJm2txrTJBevKwymDLT0CdoMUpS1
 I7vpElOXjLknzjYANIcQeOvLjyhmhc/TO3Km7KqIZTngswVx5/Ngj04Ac
 I3kXK4JqbpWIEPlEpCD5MM3VUMs1O/Co3pH8/0ohNwF4EEx7RmpPiz//n
 KDmNU37qf/to7PjMR5B8TUCtrBoiGCBOehXygLi95vIhdYxe8cJUzXdU2 w==;
X-CSE-ConnectionGUID: ww4eIpoAT66dFGzXhyBajw==
X-CSE-MsgGUID: f6T9zs08R0WkA4Hno09KhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="32823420"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="32823420"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 13:42:09 -0700
X-CSE-ConnectionGUID: zW5xTEQETfuZ4RVikNw6KA==
X-CSE-MsgGUID: wd0AxnN1R+GZeu2nDZzydA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18604145"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 13:42:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 13:42:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 13:42:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 13:42:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 13:42:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpc6kK1d2FyCmHNe3u23okBsBgoz2WdVO7ucqTjhKIiVhyCAeP7Cmejzq7UUVziL8uLwOTOlKBQ4YzpfYYLZnCPeR6W158muGPGtGZroGJe/8oO/cJBpdPry6EWhrlRtHPdaMv+vt6xq0Y0iZrvXo9SRSEK0ezDk4b0aFNtexGtQHf/7h+j2RY+nC3OjEG2/d2LWR/9Ko5k/RuM3mQ1Fh0wbuJzajb4Hpb4iXPT8cjGrlyBkJyK4a6ACjvJMPpmZFy4k5M2gSjC3AX0pe/uZGv8TEG3Sg6lJxbqgRD4ZOgHr4zwMslva2/cdGvIp33AwEsHqPvjM6wcCwZjI6jHn9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ctKVxc9h4rr7GSg5wzd5F1USU+J1cAklxonf8oIsXtM=;
 b=HGQEmlvADK4bS6uMjylPTMgQH3nS76WA2o6lUYgQEamwwhaGwlaA3kvOQmM1kx79R6EHUYK+KG8veIXY7XZIXg08s1uqa+OygmwdeP3e5WFlId0q9nT44LXG52vqOcLEINRb+iPxJW9C2xim6KQFQ0yC6TcMzHrbTYFf3f34wSxt72o8p+cs2wpKm5uevmZpgR+egDpERHNXQsSHjBuaEVQSBSO3dwr53ohPiO3bAuSh033y66L51tPjm0TiDf0oEnRhjlyiLjOEKKtdneC3VzRgIpYelKGpqk+CXfpVgZfzl9oUnQEuFipnodaKcZC6KAF4t31tKiRGE8qaIZuNvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 20:42:04 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 20:42:04 +0000
Date: Wed, 3 Apr 2024 13:41:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH v2 12/25] drm/i915/xe2hpd: update pll values in sync with
 Bspec
Message-ID: <20240403204140.GO6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-13-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-13-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ2PR07CA0010.namprd07.prod.outlook.com
 (2603:10b6:a03:505::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7018:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LD7SFW+Ef7J+YWG4g8ticsWz7873pInCTDgUFbRe6oNHi5NNWtw3AsW/HprOYGlpN4eK1fAPRfwvnJ1v+eLUD1YIK1uQKo7aFby4dlZz1l37HNz6hhQPYr71LM4vVWSckXIrVifh0c0zJXRePMoZ2sNu+T/VgGSOs0YaSsXLrEwQznyoa6EGDLk69OHmWQ6cksFy+Hwbea/OhFJdIVjLMmTJ2y7XrCTDNc8dkEBOnBJ5qi6GvVondnI/D2ZdNjeflvpC5dbU/XS+y0flpWzm217acb/leHQYSZxS8qeeTXFPpzgTkNA7cacxhOaKVsnN+tSSlr+S+KCA7se3ZI+0DYNDEdao1ZjtfkeMAeo0nlfALQjJXV0MCntIEzISDQLwwBccLCSF0O9QEGS6zPFRjnFboz0g05Kk0VX88S5HKJlrHOVyTj8N2RrS5zMdYKTynND1CeMQvhZfPHE1s8hbMjA10BTkJOLPMzzLxsGU3H3awelD7KnqP6o5nYUT90BmD2FPGahQdt85UeOeQlGocVQCrAftygtiRLqFVbTEkwEoaV1EJSnXXBqgJkWAkLTTMIvrJKPLGd8EdZ2rfn4NkaGhc6JyzTagh0Dy7ElxRwtLYuxrhRVeUIIyyU7g/NlL9jS82L4adTK4q8ICyAofR+Ac8IphtIBEJRxBhKAFBC8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pswSZecvdMNhEa4BP/Rir20mywckJo+++DB65HYuM16zvkSElOrYhyC2XyPH?=
 =?us-ascii?Q?CfmFMQczpGBdok0CeJhFlvuzyJ7kP2MnwCe9+WIJ/hM4KbQQ5I1JpAFGXASK?=
 =?us-ascii?Q?6miYNLcPkTADtvVEBsKzMZ8XD81OWlrbzniwj/CySvSXYXlKzTm/f4QlvWlw?=
 =?us-ascii?Q?nSKvyaPYQBDtXSV2kCxwkck3+/TZOZlJvtkn6DMGmeaQQ0/ecyuJuHE23DR4?=
 =?us-ascii?Q?6qoZXzMqhLByvhrelIfwqWSxawWEklSZARrD/Ee3IgyCrC46n5BfWU9Oc/Mk?=
 =?us-ascii?Q?z1IEWBScQe8BUYKQ19WJh6Ha2LNTxVt6oOyEAdCQ+pfvFtF2w2cgiZPUBYNv?=
 =?us-ascii?Q?K5l3YBWdEoXysJjko3a8qBoy4UMi72SURhemb12SEHDzK5o/1642lWs3xiWE?=
 =?us-ascii?Q?8tdlG8MZ/jiPFUuFLJvYzx8PXxcwhZa6CR09pdzNngKhjLtN2czQiA+wz92/?=
 =?us-ascii?Q?TLTjHzrEjxJ9awj60MEMq7bFV0QHOrIyQwhTZrm6TPOq5bTA3QNJVxd/EAQv?=
 =?us-ascii?Q?Tzm+Oeh3rhC4fRQZzCDs5NX8HaY5NrKpaQ/7AeM36p8N5g2SeSkDTCDD3ynG?=
 =?us-ascii?Q?7gBbmo71Ku1XdZOaiRkVwm9VwEdgZQYhR+O7ZHPdAh7QoEquKzC1V1WGy8Db?=
 =?us-ascii?Q?mXiH4F/ZbpOWMG5ooSgQpTZKUbTOs6IeRVpR0c0kMb1JmQeaUuDTdyF+wrNj?=
 =?us-ascii?Q?rZcsVfYd+aaFVV23CF0ZHAjuAmLkTs8hksl4Z1r7t06XB3FGYyRwcEYyH6GE?=
 =?us-ascii?Q?zSxPu6Hu8EiBKGY0kydG82RLg7r/L/uqnL6rk+2xijgB9UzVIdw9Nukm17MM?=
 =?us-ascii?Q?+QIPcnnnyxfbpOUR8f7IUP8LjP4G+oGldAM9zcEqqmMb7n25pClI/UiCbEka?=
 =?us-ascii?Q?PE0/1TRfajbmz0MGMwAYDfnp3L0aFKW06uG8p/1rVlGdGlqk5nXsDyf2GBO6?=
 =?us-ascii?Q?fMosdXddziIBeqTjvZppvmU4qyeTUTFfkM79XF1p+B2ZdXelnPhN1B13xeMc?=
 =?us-ascii?Q?9tOODPRfRv3gEE/ZDzm+UNcw77Z8HeKBMf7Eilp0OjNLNN02HfWiv34+/jVA?=
 =?us-ascii?Q?YfpoDWGB3xlVgWZ2G2Hhec1zwBiliccHW1qAWujYx6WxcUpuW+dFH2AVyzKO?=
 =?us-ascii?Q?IoYXweC2GhQdPS2QVRnNUgZkIPfPT9l90Kc6ypxu4+3SdJnv45Hjvul4LPJF?=
 =?us-ascii?Q?BxiJHe3oKmf8IQoVUtYU4H9X4JX2vMg2gWNQZyzAY9GcVL5itDRBAEGG9nlk?=
 =?us-ascii?Q?qYNl0pDiOfCnouCXiGbQv+xKexpEhPrEvN6k55hn0EeImjInw4m3gLtvRFAk?=
 =?us-ascii?Q?wu/fHgJI1gtTXXwKZBmfoM27W2T8VgbkGIn/42ceQ5JGMYrzisxcFIQsxyGb?=
 =?us-ascii?Q?cZ99T7JnhL+7vxml67K+n9yg7ZFWN2JpbdsWZQbAvKNavcONdTz0Cqc8Oc9m?=
 =?us-ascii?Q?+U0U6GPOQU82zeDxRySbGoOjA0rO+Cg8AfZ6YM3rAzyhE/7L+ZwTLX1ipMhz?=
 =?us-ascii?Q?EBo2g8xSV56jac/6YNSkXukjEfNe/h1csd4fWtcTCLpiy8Ex0XZtF8pzo09o?=
 =?us-ascii?Q?hwJjKsN9JJs7YrBLjRtZugcOgAFvEumRxUHSwCinO7pjJeDH2vxxoG5fZnoJ?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5db5b6c-20d4-4eb0-8448-08dc541e79fe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 20:42:04.5426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nr0DMzXJK4/qobnd4SAMiHOV7GRDzk5V4vosWH2DFUpNtDxG9cZ5Gb7juMJSd8251zXqDLFog7Z3EwAJ7E85F6FQf4e4duD+JMxzsIjjxoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7018
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 03, 2024 at 04:52:40PM +0530, Balasubramani Vivekanandan wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> DP/eDP and HDMI pll values are updated for Xe2_HPD platform
> 
> Bspec: 74165
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 47 +++++++++++++++++++-
>  1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index d948035f07ad..20035be015c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -1109,6 +1109,42 @@ static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
>  	NULL,
>  };
>  
> +static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 = {
> +	.clock = 1350000, /* 13.5 Gbps */
> +	.tx = {	0xbea0, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x015f,	/* mpllb cfg0 */
> +		0x2205,		/* mpllb cfg1 */
> +		0x1b17,		/* mpllb cfg2 */
> +		0xffc1,		/* mpllb cfg3 */
> +		0xbd00,		/* mpllb cfg4 */
> +		0x9ec3,		/* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x4800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const xe2hpd_c20_dp_tables[] = {
> +	&mtl_c20_dp_rbr,
> +	&mtl_c20_dp_hbr1,
> +	&mtl_c20_dp_hbr2,
> +	&mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&xe2hpd_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,

According to bspec 67066, I don't think we need the UHBR20 table for
Xe2_HPD (even though there are data values given on page 74165).

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -2225,13 +2261,20 @@ static const struct intel_c20pll_state * const *
>  intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> -	if (intel_crtc_has_dp_encoder(crtc_state))
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  			return xe2hpd_c20_edp_tables;
> +
> +		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +			return xe2hpd_c20_dp_tables;
>  		else
>  			return mtl_c20_dp_tables;
> -	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +
> +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>  		return mtl_c20_hdmi_tables;
> +	}
>  
>  	MISSING_CASE(encoder->type);
>  	return NULL;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
